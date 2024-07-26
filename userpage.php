<html>
<?php
session_start();
require_once 'connection.php';
if (!(isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1)) {
    header("Location:login.php");
}
if(isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1){
    if(!isset($_GET['id']) && $_SESSION['ID_ROLE'] == 1){
        header("Location:index.php");
    }
    if(isset($_GET['id'])){
        $userId = $_GET['id'];
        $query = "SELECT ID_ROLE FROM user WHERE ID_USER = '$userId' ";
        $res = mysqli_query($con,$query);
        $nbr = mysqli_num_rows($res);
        if($nbr != 0){
            $row = mysqli_fetch_assoc($res);
            $roleId = $row['ID_ROLE'];
            if($roleId == 1)  header("Location:index.php");
        }
    }
}
?>

<head>
    <meta charpest="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="./Resources/styles/salesforce-lightning-design-system.min.css">
    <title>User Page</title>
    <style>
        :root {
            --pink: #fa7952d7;
            --black: #00026b;
            --light-color: #666;
            --box-radow: 0 .5rem 1rem rgba(0, 0, 0, .1);
            --border: .2rem solid rgba(0, 0, 0, .1);
            --outline: .1rem solid rgba(0, 0, 0, .1);
            --outline-hover: .2rem solid var(--black);
        }

        body {
            background: #eee;
            font-family: "Century Gothic", sans-serif;

        }

        div.slds-box {
            background: linear-gradient(45deg, var(--pink), transparent);
        }

        .bloc {
            width: 250px;
            height: 275px;
            /*font-family: "Century Gothic", sans-serif;*/
        }

        ::-webkit-scrollbar {
            width: 10px;
        }

        ::-webkit-scrollbar-track {
            background: transparent;
        }

        ::-webkit-scrollbar-thumb {
            background: #fa7952d7;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: #fa795275;
        }

        a:link.back,
        a:visited.back {
            color: #00026b;
            background: #fa795275;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-family: "Century Gothic", sans-serif;
            font-size: 20px;
        }

        a:hover.back,
        a:active.back {
            background: #fa795275;
            font-family: "Century Gothic", sans-serif;
        }

        a.back {
            padding: 18px 24px;
        }

        .title {
            position: absolute;
            left: 420px;
            top: 0px;
            font-size: 50px;
            color: #00026b;
            font-family: "Century Gothic", sans-serif;
        }

        .menu {
            width: 130px;
            height: 40px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            font-size: 30px;
            /*padding-left: 15px;*/
            position: absolute;
            right: 10px;
            top: 10px;
            background-color: #eee;
        }

        .menu:hover {
            background-color: #fa795275;
        }

        .name {
            color: #00026b;
            font-family: "Century Gothic", sans-serif;
            font-size: 30px;
            padding-left: 10px;
        }

        .following,
        .followers {
            color: #00026b;
        }

        .following:hover,
        .followers:hover {
            text-decoration: none;
            color: #00026b;
        }

        .menu2 {
            width: 200px;
            height: 40px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            font-size: 30px;
            position: absolute;
            left: 450px;
            top: 160px;
            background-color: #eee;
            border: solid #00026b 3px;
            text-align: center;
            line-height: 1;
        }

        .menu2:hover {
            background-color: #fa795275;
        }

        .slds-listbox {
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            font-size: 18px;
        }

        .slds-dropdown {
            width: 200px;
        }

        .menu {
            width: 200px;
        }

        #menu a {
            text-decoration: none;
            color: var(--black);
        }

        .model-body {
            font-size: 20px;
        }

        .confirmButton {
            border: solid #fa795275 2px;
            width: 100px;
            height: 50px;
            font-size: 20px;
            background: linear-gradient(45deg, #fa7952d7, transparent);
            cursor: pointer;
            margin-left: 15px;
        }

        .all {
            position: absolute;
            top: 25%;
            right: 34%;
            width: 30rem;
            box-shadow: var(--box-shadow);
            padding: 2rem;
            border-radius: .5rem;
            background: #eee;
            text-align: center;
            display: none;
            color: #00026b;
        }
        .no{
            font-size: 30px;
            color: var(--pink);
            position: absolute;
            top: 25%;
            right: 45%;
        }
        .no2{
            font-size: 30px;
            color: var(--pink);
            position: absolute;
            top: 35%;
            right: 37%;
        }
    </style>
</head>

<body>
    <?php
    // require_once 'connection.php';
    // session_start();
    $userId;
    $f = '';
    /*if (!(isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1)) {
        header("Location:login.php");
    } else {*/
        if (isset($_GET['id'])) {
            $query = "SELECT ID_USER FROM user WHERE ID_USER = '$_GET[id]' ";
            $res = mysqli_query($con,$query);
            $nbr = mysqli_num_rows($res);
            if($nbr != 0){
                $userId = $_GET['id'];
                $query = "SELECT * FROM follow WHERE ID_USER_FOLLOWER = $_SESSION[ID_USER] AND ID_USER_FOLLOWEE = '$userId' ";
                $res = mysqli_query($con, $query);
                $nbr = mysqli_num_rows($res);
                if ($nbr != 0) {
                    $f = 'Following';
                } else {
                    $f = 'Follow';
                }
                if (($_SESSION['ID_USER'] != $userId) && ($_SESSION['ID_ROLE'] == 2)) {
                    $userIdEnter = $_SESSION['ID_USER'];
                    echo "<button class='menu2' onclick='toggleFollow(this,$userIdEnter,$userId)'> $f </button>";
                }
            }
            else echo "<p class='no'>No results</p>";
        } else if (isset($_SESSION['ID_USER'])) {
            $userId = $_SESSION['ID_USER'];
        }
        if (isset($userId)) {
            echo "<a href='index.php' class='back'>< BACK</a>";
            echo "<div class='title'> Good Food...Good Mood</div>";
            $query = "SELECT ID_USER FROM user WHERE ID_USER='" . $userId . "'";
            $res = mysqli_query($con, $query);
            $nbrows = mysqli_num_rows($res);
            if ($nbrows != 0) {
                $query = "SELECT FIRST_NAME, LAST_NAME, EMAIL FROM user WHERE ID_USER='" . $userId . "'";
                $res = mysqli_query($con, $query);
                $row = mysqli_fetch_assoc($res);
                $firstname = $row['FIRST_NAME'];
                $lastname = $row['LAST_NAME'];
                $email = $row['EMAIL'];
                echo "<div class='name' name='name'> $firstname   $lastname <br/>";
                echo "<span class='email' name='email'>$email</span><br/>";

                $query = "SELECT count(ID_USER_FOLLOWEE) FROM follow WHERE ID_USER_FOLLOWEE='" . $userId . "'";
                $res = mysqli_query($con, $query);
                $row = mysqli_fetch_row($res);
                echo "<span><a class='followers' href='followers.php?id=$userId'>followers : $row[0]</a></span>";
                echo "<script>var followers = " . $row[0] . " ;</script>";
                $query = "SELECT count(ID_USER_FOLLOWER) FROM follow WHERE ID_USER_FOLLOWER='" . $userId . "'";
                $res = mysqli_query($con, $query);
                $row = mysqli_fetch_row($res);
                echo "<span> &nbsp&nbsp&nbsp&nbsp<a class='following' href='following.php?id=$userId'> following : $row[0]</a></span></div>";
                if ($userId == $_SESSION['ID_USER']) {
                    ?>
                    <div class="slds-radio_button slds-button slds-button_neutral slds-text-color_default menu-toggle menu"
                        onclick="toggle('#menu');" title="Menu">
                        <span class="slds-p-around_x-large">Menu</span>
                        <span class="slds-icon_container ">
                            <svg class="slds-icon slds-icon-text-default slds-icon_xx-small">
                                <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#chevrondown">
                                </use>
                            </svg>
                        </span>
                        <div class="slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click menu-toggle" id="menu">
                            <div class="slds-dropdown" role="listbox">
                                <ul class="slds-listbox" role="presentation">
                                    <li role="presentation" class="slds-listbox__item">
                                        <a href='likedrecipes.php'>Liked recipes</a>
                                    </li>
                                    <li role="presentation" class="slds-listbox__item">
                                        <a href='savedrecipes.php'>Saved recipes</a>
                                    </li>
                                    <li role="presentation" class="slds-listbox__item">
                                        <a href='commentedrecipes.php'>Commented recipes</a>
                                    </li>
                                    <li role="presentation" class="slds-listbox__item">
                                        <a href='ordersHistory.php'>Orders</a>
                                    </li>
                                    <li role="presentation" class="slds-listbox__item">
                                        <a href='logout.php'>Log out</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php
                }
                $query = "SELECT recipes.NAME AS NAME, recipes.VIEW_COUNT AS VIEW_COUNT, media.CONTENT AS CONTENT, recipes.ID_RECIPES AS ID_RECIPES FROM recipes,media WHERE recipes.ID_RECIPES = media.ID_RECIPES AND recipes.ID_USER=' $userId ' ORDER BY recipes.VIEW_COUNT DESC ";
                $res = mysqli_query($con, $query);
                $nbr = mysqli_num_rows($res);
                echo "<br/>";
                if($nbr != 0){
                    echo '<div class="slds-grid slds-wrap slds-align_absolute-center">';
                    for ($i = 0; $i < $nbr; $i++) {
                        $row = mysqli_fetch_assoc($res);
                        if (!isset($lastIdRecipe) || $lastIdRecipe != $row['ID_RECIPES']) {
                            echo '<div class="slds-col slds-box slds-size_1-of-4 bloc slds-text-align_center slds-m-around_x-small" onclick="openOrDelete(this, \'' . $row['ID_RECIPES'] . '\');">';
                            if ((isset($_SESSION['ID_ROLE']) && $_SESSION['ID_ROLE'] == 1) || $userId == $_SESSION['ID_USER']) {
                                echo '<div class="delete-btn" onclick="openOrDelete(this, \'' . $row['ID_RECIPES'] . '\');">';
                                echo ' <button
                                        class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                                        title="delete">';
                                echo '<svg class="slds-button__icon slds-global-header__icon">';
                                echo '<use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#close"></use>';
                                echo '</svg>';
                                echo '</button>';
                                echo '</div>';
                            }
                            echo '<div class="slds-align_absolute-center slds-box" style="width:150px; height: 150px; background-image: url(' . $row['CONTENT'] . '); background-repeat: no-repeat; background-size: cover;"></div>';
                            echo "<div class='slds-text-color_default'>" . $row['NAME'] . "</div>";
                            echo "<div class='slds-badge slds-badge_inverse'>" . $row['VIEW_COUNT'] . " views " . "</div>";
                            echo "</div>";
                        }
                        $lastIdRecipe = $row['ID_RECIPES'];
                    }
                    echo '</div>';
                }
                else echo "<div class='no2'>There are no recipes posted</div>";    
            }
        } else {
            header("Location:index.php");
        }    
    // }
    ?>
    <div class="all">
        <div class="model-body">
            <p>Are you sure you want to delete this recipe?</p>
        </div>
        <div class="model-footer">
            <button onclick="closeDelete();" class="confirmButton">Close</button>
            <button onclick="confirmDelete();" class="confirmButton">Delete</button>
        </div>
    </div>
    <script>
        function openOrDelete(elem, recipeId) {
            event.stopPropagation();
            if (elem.classList.contains('delete-btn')) {
                openDelete(recipeId);
            } else {
                location.href = './recipe-page.php?recipeId=' + recipeId;
            }
        }
        function confirmDelete() {
            document.querySelector('.all').style.display = "none";
            location.href = './deleteRecipe.php?id=' + deleteRecipeId;
            deleteRecipeId = null;
        }
        function closeMenuToggle() {
            document?.querySelectorAll('.menu-toggle').forEach(it => it.classList.remove('slds-is-open'))
        }
        function openDelete(recipeId) {
            closeMenuToggle();
            deleteRecipeId = recipeId;
            document.querySelector('.all').style.display = "block";
        }
        function closeDelete() {
            deleteRecipeId = null;
            document.querySelector('.all').style.display = "none";
        }
        function toggle(selector) {
            document?.querySelector(selector)?.classList?.toggle('slds-is-open');
        }
        function toggleFollow(elem, idfollower, idfollowee) {
            console.log('elem.textContent >> ' + elem.textContent + '>>');
            if (elem.textContent.trim() == 'Follow') {
                elem.textContent = 'Following';
                followers++;
                fetch('./toggleFollow.php?idfollower=' + idfollower + '&idfollowee=' + idfollowee);
            } else {
                elem.textContent = 'Follow';
                followers--;
                fetch('./toggleFollow.php?idfollower=' + idfollower + '&idfollowee=' + idfollowee);
            }
            document.querySelector('.followers').textContent = 'followers : ' + followers;
        }
    </script>
</body>

</html>