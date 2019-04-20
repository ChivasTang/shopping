$.ajaxSetup({cache: false});

window.app = new kendo.mobile.Application($(document.body), {
    skin: "nova"
});

var goodPageLoader = (function () {
    var setFun = {
        getShopGoodListURL:"getShopGoodList",
        loadGoodDetailURL:"loadGoodDetail?goodId=",

        getShopGoodList: function(){

            var shopId=parseInt($("#selectedShop").val());

            console.log(shopId);
            $.ajax({
                url:setFun.getShopGoodListURL,
                data:{shopId:shopId},
                type:"GET"
            }).done(function (data) {
                $("#shopBtn").empty().text(data.shopName);
                var dataSource=new kendo.data.DataSource({
                    data:data.goodList,
                    pageSize: 100,
                    serverPaging: false,
                    schema: {
                        model: {
                            id: "goodId",
                            fields: {
                                goodId: {type: "number", editable: false, nullable: false},
                                goodName: {type: "string", editable: false, nullable: false},
                                price:{type: "number", editable: false, nullable: false},
                                categoryId: {type: "number", editable: false, nullable: false},
                                categoryName: {type: "string", editable: false, nullable: false},
                                originId: {type: "number", editable: false, nullable: false},
                                originName: {type: "string", editable: false, nullable: false}

                            }
                        }
                    }
                });
                $("#good-listView").data("kendoMobileListView").setDataSource(dataSource);
            }).fail(function (error) {
                console.log(error);
            });
        },

        setShopGoodList:function(data){
            $("#good-listView").kendoMobileListView({
                dataSource: {
                    data:data,
                    pageSize: 100,
                    serverPaging: false,
                    schema: {
                        model: {
                            id: "goodId",
                            fields: {
                                goodId: {type: "number", editable: false, nullable: false},
                                goodName: {type: "string", editable: false, nullable: false},
                                price:{type: "number", editable: false, nullable: false},
                                categoryId: {type: "number", editable: false, nullable: false},
                                categoryName: {type: "string", editable: false, nullable: false},
                                originId: {type: "number", editable: false, nullable: false},
                                originName: {type: "string", editable: false, nullable: false}

                            }
                        }
                    }
                },
                pullToRefresh: true,
                endlessScroll: true,
                template: kendo.template($("#good-listView-tmp").html()),
                filterable:{
                    placeholder: "商品名で検索...",
                    ignoreCase: true,
                    field:"goodName",
                    operator:"contains"
                },
                sortable:true,
                click: function (e) {
                    window.location.href=setFun.loadGoodDetailURL+e.dataItem.goodId;
                }
            });
        },

        getShopGoodMenu: function(){
            $("#good-sort-btnGroup").kendoMobileButtonGroup({
                select:function (e) {
                    e.preventDefault();
                    var index = $("#good-sort-btnGroup").data("kendoMobileButtonGroup").current().index();
                    if(0===index){
                        console.log("低い順");
                    }else if(1===index){
                        console.log("高い順");
                    }else if(2===index){
                        console.log("評価順");
                    }
                    return false;
                }
            });
        },

        pageReady: function () {
            setFun.setShopGoodList();
            setFun.getShopGoodList();
            setFun.getShopGoodMenu();
        }
    };

    return {
        setFun: setFun
    };
})();

$(function () {
    goodPageLoader.setFun.pageReady();
});