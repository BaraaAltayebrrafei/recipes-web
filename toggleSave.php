<?php 
    session_start();
    if(isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2){
        if(isset($_GET['recipeId']) ){
            require_once 'connection.php';
            $recipeId = $_GET['recipeId'];
            $query1 = "SELECT ID_USER FROM recipes WHERE ID_RECIPES = '$recipeId' ";
            $res1 = mysqli_query($con,$query1);
            $row = mysqli_fetch_row($res1);
            $iduser = $row[0];
            $query = "SELECT * FROM saved WHERE ID_RECIPES = '$recipeId' AND ID_USER = ' ".$_SESSION['ID_USER']." ' ";
            $res = mysqli_query($con,$query);
            $nbr = mysqli_num_rows($res);
            if($nbr == 0){
                $query = "INSERT INTO saved VALUES ('$recipeId', ' ".$_SESSION['ID_USER']." ') ";
                $res = mysqli_query($con,$query);
                $now = date("Y-m-d");
                /*$query1 = "INSERT INTO notifications (ID_RECIPES, ID_USER, DATE_NOTIFICATION, TYPE) VALUES ('$recipeId','$iduser','$now','save') ";
                $res1 = mysqli_query($con,$query1);*/
                if($res && $res1){
                    header("Location:recipe-page.php?recipeId=$recipeId");
                }
                else {
                    echo "Error...";
                }
            }
            else {
                $query = "DELETE FROM saved WHERE ID_RECIPES = '$recipeId' AND ID_USER = ' ".$_SESSION['ID_USER']." ' ";
                $res = mysqli_query($con,$query);
                if($res){
                    header("Location:recipe-page.php?recipeId=$recipeId");
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