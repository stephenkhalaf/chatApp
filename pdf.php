<?php  include "header.php" ?>

<body>
<?php
include "php/config.php";
$pdf = mysqli_escape_string($conn, $_POST['pdf']);

?>
<iframe class="pdf" src="uploads/<?php echo $pdf; ?>" width="800" height="500">
</body>
</html>