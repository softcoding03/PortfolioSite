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
        <div class="media-icons">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div class="menu-btn">
        <i class="fas fa-bars"></i>
      </div>
    </nav>

    <!-- Home Section Start -->
    <section class="home" id="home">
      <div class="home-content">
        <div class="text">
          <div class="text-one">안녕하세요 저는, hi</div>
          <div class="text-two">상상하는 개발자 김양수입니다.</div>
          <div class="text-three">Web Developer</div>
        </div>
		  <br><br><br>
        <div class="button">
          <button>
          <a href="#about">
          	About Me
          </a>
          </button>
        </div>
      </div>
    </section>

    <!-- About Section Start -->
    <section class="about" id="about">
      <div class="content">
        <div class="title"><span>About Me</span></div>
        <div class="about-details">
          <div class="left">
            <img src="images/profile_square.png" alt="" />
          </div>
          <div class="right">
            <div class="topic">미래에 다양한 웹 서비스를 구현하는 저를 상상합니다.</div>
            <p>
              대학교 시절 참가한 비즈니스모델 경진대회에서 소셜네트워크 서비스를 기획하여 우수상을 수상한 경험이 있습니다. 제가 상상한 서비스를 기획하는 단계에 
            </p>
            <div class="button">
              <button>Download CV</button>
            </div>
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
            <div class="topic">Skills Reflects Our Knowledge</div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus natus tenetur tempora? Quasi, rem quas omnis. Porro rem aspernatur reiciendis ut praesentium minima ad, quos, officia! Illo libero, et, distinctio repellat sed nesciunt est modi quaerat placeat. Quod molestiae, alias?</p>
            <div class="experience">
              <div class="num">10</div>
              <div class="exp">
                Years Of <br />
                Experience
              </div>
            </div>
          </div>
          <div class="boxes">
            <div class="box">
              <div class="topic">HTML</div>
              <div class="per">90%</div>
            </div>
            <div class="box">
              <div class="topic">CSS</div>
              <div class="per">80%</div>
            </div>
            <div class="box">
              <div class="topic">JavScript</div>
              <div class="per">70%</div>
            </div>
            <div class="box">
              <div class="topic">PHP</div>
              <div class="per">60%</div>
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
            <div class="icon">
              <i class="fas fa-desktop"></i>
            </div>
            <div class="topic">Web Devlopment</div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia autem quam odio, qui voluptatem eligendi?</p>
          </div>
          <div class="box">
            <div class="icon">
              <i class="fas fa-paint-brush"></i>
            </div>
            <div class="topic">Graphic Design</div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia autem quam odio, qui voluptatem eligendi?</p>
          </div>
          <div class="box">
            <div class="icon">
              <i class="fas fa-chart-line"></i>
            </div>
            <div class="topic">Digital Marketing</div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia autem quam odio, qui voluptatem eligendi?</p>
          </div>
          <div class="box">
            <div class="icon">
              <i class="fab fa-android"></i>
            </div>
            <div class="topic">Icon Design</div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia autem quam odio, qui voluptatem eligendi?</p>
          </div>
          <div class="box">
            <div class="icon">
              <i class="fas fa-camera-retro"></i>
            </div>
            <div class="topic">Photography</div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia autem quam odio, qui voluptatem eligendi?</p>
          </div>
          <div class="box">
            <div class="icon">
              <i class="fas fa-tablet-alt"></i>
            </div>
            <div class="topic">Apps Devlopment</div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia autem quam odio, qui voluptatem eligendi?</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Contact Me section Start -->
    <section class="contact" id="contact">
      <div class="content">
        <div class="title"><span>Contact Me</span></div>
        <div class="text">
          <div class="topic">Have Any Project?</div>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam neque ipsum corrupti dolores, facere numquam voluptate aspernatur sit perferendis qui nisi modi! Recusandae deserunt consequatur voluptatibus alias repellendus nobis eligendi.</p>
          <div class="button">
            <button>Let's Chat</button>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer Section Start -->
    <footer>
      <div class="text">
        <span>Created By <a href="#">CodingLab</a> | &#169; 2021 All Rights Reserved</span>
      </div>
    </footer>

    <script src="script.js"></script>
  </body>
</html>