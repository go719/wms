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
	<script type="application/javascript" src="/js/plugins/fancyBox/jquery.fancybox.pack.js"></script>
	<link href="/js/plugins/fancyBox/jquery.fancybox.css" rel="stylesheet" type="text/css">
	<script type="application/javascript">
		$(function(){
			$(".show").fancybox();

			$(".left2right").click(function(){
					var json = $(this).data("productjson");
					window.returnValue = json;
					window.close();
			});
		});
	</script>
<title>PSS-Product管理</title>
<style>
	.alt td{ background:black !important;}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/common_msg.jsp" %>
	<s:form id="searchForm" namespace="/" action="product_selectProductList">
		<div id="container">
			<div class="ui_content">
				<div class="ui_text_indent">
					<div id="box_border">
						<div id="box_top">搜索</div>
						<div id="box_center">
							关键字<s:textfield name="qo.keyword" cssClass="ui_input_txt02"/>
							品牌<s:select list="#brands" name="qo.brandId" cssClass="ui_select03" listKey="id" listValue="name" headerKey="-1" headerValue="所有品牌"/>
							<input type="button" value="查询" class="ui_input_btn01 btn_page" data-page="1"/>
						</div>
					</div>
				</div>
			</div>
			<div class="ui_content">
				<div class="ui_tb">
					<table class="table" cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
						<tr>
							<th>货品图片</th>
							<th>货品名称</th>
							<th>货品编码</th>
							<th>货品品牌</th>
							<th>成本价</th>
							<th>销售价</th>
							<th></th>
						</tr>
						<tbody>
							<s:iterator value="#pageResult.listData">
								<tr>
									<td>
										<a class="show" href="<s:property value="imagePath"/>" title="<s:property value="name"/>">
											<img src="<s:property value="smallImagePath"/>" height="60"/>
										</a>
									</td>
									<td><s:property value="name"/> </td>
									<td><s:property value="sn"/> </td>
									<td><s:property value="brand.name"/> </td>
									<td><s:property value="costPrice"/> </td>
									<td><s:property value="salePrice"/> </td>
									<td>
										<input type="button" value="选择该货品" class="left2right" data-productjson="<s:property value="productJsonString"/>"/>
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
    
