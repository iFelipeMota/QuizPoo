<%-- 
    Document   : home
    Created on : 07/05/2018, 21:38:40
    Author     : a
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatepg.quiz.ControleDeSessao"%>
<%@page import="br.com.fatepg.quiz.Questoes"%>
<%@page import="br.com.fatepg.quiz.Quiz"%>
<%@page import="br.com.fatepg.quiz.TestesRealizados"%>
<%@page import="br.com.fatepg.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Quiz</title>
    </head>
    <body>
        <h1>Web Quiz</h1>
        
        <%  
      
        if(session.getAttribute("userName") != null){  
        String name=(String)session.getAttribute("userName"); 
        %>
        <h2>Bem vindo <%=name%></h2>
         <%}%>
        <form action="ControleDeSessao">  
            <br/>  
            <%  
                if(session.getAttribute("userName") == null){ 
            %>
                Login:<input type="text" name="userName"/>
                <input type="submit" name=login  value="Entrar"/>
            <%}else{%>  
                <input type="submit" name=logout value="Sair"/>
                <input type="button" onclick="document.location.href='quiz.jsp'" value="Realizar Quiz"/>  
            <%}%>
        </form>  
            <div>

                <% if(session.getAttribute("userName") == null){ 
                    TestesRealizados teste = new TestesRealizados();
                   if (teste.getLast10Geral().size() > 0) { %>
             <h2>Ultimos <%= teste.getLast10Geral().size() %></h2>
                 <table>
                     <tr>
                         <th>Nome</th><th>Nota</th><th>Data</th>
                     </tr>

                    <% 
                        int sizeList = (teste.getLast10Geral().size())-1;
                        int fimRank = sizeList - 10;
                        for(int i=sizeList;i>fimRank;i--){ %>
                     <tr>
                        <% if(i>=0){ %>
                        <td><%= teste.getLast10Geral().get(i).getUser() %></td>
                        <td><%= teste.getLast10Geral().get(i).getPontuacao() %></td>
                        <td>teste</td>
                        <%}else{}%>
                     </tr>
                
                    <%}%>
                 </table>
                  <%}%>
                <%}%>
           </div>
           
           <div>
                <% if(session.getAttribute("userName") != null){ 
                    Usuario user = new Usuario();
                   if (user.getLast10().size() > 0) { %>
             <h2>Ultimos <%= user.getLast10().size() %></h2>
                 <table>
                     <tr>
                         <th>Nota</th>
                     </tr>

                    <% 
                        int sizeList = (user.getLast10().size())-1;
                        int fimRank = sizeList - 10;
                        for(int i=sizeList;i>fimRank;i--){ %>
                     <tr>
                        <% if(i>=0){ %>
                        <td><%= user.getLast10().get(i) %></td>
                        
                        <%}else{}%>
                     </tr>
                
                    <%}%>
                 </table>
                  <%}%>
                <%}%>
</div>
           
    </body>
    </html>