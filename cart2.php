<?php
session_start();
    // onclick order dans le page cart1 pour l'ajouter au cartItems 
require_once 'connection.php';
if (isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2) {
    if (isset($_POST['id']) && $_POST['id'] != ""
         && isset($_POST['name']) && $_POST['name'] != "" 
         && isset($_POST['price']) && $_POST['price'] != "" 
         && isset($_POST['qty']) && $_POST['qty'] != "" 
         && isset($_POST['delivery']) && $_POST['delivery'] != ""
         && isset($_POST['id_vendeur']) && $_POST['id_vendeur'] != "") 
    {
        $userId = $_SESSION['ID_USER']; //id buyer
        $recipeId = $_POST['id'];// id du recette 
        $name = $_POST['name'];// nom recette 
        $qty = $_POST['qty'];// qty demamder par le buyer
        $unit_price = $_POST['price'];// prix unitaire d'une recette 
        $price = $unit_price * $qty;// ptix d'une qty de cette recette 
        $delivery_price = $_POST['delivery'];// pris a partir du order1
        $id_vendeur = $_POST['id_vendeur'];
        //remplir un array $ item par les information si dessus 
        $item = [];
        $item['recipeId'] = $recipeId;
        $item['qty'] = $qty;
        $item['name'] = $name;
        $item['unit_price'] = $unit_price;
        $item['price'] = $price;
        $item['delivery_price'] = $delivery_price;
        $item['id_vend'] = $id_vendeur;

        // creation d'un array cartItems if not exist et ajouter l'items dans ce tableau
        if (!isset($_SESSION['cartItems'])) {
            $_SESSION['cartItems'] = [];
            array_push($_SESSION['cartItems'], $item);
        } else {
            if (!Exists($item['recipeId'], $_SESSION['cartItems'], 'recipeId')) {
                array_push($_SESSION['cartItems'], $item);
            } else {
                for ($i = 0; $i < sizeof($_SESSION['cartItems']); $i++){
                    $row = $_SESSION['cartItems'][$i];
                    if ($row['recipeId'] == $item['recipeId']) {
                        $_SESSION['cartItems'][$i]['qty'] = $qty;//nte ken +=
                        $_SESSION['cartItems'][$i]['price'] = $_SESSION['cartItems'][$i]['unit_price'] * $_SESSION['cartItems'][$i]['qty'];
                    }
                }
            }
        }
        header("Location:cart.php");
    }
}
else header("Location:index.php");   
?>
<?php
    function Exists($t1, $tab2, $key)
    {
        foreach ($tab2 as $val) {
            if ($t1 == $val[$key])
                return true;
        }
        return false;
    }
?>