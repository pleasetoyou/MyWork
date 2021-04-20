<%@ page import="java.io.IOException" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.List" %>
<%@ page import="Lin.NoteBook.Cart" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
    SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss");
    List list = (List)session.getAttribute("messageList");
    if(list != null) {
    	for(int i=0; i<list.size(); i++) {
    	  
         Cart message = (Cart) list.get(i);
         //list.remove(i);
         
         
   	      	   
  %>
     
               編號: <%=message.getBooknum() %> <br>
               書名: <%=message.getBookname() %> <br>
               價格:  <%=message.getPrice() %> <br>
               時間:  <%=format.format(message.getCreateTime()) %> <br><br><br>
                      
  <%
      }
    }
  %>
  <% out.print("<a href='delete.html'>刪除</a> <br/>"); %>
  <% out.print("<a href='Buy.html'>輸入頁面</a> <br/>"); %>
  <% out.print("<a href='QueryProductData'>購物車</a> <br/>"); %>
</body>
</html>