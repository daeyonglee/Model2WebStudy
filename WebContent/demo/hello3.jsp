<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>
<h2>${message}</h2>
<h2>좋아하는 야구팀</h2>
<ul>
	<c:forEach var="i" items="${list}">
	<li>${i}</li>
	</c:forEach>
</ul>
<script type="text/javascript">
	
</script>
</body>
</html>