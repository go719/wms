<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/style/basic_layout.css" rel="stylesheet" type="text/css">
<link href="/style/common_style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/js/jquery/jquery.js"></script>
<script src="/js/plugins/artDialog/jquery.artDialog.js?skin=blue"></script>
<script type="text/javascript" src="/js/commonAll.js"></script>
<title>PSS-Client管理</title>
<style>
	.alt td{ background:black !important;}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/common_msg.jsp" %>
	<s:form id="searchForm" namespace="/" action="client">
		<div id="container">
			<div class="ui_content">
				<div class="ui_text_indent">
					<div id="box_border">
						<div id="box_top">搜索</div>
						<div id="box_bottom">
							<input type="button" value="查询" class="ui_input_btn01 btn_page" data-page="1"/>
							<input type="button" value="新增" class="ui_input_btn01 btn_redirect" data-url="<s:url namespace="/" action="client_input"/>"/> 
						</div>
					</div>
				</div>
			</div>
			<div class="ui_content">
				<div class="ui_tb">
					<table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
						<tr>
							<th width="30"><input type="checkbox" id="all" /></th>
							<th>编号</th>
							<th>客户名称</th>
							<th>客户编码</th>
							<th>联系电话</th>
							<th></th>
						</tr>
						<tbody>
							<s:iterator value="#pageResult.listData">
								<tr>
									<td><input type="checkbox" name="IDCheck" class="acb" data-eid="<s:property value="id"/>" autocomplete="off"/></td>
									<td><s:property value="id"/> </td>
									<td><s:property value="name"/> </td>
									<td><s:property value="sn"/> </td>
									<td><s:property value="phone"/> </td>
									<td>
										<s:a namespace="/" action="client_input">
											<s:param name="client.id" value="id"/>编辑</s:a>
										
										<s:url namespace="/" action="client_delete" var="deleteUrl">
											<s:param name="client.id" value="id"/>
										</s:url>
										<a href="#" class="btn_delete" data-url="<s:property value="deleteUrl"/>">删除</a>
									</td>
									
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</div>
				<!-- 分页操作 -->
				<%@ include file="/WEB-INF/views/common/common_page.jsp" %>
			</div>
		</div>
	</s:form>
	<script type="text/javascript">
		
	</script>
</body>
</html>
    
