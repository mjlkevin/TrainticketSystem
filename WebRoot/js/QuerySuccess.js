$(function () {

    $(".book_btn").click(function () {

        var traNumber = $(this).parent().prev().prev().prev().prev().prev().prev().prev().html();
        var depSta = $(this).parent().prev().prev().prev().prev().prev().prev().html();
        var arrSta = $(this).parent().prev().prev().prev().prev().prev().html();
        var levTime = $(this).parent().prev().prev().prev().prev().html();
        var arrTime = $(this).parent().prev().prev().prev().html();
        var ticketPri = $(this).parent().prev().html();

        //cookies
        if($.cookie('traNumber')!= null){
            $.cookie('traNumber',null)
        } else if($.cookie('depSta')!= null){
            $.cookie('depSta',null)
        } else if($.cookie('arrSta')!= null){
            $.cookie('arrSta',null)
        } else if($.cookie('levTime')!= null){
            $.cookie('levTime',null)
        } else if($.cookie('arrTime')!= null){
            $.cookie('arrTime',null)
        }else if($.cookie('ticketPri')!= null){
            $.cookie('ticketPri',null)
        }
        $.cookie('traNumber', traNumber, { path: '/'});
        $.cookie('arrSta', arrSta, { path: '/'});
        $.cookie('depSta', depSta,{ path:'/'})
        $.cookie('levTime', levTime, { path: '/'});
        $.cookie('arrTime', arrTime, { path: '/'});
        $.cookie('ticketPri', ticketPri, { path: '/'});

        alert(traNumber)
        $("#dialog-message-content").html("您确定预订" + traNumber + "次，从：" + depSta + "到：" + arrSta + "\n" + levTime + "开" + arrTime + "到");
        // Dialog message
        $("#dialog-message").dialog('open');
        return false;

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