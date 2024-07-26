<?php 
    session_start();
    if(isset($_SESSION['ID_ROLE']) && $_SESSION['ID_ROLE'] == 1){
        if(isset($_GET['id'])){
            $user_id = $_GET['id'];
            require_once 'connection.php';
            $query = "SELECT ID_RECIPES FROM recipes WHERE ID_USER = '$user_id' ";
            $res = mysqli_query($con,$query);
            $nbr = mysqli_num_rows($res);
            $i=0;
            for($i=0;$i<$nbr;$i++){
                $row = mysqli_fetch_assoc($res);
                $recipeId = $row['ID_RECIPES'];
                $query0 = " DELETE FROM saved WHERE ID_RECIPES = $recipeId ";
                $res0 = mysqli_query($con,$query0);
                $query1 = " DELETE FROM media WHERE ID_RECIPES = $recipeId ";
                $res1 = mysqli_query($con,$query1);
                $query2 = " DELETE FROM have_cat WHERE ID_RECIPES = $recipeId ";
                $res2 = mysqli_query($con,$query2);
                $query3 = " DELETE FROM having_tag WHERE ID_RECIPES = $recipeId ";
                $res3 = mysqli_query($con,$query3);                                                   
                $query4 = " DELETE FROM havetools WHERE ID_RECIPES = $recipeId ";
                $res4 = mysqli_query($con,$query4);
                $query5 = " DELETE FROM have_ing WHERE ID_RECIPES = $recipeId ";
                $res5 = mysqli_query($con,$query5);
                $query6 = " DELETE FROM comment_user WHERE ID_RECIPES = $recipeId ";
                $res6 = mysqli_query($con,$query6);
                $query7 = " DELETE FROM have_order WHERE ID_RECIPES = $recipeId ";
                $res7 = mysqli_query($con,$query7);
                $query8 = " DELETE FROM likes WHERE ID_RECIPES = $recipeId ";
                $res8 = mysqli_query($con,$query8);
                $query9 = " DELETE FROM notifications WHERE ID_RECIPES = $recipeId ";
                $res9= mysqli_query($con,$query9);
                $query10 = " DELETE FROM recipes WHERE ID_RECIPES = $recipeId ";
                $res10 = mysqli_query($con,$query10);
                if($res0 && $res1 && $res2 && $res3 && $res4 && $res5 && $res6 && $res7 && $res8 && $res9 && $res10) continue;
                else break;
            }
            $query1 = " DELETE FROM saved WHERE ID_USER = $user_id ";
            $res1 = mysqli_query($con,$query1);
            $query8 = " DELETE FROM have_order WHERE ID_ORDER IN(SELECT ID_ORDER FROM orders WHERE ID_BUYER = $user_id) ";
            $res8 = mysqli_query($con,$query8);
            $query2 = " DELETE FROM orders WHERE ID_BUYER = $user_id ";
            $res2 = mysqli_query($con,$query2);
            $query3 = " DELETE FROM notifications WHERE ID_USER = $user_id OR ID_FOLLOWER = $user_id ";
            $res3 = mysqli_query($con,$query3);
            $query4 = " DELETE FROM follow WHERE ID_USER_FOLLOWEE = $user_id OR ID_USER_FOLLOWER = $user_id ";
            $res4 = mysqli_query($con,$query4);
            $query5 = " DELETE FROM likes WHERE ID_USER = $user_id ";
            $res5 = mysqli_query($con,$query5);
            $query6 = " DELETE FROM comment_user WHERE ID_USER = $user_id ";
            $res6 = mysqli_query($con,$query6);
            $query7 = " DELETE FROM user WHERE ID_USER = $user_id ";
            $res7 = mysqli_query($con,$query7);
            if($res1 && $res2 && $res3 && $res4 && $res5 && $res6 && $res7 && $res8 && ($i>= $nbr)) header("Location:allUsers.php");
            else {
                echo '<script>
                    alert("Error...Try again");
                    window.location.replace("allUsers.php");
                </script>';
            }
        }
        else header("Location:index.php");
    }
    else header("Location:index.php");
?>