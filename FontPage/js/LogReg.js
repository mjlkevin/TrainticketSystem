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
    $.validator.setDefaults({
        submitHandler: function() {
            alert("提交事件!");
        }
    });
    $().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
        $("#signupForm").validate({
            rules: {
                firstname: "required",
                lastname: "required",
                username: {
                    required: true,
                    minlength: 2
                },
                password: {
                    required: true,
                    minlength: 5
                },
                confirm_password: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                },
                email: {
                    required: true,
                    email: true
                },
                "topic[]": {
                    required: "#newsletter:checked",
                    minlength: 2
                },
                agree: "required"
            },
            messages: {
                firstname: "请输入您的名字",
                lastname: "请输入您的姓氏",
                username: {
                    required: "请输入用户名",
                    minlength: "用户名必需由两个字母组成"
                },
                password: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于 5 个字母"
                },
                confirm_password: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于 5 个字母",
                    equalTo: "两次密码输入不一致"
                },
                email: "请输入一个正确的邮箱",
                agree: "请接受我们的声明",
                topic: "请选择两个主题"
            }
        });
    });

})