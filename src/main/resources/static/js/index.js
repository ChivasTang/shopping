$.ajaxSetup({cache: false});

window.app = new kendo.mobile.Application($(document.body), {
    skin: "nova"
});

var indexLoader = (function () {
    var setFun = {
        //url
        getCategoryShopListURL: "getCategoryShopList",
        getShopListURL: "getShopList",

        getCategoryShopList: function () {
            $("#categoryShop-listView").kendoMobileListView({
                dataSource: {
                    transport: {
                        read: {
                            url: setFun.getCategoryShopListURL,
                            data: {categoryId: $("#category-btnGroup").data("kendoMobileButtonGroup").current().index() + 1},
                            dataType: "json",
                            contentType: "application/json",
                            cache: true
                        }
                    },
                    pageSize: 100,
                    serverPaging: false,
                    schema: {
                        model: {
                            id: "shopId",
                            fields: {
                                shopId: {type: "number", editable: false, nullable: false},
                                shopName: {type: "string", editable: false, nullable: false},
                                categoryId: {type: "number", editable: false, nullable: false},
                                categoryName: {type: "string", editable: false, nullable: false}
                            }
                        }
                    }
                },
                pullToRefresh: true,
                endlessScroll: true,
                template: '<a href="javascript:void(0)" style="color:rgb(0,0,0);">#=data.shopName#</a>',
                click: function (e) {
                    e.preventDefault();
                    console.log(setFun.getCategoryShopListURL + "?shopId=" + e.dataItem.shopId);
                    return false;
                }
            });
        },


        pageReady: function () {
            setFun.getCategoryShopList();
        }
    };
    return {
        setFun: setFun
    }
})();

$(function () {
    indexLoader.setFun.pageReady();
});