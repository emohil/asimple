<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/public/jsp/taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<base href="<%=basePath%>">
    <title></title>
    <%@include file="/public/jsp/common.jsp"%>
</head>
<body>
	<form id="form1" method="post">
		<table width="100%">
			<!-- search -->
			<tr>
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="subNav mCenter" style="width:100%;">
			      		<tr>
			        		<td class="font12Blue p10"><span class="font12Blue_B">您当前所在位置：${resource.title}</td>
			      		</tr>
			   		 </table>
				</td>
			</tr>
			<tr>
				<td>
					<table style="width:100%;">
						<tr>
							<td class="dataListTitle"><span class="pl10">查询</span></td>
						</tr>
						<tr>
							<td>
								<table style="width:100%;">
									<tr>
										<td style="30%">${resource.name}</td>
										<td style="text-align:right">
											<input type="button" class="btnStyle" value="&nbsp;新&nbsp;建&nbsp;" onclick="window.location.href='<c:url value="/manure/resource/add.html?type=${type}"/>';"/>
										</td>
									</tr>
									<tr>
										<td>
											<input type="text" name="searcher.sfs['name'].value" value="${searcher.sfs['name'].value}"/>
											<input type="hidden" name="searcher.sfs['name'].name" value="resource_name"/>
											<input type="hidden" name="searcher.sfs['name'].op.code" value="1"/>
										</td>
										<td style="text-align:right">
											<input type="button" class="btnStyle" value="&nbsp;查&nbsp;询&nbsp;" onclick="doMethod('search');"/>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<!-- list -->
			<tr>
				<td>
					<table cellpadding="0" cellspacing="0" style="width:100%;">
						<tr>
							<td>
								<table cellspacing="0" style="width: 100%;">
									<tr>
										<td>
											<div style="margin-bottom: -4px">
												<%@include file="/public/jsp/view_infos.jsp"%>
											</div>
										</td>
										<td style="text-align: right;">
											<div>
												<%@include file="/public/jsp/view_pages.jsp"%>
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
         					 <td class="dataListTitle"><span class="pl10">${resource.title}</span></td>
       					</tr>
						<tr>
							<td align="left" valign="top">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" class="dataList">
									<tr>
										<th style="width:10%">ID</th>
										<th style="width:20%">${resource.name}</th>
										<th style="width:20%">操作</th>
									</tr>
									<c:forEach items="${datas}" var="data">
										<tr>
											<td>${data['resource_id']}</td>
											<td>${data['resource_name']}</td>
											<td>
												<a class=linkStyle href="manure/resource/entry.html?type=${type}&resourceId=${data.resource_id}">修改</a>
												&nbsp;|&nbsp;
												<a class=linkStyle href="manure/resource/delete.html?type=${type}&resourceId=${data.resource_id}" onclick="return confirm('确定删除吗?');">删除</a>
											</td> 
										</tr>
									</c:forEach>
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