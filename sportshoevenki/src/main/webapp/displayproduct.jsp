<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.example.demo.*"%>
    <%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<b><h1 Style="color:red;">Shop Your products here</h1></b><br><br>

    <%
	List<Product> s = (List<Product>) request.getAttribute("list");
	%>
<table border="1">

  <tr>
  <th>ProductId</th>
  <th>ProductName</th>
  <th>Description</th>
  <th>Category</th>
  <th>Price</th>
  <th>Quantity</th>
  <th>Size</th>
  <th>Buying Option</th>
  </tr>
  
  <%
   for(Product ss: s){
  %>
   
   <tr>
   <td><%=ss.getId() %></td>
   <td><%=ss.getProductname() %></td>
   <td><%=ss.getDescription() %></td>
   <td><%=ss.getCategory() %></td>
   <td><%=ss.getPrice() %></td>
   <td><%=ss.getQuantity() %></td>
   <td><%=ss.getSize() %></td>
  
   <td><form action="buy.jsp" >	<input type="submit" value="Buy">
			
			
			
			
			<input type="hidden" id="price" name="price" value=<%=ss.getPrice()%>>
			<input type="hidden" id ="id" name="id" value=<%=ss.getId() %>>
			<input type="hidden" id ="productname" name="productname" value=<%=ss.getProductname()%>>
			<input type="hidden" id="category" name="category" value=<%=ss.getCategory() %>>
			
		</form>
	</td>
	</tr>



<%} %>
</table>

</div>

</body>
</html>