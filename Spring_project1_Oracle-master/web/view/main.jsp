<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<title>나 혼자 못산다</title>
</head>
	<section>
		<c:choose>
			<c:when test="${centerpage != null}">
				<jsp:include page="${centerpage}.jsp"></jsp:include>
			</c:when>
			<c:otherwise>
				<jsp:include page="center.jsp"></jsp:include>
			</c:otherwise>
		</c:choose>
	</section>
</body>
</html>
