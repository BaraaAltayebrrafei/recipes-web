<?php 
    session_start();
    if(isset($_GET['id'])){
        require_once 'connection.php';
        $recipe_id = $_GET['id'];
        $query = "SELECT ID_USER FROM recipes WHERE ID_RECIPES = '$recipe_id' ";
        $res = mysqli_query($con,$query);
        $row = mysqli_fetch_assoc($res);
        if((isset($_SESSION['ID_ROLE']) && $_SESSION['ID_ROLE'] == 1) || ($_SESSION['ID_USER'] == $row['ID_USER'])){
            $query0 = " DELETE FROM saved WHERE ID_RECIPES = $recipe_id ";
            $res0 = mysqli_query($con,$query0);
            $query1 = " DELETE FROM media WHERE ID_RECIPES = $recipe_id ";
            $res1 = mysqli_query($con,$query1);
            $query2 = " DELETE FROM have_cat WHERE ID_RECIPES = $recipe_id ";
            $res2 = mysqli_query($con,$query2);
            $query3 = " DELETE FROM having_tag WHERE ID_RECIPES = $recipe_id ";
            $res3 = mysqli_query($con,$query3);                                                   
            $query4 = " DELETE FROM havetools WHERE ID_RECIPES = $recipe_id ";
            $res4 = mysqli_query($con,$query4);
            $query5 = " DELETE FROM have_ing WHERE ID_RECIPES = $recipe_id ";
            $res5 = mysqli_query($con,$query5);
            $query6 = " DELETE FROM comment_user WHERE ID_RECIPES = $recipe_id ";
            $res6 = mysqli_query($con,$query6);
            $query7 = " DELETE FROM have_order WHERE ID_RECIPES = $recipe_id ";
            $res7 = mysqli_query($con,$query7);
            $query8 = " DELETE FROM likes WHERE ID_RECIPES = $recipe_id ";
            $res8 = mysqli_query($con,$query8);
            $query9 = " DELETE FROM notifications WHERE ID_RECIPES = $recipe_id ";
            $res9= mysqli_query($con,$query9);
            $query10 = " DELETE FROM recipes WHERE ID_RECIPES = $recipe_id ";
            $res10 = mysqli_query($con,$query10);
            if($res0 && $res1 && $res2 && $res3 && $res4 && $res5 && $res6 && $res7 && $res8 && $res9 && $res10) header("Location:index.php");
            else {
                echo '<script>
                    alert("Error...Try again");
                    window.location.replace("index.php");
                </script>';
            }
        }
        else header("Location:index.php");
    }
    else header("Location:index.php");
?>