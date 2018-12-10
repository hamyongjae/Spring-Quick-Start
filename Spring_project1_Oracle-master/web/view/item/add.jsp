<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>Item Add Page</h1>
<form action="additemimpl.hw" method="POST"
enctype="multipart/form-data">
ID<input type="text" name="id"><br>
NAME<input type="text" name="name"><br>
PRICE<input type="number" name="price"><br>
IMG<input type="file" name="img"><br>

<input type="submit" value="ADD"><br>
</form>