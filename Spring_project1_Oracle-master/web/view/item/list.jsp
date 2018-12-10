<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<h1>Item Page</h1>
<c:forEach var="i" items="${itemlist }">
	<h5>${i.id }   ${i.name }    ${i.price } <img src="img/${i.imgname }"/></h5>
</c:forEach>