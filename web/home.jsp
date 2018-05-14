<%-- 
    Document   : home
    Created on : 07/05/2018, 21:38:40
    Author     : Ivan
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
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="theme.css" type="text/css"> </head>

    <body style="background-image: url('gitQuizPoo/web/img/BG.jpg');background-repeat:repeat;background-size:cover;" class="" >
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <nav class="navbar navbar-expand-md bg-primary navbar-dark bg-gradient">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <i class="fa d-inline fa-gamepad fa-4x"></i>
                    <b><strong>Game Quiz</strong></b>
                </a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse text-center justify-content-end" id="navbar2SupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="sobreNos.jsp">
                                <i class="fa d-inline fa-lg fa-reddit-alien"></i>&nbsp;
                                <br>Sobre nós</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <%

            if (session.getAttribute("userName") != null) {
                String name = (String) session.getAttribute("userName");

        %>
        <div> <br><br><br><br></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3"> </div>
                <div class="col-md-6">
                    <div class="card text-white p-5 bg-primary">
                        <div class="card-body">
                            <h2>Bem vindo <%=name%></h2>
                            <%}%>
                            <form action="ControleDeSessao">  
                                <br/>  
                                <%
                                    if (session.getAttribute("userName") == null) {
                                %>
                                <div class="py-5">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-3"> </div>
                                            <div class="col-md-6">
                                                <div class="card text-white p-5 bg-primary">
                                                    <div class="card-body">

                                                        <h1 class="mb-4">Login
                                                            <br>
                                                        </h1>
                                                        <form action="ControleDeSessao"> 
                                                            <div class="form-group">
                                                                <label>Nome</label>
                                                                <input type="text" class="form-control" name="userName" placeholder="Insira seu nome" > </div>
                                                            <button type="submit" name=login class="btn btn-secondary" value="Entrar">Login</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <%} else {%>  

                                <input type="submit" class="btn btn-secondary" name=logout value="Sair"/>
                                <input type="button" class="btn btn-secondary" onclick="document.location.href = 'quiz.jsp'" value="Realizar Quiz"/>  
                                <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>                  
    <br><br>
    <div>
                <% if(session.getAttribute("userName") != null){ 
                    Usuario user = new Usuario();
                    user.setNome((String)session.getAttribute("userName"));
                    user.pegarPartidas();
                   if (user.getLast10().size() > 0) { 
                %>
                <h2>Sua pontuação média: <%= user.getMedia() %></h2>
            <h2>Seus <%= user.getLast10().size() %> Ultimos Jogos</h2>
                 <table id="customers">
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
            
            <div>
                <% 
                   TestesRealizados teste = new TestesRealizados();
                   if (teste.getLast10Geral().size() > 0) { %>
                    <%if(teste.getLast10Geral().size() <= 10){%>
                        <h2>Ultimos <%= teste.getLast10Geral().size() %> Jogos</h2>
                    <%}else{ %>
                        <h2>Ultimos 10 Jogos</h2>        
                    <%}%>
                    <table id="customers">
                     <tr>
                            <th>Nome</th><th>Nota</th>
                     </tr>
                    <% 
                        int sizeList = (teste.getLast10Geral().size())-1;
                        int fimRank = sizeList - 10;
                        for(int i=sizeList;i>fimRank;i--){ %>
                     <tr>
                        <% if(i>=0){ %>
                        <td><%= teste.getLast10Geral().get(i).getUser() %></td>
                        <td><%= teste.getLast10Geral().get(i).getPontuacao() %>/100.0</td>
                        <%}else{}%>
                     </tr>
                
                    <%}%>
                 </table>
                <%}%>
           </div>

           <div>
                <% 
                  // TestesRealizados test = new TestesRealizados();
                   if (teste.getLast10Geral().size() > 0) { 
                    teste.gerarTopPontuacoes();
                %>
                    <%if(teste.getMelhoresNotas().size() <= 10){%>
                        <h2>Top <%= teste.getMelhoresNotas().size() %> Pontuaçoes</h2>
                    <%}else{ %>
                        <h2>Top 10 Pontuações</h2>        
                    <%}%>
                    <table id="customers">
                     <tr>
                            <th>Nome</th><th>Nota</th>
                     </tr>
                    <% 
                        int sizeList = (teste.getMelhoresNotas().size())-1;
                        int fimRank = sizeList - 10;
                        for(int i=sizeList;i>fimRank;i--){ %>
                     <tr>
                        <% if(i>=0){ %>
                        <td><%= teste.getMelhoresNotas().get(i).getUser() %></td>
                        <td><%= teste.getMelhoresNotas().get(i).getPontuacao() %>/100.0</td>
                        <%}else{}%>
                     </tr>
                    <%}%>
                 </table>
                <%}%>
           </div>
    
    
        <div class="py-5 bg-dark text-white">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <p class="lead">Sign up to our newsletter for the latest news</p>
                        <form class="form-inline">
                            <div class="form-group">
                                <input type="email" class="form-control" placeholder="Your e-mail here"> </div>
                            <button type="submit" class="btn btn-secondary ml-3">Subscribe</button>
                        </form>
                    </div>
                    <div class="col-4 col-md-1 align-self-center">
                        <a href="https://www.facebook.com" target="_blank">
                            <i class="fa fa-fw fa-facebook fa-3x text-white"></i>
                        </a>
                    </div>
                    <div class="col-4 col-md-1 align-self-center">
                        <a href="https://twitter.com" target="_blank">
                            <i class="fa fa-fw fa-twitter fa-3x text-white"></i>
                        </a>
                    </div>
                    <div class="col-4 col-md-1 align-self-center">
                        <a href="https://www.instagram.com" target="_blank">
                            <i class="fa fa-fw fa-instagram text-white fa-3x"></i>
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 mt-3 text-center">
                        <p>© Copyright 2018 Turma ADS - All rights reserved.</p>
                    </div>
                </div>
            </div>
        </div>
        
</body>
</html>