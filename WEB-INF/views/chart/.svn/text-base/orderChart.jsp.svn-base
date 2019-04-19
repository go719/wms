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
		$(function() {
			//处理日期控件
			$("input[name='oqo.beginDate']").addClass("Wdate").click(function () {
				WdatePicker({
					maxDate: $("input[name='oqo.endDate']").val()
				});
			});
			$("input[name='oqo.endDate']").addClass("Wdate").click(function () {
				WdatePicker({
					minDate:$("input[name='oqo.beginDate']").val(),
					maxDate: new Date()
				});
			});

			$(".group").change(function () {
				$("#searchForm").submit();
			});
			$(".showCharts").click(function () {
				var ps = $("#searchForm").serialize();
				window.showModalDialog("/chart_showOrderChart.action?" + ps);
			});
		});
	</script>
<title>PSS-订货报表管理</title>
<style>
	.alt td{ background:black !important;}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/common_msg.jsp" %>
	<s:form id="searchForm" namespace="/" action="chart_orderChart">
		<div id="container">
			<div class="ui_content">
				<div class="ui_text_indent">
					<div id="box_border">
						<div id="box_top">搜索</div>
						<div id="box_center">
							业务时间
							<s:date name="oqo.beginDate" format="yyyy-MM-dd" var="bd"/>
							<s:textfield name="oqo.beginDate" cssClass="ui_input_txt02" value="%{#bd}"/>
							~
							<s:date name="oqo.endDate" format="yyyy-MM-dd" var="ed"/>
							<s:textfield name="oqo.endDate" cssClass="ui_input_txt02" value="%{#ed}"/>
							货品
							<s:textfield name="oqo.keyword" cssClass="ui_input_txt02"/>
							供应商
							<s:select list="#suppliers" name="oqo.supplierId" listKey="id" listValue="name"
									  headerKey="-1" headerValue="所有仓库" cssClass="ui_select01"/>
							品牌
							<s:select list="#brands" name="oqo.brandId" listKey="id" listValue="name"
									  headerKey="-1" headerValue="所有品牌" cssClass="ui_select01"/>
							分组<s:select list="#groupTypes" name="oqo.groupType" listKey="name()" listValue="groupByType" cssClass="ui_select01 group"/>
						</div>
						<div id="box_bottom">
							<input type="button" value="查询" class="ui_input_btn01 btn_page" data-page="1"/>
							<input type="button" value="图表分析" class="ui_input_btn01 showCharts"/>
						</div>
					</div>
				</div>
			</div>
			<div class="ui_content">
				<div class="ui_tb">
					<table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
						<tr>
							<th >分组类型</th>
							<th width="30%">订货数量</th>
							<th width="30%">订货金额</th>
						</tr>
						<tbody>
							<s:iterator value="#orderCharts">
								<tr>
									<td style="text-align: left;padding-left: 200px;"><s:property value="groupType"/> </td>
									<td><s:property value="totalNumber"/> </td>
									<td><s:property value="totalAmount"/> </td>
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
    
