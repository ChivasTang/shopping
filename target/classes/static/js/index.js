$.ajaxSetup({cache: false});


var indexLoader = (function(){
    var setFun={
        getCategoryButtonGroup: function(){
            setFun.setCategoryButtonGroup(data);
        },
        setCategoryButtonGroup: function(){
            $(".category-btn-group").kendoButton({
                click:function(e){
                    console.log(e);
                }
            });
        },
        pageReady: function () {
            setFun.getCategoryButtonGroup();
        }
    };
    return {
        setFun:setFun
    }
})();

$(function () {
    indexLoader.setFun.pageReady();
});

