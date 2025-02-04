<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register & Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="style.css">
    <script type="module" src="firebaseauth.js"></script>
</head>
<body>
  <header>
    <p>Welcome To East Coast Railway</p>
  </header>
    <div class="container" id="signup" style="display:none;">
      <h1 class="form-title">Register</h1>
      <form method="post" action="register.jsp">
        <div id="signUpMessage" class="messageDiv" style="display:none;"></div>
        <div class="input-group">
           <i class="fas fa-user"></i>
           <input type="text" id="fName" name="fName" placeholder="First Name" required>
           <label for="fName">First Name</label>
        </div>
        <div class="input-group">
            <i class="fas fa-user"></i>
            <input type="text" id="lName" name="lName" placeholder="Last Name" required>
            <label for="lName">Last Name</label>
        </div>
        <div class="input-group">
            <i class="fas fa-envelope"></i>
            <input type="email" id="rEmail" name="rEmail" placeholder="Email" required>
            <label for="rEmail">Email</label>
        </div>
        <div class="input-group">
            <i class="fas fa-lock"></i>
            <input type="password" id="rPassword" name="rPassword" placeholder="Password" required>
            <label for="rPassword">Password</label>
        </div>
       <button class="btn" id="submitSignUp" type="submit">Sign Up</button>
      </form>
      <p class="or">
        ----------or--------
      </p>
      <div class="icons">
        <i class="fab fa-google"></i>
        <i class="fab fa-facebook"></i>
      </div>
      <div class="links">
        <p>Already Have Account ?</p>
        <button id="signInButton">Sign In</button>
      </div>
    </div>

  <div class="container" id="signIn">
        <h1 class="form-title">Sign In</h1>
        <form method="post" action="login.jsp">
          <div id="signInMessage" class="messageDiv" style="display:none;"></div>

          <div class="input-group">
              <i class="fas fa-envelope"></i>
              <input type="email" id="email" name="email" placeholder="Email" required>
              <label for="email">Email</label>
          </div>
          <div class="input-group">
              <i class="fas fa-lock"></i>
            <input type="password" id="password" name="password" placeholder="Password" required>
              <label for="password">Password</label>
          </div>
          <p class="recover">
            <a href="#">Recover Password</a>
          </p>
         <button class="btn" id="submitSignIn" type="submit">Sign In</button>
        </form>
        <p class="or">
          ----------or--------
        </p>
        <div class="icons">
          <i class="fab fa-google"></i>
          <i class="fab fa-facebook"></i>
        </div>
        <div class="links">
          <p>Don't have account yet?</p>
          <button id="signUpButton">Sign Up</button>
        </div>
      </div>
      <script src="script.js"></script>
      <script>
        document.getElementById('signInButton').addEventListener('click', function() {
          document.getElementById('signup').style.display = 'none';
          document.getElementById('signIn').style.display = 'block';
        });

        document.getElementById('signUpButton').addEventListener('click', function() {
          document.getElementById('signIn').style.display = 'none';
          document.getElementById('signup').style.display = 'block';
        });
      </script>
</body>
</html>
