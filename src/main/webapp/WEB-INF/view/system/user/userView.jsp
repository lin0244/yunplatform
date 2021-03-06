<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+ "://"+request.getServerName() + ":"+request.getServerPort()+path;
%>
<script type="text/javascript">
<!--
	ns.user.userModify = function(){
		$.pdialog.close("viewDialog");
		$.pdialog.open("<%=basePath %>/pages/system/user/useredit.action?userId=${sysUser.id}","modifyDialog","维护用户",{width:950,height:650,mask:true,resizable:true});
	}
	
	$(function(){
		ns.user.loadOrgTabList();
		ns.user.loadPositionTabList();
		ns.user.loadRoleTabList();
	});
//-->
</script>
<div class="buttonPanel">
	<button type="button" class="listbutton" onclick="ns.user.userModify()">修改</button>
	<button type="button" class="listbuttonDisable" disabled="disabled">保存</button>
</div>
	<div style="height:2px;"></div>
	<div class="tabs">
	      <div class="tabsHeader">
	            <div class="tabsHeaderContent">
	                  <ul>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
	                        <li class="selected"><a><span>基本信息</span></a></li>
	                        <li class="selected"><a><span>机构选择</span></a></li>
	                        <li class="selected"><a><span>岗位选择</span></a></li>
	                        <li class="selected"><a><span>角色选择</span></a></li>
	                  </ul>
	            </div>
	      </div>
	      <div class="tabsContent" >
			<div align="center">
				<form onkeydown="return enterNotSubmit(event);" method="post" action="pages/system/user/usersave.action" class="pageForm required-validate" onsubmit="return validateCallback(this,ns.user.selfDialogAjaxDone);">
					<div style="display:none;">
						<input id="domainSubmit" type="submit">
					</div>
					<input id="userId" type=hidden name="sysUser.id" value="${sysUser.id}"/>
					<input id="optCounter" type=hidden name="sysUser.optCounter" value="${sysUser.optCounter}"/>
			  	 	<table width="100%"  cellspacing="0" cellpadding="2" border="0" class="Input_Table">
						<tr>
							<td align="left" class="Input_Table_Label" width="15%">
								账号
							</td>
							<td align="left" width="50%">
								${sysUser.username}
							</td>
							<td rowspan="10">
								<img src="<%=basePath %>${sysUser.userPic}">
							</td>
						</tr>
						<tr>
							<td align="left" class="Input_Table_Label" width="10%">
								密码
							</td>
							<td align="left">
								●●●●●●
							</td>
						</tr>
						<tr>
							<td align="left" class="Input_Table_Label" width="10%">
								姓名
							</td>
							<td align="left" width="40%">
								${sysUser.fullname}
							</td>
						</tr>
						<tr>
							<td align="left" class="Input_Table_Label" width="10%">
								性别
							</td>
							<td align="left">
								<c:if test="${sysUser.sex == '1'}">女</c:if>
								<c:if test="${sysUser.sex == '0'}">男</c:if>
							</td>
						</tr>
						<tr>
							<td align="left" class="Input_Table_Label" width="10%">
								手机号码
							</td>
							<td align="left" width="40%">
								${sysUser.mobile}
							</td>
						</tr>
						<tr>
							<td align="left" class="Input_Table_Label" width="10%">
								电话
							</td>
							<td align="left">
								${sysUser.phone}
							</td>
						</tr>
						<tr>
							<td align="left" class="Input_Table_Label" width="10%">
								邮箱
							</td>
							<td align="left" width="40%">
								${sysUser.email}
							</td>
						</tr>
						<tr>
							<td align="left" class="Input_Table_Label" width="10%">
								是否锁定
							</td>
							<td align="left">
								<c:if test="${sysUser.lock == 0}">未锁定</c:if>
								<c:if test="${sysUser.lock == 1}">已锁定</c:if>
							</td>
						</tr>
						<tr>
							<td align="left" class="Input_Table_Label" width="10%">
								是否过期
							</td>
							<td align="left">
								<c:if test="${sysUser.overdue == 0}">未过期</c:if>
								<c:if test="${sysUser.overdue == 1}">已过期</c:if>
							</td>
						</tr>
						<tr>
							<td align="left" class="Input_Table_Label" width="10%">
								当前状态
							</td>
							<td align="left">
								<c:if test="${sysUser.active == 0}">激活</c:if>
								<c:if test="${sysUser.active == 1}">未激活</c:if>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div>
				<div id="orgTabList" align="center">
				</div>
			</div>
			<div>
				<div id="positionTabList" align="center">
				</div>
			</div>
			<div>
				<div id="roleTabList" align="center">
				</div>
			</div>
		</div>
		<div class="tabsFooter"><div class="tabsFooterContent"></div>
	</div>