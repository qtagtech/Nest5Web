function getTheme() {
    var theme =  $.data(document.body, 'theme');
    if (theme == null) {
        theme = '';
    }
    else {
        return theme;
    }
    var themestart = window.location.toString().indexOf('theme=');
    if (themestart == -1) {
        var theme = 'ui-lightness';

    }
    else{
        var theme = window.location.toString().substring(6 + themestart);

    }
    var url = "/js/libs/jqwidgets/styles/jqx." + theme + '.css';


    if (document.createStyleSheet != undefined) {
        document.createStyleSheet(url);
    }
    else $(document).find('head').append('<link rel="stylesheet" href="' + url + '" media="screen" />');
  
    return theme;
};