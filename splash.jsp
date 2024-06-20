<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Splash Screen</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Full-screen video background for splash screen */
        .splash-screen {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: black;
            opacity: 1;
            transition: opacity 1s ease-out; /* Smooth transition for fading out */
            z-index: 9999;
        }

        .splash-screen.fade-out {
            opacity: 0;
        }

        .splash-screen video {
            width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <div class="splash-screen" id="splashScreen">
        <video id="splashVideo" autoplay muted>
            <source src="railway.mp4" type="video/mp4">
            <source src="path/to/your/video.webm" type="video/webm">
            <source src="path/to/your/video.ogv" type="video/ogg">
            Your browser does not support the video tag.
        </video>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var splashScreen = document.getElementById('splashScreen');
            var splashVideo = document.getElementById('splashVideo');

            splashVideo.onended = function() {
                splashScreen.classList.add('fade-out');
                setTimeout(function() {
                    window.location.href = 'index.jsp';
                }, 1000); // Wait for the fade-out transition to complete
            };

            // Fallback in case the video does not end (e.g., user skips it)
            setTimeout(function() {
                splashScreen.classList.add('fade-out');
                setTimeout(function() {
                    window.location.href = 'index.jsp';
                }, 1000); // Wait for the fade-out transition to complete
            }, splashVideo.duration * 1000 || 5000); // Default to 5 seconds if duration is not available
        });
    </script>
</body>
</html>
