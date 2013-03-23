<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/public/taglibs.jsp"%>
<html>
<head>
	<base href="<%=basePath%>">
    <title></title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/public/css/reset.css'/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/public/css/style.css'/>" />
    <%@include file="/public/jsp/jquery.jsp"%>
    <script type="text/javascript">
	    $(function() {
	    	$( "#outstock_outdate" ).datepicker();
	  	});
			  
		function formCheck(){
			if (document.form1.outstock_stockid.value == ""){
                alert("请选择库存肥料!");
                document.form1.outstock_stockid.focus();
                return (false);
        	}  
			if (document.form1.outstock_outdate.value == ""){
                alert("请输入出库时间!");
                document.form1.outstock_outdate.focus();
                return (false);
        	}
        	if(document.form1.useObject.value == ""){
        		alert("请输入肥料用途!");
                document.form1.useObject.focus();
                return (false);
        	}
        	if (document.form1.outstock_quantity.value == "" || isNaN(document.form1.outstock_quantity.value)){
	        	alert("请输入正确的出库数量!");
	            document.form1.outstock_quantity.focus();
	            return false;
		     }
		     if (document.form1.outstock_outmanager.value == ""){
                alert("请输入出库人!");
                document.form1.outstock_outmanager.focus();
                return false;
		      }
        	return true;
        }
        
        function doOutStock(){
        	if(formCheck()) {
        		$.ajax({
				   type: "POST",
				   url: "<%=basePath%>/manure/outstock/checkOutStock.html",
				   data: 'outstock_stockid=' + $('#outstock_stockid').val() + '&outstock_quantity=' + $('#outstock_quantity').val(),
				   success: function(rs){
				     	if(!rs){
				     		alert("当前肥料库存不足!");
				     		return;
				     	}
				     	$('#form1').submit();
				   }
				});
        	}
        }
    </script>
</head>
<body>
	<form id="form1" name="form1" method="post" action="manure/outstock/save.html">
		<table width="100%">
			<tr>
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="subNav mCenter" style="width:100%;">
			      		<tr>
			        		<td class="font12Blue p10"><span class="font12Blue_B">您当前所在位置：肥料出库</td>
			      		</tr>
			   		 </table>
				</td>
			</tr>
			<tr>
				<td>
					<table style="width:100%;">
						<tr>
							<td class="dataListTitle"><span class="pl10">肥料出库</span></td>
						</tr>
						<tr>
							<td>
								<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="dataList">
									<tr> 
								    	<td width="15%" class=forumrow><div align="right">肥料名称：</div></td>
								      	<td width="40%" class=forumrow> 
									  		<select id="outstock_stockid" name="outstock_stockid">
									  			<option value="">请选择出库肥料</option>
									  			<c:forEach items="${stocks}" var="stock">
									  				<option value="${stock.stock_id }">${stock.stock_nameid__disp}_${stock.stock_sizeid__disp}_${stock.stock_batchid__disp}_${stock.stock_producerid__disp}</option>
									  			</c:forEach>
									  		</select>
									  	</td>
								      	<td width="15%" class=forumrow><div align="right">出库时间：</div></td>
								      	<td width="30%" class=forumrow><input id="outstock_outdate" name="outstock_outdate" /></td>
								    </tr>
								    <tr> 
								      	<td  class=forumrow><div align="right">施用于：</div></td>
								      	<td  class=forumrow>
										 	<input id="useObject" name="useObject" /> 数量
										 	<input name="outstock_quantity" type="text" id="outstock_quantity" size="5" /> 公斤
									 	</td>
										<td class=forumrow><div align="right">出库人员：</div></td>
								      	<td class=forumrow><input name="outstock_outmanager" type="text" id="outstock_outmanager" /></td>
								    </tr>
								    <tr> 
								      	<td rowspan="2" class=forumrow><div align="right">备注：</div></td>
								     	<td colspan="3" class=forumrow><textarea name="outstock_comment" cols="63" rows="5"></textarea></td>
								    </tr>
								    <tr> 
								      	<td colspan="4" align="center" class=forumrow>
								      		<input type="button" value="确&nbsp;定" onclick="doOutStock()"/> 
								        	<input type="reset" value="清&nbsp; 空" />
								        </td>
								    </tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>	
		</table>
	</form>
</body>
</html>