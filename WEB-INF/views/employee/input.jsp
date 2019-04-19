<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>信息管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link href="/style/basic_layout.css" rel="stylesheet" type="text/css">
	<link href="/style/common_style.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="/js/jquery/jquery.js"></script>
	<script type="text/javascript" src="/js/commonAll.js"></script>
	<script src="/js/plugins/artDialog/jquery.artDialog.js?skin=blue"></script>
	<script type="text/javascript" src="/js/plugins/jquery-validation-1.8.1/jquery.validate.min.js"></script>
	<script type="text/javascript" src="/js/system/employee.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/common/common_msg.jsp" %>
<s:form name="editForm" namespace="/" action="employee_saveOrUpdate" method="post" id="editForm">
	<s:hidden name="employee.id"/>
	<div id="container">
		<div id="nav_links">
			<span style="color: #1A5CC6;">用户编辑</span>
			<div id="page_close">
				<a>
					<img src="/images/common/page_close.png" width="20" height="20" style="vertical-align: text-top;"/>
				</a>
			</div>
		</div>
		<div class="ui_content">
			<table cellspacing="0" cellpadding="0" width="100%" align="left" border="0">
				<tr>
					<td class="ui_text_rt" width="140">用户名</td>
					<td class="ui_text_lt">
						<s:textfield name="employee.name" cssClass="ui_input_txt02"/>
					</td>
				<s:if test="employee.id == null">
				</tr>
				<tr>
					<td class="ui_text_rt" width="140">密码</td>
					<td class="ui_text_lt">
						<s:password id="password" name="employee.password" cssClass="ui_input_txt02"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt" width="140">验证密码</td>
					<td class="ui_text_lt">
						<s:password name="repassword" cssClass="ui_input_txt02"/>
					</td>
				</tr>
				</s:if>
				<tr>
					<td class="ui_text_rt" width="140">Email</td>
					<td class="ui_text_lt">
						<s:textfield name="employee.email" cssClass="ui_input_txt02"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt" width="140">年龄</td>
					<td class="ui_text_lt">
						<s:textfield name="employee.age" cssClass="ui_input_txt02"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt" width="140">所属部门</td>
					<td class="ui_text_lt">
						<s:select list="#depts" name="employee.dept.id" listKey="id" listValue="name"
								headerKey="-1" headerValue="--请选择--" cssClass="ui_select01"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt" width="140">超级管理员</td>
					<td class="ui_text_lt">
						<s:checkbox name="employee.admin" cssClass="ui_checkbox01"/>
					</td>
				</tr>
				<tr>
					<td class="ui_text_rt" width="140">分配角色</td>
					<td class="ui_text_lt">
						<table>
							<tr>
								<td>
									<s:select list="#roles" cssClass="ui_multiselect01 all_roles" multiple="true"
										listKey="id" listValue="name"/>
								</td>
								<td align="center">
									<input type="button" id="select" value="-->" class="left2right"/><br/>
									<input type="button" id="selectAll" value="==>" class="left2right"/><br/>
									<input type="button" id="deselect" value="<--" class="left2right"/><br/>
									<input type="button" id="deselectAll" value="<==" class="left2right"/>
								</td>
								<td>
									<s:select name="employee.roles.id" list="employee.roles" cssClass="ui_multiselect01 selected_roles" multiple="true"
										listKey="id" listValue="name"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td class="ui_text_lt">
						&nbsp;<input type="submit" value="确定保存" class="ui_input_btn01"/>
						&nbsp;<input id="cancelbutton" type="button" value="重置" class="ui_input_btn01"/>
					</td>
				</tr>
			</table>
		</div>
	</div>
</s:form>
</body>
</html>