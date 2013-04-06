<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/public/jsp/taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<base href="<%=basePath%>">
	<title>收割记录</title>
	<%@include file="/public/jsp/common.jsp"%>
</head>

<body>
	<form id="form1" method="post">
		<table width="100%">
			<tr>
				<td>
					<table border="0" cellspacing="0" cellpadding="0" class="subNav mCenter" style="width:100%;">
			      		<tr>
			        		<td class="font12Blue p10"><span class="font12Blue_B">您当前所在位置：收割记录</td>
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
         					 <td class="dataListTitle"><span class="pl10">收割记录</span></td>
       					</tr>
						<tr>
							<td align="left" valign="top">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" class="dataList">
									<tr>
						                <th>序号</th>
						                <th>产品名称</th>
						                <th>产品批号</th>
						                <th>时间</th>
						                <th>规模</th>
						                <th>产量</th>
						                <th>储存地点</th>
						                <th>基地负责人</th>
						                <th>仓贮负责人</th>
						                <th>备注</th>
						                <th>操作</th>
						            </tr>
						            <c:forEach items="${datas}" var="data" varStatus="status">
						              	<tr>
						              		<td>${pager.start+status.index}</td>
						              		<td>${data.harvest_pname}</td>
						              		<td>${data.harvest_batch }</td>
						              		<td>${data.harvest_operatedate__disp }</td>
						              		<td>${data.harvest_scale }</td>
						              		<td>${data.harvest_yield }</td>
						              		<td>${data.harvest_storage }</td>
						              		<td>${data.harvest_respmanager }</td>
						              		<td>${data.harvest_storemanager }</td>
						              		<td>${data.harvest_comment }</td>
						              		<td>
						              			<a class=linkStyle href="grow/harvest/edit.html?harvest_id=${data.harvest_id}&register_id=${register_id}">修改</a>
												&nbsp;|&nbsp;
						                		<a class=linkStyle href="grow/harvest/delete.html?harvest_id=${data.harvest_id}&register_id=${register_id}" onclick="return confirm('确定删除吗?')">删除</a>
						              		</td>
						              	</tr>
						        	</c:forEach>
								</table>
							</td>
						</tr>
					</table>	
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			</tr>
				<td style="text-align:right">
					<input type="button" class="btnStyle" value="&nbsp;添&nbsp;加&nbsp;" onclick='window.location.href="<c:url value='/grow/harvest/add.html'/>?register_id=${register_id}"'/>
				</td>
			</tr>
		</table>
	</form>	
</body>
</html>