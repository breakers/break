<%@ page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@page import="java.util.Calendar" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.DateFormat" %>
<%@page import="java.text.SimpleDateFormat;" %>

<!DOCTYPE html>
<html lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<% DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
Calendar cal = Calendar.getInstance();
pageContext.setAttribute("dia","01"); 
pageContext.setAttribute("mes",cal.get(Calendar.MONTH)+1); 
pageContext.setAttribute("año",cal.get(Calendar.YEAR)); 
%>
<c:set value="2014" var="añof"></c:set>
</head>
<body>
	<div class="table-responsive" id="divTabla">
		<table id="sample-table-1" class="table table-bordered">
			<thead>
				<tr>
					<th width="70" style="text-align:center;"><i class="icon-check bigger-110 hidden-480"></i> Numero</th>
					<th width="100" style="text-align:center;"><i class="icon-money bigger-110 hidden-480"></i> Monto</th>
					<th width="100" style="text-align:center;"><i class="icon-flag-alt bigger-110 hidden-480"></i> Fecha Emision</th>
					<th width="100" style="text-align:center;"><i class="icon-flag bigger-110 hidden-480"></i> Fecha Vencimiento</th>
					<th width="100" style="text-align:center;"><i class="icon-comment-alt bigger-110 hidden-480"></i> Motivo</th>
				</tr>
			</thead>
				<c:forEach begin="1" end="${param.cuot}" var="i">
			<tbody>
				<tr>
					<td style="text-align:center;">${i}</td>
					<td style="text-align:center;">S/. <span><fmt:formatNumber value="${param.monto/param.cuot}" maxFractionDigits="2" minFractionDigits="2"/></span></td>
					<c:if test="${((mes+i)>12 ? (mes+i)-12 : (mes+i)) < 10}">
					<c:set value="0${((mes+i)>12 ? (mes+i)-12 : (mes+i))}" var="mesf"></c:set>
					</c:if>
					<c:if test="${((mes+i)>12 ? (mes+i)-12 : (mes+i)) > 9}">
					<c:set value="${((mes+i)>12 ? (mes+i)-12 : (mes+i))}" var="mesf"></c:set>
					</c:if>
					<td style="text-align:center;">${dia}-${mesf}-${añof}</td>
					<td style="text-align:center;">15-${mesf}-${añof}</td>
					<td style="text-align:center;">Nueva Conexion</td>
					<c:if test="${mesf == 12}">
					<c:set value="2015" var="añof"></c:set>
					</c:if>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div><!-- /.table-responsive -->
	
</body>
</html>