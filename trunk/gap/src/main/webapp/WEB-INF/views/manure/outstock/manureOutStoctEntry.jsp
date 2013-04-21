<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/public/jsp/taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<base href="<%=basePath%>">
    <title></title>
    <%@include file="/public/jsp/commonjq.jsp"%>
    <script type="text/javascript">
		function formCheck(){
			if (document.form1.stockId.value == ""){
                alert("请选择库存肥料!");
                document.form1.stockId.focus();
                return (false);
        	}  
			if (document.form1.outdate.value == ""){
                alert("请输入出库时间!");
                document.form1.outdate.focus();
                return (false);
        	}
        	if(document.form1.registerId.value == ""){
        		alert("请输入肥料用途!");
                document.form1.registerId.focus();
                return (false);
        	}
        	if (document.form1.quantity.value == "" 
        		|| isNaN(document.form1.quantity.value)
        		|| document.form1.quantity.value == 0){
	        	alert("请输入正确的出库数量!");
	            document.form1.quantity.focus();
	            return false;
		     }
        	return true;
        }
        
        function doOutStock(){
        	if(formCheck()) {
        		var quantity =$('#quantity').val();
        		var oquantity = $('#oquantity').val();
        		quantity = (quantity == '' || isNaN(quantity)) ? 0 : parseFloat(quantity);
        		oquantity = (oquantity == '' || isNaN(oquantity)) ? 0 : parseFloat(oquantity);
        		var dquantity = quantity - oquantity;
        		if (dquantity <= 0) {
        			//当修改的金额比原来的还小，则无需校验库存.
        			$('#form1').submit();
        			return;
        		}
        		
        		$.ajax({
				   type: "POST",
				   url: "<%=basePath%>/manure/outstock/checkOutStock.html",
				   data: 'stockId=' + $('#stockId').val() + '&quantity=' + dquantity,
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
	<form id="form1" name="form1" method="post" action="<c:url value='/manure/outstock/save.html'/>">
		<input type="hidden" name="id" value="${data.id}">
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
								      	<td width="45%" class=forumrow>
								      		<c:if test="${_action == 'add'}">
										  		<select id="stockId" name="stockId" style="width :90%">
										  			<option value="">请选择出库肥料</option>
										  			<c:forEach items="${stocks}" var="stock">
										  				<option value="${stock.id}">${stock.__disp.nameId}_${stock.__disp.sizeId}_${stock.__disp.batchId}_${stock.__disp.producerId}</option>
										  			</c:forEach>
										  		</select>
										  		<font color=red>*</font>
										  	</c:if>
										  	<c:if test="${_action != 'add'}">
										  		<input type="hidden" id="stockId" name="stockId" value="${data.stockId}"/>
										  		<input type="text" value="${data.__disp.stockId}" disabled="disabled" size="40"/>
										  	</c:if>
									  	</td>
								      	<td width="15%" class=forumrow><div align="right">出库时间：</div></td>
								      	<td width="25%" class=forumrow><input id="outdate" name="outdate" value="${data.__disp.outdate}" class="Wdate" onClick="WdatePicker()"/><font color=red>*</font></td>
								    </tr>
								    <tr> 
								      	<td  class=forumrow><div align="right">施用于：</div></td>
								      	<td  class=forumrow>
								      		<table cellpadding="0" cellspacing="0" style="width:100%">
								      			<tr>
								      				<td style="width:50%">
								      					<c:if test="${_action == 'add'}">
										      				<select id="registerId" name="registerId" style="width:100%">
														 		<c:forEach items="${registerList}" var="register">
														 			<option value="${register.id}">${register.description}</option>
														 		</c:forEach>
														 	</select>
														 </c:if>
														 <c:if test="${_action != 'add'}">
														 	<input type="hidden" id="registerId" name="registerId" value="${data.registerId}"/>
														 	<input type="hidden" name="cellId" value="cellId"/>
														 	<input type="text" value="${data.__disp.registerId}" disabled="disabled" />
														 </c:if>
								      				</td>
								      				<td><font color=red>*</font></td>
								      				<td>
								      					<input type="hidden" id="oquantity" name="__disp.quantity" size="5" value="${data.quantity}"/>
								      					<input type="text" id="quantity" name="quantity" size="5" value="${data.quantity}"/>
								      				</td>
								      				<td><font color=red>*</font>公斤</td>
								      			</tr>
								      		</table>
									 	</td>
										<td class=forumrow><div align="right">出库人员：</div></td>
								      	<td class=forumrow>
								      		<input type="hidden" name="outuserId" size="25" maxlength="30" value="${data.outuserId}"/>
								      		<input type="text" value="${data.__disp.outuserId}" disabled="disabled"/>
								      	</td>
								    </tr>
								    <tr> 
								      	<td rowspan="2" class=forumrow><div align="right">备注：</div></td>
								     	<td colspan="3" class=forumrow><textarea name="comment" cols="63" rows="5">${data.comment}</textarea></td>
								    </tr>
								    <tr> 
								      	<td colspan="4" align="center" class=forumrow>
								        	<c:if test="${_action == 'add'}">
										      	<input type="button" class="btnStyle" value="添&nbsp;加" onclick="doOutStock()"/> 
								        		<input type="reset" class="btnStyle" value="清&nbsp; 空" />
								      		</c:if>
								      		<c:if test="${_action == 'edit'}">
								      			<input type="button" class="btnStyle" value="保&nbsp;存" onclick="doOutStock()"/> 
								      		</c:if>
								      		<c:if test="${_action == 'edit' || _action == 'disp'}">
								      			<input type="button" class="btnStyle" value="返&nbsp;回" onclick="window.location.href='<c:url value="/manure/outstock/list.html"/>'"/>
								      		</c:if>
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