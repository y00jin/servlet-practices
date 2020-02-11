<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var='row'	value="${param.r }" />
	<c:if test="${empty row }">
		<c:set var='row'	value='4' />
	</c:if>
	<table border="1" cellspacing="0" cellpadding="5">
		<c:forEach begin='1' end = '${row }' var = 'r' step = '1'>
			<tr>
				<c:forEach begin='1' end = '${param.c }' var ='col' step='1'>
					<td>cell(${r },${col })</td>	
				</c:forEach>
			</tr>	
		</c:forEach>
	</table>
</body>
</html>