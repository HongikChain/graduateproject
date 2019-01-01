<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Insert title here</title>
  <!-- Bootstrap core CSS -->
    <link href="./Resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="./Resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="./Resources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./Resources/css/creative.min.css?ver=1" rel="stylesheet">
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav" >
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top" style="font-size:large; color:black;">
			홍익전자선관위</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <% 
              	String status = (String)session.getAttribute("login");
              	if(status == null) //아직 로그인한 상태가 아니라면
              		out.println("<a class='nav-link js-scroll-trigger' href='LoginPage.jsp' style='color:black;'>Log in</a>");
              	else if(status.equals("success")){//로그인 상태면
              		out.println("<a class='nav-link js-scroll-trigger' href='./logout.do' style='color:black;'>Log out</a>");
              	}
              %>
            </li>
            <li class="nav-item" style="color:black;">
              <a class="nav-link js-scroll-trigger" href="#aboutus" style="color:black;">About Us</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
</body>
</html>