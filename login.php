<?php  include "header.php" ?>
<body>
  <div class="wrapper">
    <section class="form login">
      <header>Realtime Chat App</header>
      <form action="#" method="POST" enctype="multipart/form-data" autocomplete="off">
        <div class="error-text">This is an error message!</div>
        <div class="field input">
          <label>Email Address</label>
          <input type="text" name="email" placeholder="Enter your email" required>
        </div>
        <div class="field input">
          <label>Password</label>
          <input type="password" name="password" placeholder="Enter your password" required>
          <i class="fas fa-eye"></i>
        </div>
        <div class="field button">
          <input type="submit" name="submit" value="Continue to Chat" id="login">
        </div>
      </form>
      <div class="link">Not yet signed up? <a href="signup.php">Signup now</a></div>
    </section>
  </div>
</body>
<script src="Javascript/pass-show-hide.js"></script>
<script src="Javascript/login.js"></script>
</html>
