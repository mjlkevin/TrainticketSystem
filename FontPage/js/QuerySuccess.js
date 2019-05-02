$(function () {

    $(".book_btn").click(function () {

        var traNumber = $(this).parent().prev().prev().prev().prev().prev().prev().prev().html();
        var depSta = $(this).parent().prev().prev().prev().prev().prev().prev().html();
        var arrSta = $(this).parent().prev().prev().prev().prev().prev().html();
        var levTime = $(this).parent().prev().prev().prev().prev().html();
        var arrTime = $(this).parent().prev().prev().prev().html();

        $("#dialog-message-content").html("您确定预订" + traNumber + "次，从：" + depSta + "到：" + arrSta + "\n" + levTime + "开" + arrTime + "到");
        // Dialog message
        $("#dialog-message").dialog('open');
        return false;

        //cookies
        $.cookie('trainnumber', traNumber, {expires: 7, path: '/'});
        $.cookie('depSta', depSta, {expires: 7, path: '/'});
        $.cookie('arrSta', arrSta, {expires: 7, path: '/'});
        $.cookie('levTime', levTime, {expires: 7, path: '/'});
        $.cookie('arrTime', arrTime, {expires: 7, path: '/'});
    })

        $("#dialog-message").dialog({
            autoOpen: false,
            modal: true,
            buttons: {
                Ok: function () {
                    $(this).dialog("close");
                },
                Cancel: function () {
                    $(this).dialog("close");
                }
            }
        });

        $(".ui-dialog button").click(function () {
            //close dialog
            $(".ui-dialog").css({'display': 'none'});
            $(location).attr('href', 'OrderConfirm.html');
        })

})