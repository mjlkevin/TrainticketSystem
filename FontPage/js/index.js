$(function () {

    // Datepicker
    $('#datepicker').datepicker({
        inline: true
    });

    //autocompelete 自动补全
    var atc_departure = ["广州南","中山北"];
    $("#dpa").autocomplete({
        source: atc_departure
    });


})
