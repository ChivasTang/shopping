$.ajaxSetup({cache: false});

var goodPageLoader = (function () {
    var setFun = {
        getShopGoodListURL:"getShopGoodList",

        getShopGoodList: function(){

            var shopId=parseInt($("#selectedShop").val());

            console.log(shopId);
            $.ajax({
                url:setFun.getShopGoodListURL,
                data:{shopId:shopId},
                type:"GET"
            }).done(function (data) {
                console.log(data);
            }).fail(function (error) {
                console.log(error);
            });
        },

        pageReady: function () {
            setFun.getShopGoodList();
        }
    };

    return {
        setFun: setFun
    };
})();

$(function () {
    goodPageLoader.setFun.pageReady();
});