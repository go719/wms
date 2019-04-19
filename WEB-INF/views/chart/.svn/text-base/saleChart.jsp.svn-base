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
	<script type="text/javascript" src="/js/plugins/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
		$(function(){
			//处理日期控件
			$("input[name='sqo.beginDate']").addClass("Wdate").click(function () {
				WdatePicker({
					maxDate: $("input[name='sqo.endDate']").val()
				});
			});
			$("input[name='sqo.endDate']").addClass("Wdate").click(function () {
				WdatePicker({
					minDate:$("input[name='sqo.beginDate']").val(),
					maxDate: new Date()
				});
			});
			$(".group").change(function(){
				$("#searchForm").submit();
			});
		});
	</script>
	<title>PSS-销售报表管理</title>
<style>
	.alt td{ background:black !important;}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/common_msg.jsp" %>
	<s:form id="searchForm" namespace="/" action="chart_saleChart">
		<div id="container">
			<div class="ui_content">
				<div class="ui_text_indent">
					<div id="box_border">
						<div id="box_top">搜索</div>
						<div id="box_center">
							业务时间
							<s:date name="oqo.beginDate" format="yyyy-MM-dd" var="bd"/>
							<s:textfield name="sqo.beginDate" cssClass="ui_input_txt02" value="%{#bd}"/>
							~
							<s:date name="oqo.endDate" format="yyyy-MM-dd" var="ed"/>
							<s:textfield name="sqo.endDate" cssClass="ui_input_txt02" value="%{#ed}"/>
							货品
							<s:textfield name="sqo.keyword" cssClass="ui_input_txt02"/>
							客户
							<s:select list="#clients" name="sqo.clientId" listKey="id" listValue="name"
									  headerKey="-1" headerValue="所有客户" cssClass="ui_select01"/>
							品牌
							<s:select list="#brands" name="sqo.brandId" listKey="id" listValue="name"
									  headerKey="-1" headerValue="所有品牌" cssClass="ui_select01"/>
							分组<s:select list="#groupTypes" name="sqo.groupType" listKey="name()" listValue="groupByType" cssClass="ui_select01 group"/>
						</div>
						<div id="box_bottom">
							<input type="button" value="查询" class="ui_input_btn01 btn_page" data-page="1"/>
						</div>
					</div>
				</div>
			</div>
			<div class="ui_content">
				<div class="ui_tb">
					<table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
						<tr>
							<th>分组类型</th>
							<th width="15%">销售数量</th>
							<th width="20%">销售金额</th>
							<th width="20%">毛利润</th>
						</tr>
						<tbody>
							<s:iterator value="#orderCharts">
								<tr>
									<td style="text-align: left;padding-left: 200px;"><s:property value="groupType"/> </td>
									<td><s:property value="totalNumber"/> </td>
									<td><s:property value="totalAmount"/> </td>
									<td><s:property value="grossProfit"/> </td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</s:form>
</body>
</html>
    
