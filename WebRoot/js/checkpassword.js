$(document).ready(function()
{
    var info_pwflag=1;
    var info_apwflag=1;

    $("#pw").focus(function()
    {
        if($(this).val().length==0)
        {
            $(this).parent().css('border-color','#4DAFE4');
            $(".form-group .info").css("color","#4DAFE4").text("请输入6-16位密码，不含空格！");
        }
        if(info_pwflag==1)
        {
            $(this).parent().css('border-color','#4DAFE4');
            $(".form-group .info").css("color","#4DAFE4").text("请输入6-16位密码，不含空格！");
        }
        else
        {
            $(this).parent().css('border-color','red');
                $(".form-group .info").css("color","red").text("请输入6-16位密码，不含空格！");
        }
    });
    $("#pw").blur(function()
    {
        var temp=$(this).val();
        if(temp.length==0)
        {
            $(this).parent().css('border-color','red');
            $(".form-group .info").css("color","red").text("请输入密码！");
        }
 
        else
        {
            if(info_pwflag==1)
            {
                $(this).parent().css('border-color','#14BC3E');
                $(".form-group .info").css("color","#14BC3E").text("输入正确！");
            }
        }
        if(temp.length<6)
        {
            if(info_pwflag==1)
            {
                $(this).parent().css('border-color','red');
                $(".form-group .info").css("color","red").text("请输入6-16位密码，不含空格！");
                info_pwflag=0;
            }
        }
    });
    $("#pw").keyup(function(event)
    {
        var info_user=$(this).val();
        if(info_user.length==0)
        {
            info_pwflag=1;
        }
        else
        {
            for(i=info_user.length-1;i>=0;i--)
            {
                var temp=info_user.charAt(i);
                if(temp==" ")
                {
                    info_pwflag=0;
                    break;
                }
                else
                {   
                    info_pwflag=1;
                     
                }
            }
        }
        if(info_pwflag==1)
        {
            $(this).parent().css('border-color','#4DAFE4');
            $(".form-group .info").css("color","#4DAFE4").text("请输入6-16位密码，不含空格！");
        }
        else
        {
            $(this).parent().css('border-color','red');
                $(".form-group .info").css("color","red").text("请输入6-16位密码，不含空格！");
        }       
    });  
    $("#apw").focus(function()
    {
        if($(this).val().length==0)
        {
            if(info_pwflag==1)
            {
                $(this).parent().css('border-color','#4DAFE4');
                $(".box_3 .info").css("color","#4DAFE4").text("确认密码！");
            }
            else
            {
                $(this).parent().css('border-color','#CAC21F');
                $(".box_3 .info").css("color","#CAC21F").text("第一次密码输入不正确！");
            }
        }
        else
        {
            if(info_pwflag==1)
            {
                if(info_apwflag==1)
                {
                    $(this).parent().css('border-color','#4DAFE4');
                    $(".box_3 .info").css("color","#4DAFE4").text("确认密码正确！");
                }
                else
                {
                    $(this).parent().css('border-color','red');
                    $(".box_3 .info").css("color","red").text("确认密码不正确！");
                }
            }
            else
            {
                $(this).parent().css('border-color','#CAC21F');
                $(".box_3 .info").css("color","#CAC21F").text("第一次密码输入不正确！");
            }
        }
         
 
    });
    $("#apw").blur(function()
    {
        var temp=$(this).val();
        if(temp.length==0)
        {
            $(this).parent().css('border-color','red');
            $(".box_3 .info").css("color","red").text("请确认密码！");
        }
        else
        {
            if(info_pwflag==1)
            {
                if(info_apwflag==1)
                {
                    $(this).parent().css('border-color','#14BC3E');
                    $(".box_3 .info").css("color","#14BC3E").text("确认密码正确！");
                }
                else
                {
                    $(this).parent().css('border-color','red');
                    $(".box_3 .info").css("color","red").text("确认密码不正确！");
                }
            }
            else
            {
                $(this).parent().css('border-color','#CAC21F');
                $(".box_3 .info").css("color","#CAC21F").text("第一次密码输入不正确！");
            }
        }
    });
    $("#apw").keyup(function(event)
    {
        var info_user=$(this).val();
        var info_pw=$("#pw").val();
        if(info_pwflag==1)
        {
            if(info_user.length==0)
            {
                info_apwflag=1;
            }
            else
            {
                if(info_user==info_pw)
                {
                    info_apwflag=1;
                }
                else
                {
                    info_apwflag=0;
                }
            }
        }
        //alert(info_pw);
        if(info_pwflag==1)
        {
            if(info_apwflag==1)
            {
                $(this).parent().css('border-color','#4DAFE4');
                $(".box_3 .info").css("color","#4DAFE4").text("确认密码正确！");
            }
            else
            {
                $(this).parent().css('border-color','red');
                $(".box_3 .info").css("color","red").text("确认密码不正确！");
            }
        }
        else
        {
            $(this).parent().css('border-color','#CAC21F');
            $(".box_3 .info").css("color","#CAC21F").text("第一次密码输入不正确！");
        }       
    });
});