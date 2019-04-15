$(function () {
    /*
    * 切换注册与登录模板
    * */
    /*
    * 切换注册与登录时，底边框改变
    * */
    $(".tab_line>a").mouseenter(function () {
        $(this).addClass("border");
        $(this).siblings().removeClass("border");
    })
    /*
    * 模板切换
    * */
    $(".tab_line>a:nth-child(1)").click(function () {
        $(".loginFrame").hide();
        $(".registerFrame").fadeIn(200);
    })
    $(".loginBtn").click(function () {
        $(".registerFrame").css("display","none");
        $(".loginFrame").stop().fadeIn(200);
    });


    /*
    * 表单验证
    * */

    //点击"登录"时检查输入框
    $(".sumitBtn").click(function () {
        var inputNameText = $.trim($(".userName").val());
        var inputPasswordText = $.trim($(".passWord").val());

        if (!inputNameText && !inputPasswordText) {
            //没有输入用户名和密码
            $(".userName").css("border", "1px solid red");
            $(".passWord").css("border", "1px solid red");
            $("#1").$("<p>请输入用户</p>");
            $("#2").$("请输入用户名");
            return false;
        }else if(inputNameText === 'admin' && inputPasswordText === '123'){

            window.location.href = "index.html";
        }else {
            alert("error");
        }


    })
        /*        if (!inputNameText) {
                    //没有输入用户名
                    $(".loginError").html("<span class='loginErrorIcon'></span>请输入用户名").css({
                        visibility: "visible",
                        zIndex: "10"
                    });
                    $("loginTips").css("zIndex", "1");
                    $(".inputNameLine").addClass("inputNameLineError");
                    $(".inputNameIcon").addClass("inputNameIconError");
                    $(".loginBtn").val("登    录");
                    return false;
                }
                if (!inputPasswordText) {
                    //没有输入密码
                    $(".loginError").html("<span class='loginErrorIcon'></span>请输入密码").css({
                        visibility: "visible",
                        zIndex: "10"
                    });
                    $("loginTips").css("zIndex", "1");
                    $(".inputPasswordLine").addClass("inputPasswordLineError");
                    $(".inputPasswordIcon").addClass("inputPasswordIconError");
                    $(".loginBtn").val("登    录");
                    return false;
                }*/



})