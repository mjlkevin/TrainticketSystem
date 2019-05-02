$(function () {

    // Datepicker
    $('#datepicker').datepicker({
        inline: true
    });

    //autocompelete 自动补全
    var atc_departure = ["广州南","中山"];
    $("#dpa").autocomplete({
        source: atc_departure
    })

    //ticketbooking

// Dialog Link
    $('#dialog_link').click(function () {
        $('#dialog_simple').dialog('open');
        return false;
    });

// Modal Link
    $('#modal_link').click(function () {
        $('#dialog-message').dialog('open');
        return false;
    });

// Dialog Simple
    $('#dialog_simple').dialog({
        autoOpen: false,
        width: 600,
        buttons: {
            "Ok": function () {
                $(this).dialog("close");
            },
            "Cancel": function () {
                $(this).dialog("close");
            }
        }
    });

// Dialog message
    $("#dialog-message").dialog({
        autoOpen: false,
        modal: true,
        buttons: {
            Ok: function () {
                $(this).dialog("close");
            }
        }
    });
})
