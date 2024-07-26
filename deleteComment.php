<?php 
    session_start();
    if(!isset($_SESSION['islogin']) && $_SESSION['islogin'] != 1){
        header("Location:index.php");
    }
    else{
        require_once 'connection.php';
        $com_id = $_GET['id'];
        $query = "SELECT ID_USER,ID_RECIPES FROM comment_user WHERE ID_COMMENT = '$com_id'";
        $res = mysqli_query($con,$query);
        $row = mysqli_fetch_assoc($res);
        $userCom = $row['ID_USER'];
        $recipeId = $row['ID_RECIPES'];
        $query = "SELECT ID_USER FROM recipes WHERE ID_RECIPES = '$recipeId'";
        $res = mysqli_query($con,$query);
        $row = mysqli_fetch_assoc($res);
        $userPost = $row['ID_USER'];
        if(($_SESSION['ID_ROLE'] == 1) || ($userCom == $_SESSION['ID_USER']) || ($userPost == $_SESSION['ID_USER'])){
            $query = "DELETE FROM comment_user WHERE ID_COMMENT = $com_id ";
            $res = mysqli_query($con,$query);
            $query1 = "DELETE FROM notifications WHERE ID_COMMENT = $com_id ";
            $res1 = mysqli_query($con,$query1);
            if($res && $res1){
                header("Location:recipe-page.php?recipeId=$recipeId");
            }
            else{
                echo "Error !";
            }
        }
        else header("Location:index.php");
    }
?>