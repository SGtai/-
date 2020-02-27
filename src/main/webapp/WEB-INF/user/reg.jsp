<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String cssPath = application.getContextPath()+"/userS/css/";
    String jsPath = application.getContextPath()+"/userS/js/";
    String path = application.getContextPath()+"/";
    String imagesPath =application.getContextPath()+"/homeS/images/";
    String dbimgPath =application.getContextPath()+"/images/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href=<%=cssPath+"login.css"%>>
</head>
<body>
<div class="header">
    <div class="mainwarp">
        <div class="logo"><a href="index.html"><img src="<%=imagesPath+"log.png"%>" /></a></div>
        <div class="welcome">欢迎注册</div>
        <div class="headerright">
            <a href="login.html">个人登录</a>
            <span>|</span>
            <a href="loginCompany.html">企业登录</a>
            <span>|</span>
            <a href="index.html">返回首页</a>
        </div>
    </div>
</div>
<div class="zhuceBox">
    <div class="zcLeft">
        <ul id="tabzc">
            <li class="currentzc">手机号注册</li>
            <li>微信注册</li>
            <div class="clear"></div>
        </ul>
        <div class="clear"></div>
        <div id="contentzc">
            <ul style="display:block;">
                <div class="zcpart0">
                    <div class="zcpart5">
                        <span></span>
                        <input onblur="regBlur()" id="phoneReg" name="" type="text" placeholder="手机号或邮箱"/>
                    </div>
                    <div  class="zcpart6">手机号用于登录和找回密码</div>
                    <div class="zcpart7">
                        <span></span>
                        <input id="passwordReg" name="" type="text" placeholder="设置密码"/>
                    </div>
                    <div class="zcpart6">请输入6-20个字符</div>
                    <div class="zcpart2_c">
                        <span class="CheckBox Yes"></span>
                        <span style="float:left">我已阅读并接受<a href="registeragreement.html">用户协议</a></span>
                    </div>
                    <div class="clear"></div>
                    <div class="zcpart8">
                        <a href="javascript:void(0)" onclick="doreg()">注 册</a>
                    </div>
                    <div class="zcpart8 zcpart9">
                        <a href="jianli.html">一分钟填写简历 快速填写 省时省力</a>
                    </div>
                    <div class="thirdLogin">
                        <span>使用其他账号登录：</span>
                        <div class="third">
                            <div class="third_con third_1">QQ</div>
                            <div class="third_con third_2">微博</div>
                            <div class="third_con third_3">百度</div>
                        </div>
                    </div>
                </div>
            </ul>

            <ul >
                <div class="zcpart1"></div>
                <div class="zcpart2">
                    <div class="zcpart2_l"><img src="<%=imagesPath+"showqrcode.jpg"%>" width="170" height="170" /></div>
                    <div class="zcpart2_r">
                        <img src="<%=imagesPath+"log24.png"%>" />
                    </div>
                    <div class="clear"></div>
                    <div class="zcpart2_c">
                        <span class="CheckBox Yes"></span>
                        <span style="float:left">我已阅读并接受<a href="registeragreement.html">用户协议</a></span>
                    </div>
                </div>
                <div class="zcpart3">
                    <span class="zcstep">扫码</span>
                    <span class="zcstepGo"></span>
                    <span class="zcstep">关注</span>
                    <span class="zcstepGo"></span>
                    <span class="zcstep">确认</span>
                    <span class="zcstepGo"></span>
                    <span class="zcstepLast">安全注册成功</span>
                </div>
                <div class="zcpart4">及时接收企业答复通知，不再错过每一次面试机会。</div>
            </ul>
        </div>
    </div>
    <div class="zcRight">
        <div class="topdiv">
            <span class="noPa">已有账号了？</span><br />
            <a href="/jump/user/login">立即登录</a>
        </div>
    </div>
</div>
<div class="clear"></div>
<div class="footer">
    <p><a href="">**人才</a>旗下<img src="<%=imagesPath+"logo_foot.gif"%>" />蝶飞人才网版权所有 <a href="">京ICP证0******9号</a><a href=""></a>本网站所有招聘信息，未经书面授权不得转载 投诉电话：400-8**-****</p>
</div>
<script type="text/javascript" src=<%=path+"layui/jquery-3.4.1.js"%>></script>
<script src=<%=path + "layui/layui.js"%>></script>
<script type="text/javascript" src=<%=jsPath+"loginAndReg.js"%>></script>
</body>
</html>
