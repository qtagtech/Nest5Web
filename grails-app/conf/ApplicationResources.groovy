modules = {
    /*images*/

    nextindom{
        resource id: 'nextindom',url: 'js/libs/nextindom.js'
    }
    underscore{
        resource id: 'underscore',url: 'js/libs/underscore.js'
    }
    application {
        resource url:'js/application.js'
    }
    plugins {
        resource url:'js/plugins.js'
    }
    script {
        resource url:'js/script.js'
    }
    orangebox{
        dependsOn 'jquerynew'
        resource id: 'orangebox', url: 'js/orangebox.min.js',
                disposition: 'head'

    }
    juvi{
        dependsOn 'jquerynew'
        resource id: 'juvi', url: 'js/libs/juvi/juvi_2.0_min.js',
                disposition: 'head'

    }
    anythingslider{
        dependsOn 'jquerynew'
        resource id: 'anythingslider', url: 'js/jquery.anythingslider.min.js',
                disposition: 'head'

    }
    jqprint{
        dependsOn 'jquerynew'
        resource id: 'jqprint', url: 'js/jquery.jqprint.js',
                disposition: 'head'

    }
    tiptip{
        dependsOn 'jquerynew'
        resource id: 'tiptip', url: 'js/libs/tiptip/jquery.tipTip.minified.js',
                disposition: 'head'

    }
    gritter{
        dependsOn 'jquerynew'
        resource id: 'gritter', url: 'js/jquery.gritter.min.js',
                disposition: 'head'

    }
    waypoints{
        dependsOn 'jquerynew'
        resource id: 'waypoints', url: 'js/libs/waypoints.min.js'


    }
    base64{

        resource id: 'base64', url: 'js/libs/base64.js',
                disposition: 'head'

    }
    canvas2image{
        dependsOn 'base64'
        resource id: 'canvas2image', url: 'js/libs/canvas2image.js',
                disposition: 'head'

    }

    jqwidgets{
        dependsOn 'jquerynew'
        resource id: 'jqwidgets', url: 'js/libs/jqwidgets/jqxcore.js',
                disposition: 'head'

    }
    jqwbuttons{
        dependsOn 'jqwidgets'
        resource id: 'jqwbuttons', url: 'js/libs/jqwidgets/jqxbuttons.js',
                disposition: 'head'

    }
    jqwtooltips{
        dependsOn 'jqwidgets'
        resource id: 'jqwtooltips', url: 'js/libs/jqwidgets/jqxtooltip.js',
                disposition: 'head'

    }
    jqwsplitter{
        dependsOn 'jqwidgets'
        resource id: 'jqwsplitter', url: 'js/libs/jqwidgets/jqxsplitter.js',
                disposition: 'head'

    }
    jqwtree{
        dependsOn 'jqwpanel'
        resource id: 'jqwtree', url: 'js/libs/jqwidgets/jqxtree.js',
                disposition: 'head'

    }
    jqwpanel{
        dependsOn 'jqwscrollbar'
        resource id: 'jqwpanel', url: 'js/libs/jqwidgets/jqxpanel.js',
                disposition: 'head'

    }
    jqwscrollbar{
        dependsOn 'jqwidgets'
        resource id: 'jqwscrollbar', url: 'js/libs/jqwidgets/jqxscrollbar.js',
                disposition: 'head'

    }
    jqwlistmenu{
        dependsOn 'jqwidgets'
        resource id: 'jqwlistmenu', url: 'js/libs/jqwidgets/jqxlistmenu.js',
                disposition: 'head'

    }

    jqwexpander{
        dependsOn 'jqwidgets'
        resource id: 'jqwexpander', url: 'js/libs/jqwidgets/jqxexpander.js',
                disposition: 'head'

    }
    jqwchart{
        dependsOn 'jqwidgets'
        resource id: 'jqwchart', url: 'js/libs/jqwidgets/jqxchart.js',
                disposition: 'head'

    }
    jqwdata{
        dependsOn 'jqwchart'
        resource id: 'jqwdata', url: 'js/libs/jqwidgets/jqxdata.js',
                disposition: 'head'

    }
    jqwtabs{
        dependsOn 'jqwidgets'
        resource id: 'jqwtabs', url: 'js/libs/jqwidgets/jqxtabs.js',
                disposition: 'head'

    }
    jqwindow{
        dependsOn 'jqwidgets'
        resource id: 'jqwindow', url: 'js/libs/jqwidgets/jqxwindow.js',
                disposition: 'head'

    }
    jqwdocking{
        dependsOn 'jqwindow'
        resource id: 'jqwdocking', url: 'js/libs/jqwidgets/jqxdocking.js',
                disposition: 'head'

    }
    jqwlistbox{
        dependsOn 'jqwscrollbar'
        resource id: 'jqwlistbox}', url: 'js/libs/jqwidgets/jqxlistbox.js',
                disposition: 'head'

    }

    autoSuggest{
        dependsOn 'jquerynew'
        resource id: 'autoSuggest}', url: 'js/libs/autoSuggest/jquery.autoSuggest.minified.js',
                disposition: 'head'

    }


    /*'jquery-theme' {
        resource id:'theme', url:[ dir: 'jquery-ui/css/ui-lightness',
                file:'jquery-ui-1.10.3.custom.min.css'],
                attrs:[media:'screen, projection']
    }



    'jquery-ui' {
        dependsOn 'jquerynew', 'jquery-theme'

        resource id:'js', url:[dir:'jquery-ui/js', file:'jquery-ui-1.10.3.custom.min.js'],
                nominify: true, disposition: 'head'
    }*/


    'jquerynew'{
        resource id: 'jqnewuery', url: 'jquery-ui/js/jquery-2.0.3.min.js', disposition: 'head'

    }
    jquerybrowserfix{
        dependsOn('jquerynew')
        resource id: 'jquerybrowserfix', url:'js/libs/jquery.mb.browser.min.js', disposition: 'head'
    }






    /*Form scripts*/

    elastic{
        resource id: 'elastic', url:'js/dashboard/plugins/forms/elastic/jquery.elastic.js'
    }
    inputlimiter{
        dependsOn('elastic')
        resource id: 'inputlimiter',url: 'js/dashboard/plugins/forms/inputlimiter/jquery.inputlimiter.1.3.min.js'
        resource id: 'inputlimitercss', url: 'js/dashboard/plugins/forms/inputlimiter/jquery.inputlimiter.css', disposition: 'head'
    }
    maskedinput{
        dependsOn('inputlimiter')
        resource id: 'maskedinput',url: 'js/dashboard/plugins/forms/maskedinput/jquery.maskedinput-1.3.min.js'
    }
    bootstrapswitch{
        dependsOn('maskedinput')
        resource id: 'bootstrapswitch',url: 'js/dashboard/libs/bootstrapswitch/js/bootstrap-switch.min.js'
        resource id: 'bootstrapswitchcss', url: 'js/dashboard/libs/bootstrapswitch/css/bootstrap3/bootstrap-switch.min.css', disposition: 'head'
    }
    uniform{
        dependsOn('bootstrapswitch')
        resource id: 'uniform',url: 'js/dashboard/plugins/forms/uniform/jquery.uniform.min.js'
        resource id: 'uniformcss', url: 'js/dashboard/plugins/forms/uniform/uniform.default.css', disposition: 'head'
    }
    globalize{
        dependsOn('uniform')
        resource id: 'globalize',url: 'js/dashboard/plugins/forms/globalize/globalize.js'
    }
    colorpicker{
        dependsOn('globalize')
        resource id: 'colorpicker',url: 'js/dashboard/plugins/forms/color-picker/colorpicker.js'
        resource id: 'colorpickercss', url: 'js/dashboard/plugins/forms/color-picker/color-picker.css', disposition: 'head'
    }
    timentry{
        dependsOn('colorpicker')
        resource id: 'timentry',url: 'js/dashboard/plugins/forms/timeentry/jquery.timeentry.min.js'
        resource id: 'timentrypack', url: 'js/dashboard/plugins/forms/timeentry/jquery.timeentry.pack.js'
    }
    select2{
        dependsOn('timentry')
        resource id: 'select2',url: 'js/dashboard/plugins/forms/select/select2.min.js'
        resource id: 'select2css', url: 'js/dashboard/plugins/forms/select/select2.css', disposition: 'head'
    }
    duallistbox{
        dependsOn('select2')
        resource id: 'duallistbox',url: 'js/dashboard/plugins/forms/dualselect/jquery.dualListBox-1.3.min.js'
    }
    uitimepicker{
        dependsOn('duallistbox')
        resource id: 'uitimepicker',url: 'js/dashboard/supr-theme/jquery-ui-timepicker-addon.js'
    }
    uislider{
        dependsOn('uitimepicker')
        resource id: 'uislider',url: 'js/dashboard/supr-theme/jquery-ui-sliderAccess.js'
    }
    //Otros de formulario que estoy usando
    validate{

        dependsOn('uislider')
        resource id: 'validate', url:'js/dashboard/plugins/forms/validate/jquery.validate.min.js'
        resource id: 'validatecss', url:'js/dashboard/plugins/forms/validate/validate.css'
    }
    bbq{

        dependsOn('validate')
        resource id: 'bbq', url:'js/dashboard/plugins/forms/wizard/jquery.bbq.js'
    }
    form{
        dependsOn('bbq')
        resource id: 'form', url:'js/dashboard/plugins/forms/wizard/jquery.form.js'
    }
    formwizard{
        dependsOn('form')
        resource id: 'formwizard', url:'js/dashboard/plugins/forms/wizard/jquery.form.wizard.js'
    }
    //main.js, script ppal de todas las pagina

    mainscript{
        dependsOn('script')
        resource id: 'mainscript', url:'js/dashboard/main.js'
    }

    //pagina crear ingredientes, productos, etc
    formvalidation{
        dependsOn('mainscript')
        resource id: 'formvalidation', url:'js/dashboard/form-validation.js'
    }

    /*Pagina dashboard*/

    dashboard{
        dependsOn("mainscript")
        resource id: 'dashboard', url:'js/dashboard/dashboard.js'
    }
    tables{

        resource id: 'tables', url:'js/dashboard/tables.js'
    }

    jquerydatatables{

        resource id: 'jquerydatatables', url:'js/dashboard/plugins/tables/dataTables/jquery.dataTables.min.js'
    }
    tabletools{

        dependsOn('jquerydatatables')
        resource id: 'tabletools', url:'js/dashboard/plugins/tables/dataTables/TableTools.min.js'
    }
    zeroclipboard{

        dependsOn('tabletools')
        resource id: 'zeroclipboard', url:'js/dashboard/plugins/tables/dataTables/ZeroClipboard.js'
    }
    responsivetables{

        dependsOn('zeroclipboard')
        resource id: 'responsivetables', url:'js/dashboard/plugins/tables/responsive-tables/responsive-tables.js'
    }
    datatables{
        dependsOn("mainscript")
        resource id: 'datatables', url:'js/dashboard/datatable.js'
    }








}