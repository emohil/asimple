<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/public/jsp/taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<base href="<%=basePath%>">
    <title></title>
    <%@include file="/public/jsp/commonjq.jsp"%>
    <script type="text/javascript">
    
	    function doSubmit() {
	    	if (document.getElementById('resource_name').value == '') {
	    		alert('${resource.name}不能为空');
	    		return false;
	    	}
	    	$.ajax({
	    		type: "POST",
			   	url: "<%=basePath%>/manure/resource/checkResource.html",
			   	data: 'type=${type}&resource_name=' + $('#resource_name').val(),
			   	success: function(rs){
			     	if(!rs){
			     		alert("当前${resource.name}已存在!");
			     		return;
			     	}
			     	$('#form1').submit();
			   	}
			});
		}
		
		function doCancel() {
			window.location.href = '<c:url value="/manure/resource/list.html?type=${type}"/>';
		}
    </script>
</head>
<body>
	<form id="form1" method="post" action="manure/resource/save.html">
		<input type="hidden" name="type" value="${type}"/>
		<input type="hidden" name="data['resource_id']" value="${data.resource_id }"/>
		<input type="hidden" name="data['resource_type']" value="${type}"/>
		
		<table width="100%">
			<tr>
				<td>
					<table style="width:100%;">
						<tr>
							<td class="dataListTitle"><span class="pl10">${resource.title}</span></td>
						</tr>
						<tr>
							<td>
								<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="dataList">
									<tr>
										<td class=forumrow style="30%"><div align="right">${resource.name}:</div></td>
										<td class=forumrow>
											<input id="resource_name" type="text" name="data['resource_name']" value="${data.resource_name }"/>
										</td>
									</tr>
									<tr>
										<td style="text-align:right"><input type="button" value="&nbsp;取&nbsp;消&nbsp;" class="btnStyle" onclick="doCancel();"/></td>
										<td style="text-align:left"><input type="button" value="&nbsp;确&nbsp;认&nbsp;" class="btnStyle" onclick="doSubmit();"/></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
		</table>
	</form>
</body>
</html>