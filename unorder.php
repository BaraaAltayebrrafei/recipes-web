<?php
session_start();
if (!(isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1)) {
    header("Location:login.php");
} else if ($_SESSION['ID_ROLE'] == 1) {
    header("Location:index.php");
} else {
    if (isset($_GET['orderId']) && isset($_GET['recipeIdOrder'])) {
        require_once 'connection.php';
        $orderId = $_GET['orderId'];
        $recipeId = $_GET["recipeIdOrder"];
        $userId = $_SESSION['ID_USER'];
        $query = "SELECT * FROM orders WHERE ID_ORDER = $orderId ";
        $res = mysqli_query($con, $query);
        $row = mysqli_fetch_assoc($res);
        $buyerId = $row['ID_BUYER'];
        if ($buyerId == $userId) {
            $query = "SELECT PRICE_TOTAL FROM orders WHERE ID_ORDER = $orderId ";
            $res = mysqli_query($con, $query);
            $row = mysqli_fetch_assoc($res);
            $oldTotal = $row['PRICE_TOTAL'];
            $query = "SELECT PRICE FROM have_order WHERE ID_ORDER = $orderId AND ID_RECIPES = $recipeId ";
            $res = mysqli_query($con, $query);
            $row = mysqli_fetch_assoc($res);
            $diffRec = $row['PRICE'];
            $query = "SELECT ID_USER FROM recipes WHERE ID_RECIPES = '$recipeId' ";
            $res = mysqli_query($con, $query);
            $row = mysqli_fetch_assoc($res);
            $sellerId = $row['ID_USER'];
            $query1 = "SELECT ID_ADRESS FROM user WHERE ID_USER='$sellerId'";
            $res1 = mysqli_query($con, $query1);
            $row1 = mysqli_fetch_assoc($res1);
            $query2 = "SELECT ID_ADRESS FROM user WHERE ID_USER='$buyerId'";
            $res2 = mysqli_query($con, $query2);
            $row2 = mysqli_fetch_assoc($res2);
            $query3 = "SELECT DELIVERY_PRICE FROM delivery WHERE ID_FROM = '$row1[ID_ADRESS]' AND ID_TO = '$row2[ID_ADRESS]' ";
            $res3 = mysqli_query($con, $query3);
            $row3 = mysqli_fetch_assoc($res3);
            $diffDel = $row3['DELIVERY_PRICE'];
            $query = "SELECT recipes.ID_RECIPES FROM recipes,have_order,orders WHERE recipes.ID_RECIPES = have_order.ID_RECIPES AND recipes.ID_USER = '$sellerId' AND orders.ID_BUYER = '$buyerId' AND have_order.ID_ORDER = orders.ID_ORDER AND have_order.ID_ORDER = '$orderId' ";
            $res = mysqli_query($con, $query);
            $nbr = mysqli_num_rows($res);
            if ($nbr > 1) {
                $newTotal = $oldTotal - $diffRec;
            } else {
                $newTotal = $oldTotal - ($diffRec + $diffDel);
            }
            $queryHaveOrder = "UPDATE have_order SET STATUS = 'unorder' WHERE ID_ORDER = $orderId  AND ID_RECIPES = $recipeId  ";
            $resHaveOrder = mysqli_query($con, $queryHaveOrder);
            $queryOrders = "UPDATE orders SET PRICE_TOTAL = $newTotal WHERE ID_ORDER = $orderId ";
            $resOrders = mysqli_query($con, $queryOrders);
            $queryUpdateNot = "UPDATE notifications SET TYPE = 'unorder', OPENED = 0 WHERE ID_ORDER = $orderId AND ID_RECIPES = $recipeId ";
            $resUpdateNot = mysqli_query($con, $queryUpdateNot);
            if ($resHaveOrder && $resUpdateNot) {
                $queryExistOrder = "SELECT ID_ORDER FROM have_order WHERE ID_ORDER = $orderId AND STATUS <> 'unorder' ";
                $resExistOrder = mysqli_query($con, $queryExistOrder);
                if (mysqli_num_rows($resExistOrder) == 0) {
                    /*$queryOrder = "DELETE  FROM orders WHERE ID_ORDER = $orderId ";
                    $resOrder =  mysqli_query($con, $queryOrder);*/
                    header("location:index.php");
                } else {
                    header("location:order.php?id=$orderId");
                }
            }
        } else
            header("Location:index.php");
    } else
        header("Location:index.php");
}
?>