<?php 
 $db_hostname='localhost';
 $db_username='root';
 $db_password='';
 $db_database='mlr24';
 $con=mysqli_connect($db_hostname,$db_username,$db_password,$db_database);
 if(mysqli_connect_errno()) echo "Failed to connect ";
?> 