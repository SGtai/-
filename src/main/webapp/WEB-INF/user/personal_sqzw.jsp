<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2020-3-3
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String cssPath = application.getContextPath()+"/userS/css/";
	String jsPath = application.getContextPath()+"/userS/js/";
	String path = application.getContextPath()+"/";
	String imagesPath =application.getContextPath()+"/homeS/images/";
	String dbimgPath =application.getContextPath()+"/images/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href=<%=cssPath+"personal.css"%>>
	<link rel="stylesheet" href="<%=path+"layui/css/layui.css"%>" media="all">
	<title>个人中心-申请的职位</title>
</head>

<body>
<div class="header">
	<div class="headerMain">
		<div class="Notice">
			<span>公告：</span>
			<a href="">有实力就不怕平庸 如何离高薪更进一步</a>
		</div>
		<div class="Account">
			<div class="Left">
				<div class="Info">
					<font>[28421947]</font>
					<input type="button">
					<div id="InfoPopup">
						<ul>
							<li><a href="personal_updatepsd.html">修改密码</a></li>
							<li><a href="personal_updatenum.html">修改手机</a></li>
							<li><a href="index.html">退出</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="Left">
				<a class="Mobile" href="">手机版</a>
			</div>
			<div class="Left">
				<div class="Weixin">微信
					<div id="WeixinPopup">
						<img src="images/showqrcode.jpg" width="120" height="120">
						<p>扫一扫完成绑定<br>求职信息接收及时，<br>不再错过好工作！</p>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<div class="navTop">
	<div class="navTopmain">
		<div class="logo"><a href="index.html"><img src="images/logo_1.png"/><img src="images/logo_2.png" /></a></div>
		<div class="nav">
			<div class="navItem"><a href="index.html">首页</a></div>
			<div class="navItem"><a href="searchJob.html">职位搜索</a></div>
			<div class="navItem"><a href="meetingJob.html">招聘会</a></div>
			<div class="navItem"><a href="">政府招考</a></div>
			<div class="navItem"><a href="">校园招聘</a></div>
			<div class="navItem other">
				<div style="position:relative;">
					<span>更多</span>
					<div id="TopNavMorePopup">
						<ul>
							<li><a href="jobnews.html">就业资讯</a></li>
							<li><a href="download.html">文档下载</a></li>
							<li><a href="helpJob.html">求职互助</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="personalBody">
	<div class="perLeftnav">
		<div class="NavLeftTop">个人中心</div>
		<div class="NavLeftMain">
			<div class="NavLeftBox">
				<a href="personal.html" class="a1">会员首页</a>
			</div>
			<div class="NavLeftBox">
				<a href="personal_jl.html" class="a2">我的简历</a>
			</div>
			<div class="NavLeftBox">
				<a href="personal_zwss.html" class="a3">职位搜索</a>
			</div>
			<div class="NavLeftBox twoNav">
				<a class="a5">职位申请</a>
				<span class="up"></span>
			</div>
			<ul>
				<li class="orang"><a href="/user/shenqinglist">申请的职位</a></li>
				<li><a href="/user/shoucanglist">我的关注</a></li>
			</ul>
			<div class="NavLeftBox twoNav">
				<a class="a6">企业邀约</a>
				<span class="up"></span>
			</div>
			<ul>
				<li><a href="personal_mainshi.html">面试通知</a></li>
				<li><a href="personal_yaoqing.html">应聘邀请</a></li>
				<li><a href="personal_whogz.html">谁在关注我</a></li>
				<li><a href="personal_goutong.html">在线沟通记录</a></li>
			</ul>
			<div class="NavLeftBox">
				<a href="personal_zhanghu.html" class="a7">账户管理</a>
			</div>
			<div class="NavLeftBox">
				<a href="personal_help.html" class="a8">帮助中心</a>
			</div>
		</div>
		<div class="navLeftBottom">
			<span class="sys">扫一扫绑定微信</span><br />
			<img src="images/showqrcode.jpg" />
			<span class="Notice">蝶飞人才网<br>找工作更靠谱</span>
		</div>
	</div>
	<div class="perRightcon">
		<div class="commonTit">
			<h1 class="fl">申请的职位</h1>
		</div>
		<div class="sqzwBox">
			<ul id="tabsqzw">
				<li class="currentsqzw">全部</li>
				<div class="clear"></div>
			</ul>
			<div class="clear"></div>
			<div id="contentsqzw">
				<ul style="display:block;">
					<table class="tabzw" cellpadding="0" cellspacing="0">
						<tbody>
						<tr>
							<th width="22%" style="border-left: 1px #EDEDED solid;">职位名称</th>
							<th width="25%">企业名称</th>
							<th width="8%" style="text-align: center;">企业答复率</th>
							<th width="20%" style="text-align: center;">简历名称</th>
							<th width="15%"><div>申请时间</div></th>
							<th width="20%">答复状态</th>
						</tr>
				<c:if test="${list != null}">
					<c:forEach items="${list}" begin="0" var="i">
						<tr>
							<td valign="middle">
								<a href="/user/jobinfo?id1=${i.qyid}&id2=${i.zpxxid}">${i.postion}</a>
							</td>
							<td><a href="#" class="cpname">${i.qyName}</a></td>
							<td style="text-align: center"><font style="color: red">${i.replyRate}%</font></td>
							<td><span>${i.jlname}</span></td>
							<td><span>${i.sctime}</span></td>
							<td><span style="color:#707070">${i.statename}</span></td>
						</tr>
					</c:forEach>
				</c:if>

						</tbody>
					</table>
				</ul>
				<ul>
					<table class="tabzw" cellpadding="0" cellspacing="0">
						<tbody>
						<tr>
							<th width="22%" style="border-left: 1px #EDEDED solid;">职位名称</th>
							<th width="27%">企业名称</th>
							<th width="8%" style="text-align: center;">企业答复率</th>
							<th width="16%"><select style="width:115px"><option value="0">相关简历</option><option value="">未完成简历</option><option value="">未完成简历</option><option value="">荔湾区+广告客户经理</option></select></th>
							<th><div>申请时间</div></th>
							<th>答复状态</th>
							<th style="border-right: 1px #EDEDED solid;">提醒答复</th>
						</tr>
						<tr>
							<td valign="middle">
								<span class="check1"></span>
								<a href="jobtype.html">做饭工(广州市)</a>
							</td>
							<td><a href="company.html" class="cpname">广州金桥物流有限公司</a></td>
							<td style="text-align: center"><font style="color: red">100.0%</font></td>
							<td><span>荔湾区+广告客户经理</span></td>
							<td><span>01-03 14:24</span></td>
							<td><span style="color:#707070">未查看</span></td>
							<td><span class="NoticeNo"></span></td>
						</tr>

						</tbody>
					</table>
					<div class="sqxwqx">
						<span class="check1"></span>
						<span class="spantxt0">全选</span>
						<div class="delbtn">删除已选</div>
						<div class="btnnotice">提醒企业答复</div>
						<div class="psge">共2条</div>
					</div>
				</ul>
				<ul>
					<table class="tabzw" cellpadding="0" cellspacing="0">
						<tbody>
						<tr>
							<th width="22%" style="border-left: 1px #EDEDED solid;">职位名称</th>
							<th width="27%">企业名称</th>
							<th width="8%" style="text-align: center;">企业答复率</th>
							<th width="16%"><select style="width:115px"><option value="0">相关简历</option><option value="">未完成简历</option><option value="">未完成简历</option><option value="">荔湾区+广告客户经理</option></select></th>
							<th><div>申请时间</div></th>
							<th>答复状态</th>
							<th style="border-right: 1px #EDEDED solid;">提醒答复</th>
						</tr>
						<tr>
							<td colspan="7">
								<span class="sorry">对不起，没有查到符合条件的记录！</span>
							</td>
						</tr>
						</tbody>
					</table>
				</ul>
				<ul>
					<table class="tabzw" cellpadding="0" cellspacing="0">
						<tbody>
						<tr>
							<th width="22%" style="border-left: 1px #EDEDED solid;">职位名称</th>
							<th width="27%">企业名称</th>
							<th width="8%" style="text-align: center;">企业答复率</th>
							<th width="16%"><select style="width:115px"><option value="0">相关简历</option><option value="">未完成简历</option><option value="">未完成简历</option><option value="">荔湾区+广告客户经理</option></select></th>
							<th><div>申请时间</div></th>
							<th>答复状态</th>
							<th style="border-right: 1px #EDEDED solid;">提醒答复</th>
						</tr>
						<tr>
							<td colspan="7">
								<span class="sorry">对不起，没有查到符合条件的记录！</span>
							</td>
						</tr>
						</tbody>
					</table>
				</ul>
				<ul>
					<table class="tabzw" cellpadding="0" cellspacing="0">
						<tbody>
						<tr>
							<th width="22%" style="border-left: 1px #EDEDED solid;">职位名称</th>
							<th width="27%">企业名称</th>
							<th width="8%" style="text-align: center;">企业答复率</th>
							<th width="16%"><select style="width:115px"><option value="0">相关简历</option><option value="">未完成简历</option><option value="">未完成简历</option><option value="">荔湾区+广告客户经理</option></select></th>
							<th><div>申请时间</div></th>
							<th>答复状态</th>
							<th style="border-right: 1px #EDEDED solid;">提醒答复</th>
						</tr>
						<tr>
							<td valign="middle">
								<span class="check1"></span>
								<a href="jobtype.html">后勤文员(佛山市)</a>
							</td>
							<td><a href="company.html" class="cpname">河北同源科技发展有限公司</a></td>
							<td style="text-align: center"><font style="color: red">100.0%</font></td>
							<td><span>荔湾区+广告客户经理</span></td>
							<td><span>01-03 14:24</span></td>
							<td><span style="color:red">不符合要求</span></td>
							<td></td>
						</tr>
						</tbody>
					</table>
					<div class="sqxwqx">
						<span class="check1"></span>
						<span class="spantxt0">全选</span>
						<div class="delbtn">删除已选</div>
						<div class="psge">共1条</div>
					</div>
				</ul>
			</div>
		</div>

	</div>
</div>


<div class="clear"></div>
<div class="footer">
	<p><a href="">**人才</a>旗下<img src="images/logo_foot.gif" />蝶飞人才网版权所有 <a href="">京ICP证0******9号</a><a href=""></a>本网站所有招聘信息，未经书面授权不得转载 投诉电话：400-8**-****</p>
</div>
<script type="text/javascript" src=<%=path+"layui/jquery-3.4.1.js"%>></script>
<script src=<%=path + "layui/layui.js"%>></script>
<script type="text/javascript" src=<%=jsPath+"personal.js"%>></script>
<script type="text/javascript" src=<%=jsPath+"personal_jl.js"%>></script>
</body>
</html>

