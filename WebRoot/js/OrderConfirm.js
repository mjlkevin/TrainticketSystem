$(function () {
    var traNumber =$.cookie('traNumber');
    var depSta = $.cookie('depSta');
    var arrSta = $.cookie('arrSta');
    var levTime = $.cookie('levTime');
    var arrTime = $.cookie('arrTime');
    var ticketPri =$.cookie('ticketPri');
    $('#1').html(traNumber);
    $('#2').html(depSta);
    $('#3').html(arrSta);
    $('#4').html(levTime);
    $('#5').html(arrTime);
    $('#6').html(ticketPri);
})