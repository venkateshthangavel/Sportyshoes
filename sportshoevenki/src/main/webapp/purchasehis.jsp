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
<b><h1 Style="color:red;">Purchase History of Users</h1></b><br><br>

    <%
	List<Purchase> p = (List<Purchase>) request.getAttribute("list");
	%>
<table border="1">

  <tr>
  <th>purchaseId</th>
  <th>Date of Purchase</th>
  <th>orderno</th>
  <th>productcategory</th>
  <th>Productid</th>
  <th>Productname</th>
  <th>productprice</th>
  <th>Username</th>
  </tr>
  
  <%
   for(Purchase ss: p){
  %>
   
   <tr>
   <td><%=ss.getPurchaseid() %></td>
   <td><%=ss.getDateofpurchase() %></td>
   <td><%=ss.getOrderno() %></td>
   <td><%=ss.getProductcategory() %></td>
   <td><%=ss.getProductid() %></td>
   <td><%=ss.getProductname() %></td>
   <td><%=ss.getProductprice() %></td>
   <td><%=ss.getUsername() %></td>
  
			
   </tr>
   <%
   }%>




</table>
		
</div>





</body>
</html>