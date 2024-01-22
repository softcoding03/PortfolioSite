<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
<head>
  <meta charset="UTF-8" />
  <title>Kim YangSoo's Portfolio</title>
  <link rel="stylesheet" href="/css/style.css" />
  <!-- Fontawesome CDN Link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
  <!-- Flaticon Links -->
  <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
  <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-bold-straight/css/uicons-bold-straight.css'>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <!-- Bootstrap JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <script type="text/javascript">
    // Sticky Navigation Menu JS Code
    let nav = document.querySelector("nav");
    let scrollBtn = document.querySelector(".scroll-button a");
    console.log(scrollBtn);
    let val;
    window.onscroll = function() {
      if(document.documentElement.scrollTop > 20){
        nav.classList.add("sticky");
        scrollBtn.style.display = "block";
      }else{
        nav.classList.remove("sticky");
        scrollBtn.style.display = "none";
      }
    }

    // Side NavIgation Menu JS Code
    let body = document.querySelector("body");
    let navBar = document.querySelector(".navbar");
    let menuBtn = document.querySelector(".menu-btn");
    let cancelBtn = document.querySelector(".cancel-btn");
    menuBtn.onclick = function(){
      navBar.classList.add("active");
      menuBtn.style.opacity = "0";
      menuBtn.style.pointerEvents = "none";
      body.style.overflow = "hidden";
      scrollBtn.style.pointerEvents = "none";
    }
    cancelBtn.onclick = function(){
      navBar.classList.remove("active");
      menuBtn.style.opacity = "1";
      menuBtn.style.pointerEvents = "auto";
      body.style.overflow = "auto";
      scrollBtn.style.pointerEvents = "auto";
    }

    // Side Navigation Bar Close While We Click On Navigation Links
    let navLinks = document.querySelectorAll(".menu li a");
    for (var i = 0; i < navLinks.length; i++) {
      navLinks[i].addEventListener("click" , function() {
        navBar.classList.remove("active");
        menuBtn.style.opacity = "1";
        menuBtn.style.pointerEvents = "auto";
      });
    }
  </script>
</head>
<body>
<!-- Move to up button -->
<div class="scroll-button">
  <a href="#home"><i class="fas fa-arrow-up"></i></a>
</div>
<!-- navgaition menu -->
<nav>
  <div class="navbar">
    <div class="logo"><a href="/main.jsp">YangSoo's Portfolio</a></div>
  </div>
  <div class="menu-btn">
    <i class="fas fa-bars"></i>
  </div>
</nav>
<br><br><br>

<section class="about" id="about">
  <div class="content">
    <div class="title"><span>"아이돌 굿즈 상품을 거래할 수 있는 사이트"</span></div>
  </div>
</section>

<!-- About Section Start -->
<div class="content">
  <section class="services" id="services">
    <div class="content">
      <div class="boxes">
        <div class="box">
          <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
              <li data-target="#carousel-example-generic" data-slide-to="1"></li>
              <li data-target="#carousel-example-generic" data-slide-to="2"></li>
              <li data-target="#carousel-example-generic" data-slide-to="3"></li>
              <li data-target="#carousel-example-generic" data-slide-to="4"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
              <div class="item active">
                <img src="/images/shop1.png" alt="">
              </div>
              <div class="item">
                <img src="/images/shop1.2.png" alt="">
              </div>
              <div class="item">
                <img src="/images/shop2.png" alt="">
              </div>
              <div class="item">
                <img src="/images/shop3.png" alt="">
              </div>
              <div class="item">
                <img src="/images/shop4.png" alt="">
              </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="services" id="services">
    <div class="content">
      <div class="boxes">
        <div class="box">

          <div class="container content">
            <div class="item" style="font-size: 17px;">
              <i class="fi fi-bs-check"></i> 개발기간
            </div>
            <div class="item" style="font-size: 20px;">
              <p>2023.02 ~ 2023.03</p>
            </div>
          </div>
          <div class="container content">
            <div class="item" style="font-size: 17px;">
              <i class="fi fi-bs-check"></i> 개발인원
            </div>
            <div class="item" style="font-size: 20px;">
              <p>1명</p>
            </div>
          </div>
          <div class="container content">
            <div class="item" style="font-size: 17px;">
              <i class="fi fi-bs-check"></i> 담당기능
            </div>
            <div class="item" style="font-size: 15px;">
              <p>
                • 회원 관리<br>
                • 상품 등록, 판매 관리<br>
                • 상품 구매 관리<br>
              </p>
            </div>
          </div>
          <div class="container content">
            <div class="item" style="font-size: 17px;">
              <i class="fi fi-bs-check"></i> 개발환경
            </div>
            <div class="item">
              <p>
                <strong>Front-End</strong><br>• HTML5, CSS, JavaScript, BootStrap3, jQuery, Ajax<br><br>
                <strong>Back-End</strong><br> • Java(JDK 1.8), Apache Tomcat 9.0, MyBatis, Oracle 10g<br><br>
                <strong>Framework, API</strong><br> • PortOne, Naver SENS, Daum 주소<br><br>
                <strong>형상관리</strong><br>Git<br>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>

<!-- My Skill Section Start -->
<section class="skills" id="skills">
  <div class="content">
    <div class="title"><span>Insight</span></div>
    <div class="skills-details" style="display: flex; justify-content: center">
      <div class="text" style="text-align: center">
        <div class="topic" style="margin-top: 20px; margin-bottom: 20px; font-size: 30px; color: coral">웹 MVC모델에서 HTTP POST요청시 주의할 것</div>
        <p style="text-align: center; font-size: 13px;">
          <i class="fi fi-bs-check"></i><strong>이슈</strong> : POST 요청 이후 해당 페이지에서 새로고침 시 동일한 요청이 반복되는 문제<br>
          <i class="fi fi-bs-check"></i><strong>해결 방법</strong> : PRG(Post-Redirect-Get) 패턴 이용하여 해결. 해당 이슈는 POST URL이 유지되기 때문에 발생하는 문제이므로, Redirect를 이용해서 GET요청으로 return 해준다. <br>
        </p><br>
      </div>
    </div>
</section>

<script src="script.js"></script>
</body>
</html>