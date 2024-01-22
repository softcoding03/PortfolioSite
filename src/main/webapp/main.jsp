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
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
    
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
        <div class="logo"><a href="#">YangSoo's Portfolio</a></div>
        <ul class="menu">
          <li><a href="#home">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#skills">Skills</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#contact">Contact</a></li>
          <div class="cancel-btn">
            <i class="fas fa-times"></i>
          </div>
        </ul>
      </div>
      <div class="menu-btn">
        <i class="fas fa-bars"></i>
      </div>
    </nav>

    <!-- Home Section Start -->
    <section class="home" id="home">
      <div class="home-content">
        <div class="text">
          <div class="text-one">안녕하세요 저는,</div>
          <div class="text-two">상상하는 개발자 김양수입니다.</div>
          <div class="text-three">Web Developer</div>
        </div>
      </div>
    </section>

    <!-- About Section Start -->
    <section class="about" id="about">
      <div class="content">
        <div class="title"><span>About Me</span></div>
        <div class="about-details">
          <div class="left">
            <img src="images/myprofile.jpg" alt="" />
          </div>
          <div class="right">
            <div class="topic" style="text-align: center; color: #6e93f7">
              <strong style="font-size: 40px;">상상한 것을 현실로</strong> 구현해내는
              <strong style="font-size: 45px;">웹 개발자</strong>
            </div><br>
            <p style="text-align: center; font-size: 20px">
              비즈니스모델 경진대회나 공모전에 참가 하였을 때 <br>
              항상 제 아이디어를 가지고 기획하는 단계에서 끝나는 것이 아쉬웠습니다.<br>
              제가 가진 아이디어를 직접 개발해보고자 하는 욕구를 가지게 되었고, 개발자를 꿈꾸게 되었습니다.<br>
              현재는 웹 백엔드 개발자가 되기 위하여 열심히 배우고 익히고 있습니다.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- My Skill Section Start -->
    <!-- Section Tag and Other Div will same where we need to put same CSS -->
    <section class="skills" id="skills">
      <div class="content">
        <div class="title"><span>My Skills</span></div>
        <div class="skills-details">
          <div class="text">
            <div class="topic" style="text-align: center; color: #6e93f7">
              <strong style="font-size: 35px;">얕게 다양한 것</strong> 을 배우기보다,
              <strong style="font-size: 45px;">하나를 제대로</strong>
            </div><br>
            <p style="text-align: center; font-size: 20px;">
            	개인프로젝트 '쇼핑몰사이트'와 팀프로젝트 '야구서비스 통합사이트'를 구현하며 익힌 기술들입니다. <br>
            	Spring과 Java를 이용하여 MVC모델을 표준 기반으로 개발하였습니다. <br>
            	새로운 기술의 갈증을 가지고 항상 끊임 없이 배우고자 하는 자세로 성장합니다.
            </p>
          </div>
          <div class="boxes">
            <div class="box">
              <div class="topic">familiar</div>
              <div><img src="images/java.png" height=200></div>
            </div>
            <div class="box">
              <div class="topic">familiar</div>
              <div><img src="images/spring.png" height=200></div>
            </div>
            <div class="box">
              <div class="topic">familiar</div>
              <div><img src="images/JavaScript.png" height=200></div>
            </div>
				<div class="box">
              <div class="topic">familiar</div>
              <div><img src="images/css.png" height=200></div>
            </div>
            <div class="box">
              <div class="topic">familiar</div>
              <div><img src="images/html.png" height=200></div>
            </div>
            <div class="box">
              <div class="topic">familiar</div>
              <div><img src="images/mysql.png" height=200></div>
            </div>
            <div class="box">
              <div class="topic" style="color:black">tried</div>
              <div><img src="images/oracle.png" height=200></div>
            </div>
            <div class="box">
              <div class="topic" style="color:black">tried</div>
              <div><img src="images/git.png" height=200></div>
            </div>
            <div class="box">
              <div class="topic" style="color:black">tried</div>
              <div><img src="images/docker.png" height=200></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- My Services Section Start -->
    <section class="services" id="services">
      <div class="content">
        <div class="title"><span>My Services</span></div>
        <div class="boxes">
          <div class="box">
	          <a href="services/yaguroute.jsp">
	            <div class="topic">YaguRoute</div>
	            <img alt="" src="images/yaguroute1.png">
	            <p>
	            	팀 프로젝트이며, 야구와 관련된 다양한 서비스를 한 곳에서 제공하는 사이트입니다.<br>
	            	커뮤니티 게시판, 티켓 구매 관리 등을 맡아 구현하였습니다.
	            </p>
	          </a>
	          </a>
          </div>
        </div>
        <div class="boxes">  
          <div class="box">
	          <a href="services/shop.jsp">
	            <div class="topic">굿즈 쇼핑몰</div>
	            <img alt="" src="images/shop1.png">
	            <p>
	            	개인 미니프로젝트이며, Web MVC모델 패턴을 익히기 위해 진행한 기초적인 쇼핑몰 사이트입니다. <br>
	            	회원가입, 상품 조회 및 결제 등이 가능합니다.
	            </p>
	          </a>  
          </div>
        </div>  
      </div>
    </section>

    <!-- Contact Me section Start -->
    <section class="contact" id="contact">
      <div class="content">
        <div class="title"><span>Contact Me</span></div>
        <div class="text">
     		 <i class="fi fi-rr-circle-envelope" style="font-size: 40px;"></i>&nbsp;&nbsp;&nbsp;
     		 <span style="font-size:30px">didtn1233@gmail.com</span>
     		 	<br>
     		 <i class="fi fi-rr-circle-phone" style="font-size: 40px;"></i>&nbsp;&nbsp;&nbsp;
     		 <span style="font-size:30px">010-9783-3446</span>
          	<br><br>
          <a href="https://github.com/softcoding03"><img alt="" src="images/github.png" style="max-height:40px"></a>
          	<br><br>
          <a href="https://softpattern.tistory.com"><img alt="" src="images/tistory.png" style="max-height:40px"></a>
        </div>
      </div>
    </section>

    <script src="script.js"></script>
  </body>
</html>