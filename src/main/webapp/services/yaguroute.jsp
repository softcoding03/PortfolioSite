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
	 <!-- bootstrap -->
	 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-bold-straight/css/uicons-bold-straight.css'>
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
	 		<div class="title"><span>"다양한 야구 관련 서비스를 한 곳에서 즐기다."</span></div>
	 	</div>
	 </section>	     
	 
    <!-- About Section Start -->
    <section class="about" id="about">
      <div class="content">
        <div class="title"><span>Overview</span></div>
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
								    <li data-target="#carousel-example-generic" data-slide-to="5"></li>
								    <li data-target="#carousel-example-generic" data-slide-to="6"></li>
								    <li data-target="#carousel-example-generic" data-slide-to="7"></li>
								  </ol>
								  <!-- Wrapper for slides -->
								  <div class="carousel-inner" role="listbox">
								    <div class="item active">
								      <img src="/images/yaguroute1.png" alt="">
								    </div>
								    <div class="item">
								      <img src="/images/yaguroute2.png" alt="">
								    </div>
								    <div class="item">
								      <img src="/images/yaguroute3.png" alt="">
								    </div>
								    <div class="item">
								      <img src="/images/yaguroute4.png" alt="">
								    </div>
								    <div class="item">
								      <img src="/images/yaguroute5.png" alt="">
								    </div>
								    <div class="item">
								      <img src="/images/yaguroute6.png" alt="">
								    </div>
								    <div class="item">
								      <img src="/images/yaguroute7.png" alt="">
								    </div>
								    <div class="item">
								      <img src="/images/yaguroute8.png" alt="">
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
									<div class="item">
										<i class="fi fi-bs-check"></i> 개발기간
									</div>
									<div class="item">
										<p>2023.04 ~ 2023.06</p>
									</div>
								</div>
								<div class="container content">
									<div class="item">
										<i class="fi fi-bs-check"></i> 개발인원
									</div>
									<div class="item">
										<p>5명</p>
									</div>
								</div>
								<div class="container content">
									<div class="item">
										<i class="fi fi-bs-check"></i> 개발환경
									</div>
									<div class="item">
										<p>
											Front-End<br> • HTML5, CSS, JavaScript, BootStrap3, jQuery, Ajax<br> Back-End<br> • Java(JDK 1.8), Apache Tomcat 9.0, MyBatis, MySQL<br> Cloud<br> • Naver Cloud - Server, VPC, Cloud DB for MySQL, CDN+, GDNS<br> Framework, API<br> • Spring, Spring Boot, PortOne, Naver SENS, Naver Optimizer, Object Storage, SummerNote<br> 형상관리: Git, Notion<br>
										</p>
									</div>
								</div>
								<div class="container content">
									<div class="item">
										<i class="fi fi-bs-check"></i> 담당기능
									</div>
									<div class="item">
										<p>2023.04 ~ 2023.06</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
		</div>
    </section>

    <!-- My Skill Section Start -->
    <!-- Section Tag and Other Div will same where we need to put same CSS -->
    <section class="skills" id="skills">
      <div class="content">
        <div class="title"><span>Insight</span></div>
        <div class="skills-details">
          <div class="text">
            <div class="topic">Skills Reflects Our Knowledge</div>
            <p>
            	개인 미니프로젝트 '쇼핑몰', '포트폴리오사이트'와 팀프로젝트 '야구 서비스 통합사이트'를 구현하며 익힌 기술들입니다. <br>
            	Spring, JavaScript, MVC모델 등의 기술과 표준을 기반으로 개발하였습니다. <br>
            	많은 기술을 적용시키진 못했지만, 새로운 기술의 갈증을 항상 가지고 끊임 없이 배우고자 하는 자세로 성장하겠습니다. 
            </p>
            <div class="experience">
              <div class="num">안녕</div>
              <div class="exp">
                Years Of <br />
                Experience
              </div>
            </div>
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
            <div class="topic">YaguRoute</div>
            <p>
            	팀 프로젝트이며, 야구와 관련된 다양한 서비스를 한 곳에서 제공하는 사이트입니다.<br>
            	커뮤니티 게시판, 티켓 구매 관리 등을 맡아 구현하였습니다.
            </p>
          </div>
        </div>
        <div class="boxes">  
          <div class="box">
            <div class="topic">굿즈 쇼핑몰</div>
            <p>
            	개인 미니프로젝트이며, Web MVC모델 패턴을 익히기 위한 쇼핑몰 사이트입니다. <br>
            	회원가입, 상품 조회 및 결제 등이 가능합니다.
            </p>
          </div>
        </div>  
        <div class="boxes">  
          <div class="box">
            <div class="topic">포트폴리오 사이트</div>
            <p>
            	현재 보고 계시는 제 포트폴리오 사이트입니다.<br>
            	정적인 사이트지만, 클라우드 서버의 구축과 배포를 익힐 수 있었습니다. 
            </p>
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
          	<br>
          <a href="https://github.com/softcoding03"><img alt="" src="images/github.png" height=90></a>
          	<br>
          <a href="https://softpattern.tistory.com"><img alt="" src="images/tistory.png" height=50></a>
        </div>
      </div>
    </section>


    <script src="script.js"></script>
  </body>
</html>