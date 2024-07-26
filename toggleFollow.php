<?php 
    session_start();
    if(isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2){
        if(isset($_GET['idfollower']) && isset($_GET['idfollowee']) && $_SESSION['ID_USER'] == $_GET['idfollower'] && $_GET['idfollower'] != $_GET['idfollowee']){
            require_once 'connection.php';
            $followerId = $_GET['idfollower'];
            $followeeId = $_GET['idfollowee'];
            $query = "SELECT * FROM follow WHERE ID_USER_FOLLOWER = '$followerId' AND ID_USER_FOLLOWEE = '$followeeId' ";
            $res = mysqli_query($con,$query);
            $nbr = mysqli_num_rows($res);
            if($nbr == 0){
                $query = "INSERT INTO follow VALUES ('$followeeId','$followerId') ";
                $res = mysqli_query($con,$query);
                $now = date("Y-m-d");
                $query1 = "INSERT INTO notifications (ID_USER,ID_FOLLOWER,DATE_NOTIFICATION,TYPE) VALUES ('$followeeId','$followerId','$now','follow') ";
                $res1 = mysqli_query($con,$query1);
                if($res && $res1){
                    header("Location:userpage.php?id=$followerId");
                }
                else {
                    echo "Error...";
                }
            }
            else {
                $query = "DELETE FROM follow WHERE ID_USER_FOLLOWER = $followerId AND ID_USER_FOLLOWEE = $followeeId ";
                $res = mysqli_query($con,$query);
                if($res){
                    header("Location:userpage.php?id=$followerId");
                }
                else {
                    echo "Error...";
                }
            }
        }
        else header("Location:index.php");
    }
    else header("Location:index.php");
?>