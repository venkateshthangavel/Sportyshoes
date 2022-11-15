<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String productpp=request.getParameter("price"); %>
<%String productid=request.getParameter("id");%>
<%String productcategory=request.getParameter("category");%>
<%String productname=request.getParameter("productname"); %>
<%Random rand=new Random();
 int ran=rand.nextInt(130001,132000); %>

<div align="center">
		<b><h1>Sporty Shoes  &#128095; &#128095;  &#128095;</h1></b><br>
		<h2>PAY</h2>
		
			<table>
				
				<tr>
				<td><b>Order Number</b>&nbsp;&nbsp;&nbsp;<%=ran %></td>
				</tr>
				
				<tr>
				<td><b>ProductID</b>&nbsp;&nbsp;&nbsp;<%=productid %></td>
				</tr>
				
				
				
				
				<tr>
					<td><b>Product Price </b>Rupees</td><td>&nbsp;&nbsp;&nbsp;<%=productpp %> /-</td>
				</tr>
				
				
				
				
				<tr>
				<td><b>Productname</b>&nbsp;&nbsp;&nbsp;<%=productname%></td>
				</tr>
				
				
				
				
			</table><br>
			<h3>Card Payment</h3>
			<table>
				
				<tr>
					<td><b>Card Number</b></td><td><input type ="number" name="cardno"></td>
				</tr>
				<tr>
					<td><b>Expiry Date</b></td><td><input type="month" name="month"  min="2022" max="2200"></td>
				</tr>
				<tr>
					<td><b>Password </b></td><td><input type ="password" name="psd"></td>
				</tr>
			</table><br>
		<form action="PaymentController" >	<input type="submit" value="Proceed to pay">
			
			
			
			
			<input type="hidden" id="order" name="order" value=<%=ran %>>
			<input type="hidden" id ="amt" name="amt" value=<%=productpp %>>
			<input type="hidden" id ="pname" name="pname" value=<%=productname %>>
			<input type="hidden" id ="pid" name="pid" value=<%=productid %>>
			<input type="hidden" id ="cate" name="cate" value=<%=productcategory %>>
		</form>
	</div>

</body>
</html>