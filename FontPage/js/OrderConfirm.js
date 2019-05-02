$(function () {
    var traNumber =$.cookie('trainnumber');
    var depSta = $.cookie('depSta');
    var arrSta = $.cookie('arrSta');
    var levTime = $.cookie('levTime');
    var arrTime = $.cookie('arrTime');
    $('#1').html(traNumber);
    $('#2').html(depSta);
    $('#3').html(arrSta);
    $('#4').html(levTime);
    $('#5').html(arrTime);
})