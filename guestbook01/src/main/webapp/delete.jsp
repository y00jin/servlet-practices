<%@page import="com.douzone.guestbook.dao.GuestbookDao" %>
<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<GuestbookVo> list = new GuestbookDao().findAll();

	String no = request.getParameter("no");
	String password = request.getParameter("password");

	for (GuestbookVo vo : list) {
		if (Integer.toString(vo.getNo()).equals(no)) {
			if (vo.getPassword().equals(password)) {
				GuestbookVo deleteVo = new GuestbookVo();
				deleteVo.setNo(Integer.parseInt(no));
				new GuestbookDao().delete(deleteVo);
				response.sendRedirect("/guestbook");
				break;
			} else {
				break;
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("잘못된 비밀번호입니다.");
		document.location.href = "/guestbook/deleteform.jsp";
	</script>
</body>
</html>