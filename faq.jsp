<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ - File Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            overflow: hidden;
            padding: 20px;
        }
        header {
            background: #333;
            color: #fff;
            padding-top: 30px;
            min-height: 70px;
            border-bottom: #07e45ce8 3px solid;
        }
        header a {
            color: #fff;
            text-decoration: none;
            text-transform: uppercase;
            font-size: 16px;
        }
        header ul {
            padding: 0;
            list-style: none;
        }
        header li {
            float: left;
            display: inline;
            padding: 0 20px 0 20px;
        }
        header #branding {
            float: left;
        }
        header #branding h1 {
            margin: 0;
        }
        header nav {
            float: right;
            margin-top: 10px;
        }
        .content {
            padding: 20px;
            background: #f4f4f4;
        }
        .content h2 {
            color: #e90b0b;
        }
        .faq {
            margin-bottom: 20px;
        }
        .faq h3 {
            color: #e44d07;
            cursor: pointer;
        }
        .faq p {
            display: none;
            padding: 10px 0;
        }
        footer {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
            margin-top: 20px;
        }
    </style>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var faqs = document.querySelectorAll('.faq h3');
            faqs.forEach(function (faq) {
                faq.addEventListener('click', function () {
                    var answer = this.nextElementSibling;
                    answer.style.display = (answer.style.display === 'none' || answer.style.display === '') ? 'block' : 'none';
                });
            });
        });
    </script>
</head>
<body>
    <header>
        <div class="container">
            <div id="branding">
                <h1>File Management System</h1>
            </div>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="faq.jsp">FAQ</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="container">
        <div class="content">
            <h2>Frequently Asked Questions</h2>
            <div class="faq">
                <h3>What is the File Management System?</h3>
                <p>Our File Management System is a tool designed to help individuals and businesses manage their files efficiently and securely. It offers features like file upload/download, secure storage, collaborative tools, and more.</p>
            </div>
            <div class="faq">
                <h3>How do I upload a file?</h3>
                <p>To upload a file, log in to your account, navigate to the upload section, click on the 'Upload' button, and select the file from your device. The system will handle the rest and securely store your file.</p>
            </div>
            <div class="faq">
                <h3>Is my data secure?</h3>
                <p>Yes, we use industry-standard encryption and security protocols to ensure your data is safe. Our system is regularly updated to address potential security threats.</p>
            </div>
            <div class="faq">
                <h3>Can I access my files from any device?</h3>
                <p>Yes, our system is designed to be accessible from any device with an internet connection. You can access, upload, and manage your files from your computer, tablet, or smartphone.</p>
            </div>
            <div class="faq">
                <h3>How do I share files with others?</h3>
                <p>You can share files by selecting the file you want to share and using the 'Share' option. You can send a link to the file or directly share it with other users within the system.</p>
            </div>
            <div class="faq">
                <h3>What happens if I delete a file by mistake?</h3>
                <p>Deleted files are moved to the recycle bin where they can be restored within a certain period. If the file is permanently deleted, please contact support for further assistance.</p>
            </div>
            <div class="faq">
                <h3>How do I contact customer support?</h3>
                <p>If you need assistance, you can contact our customer support team via the 'Contact' page on our website. We are here to help you with any issues or questions you may have.</p>
            </div>
        </div>
    </div>

    <footer>
        <p>File Management System &copy; 2024</p>
    </footer>
</body>
</html>
