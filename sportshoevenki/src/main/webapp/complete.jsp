<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="com.example.demo.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Contents</title>
</head>
<body>
<div align="center">
<b><h1 style="color:blue;">Welcome Admin &#127774; &#127774;	&#127774; </h1></b><br><br>
<b><p style="color:blue;">Here the Admin can Perform the Below Operations...</p></b><br><br><br>



<a href="add.jsp"><button >Add The Product</button></a><br><br>
<a href="updatepro.jsp"><button >Update The Product</button></a><br><br>
<a href="deletepro.jsp"><button >Delete The Product</button></a><br><br>

<form action="seeall">
<input type="submit" value="see all the products">
<br><br>
</form>

<form action="all">
<input type="submit" value="See All Users">
<br><br>
</form>

<form action="purchasehistory">
<input type="submit" value="View Purchase History">
<br><br>

</form>
</div>

</body>
</html>