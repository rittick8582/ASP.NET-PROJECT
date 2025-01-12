<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Slideshow Example</title>
    <style>
        ul {
            font-size: 20px;
            background-color: black;
            overflow: hidden;
            margin: 0;
            padding: 0;
        }

        li {
            display: inline;
            border-right: 1px solid whitesmoke;
        }

        li a {
            text-decoration: none;
            padding: 14px 16px;
            text-align: center;
            color: whitesmoke;
        }

        li a:hover {
            background-color: green;
            color: white;
        }

        p {
            font-size: 20px;
            color: blue;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 20px;
            margin: 0;
            padding: 0;
            background-size: cover; 
            background-position: center; 
            height: 80vh; 
            
        }

        .container {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 2px;
            width: 100%;
            z-index: 1000;
             background-image: url("banner1.png");
              background-repeat: no-repeat;
                 background-size: cover;
            
                 
        }

        .header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
            width: 100%;
        }

        .footer { 
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 2px;
            width: 100%;
            z-index: 1000;
        }

        .footer-title {
            display: block;
            margin: 5px 0;
            color: whitesmoke;
        }

        .footer-title {
            position: fixed;
            bottom: 10px;
            right: 10px;
            background-color: #333;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            display: none; 
            z-index: 1000; 
        }

        .footer-title:hover {
            background-color: green; 
        }

        .color-change {
            animation: colorChange 2s infinite;
        }

        @keyframes colorChange {
            0% { color: red; }
            50% { color: blue; }
            100% { color: green; }
        }

        .slide-in {
            transform: translateX(-100%);
            animation: slideIn 1s forwards;
        }

        @keyframes slideIn {
            to {
                transform: translateX(0);
            }
        }

        .box {
            width: 250px;
            margin: 0 10px;
            box-shadow: 0 0 20px 2px rgba(0, 0, 0, 0.5);
        }

        .box img {
            display: block;
            width: 100%;
            border-radius: 5px;
        }

        .box:hover {
            transform: scale(1.3);
            z-index: 2;
        }

        .shop-section {
            display: flex;
            align-items: center;
            flex-direction: column;
            background-color: #f3f3f3;
            padding: 50px 0;
        }

        .shop-images {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            max-width: 1200px; 
            width: 100%;
            text-align: center; 
        }

        .shop-images img {
            max-width: 100%; 
            height: auto; 
            border-radius: 8px; 
        }

        .slideshow-container {
            position: relative;
            max-width: 700px;
            margin: auto;
            overflow: hidden;
        }

        .slide {
            display: none;
        }
        img {
            width: 34%;
            height: auto;
        }

        .fade {
            animation: fade 1s;
        }

        @keyframes fade {
            from {opacity: 0;}
            to {opacity: 1;}
        }

        .navigation {
            text-align: center;
            margin-top: 10px;
        }

        button {
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        button:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }

        .active {
            display: block;
            opacity: 1;
        }

        .slide img {
            width: 100%;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="content">
            <center>
                <img src="rkms_logo.jpg" alt="RKMS Logo" />
                <div class="slide-in">
                    <marquee direction="right" behavior="alternate" style="color: white; font-weight: bold;">Belur Math, Howrah</marquee>
                </div>
            </center>
            <nav>
                <ul>
                    <li><a href="#" target="_blank">Home</a></li>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Contact</a></li>
                    <li><a href="WebForm2.aspx">Login</a></li>
                </ul>
            </nav>
            </br></br></br></br></br>
            <div class="slideshow-container">
                <div class="slide fade">
                    <img src="flex_Noapara_small.jpg" alt="Image 1">
                </div>
                <div class="slide fade">
                    <img src="23.jpg" alt="Image 2">
                </div>
                <div class="slide fade">
                    <img src="about1.jpg" alt="Image 3">
                </div>
            </div>

            <div class="navigation">
                <button class="prev" onclick="changeSlide(-1)">&#10094;</button>
                <button class="next" onclick="changeSlide(1)">&#10095;</button><br><br><br/>
            </div>
        </div>
        <h2>Our Books</h2>
        <center>
            <div class="shop-images">
                <div class="box">
                    <img src="c-sharp-books-for-beginners5.png" alt="C# Books for Beginners" />
                    <a href="#">Buy Now</a>
                </div>
                <div class="box">
                    <img src="51+wp3bNoRL.jpg" alt="Book 2" />
                    <a href="#">Buy Now</a>
                </div>
                <div class="box">
                    <img src="71lotenpsnL._AC_UF1000,1000_QL80_.jpg" alt="Book 3" />
                    <a href="#">Buy Now</a>
                </div>
                <div class="box">
                    <img src="images (3).jpeg" alt="Book 4" />
                    <a href="#">Buy Now</a>
                </div>
                <div class="box">
                    <img src="91xUz2EuYdL._AC_UF1000,1000_QL80_.jpg" alt="Book 5" />
                    <a href="#">Buy Now</a>
                </div>
                <div class="box">
                    <img src="introduction-to-iot-original-imagfwpv4m6hspst.webp" alt="Book 6" />
                    <a href="#">Buy Now</a>
                </div>
                <div class="box">
                    <img src="978-1-4302-6814-7.jpeg" alt="Book 7" />
                    <a href="#">Buy Now</a>
                </div>
                <div class="box">
                    <img src="978-1-4302-1153-2.jpeg" alt="Book 8" />
                    <a href="#">Buy Now</a>
                </div>
            </div>
        </center>
        <br><br><br />
    </div>

    <div class="footer">
        <a href="#" class="footer-title" id="backToTopBtn">Back To Top</a>
        <h3>Connect With Us</h3>
        <ul>
            <li><a href="#">Facebook</a></li>
            <li><a href="#">Twitter</a></li>
            <li><a href="#">Instagram</a></li>
            <li><a href="#">YouTube</a></li>
        </ul>
        <p class="color-change">© Designed & Developed by Rittick</p>
    </div>

    <script>
    let slideIndex = 0;
    showSlides(slideIndex);
    let slideInterval = setInterval(() => changeSlide(1), 3000); // Change slide every 3 seconds

    function changeSlide(n) {
        showSlides(slideIndex += n);
        clearInterval(slideInterval); // Clear the interval to avoid overlapping
        slideInterval = setInterval(() => changeSlide(1), 3000); // Restart the interval
    }

    function showSlides(n) {
        const slides = document.getElementsByClassName("slide");

        if (n >= slides.length) {
            slideIndex = 0; // Loop back to the first slide
        }
        if (n < 0) {
            slideIndex = slides.length - 1; // Go to the last slide
        }

        for (let i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
        }

        slides[slideIndex].style.display = "block";
            }
const backToTopBtn = document.getElementById('backToTopBtn');

// Show the button when the user scrolls down 100px from the top
window.onscroll = function() {
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        backToTopBtn.style.display = 'block';
    } else {
        backToTopBtn.style.display = 'none';
    }
};

// Scroll to the top when the button is clicked
backToTopBtn.addEventListener('click', function(event) {
    event.preventDefault();
    window.scrollTo({ top: 0, behavior: 'smooth' });
});
</script>
</body>
</html>