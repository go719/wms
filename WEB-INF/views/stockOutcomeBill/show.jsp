<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>信息管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link href="/style/basic_layout.css" rel="stylesheet" type="text/css">
    <link href="/style/common_style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/js/jquery/jquery.js"></script>
    <script type="text/javascript" src="/js/commonAll.js"></script>
    <script type="text/javascript" src="/js/plugins/My97DatePicker/WdatePicker.js"></script>
    <script type=text/javascript>
        $(function(){
            $.each($("input"),function(index,item){
                item.readOnly=true;
            });
        });
    </script>
</head>
<body>
<%@ include file="/WEB-INF/views/common/common_msg.jsp" %>
<s:form name="editForm" namespace="/" action="stockOutcomeBill_saveOrUpdate" method="post" id="editForm">
    <s:hidden name="stockOutcomeBill.id"/>
    <div id="container">
        <div id="nav_links">
            <span style="color: #1A5CC6;">销售出库单查看</span>
            <div id="page_close">
                <a>
                    <img src="/images/common/page_close.png" width="20" height="20" style="vertical-align: text-top;"/>
                </a>
            </div>
        </div>
        <div class="ui_content">
            <table cellspacing="0" cellpadding="0" width="100%" align="left" border="0">
                <tr>
                    <td class="ui_text_rt" width="140">订单编号</td>
                    <td class="ui_text_lt">
                        <s:textfield name="stockOutcomeBill.sn" cssClass="ui_input_txt02"/>
                    </td>
                </tr>
                <tr>
                    <td class="ui_text_rt" width="140">出库仓库</td>
                    <td class="ui_text_lt">
                        <s:textfield name="stockOutcomeBill.depot.name" cssClass="ui_input_txt02"/>
                    </td>
                </tr>
                <tr>
                    <td class="ui_text_rt" width="140">业务时间</td>
                    <td class="ui_text_lt">
                        <s:date name="stockOutcomeBill.vdate" format="yyyy-MM-dd" var="vd"/>
                        <s:textfield name="stockOutcomeBill.vdate" cssClass="ui_input_txt02" value="%{#vd}"/>
                    </td>
                </tr>
                <!--==============================================-->
                <tr>
                    <td></td>
                    <td>
                        <table class="edit_table" cellspacing="0" cellpadding="0" border="0">
                            <thead>
                            <tr>
                                <th width="10"></th>
                                <th width="120">货品</th>
                                <th width="120">品牌</th>
                                <th width="120">价格</th>
                                <th width="120">数量</th>
                                <th width="120">金额小计</th>
                                <th width="180">备注</th>
                            </tr>
                            </thead>
                            <tbody id="edit_table_body">
                                <s:iterator value="stockOutcomeBill.items">
                                <tr>
                                    <td></td>
                                    <td>
                                        <s:textfield name="product.name" disabled="true" readonly="true" cssClass="ui_input_txt02"
                                                     style="width:300px" tag="name"/>
                                        <img src="/images/common/search.png" class="searchproduct"/>
                                        <s:hidden name="product.id" tag="pid"/>
                                    </td>
                                    <td><span tag="brand"><s:property value="product.brand.name"/></span></td>
                                    <td><s:textfield tag="salePrice" name="salePrice"
                                                     cssClass="ui_input_txt02"/></td>
                                    <td><s:textfield tag="number" name="number"
                                                     cssClass="ui_input_txt02"/></td>
                                    <td><span tag="amount"><s:property value="amount"/></span></td>
                                    <td><s:textfield tag="remark" name="remark"
                                                     cssClass="ui_input_txt02"/></td>
                                </tr>
                                </s:iterator>
                                <tr>
                                    <td></td>
                                    <td colspan="6" style="text-align: center;">
                                        <span>入库总数量:<s:property value="stockOutcomeBill.totalNumber"/></span>
                                        <span style="padding-left: 100px;">入库总金额:<s:property value="stockOutcomeBill.totalAmount"/></span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="ui_text_lt">
                        &nbsp;<input id="cancelbutton" type="button" value="返回订单列表" onclick="window.history.back();" class="ui_input_btn01"/>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</s:form>
</body>
</html>