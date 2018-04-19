<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>파일럿 블로그 템플릿 디자인</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery/Bootstrap JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
          data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
            class="icon-bar"></span> <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand glyphicon glyphicon-education" href="/" style="color: yellow;">BANGEY
          BLOG</a>
      </div>

      <div id="navbar" class="navbar-collapse collapse text-uppercase">
        <ul class="nav navbar-nav">
          <li><a href="/">HOME</a></li>
          <li><a href="#">GUESTBOOK</a></li>
          <li class="dropdown"><a href="#" data-toggle="dropdown" role="button"
            aria-expanded="false">BOARD <span class="caret"></span>
          </a>
            <ul class="dropdown-menu" role="menu">
              <li><a href="#">FREE BOARD</a></li>
              <li><a href="#">JOB BOARD</a></li>
              <li class="divider"></li>
              <li><a href="#">Q&A</a></li>
              <li><a href="#">NOTICE</a></li>
            </ul></li>
          <li><a href="#">RESOURCE ROOM</a></li>
          <li><a href="/user/list.jsp">MEMBER</a></li>
        </ul>
        <form class="navbar-form navbar-right" action="/users/login.jsp" method="post">
          <div class="form-group">
            <input type="text" name="id" placeholder="ID" class="form-control" size="10">
          </div>
          <div class="form-group">
            <input type="password" name="passwd" placeholder="PASSWORD" class="form-control"
              size="10">
          </div>
          <button type="submit" class="btn btn-success">LOGIN</button>
          <a class="glyphicon glyphicon-log-in" href=""> JOIN</a>
        </form>
      </div>
    </div>
  </nav>

  <div class="container">
    <div class="jumbotron">
      <div class="container">
        <h2 class="text-danger">${title}</h2>
        <p>This is a Blog for Servlet/JSP Trainning Pilot Website. It includes a large callout
          called a jumbotron and three supporting pieces of content. Use it as a starting point to
          create something more unique.</p>
        <p>
          <a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a>
        </p>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <h2>Subject1</h2>
        <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus
          commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam
          porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
        <p>
          <a class="btn btn-info" href="#" role="button">View &raquo;</a>
        </p>
      </div>
      <div class="col-md-4">
        <h2>Subject2</h2>
        <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus
          commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam
          porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
        <p>
          <a class="btn btn-info" href="#" role="button">View &raquo;</a>
        </p>
      </div>
      <div class="col-md-4">
        <h2>Subject3</h2>
        <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam.
          Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo,
          tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
        <p>
          <a class="btn btn-info" href="#" role="button">View &raquo;</a>
        </p>
      </div>
    </div>

    <hr>

    <footer>
      <p>Copyright &copy; 2017 BANGRY ALL RIGHTS RESERVED</p>
    </footer>

  </div>
</body>
</html>
