$.ajaxSetup({cache: false});

var commFunc = (function () {
    var setFun = {

        getLocale: function () {
            var locale = $("#locale").val();
            console.log(locale);
            setFun.setLocale(locale);
        },

        setLocale: function (locale) {

            if (setFun.isEmpty(locale)) {
                locale = (navigator.language || navigator.browserLanguage).toLowerCase().substring(0, 2);
            }

            $.i18n.properties({
                name: "messages",
                path: "static/i18n",
                mode: "both",
                language: locale,
                callback: function () {
                }
            });
        },

        isEmpty: function (str) {
            return undefined === str || null === str || !str || "" === str;
        },

        pageReady: function () {
            setFun.getLocale();
        }
    };
    return {
        setFun: setFun
    }
})();

$(function () {
    commFunc.setFun.pageReady();
});
