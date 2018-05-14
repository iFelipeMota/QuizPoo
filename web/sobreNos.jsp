<%-- 
    Document   : sobreNos
    Created on : 14/05/2018, 15:32:46
    Author     : ASSISTEC
--%>

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
                <a class="navbar-brand" href="home.jsp">
                    <i class="fa d-inline fa-gamepad fa-4x"></i>
                    <b><strong>Game Quiz</strong></b>
                </a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse text-center justify-content-end" id="navbar2SupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="fa d-inline fa-lg fa-reddit-alien"></i>&nbsp;
                                <br>Sobre nós</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <br><br>
        
        <div id="imgperf" >
            <div class="responsive">
                <div class="gallery">
                    <a target="_blank" href="img/rayman.jpeg">
                        <img src="img/rayman.jpeg" alt="raymanIvan" width="300" height="200">
                    </a>
                    <div class="desc">Ivan "SlugbedZ" Mota<br><p>Moderador</p></div>
                    
                </div>
            </div>
            <div class="responsive">
                <div class="gallery">
                    <a target="_blank" href="img/mario.jpg">
                        <img src="img/mario.jpg" alt="marioAndre" width="300" height="200">
                    </a>
                    <div class="desc">Andre "Pato" Mota<br><p>Moderador</p></div>
                </div>
            </div>
             <div class="responsive">
                <div class="gallery">
                    <a target="_blank" href="img/kratos.png">
                        <img src="img/kratos.png" alt="kratosLucas" width="300" height="200">
                    </a>
                    <div class="desc">Lucas "AxFort" Monteiro<br><p>Moderador</p></div>
                </div>
            </div>
        </div>
         <div class="responsive">
                <div class="gallery">
                    <a target="_blank" href="img/bomberman.jpg">
                        <img src="img/bomberman.jpg" alt="bomberFernando" width="300" height="200">
                    </a>
                    <div class="desc">Fernando "Bomba" Costa<br><p>Moderador</p></div>
                </div>
            </div>
        </div>
        <hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/>
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
