<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript" src="/js/jquery/jquery.js"></script>
	<script type="text/javascript" src="/js/plugins/Highcharts-4.0.4/highcharts.js"></script>
	<script type="text/javascript" src="/js/plugins/Highcharts-4.0.4/exporting.js"></script>
	<script type="text/javascript">
		$(function(){
		    $('#container').highcharts({
		        title: {
		            text: '采购报表',
		            x: -20 //center
		        },
		        subtitle: {
		            text: '按[ <s:property value="#groupName"/> ]分组',
		            x: -20
		        },
		        xAxis: {
		            categories: <s:property value="#groupTypes" escapeHtml="false"/>
		        },
		        yAxis: {
		            title: {
		                text: '采购总金额 (¥)'
		            },
		            plotLines: [{
		                value: 0,
		                width: 1,
		                color: '#808080'
		            }]
		        },
		        tooltip: {
		            valueSuffix: '元'
		        },
		        series: [{
		            name: '采购金额',
		            data:  <s:property value="#totalAmount"/>
		        }]
		    });

		});
	</script>
<title>PSS-采购报表-图表分析</title>
</head>
<body>
	<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
</body>
</html>
    
