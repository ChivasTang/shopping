$.ajaxSetup({cache: false});

window.app = new kendo.mobile.Application($(document.body), {
    skin: "nova"
});

var goodDetailLoader = (function () {
    var setFun = {
        pageReady: function () {
        }
    };

    return {
        setFun: setFun
    };
})();

$(function () {
    goodDetailLoader.setFun.pageReady();
});