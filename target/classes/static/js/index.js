$.ajaxSetup({cache: false});

window.app = new kendo.mobile.Application($(document.body), {
    skin: "nova"
});

var indexLoader = (function () {
    var setFun = {
        //url
        getCategoryShopListURL: "getCategoryShopList",
        loadGoodListPageURL: "loadGoodListPage?shopId=",

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
                template: '<a href="'+setFun.loadGoodListPageURL+'#=data.shopId#" style="color:rgb(0,0,0);">#=data.shopName#</a>',
                filterable:{
                    placeholder: "商店名で検索...",
                    ignoreCase: true,
                    field:"shopName",
                    operator:"contains"
                },
                click:function (e) {
                    $("#selectedShop").val(e.dataItem.shopId);
                }
            });
        },

        pageReady: function () {
            setFun.getCategoryShopList();
        }
    };
    return {
        setFun: setFun
    };
})();

$(function () {
    indexLoader.setFun.pageReady();
});