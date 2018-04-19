<%@page import="java.util.List"%>
<%@page import="kr.or.kosta.shoppingmall.user.domain.User"%>
<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>파일럿 블로그 템플릿 디자인</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery/Bootstrap JS -->
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed"
          data-toggle="collapse" data-target="#navbar"
          aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span> <span
            class="icon-bar"></span> <span class="icon-bar"></span> <span
            class="icon-bar"></span>
        </button>
        <a class="navbar-brand glyphicon glyphicon-education" href="/"
          style="color: yellow;">BANGEY BLOG</a>
      </div>

      <div id="navbar" class="navbar-collapse collapse text-uppercase">
        <ul class="nav navbar-nav">
          <li><a href="/">HOME</a></li>
          <li><a href="#">GUESTBOOK</a></li>
          <li class="dropdown"><a href="#" data-toggle="dropdown"
            role="button" aria-expanded="false">BOARD <span
              class="caret"></span>
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
        <form class="navbar-form navbar-right" action="/users/login.jsp"
          method="post">
          <div class="form-group">
            <input type="text" name="id" placeholder="ID"
              class="form-control" size="10">
          </div>
          <div class="form-group">
            <input type="password" name="passwd" placeholder="PASSWORD"
              class="form-control" size="10">
          </div>
          <button type="submit" class="btn btn-success">LOGIN</button>
          <a class="glyphicon glyphicon-log-in" href=""> JOIN</a>
        </form>
      </div>
    </div>
  </nav>

  <div class="container">
    <br>
    <div class="row">
      <div class="page-header">
        <h2>
          회원 목록<span class="badge">100</span>
        </h2>
      </div>
    </div>
    <div class="row">
      <div>
        <table
          class="table table-striped table-bordered table-condensed table-hover">
          <thead>
            <tr class="success">
              <th style="width: 50px">번호</th>
              <th>이름</th>
              <th>아이디</th>
              <th>이메일</th>
            </tr>
          </thead>
          <tbody>
          <c:set var="i" value="${fn:length(list)}"></c:set>
          <c:forEach var="user" items="${list}">
            <tr>
              <td>${i}</td>
              <td>${user.name}</td>
              <td>${user.id}</td>
              <td>${user.email}</td>
            </tr>
          <c:set var="i" value="${i-1}"></c:set>
          </c:forEach>
          </tbody>
        </table>
      </div>
    </div>

    <div class="row">
      <div style="text-align: center;">
        <ul class="pagination">
          <li><a href="?page=1">처음으로</a></li>
          <li class="prev"><a href="?page=1">이전목록</a></li>
          <li class="active"><a>1</a></li>
          <li><a>2</a></li>
          <li><a>3</a></li>
          <li><a>4</a></li>
          <li><a>5</a></li>
          <li><a>6</a></li>
          <li><a>7</a></li>
          <li><a>8</a></li>
          <li><a>9</a></li>
          <li><a>10</a></li>
          <li class="next"><a href="?page=11">다음목록</a></li>
          <li><a href="?page=10">끝으로</a></li>
        </ul>

        <form name="search" class="form-inline" role="form">
          <div class="form-group">
            <select class="form-control" id="type" name="type">
              <option value="id">아이디</option>
              <option value="name">이름</option>
              <option value="job">직업</option>
            </select> <input type="text" class="form-control" id="value"
              name="value" required>
          </div>
          <button type="submit" class="btn btn-default">검색</button>
        </form>

      </div>
    </div>

    <hr>

    <footer>
      <p>Copyright &copy; 2017 BANGRY ALL RIGHTS RESERVED</p>
    </footer>

  </div>
</body>
</html>
