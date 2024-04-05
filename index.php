<?php include "php/config.php" ?>
<?php
session_start();
if(isset($_SESSION['unique_id'])){
    $id = $_SESSION['unique_id'];
    $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = $id LIMIT 1");
    $user = mysqli_fetch_assoc($sql);
  }else{
    header('Location: login.php');
  }

?>
<?php  include "header.php" ?>
<body>
    <section id="wrapper" >
        <article id="left_pannel">
            <div class="profile__image">
                <img src="uploads/<?php echo $user['img']; ?>" />
            </div>
            <div class="profile__info">
                <p class="profile__name"><?php echo $user['fname']." ". $user['lname'];  ?></p>
                <p class="profile__email"><?php echo $user['email']; ?></p>
            </div>
            <div class="profile__menus">
                <label for="chat">Chat Notification <img src="ui/icons/chat.png" alt=""></label>
                <label for="contacts">Contacts <img src="ui/icons/contacts.png" alt=""></label>
                <label for="settings">Settings <img src="ui/icons/settings.png" alt=""></label>
                <label for="logout" id="logout" >Logout <img src="Icons/log-out-outline.svg" alt=""></label>
            </div>
        </article>
        <article id="right_pannel">
            <div id="header">
                <div id="loader" class="loader_off"><img src="ui/icons/giphy.gif" alt=""></div>
                My Chat
                <div id="image_viewer" class="image_off" onclick="close_image(event)"><img src=""  /></div>
            </div>
            <div id="container">
                <input type="radio" name="box" id="chat">
                <input type="radio" name="box" id="contacts">
                <input type="radio" name="box" id="settings">
                <div id="inner_left_pannel">
                   
                </div>
                <div id="inner_right_pannel"></div>
            </div>
        </article>
    </section>
</body>
<script src="Javascript/logout.js"></script>
<script src="Javascript/chats.js"></script>
<script src="Javascript/settings.js"></script>
<script src="Javascript/contacts.js"></script>
</html>