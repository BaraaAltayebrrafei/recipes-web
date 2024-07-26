<head>
    <title>Orders' History</title>
<style>
    * {
            font-family: "Century Gothic", sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            text-decoration: none;
            outline: none;
            border: none;
            text-transform: capitalize;
            transition: all .2s linear;
            color: #00026b;  
            font-size: 25px;
        }
        :root {
            --box-radow: 0 .5rem 1rem rgb(255, 255, 255);
        }
        .title {
            position: absolute;
            left: 420px;
            top: 0px;
            font-size: 50px;
            color: #00026b;
            font-family: "Century Gothic", sans-serif;
        }
        body {
            background: #eee;
        }

        a:link.back,
        a:visited.back {
            color: #00026b;
            background: #fa795275;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-family: "Century Gothic", sans-serif;
        }

        a:hover.back,
        a:active.back {
            background: #fa795275;
            font-family: "Century Gothic", sans-serif;
        }

        a.back {
            padding: 14px 20px;
        }
        .no{
            font-size: 30px;
            color: #00026b;
            text-align: center;
            padding-top: 30px;
        }
        ::-webkit-scrollbar{
            width: 10px;
        }
        ::-webkit-scrollbar-track{
            background: transparent;
        }
        ::-webkit-scrollbar-thumb{
            background: #fa7952d7;
        }
        ::-webkit-scrollbar-thumb:hover{
            background: #fa795275;
        }
        .all{
            border: solid #00026b 2px;
            text-align: center;
            padding: 5px;
            width: 700px;
            justify-items: center;
            align-items: center;
        }
        .date{
            text-align: center;
        }
        .total{
            position: absolute;
            right: 25%;
        }
</style>
</head>
<?php 
    session_start();
    if(isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2){
        require_once 'connection.php';
        $userId = $_SESSION['ID_USER'];
        echo "<a href='index.php' class='back'>< BACK</a>";
        echo"<div class='title'> Good Food...Good Mood</div>";
        echo "<div class='total'>";
        $query = "SELECT * FROM orders WHERE ID_BUYER = '$userId' ORDER BY DATEORDER DESC ";
        $res = mysqli_query($con,$query);
        $nbr = mysqli_num_rows($res);
        if($nbr != 0){
            for($i=0;$i<$nbr;$i++){
                $row = mysqli_fetch_assoc($res);
                $query1 = "SELECT * FROM have_order WHERE ID_ORDER = $row[ID_ORDER] ";
                $res1 = mysqli_query($con,$query1);
                $nbr1 = mysqli_num_rows($res1);
                echo "<div class='date'><b>$row[DATEORDER]</b></div>";
                echo "<div class='all'>";
                echo "<div>";
                $now = date("Y-m-d");
                for($j=0;$j<$nbr1;$j++){
                    $row1 = mysqli_fetch_assoc($res1);
                    $query2 = "SELECT NAME,UNIT_PRICE FROM recipes WHERE ID_RECIPES = $row1[ID_RECIPES] ";
                    $res2 = mysqli_query($con,$query2);
                    $row2 = mysqli_fetch_assoc($res2);
                    echo "$row2[NAME]<br/>Unit_price:$row2[UNIT_PRICE]<br/>Quantity:$row1[QUANTITY]<br/>Total_price:$row1[PRICE]<br/>$row1[STATUS]<br/><br/>";
                }
                echo "</div>";
                if($row['PRICE_TOTAL'] != 0){
                    if($row['DATEORDER'] == $now) echo "<a href='order.php?id=$row[ID_ORDER]'>Price total with delivery:$row[PRICE_TOTAL]</a>";
                    else echo "Price total with delivery:$row[PRICE_TOTAL]";
                }
                echo '</div>';
            }
            echo "</div>";
        }
        else echo "<div class='no'>You don't have any order in history </div>";
    }
    else header("Location:index.php");
?>