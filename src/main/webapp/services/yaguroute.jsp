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
			<div class="title"><span>"프로야구 관련 서비스를 한데서 즐길 수 있는 플랫폼사이트"</span></div>
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
									<div class="item" style="font-size: 17px;">
										<i class="fi fi-bs-check"></i> 개발기간
									</div>
                                    <div class="item" style="font-size: 20px;">
										<p>2023.04 ~ 2023.06</p>
									</div>
								</div>
								<div class="container content">
                                    <div class="item" style="font-size: 17px;">
										<i class="fi fi-bs-check"></i> 개발인원
									</div>
                                    <div class="item" style="font-size: 20px;">
										<p>5명</p>
									</div>
								</div>
                                <div class="container content">
                                    <div class="item" style="font-size: 17px;">
                                        <i class="fi fi-bs-check"></i> 담당기능
                                    </div>
                                    <div class="item" style="font-size: 15px;">
                                        <p>
                                            • 커뮤니티 게시판 관리<br>
                                            • 경기티켓 판매, 구매 관리<br>
                                            • Git 브랜치 전략 수립 및 형상관리<br>
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
                                            <strong>Back-End</strong><br> • Java(JDK 1.8), Apache Tomcat 9.0, MyBatis, MySQL<br><br>
                                            <strong>Cloud</strong><br> • Naver Cloud - Server, VPC, Cloud DB for MySQL, CDN+<br><br>
                                            <strong>Framework, API</strong><br> • Spring Boot, PortOne, Naver SENS, Optimizer, Object Storage, SummerNote<br><br>
                                            <strong>형상관리</strong><br>Git, Notion<br>
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
            <div class="topic" style="margin-top: 20px; margin-bottom: 20px; font-size: 30px; color: coral">문자 발송 API 사용 과정중에 CORS 문제 발생</div>
            <p style="text-align: center; font-size: 13px;">
				<i class="fi fi-bs-check"></i><strong>이슈</strong> : 동일한 서버 출처의 리소스가 아닌 외부사이트 URL로 리소스를 요청하는 것은 Same Origin 정책에 위반<br>
				<i class="fi fi-bs-check"></i><strong>해결 방법</strong> : CORS는 브라우저 정책으로, 서버간 통신을 할 때에는 적용되지 않는 정책임. 따라서 해당 코드를 화면단에서 처리하지 않고 Rest서버에 작성하여 데이터를 요청함<br>
            </p><br>
			  <div class="topic" style="margin-top: 20px; margin-bottom: 20px; font-size: 30px; color: coral">팀 프로젝트를 통해 유연한 소스 코드의 필요성 인식</div>
			  <p style="text-align: center; font-size: 13px;">
				  <i class="fi fi-bs-check"></i><strong>이슈</strong> : 하나의 서비스임에도 설계표준이 명확하지 않거나, 서로 다른 코드 컨벤션을 사용하는 경우 협업이나 코드 유지보수가 힘들다.<br>
				  <i class="fi fi-bs-check"></i><strong>해결 방법</strong> : 동료가 이해하기 어려운 변수명이나 함수명을 사용하는 것을 지양하고, 협업툴을 이용하여 개발표준을 명확히 작성해둔다.<br>
			  </p><br>
			  <div class="topic" style="margin-top: 20px; margin-bottom: 20px; font-size: 30px; color: coral">형상관리의 중요성 인식</div>
			  <p style="text-align: center; font-size: 13px;">
				  <i class="fi fi-bs-check"></i>팀 단위로 함께 개발을 진행하게 되면 주기적인 버전 통합이 중요하다.<br>
				  <i class="fi fi-bs-check"></i>주기적인 형상관리를 통해 버전 충돌을 막고, 소스코드의 복구가 필요할 때 무리없이 해결할 수 잇다.<br>
			  </p><br>
        </div>
      </div>
    </section>

    <script src="script.js"></script>
  </body>
</html>