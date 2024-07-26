<?php
session_start();
require_once 'connection.php';
if(isset($_GET['recipeId'])){
    $recipeId = $_GET['recipeId'];
    if (isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2) {
        $buyerId = $_SESSION['ID_USER'];//id del'acheteur
        $query = "SELECT ID_USER,UNIT_PRICE FROM recipes WHERE ID_RECIPES = '$recipeId' ";//id du vendeur
        $res = mysqli_query($con,$query);
        $row = mysqli_fetch_assoc($res);
        if($row['ID_USER'] != $buyerId && $row['UNIT_PRICE'] != NULL){
            $query = "SELECT ID_RECIPES, recipes.NAME,UNIT_PRICE,ID_USER FROM recipes WHERE ID_RECIPES = '$recipeId' ";
            $res = mysqli_query($con, $query);
            $row = mysqli_fetch_assoc($res);
            $query1 = "SELECT ID_ADRESS FROM user WHERE ID_USER='$row[ID_USER]'";//adress vendeur 
            $res1 = mysqli_query($con, $query1);
            $row1 = mysqli_fetch_assoc($res1);
            $query2 = "SELECT ID_ADRESS FROM user WHERE ID_USER='$buyerId'";
            $res2 = mysqli_query($con, $query2);
            $row2 = mysqli_fetch_assoc($res2);
            $query3 = "SELECT DELIVERY_PRICE FROM delivery WHERE ID_FROM = '$row1[ID_ADRESS]' AND ID_TO = '$row2[ID_ADRESS]' ";
            $res3 = mysqli_query($con, $query3);
            $row3 = mysqli_fetch_assoc($res3); 
        }
        else header("Location:recipe-page.php?recipeId=$recipeId");
?>
<html>
    <head>
        <title>Cart1</title>
    </head>
    <body>
        <a href="recipe-page.php?recipeId=<?php echo $recipeId;?>" class="back">< BACK</a>
        <div class='title'> Good Food...Good Mood</div>
        <form method="post" action="cart2.php" class="form">
            <table>
                <tr>
                    <td class="first">ID</td>
                    <td><input type="text" name="id" value="<?php echo $row['ID_RECIPES']; ?>" class="box" readonly /></td>
                </tr>
                <!-- hidden krml tfidna bl notification -->
                <tr>
                    <td><input type="text" name="id_vendeur" value="<?php echo  $row['ID_USER'];?>" class="box" hidden ></td>
                </tr>
                <!--  -->
                <tr>
                    <td class="first">Recipe Name</td>
                    <td><input type="text" name="name" value="<?php echo $row['NAME']; ?>" class="box" readonly /></td>
                </tr>
                <tr>
                    <td class="first">Unit Price</td>
                    <td><input type="text" name="price" value="<?php echo $row['UNIT_PRICE']; ?>" class="box" readonly /></td>
                </tr>
                <tr>
                    <td class="first">Quantity</td>
                    <td><input type="number" name="qty" min="1" value='1' class="box" required /></td>
                </tr>
                <tr>
                    <td class="first">Delivery</td>
                    <td><input type="number" name="delivery" value="<?php echo $row3['DELIVERY_PRICE']; ?>" class="box" readonly /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Order" class="btn"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
<?php
    } else {
        header("Location:recipe-page.php?recipeId=$recipeId");
    }
}
else header("Location:index.php");
?>
<style>
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
        .form{
            position: absolute;
            top: 15%;
            right : 30%;
            box-shadow: var(--box-shadow);
            padding: 2rem;
            border-radius: .5rem;
            background:linear-gradient(45deg, #fa7952d7  , transparent);
            text-align: center;
            width: 500px;
        }
        .form .box {
            margin: .7rem 0;
            background:  #fa795275;
            border-radius: .5rem;
            padding: 1rem;
            font-size: 1.6rem;
            color:   #00026b;
            text-transform: none;
            width: 100%;
        }
        .btn {
            margin-top: 1rem;
            display: inline-block;
            padding: .8rem 3rem;
            font-size: 1.7rem;
            border-radius: .5rem;
            border: 2px solid #fa795275;
            color: #00026b;
            cursor: pointer;
            background: #fa795275;
            box-shadow: 0 8px #fa7952d7;
            /*font-family: "Century Gothic", sans-serif;*/
            text-align: center;
        }
        .btn:active{
            box-shadow: none;
            transform: translateY(8px);
        }
        input{
            caret-color: #00026b;
        }
        input , progress{
            accent-color:  #00026b;
        }
        .box::placeholder{
            color: #00026b7a;
            /*font-family: "Century Gothic", sans-serif;*/
        }
        .first{
            color: #00026b;
            font-family: "Century Gothic", sans-serif;
            font-size: 25px;
        }
</style>