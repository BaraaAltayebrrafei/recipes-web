<!DOCTYPE html>
<html>
<?php
session_start();
if (!isset($_GET['recipeId']))
    header("Location:index.php");
?>

<head>
    <link rel="stylesheet" href="./Resources/styles/salesforce-lightning-design-system.min.css">
    <title>Recipe Page</title>
    <style>
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

        .imgs {
            float: right;
            position: absolute;
            top: 65px;
            right: 5px;
            height: 550px;
        }

        .title {
            position: absolute;
            left: 370px;
            top: 0px;
            font-size: 50px;
            color: #00026b;
            font-family: "Century Gothic", sans-serif;
        }

        .username {
            font-size: 30px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            width: 900px;
            padding-left: 10px;
        }

        .about {
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            text-align: justify;
            width: 900px;
            padding-left: 10px;
        }

        .name {
            font-size: 25px;
        }

        .desc {
            font-size: 20px;
        }

        .ing {
            font-size: 20px;
        }

        .method {
            font-size: 20px;
        }

        .adress {
            font-size: 20px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            background: #fa795275;
            border-radius: 30px;
            position: absolute;
            top: 650px;
            right: 5px;
        }

        .time {
            font-size: 20px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            background: #fa795275;
            border-radius: 30px;
            position: absolute;
            top: 690px;
            right: 5px;
        }

        .nbpersons {
            font-size: 20px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            background: #fa795275;
            border-radius: 30px;
            position: absolute;
            top: 730px;
            right: 5px;
        }

        .calories {
            font-size: 20px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            background: #fa795275;
            border-radius: 30px;
            position: absolute;
            top: 770px;
            right: 5px;
        }

        .country {
            font-size: 20px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            background: #fa795275;
            border-radius: 30px;
            position: absolute;
            top: 810px;
            right: 5px;
        }

        .difficulty {
            font-size: 20px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            background: #fa795275;
            border-radius: 30px;
            position: absolute;
            top: 850px;
            right: 5px;
        }

        .nbviews {
            font-size: 20px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            background: #fa795275;
            border-radius: 30px;
            position: absolute;
            top: 890px;
            right: 5px;
        }

        .unitprice {
            font-size: 20px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            background: #fa795275;
            border-radius: 30px;
            position: absolute;
            top: 930px;
            right: 5px;
        }

        .buy {
            font-size: 20px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            background: #fa795275;
            position: absolute;
            top: 970px;
            right: 5px;
            text-decoration: none;
            padding: 5px;
            width: 70px;
            text-align: center;
            border: solid #00026b;
            cursor: pointer;
        }

        .nom {
            text-decoration: none;
            padding-left: 10px;
        }

        .inputcomment,
        progress {
            accent-color: #00026b;
        }

        .inputcomment {
            margin: .7rem 0;
            background: white;
            border-radius: .5rem;
            border: solid #00026b7a 3px;
            padding: 10px;
            font-size: 1.6rem;
            color: #00026b;
            text-transform: none;
            width: 300px;
            caret-color: #00026b;
        }

        .inputcomment::placeholder {
            color: #00026b7a;
            font-family: "Century Gothic", sans-serif;
        }

        .postcomment {
            margin: .7rem 0;
            padding: 10px;
            font-size: 1.6rem;
            color: #00026b;
            border-radius: .5rem;
            border: solid #00026b7a 3px;
            cursor: pointer;
        }

        .slds-button__icon.slds-global-header__icon {
            width: 30px;
            height: 30px;
            cursor: pointer;
        }

        button.liked * {
            fill: red !important;
        }

        button.saved * {
            fill: yellow !important;
        }

        .part1 {
            font-size: 20px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            text-decoration: underline;
        }

        .part2 {
            font-size: 20px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
        }

        .nblikes {
            font-size: 20px;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            padding-left: 5px;
        }

        .cmm {
            border: solid #00026b 0.5px;
            width: 500px;
            padding-left: 10px;
        }

        :root {
            --box-radow: 0 .5rem 1rem rgba(0, 0, 0, .1);
        }

        .box {
            border: solid #00026b 2px;
            width: 350px;
            height: 170px;
            background: linear-gradient(45deg, #fa7952d7, transparent);
            float: left;
            margin: 10px;
        }

        .nom {
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            font-size: 20px;
            padding-left: 10px
        }

        .nom:hover {
            text-decoration: none;
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
            top: 80%;
            right: 34%;
            width: 30rem;
            box-shadow: var(--box-shadow);
            padding: 2rem;
            border-radius: .5rem;
            background: #eee;
            text-align: center;
            display: none;
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            z-index: 10;
            border: solid #00026b 4px;
        }

        .date {
            font-family: "Century Gothic", sans-serif;
            color: #00026b;
            font-size: 25px;
            padding-left: 10px;
        }
        form{
            padding-left: 10px;
        }
    </style>
</head>

<body>
    <a href="index.php" class="back">
        < BACK</a>
            <div class='title'> Good Food...Good Mood</div>
            <?php
            require_once 'connection.php';
            if (isset($_GET['recipeId'])) {
                echo "<script>var recipeId = " . $_GET['recipeId'] . " ;</script>";
                $recipe_id = $_GET['recipeId'];
                if (isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2) {
                    if (!isset($_SESSION['recentlyViewed'])) {
                        $_SESSION['recentlyViewed'] = array();
                    }
                    $recentlyViewed = false;
                    foreach ($_SESSION['recentlyViewed'] as $val) {
                        if ($val == $recipe_id) {
                            $recentlyViewed = true;
                        }
                    }
                    if (!$recentlyViewed) {
                        array_push($_SESSION['recentlyViewed'], $recipe_id);
                        $query = "SELECT VIEW_COUNT FROM recipes WHERE ID_RECIPES= $recipe_id ";
                        $res = mysqli_query($con, $query);
                        $row = mysqli_fetch_row($res);
                        $count = $row[0];
                        $count++;
                        $query = " UPDATE recipes SET VIEW_COUNT= $count WHERE ID_RECIPES= $recipe_id ";
                        $res = mysqli_query($con, $query);
                    }
                }
                $query = "SELECT recipes.NAME, recipes.DESCRIPTION, recipes.CALORIES, 
                recipes.NUMBER_OF_PERSONS, recipes.PREPERATION_TIME, recipes.PREPERATION_METHOD, 
                recipes.DIFFICULTY, recipes.COUNTRY, recipes.VIEW_COUNT, media.CONTENT, recipes.ID_USER, recipes.ID_RECIPES, recipes.UNIT_PRICE,
                recipes.DATE_RECIPE FROM recipes,media WHERE recipes.ID_RECIPES= $recipe_id AND recipes.ID_RECIPES=media.ID_RECIPES ";
                $res = mysqli_query($con, $query);
                $nbr = mysqli_num_rows($res);
                $row = mysqli_fetch_row($res);
                $name = $row[0];
                $description = $row[1];
                $calories = $row[2];
                $nbpersons = $row[3];
                $time = $row[4];
                $method = $row[5];
                $difficulty = $row[6];
                $country = $row[7];
                $nbviews = $row[8];
                $userId = $row[10];
                $recipeId = $row[11];
                $unitprice = $row[12];
                $date = $row[13];
                $media = [];
                $media[0] = $row[9];
                for ($i = 1; $i < $nbr; $i++) {
                    $row = mysqli_fetch_row($res);
                    $media[$i] = $row[9];
                }
                $query = "SELECT FIRST_NAME, LAST_NAME FROM user WHERE ID_USER= $userId ";
                $res = mysqli_query($con, $query);
                $row = mysqli_fetch_row($res);
                $fname = $row[0];
                $lname = $row[1];
                $query = "SELECT adress.ADRESS FROM user, adress WHERE user.ID_USER= $userId AND user.ID_ADRESS = adress.ID_ADRESS ";
                $res = mysqli_query($con, $query);
                $row = mysqli_fetch_row($res);
                $adress = $row[0];

                echo "<div class='imgs'>";
                for ($i = 0; $i < sizeof($media); $i++) {
                    $photo = $media[$i];
                    if ($i == 0) {
                        echo "<img src='$photo' width='400' height='400' class='photo-" . $i . "' >";
                    } else {
                        echo "<img src='$photo' width='400' height='400' class='slds-hide photo-" . $i . "' >";
                    }
                }
                echo "</div>";
                echo "<a class='nom' href='userpage.php?id=$userId'><div class='username'>$fname&nbsp&nbsp$lname </div></a>";
                echo "<div class='date'> $date </div>";
                $query = "SELECT ingredients.NAME, have_ing.QUANTITY, have_ing.UNIT_OF_MEASURE FROM have_ing,ingredients WHERE ID_RECIPES= $recipe_id AND ingredients.ID_INGREDIENTS=have_ing.ID_INGREDIENTS ";
                $res = mysqli_query($con, $query);
                $nbr = mysqli_num_rows($res);
                echo "<div class='about'><div class='name'>$name</div><br/><div class='desc'>Description:<br/>$description</div><br/><div class='ing'>Ingredients:<br/><ul>";
                for ($i = 0; $i < $nbr; $i++) {
                    $row = mysqli_fetch_assoc($res);
                    if ($row['QUANTITY'] != NULL || $row['UNIT_OF_MEASURE'] != NULL) {
                        echo "<li>$row[NAME] ($row[QUANTITY]&nbsp$row[UNIT_OF_MEASURE])</li>";
                    } else {
                        echo "<li>$row[NAME]</li>";
                    }
                }
                echo "</ul></div><br/><div class='method'>Method:<br/>$method</div></div> ";
                echo "<div class='adress'>&nbsp&nbspadress: $adress (lebanon)&nbsp&nbsp</div>";
                echo "<div class='time'>&nbsp&nbsptime: $time minutes&nbsp&nbsp</div>";
                echo "<div class='nbpersons'>&nbsp&nbspnumber of persons: $nbpersons&nbsp&nbsp</div>";
                echo "<div class='calories'>&nbsp&nbspcalories: $calories Kcal&nbsp&nbsp</div>";
                echo "<div class='country'>&nbsp&nbspcountry: $country&nbsp&nbsp</div>";
                echo "<div class='difficulty'>&nbsp&nbspdifficulty: $difficulty&nbsp&nbsp</div>";
                echo "<div class='nbviews'>&nbsp&nbspnumber of views: $nbviews&nbsp&nbsp</div>";
                if ($unitprice != NULL) {
                    echo "<div class='unitprice'>&nbsp&nbspunit price: $unitprice $&nbsp&nbsp</div>";
                    if (isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2) {
                        $buyerId = $_SESSION['ID_USER'];
                        if ($userId != $buyerId) {
                            echo "<a href='cart1.php?recipeId=$recipeId' class='buy'>BUY</a> ";
                        }
                    }
                }
                echo "<hr/>";
                if (isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2) {
                    $userLikeSave = $_SESSION['ID_USER'];
                    $queryLike = "SELECT * FROM likes WHERE ID_USER = '$userLikeSave' AND ID_RECIPES = '$recipeId' ";
                    $resLike = mysqli_query($con, $queryLike);
                    $nbrLike = mysqli_num_rows($resLike);
                    if ($nbrLike != 0) {
                        echo '<button class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action liked"
                        title="Like" onclick="toggleLike(this);">
                        <svg class="slds-button__icon slds-global-header__icon">
                            <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#heart">
                            </use>
                        </svg>
                        </button>';
                    } else {
                        echo '<button class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                        title="Like" onclick="toggleLike(this);">
                        <svg class="slds-button__icon slds-global-header__icon">
                            <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#heart">
                            </use>
                        </svg>
                        </button>';
                    }
                    $querySave = "SELECT * FROM saved WHERE ID_USER = '$userLikeSave' AND ID_RECIPES = '$recipeId' ";
                    $resSave = mysqli_query($con, $querySave);
                    $nbrSave = mysqli_num_rows($resSave);
                    if ($nbrSave != 0) {
                        echo '<button class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action saved"
                        title="Save" onclick="toggleSave(this);">
                        <svg class="slds-button__icon slds-global-header__icon">
                            <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#bookmark">
                            </use>
                        </svg>
                        </button>';
                    } else {
                        echo '<button class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                        title="Save" onclick="toggleSave(this);">
                        <svg class="slds-button__icon slds-global-header__icon">
                            <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#bookmark">
                            </use>
                        </svg>
                        </button>';
                    }
                }
                $query = " SELECT COUNT(ID_USER) FROM likes WHERE ID_RECIPES='$recipeId' ";
                $res = mysqli_query($con, $query);
                $row = mysqli_fetch_row($res);
                echo "<div class='nblikes'>$row[0] likes</div>";
                if (isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2) {
                    echo "<form method='post' action='recipe-page.php?recipeId=$recipeId'>";
                    echo "<div class='commentbox'><input class='inputcomment' type='text' name='comment' placeholder='Write a comment...'/>
                    &nbsp&nbsp<input class='postcomment' type='submit' value='COMMENT'/></div>";
                    echo "</form>";
                    if (isset($_POST['comment']) && $_POST['comment'] != "") {
                        $comment = $_POST['comment'];
                        $recipeId = $_GET['recipeId'];
                        $user_com = $_SESSION['ID_USER'];
                        $now = date('Y-m-d H:i:s');
                        $query1 = "INSERT INTO comment_user(ID_COMMENT, ID_RECIPES, ID_USER, TEXT, DATE_COMMENT) VALUES(NULL,  '$recipeId', '$user_com', '$comment', '$now') ";
                        $res1 = mysqli_query($con, $query1);
                        $commentId = mysqli_insert_id($con);
                        $query2 = "INSERT INTO notifications (ID_COMMENT,ID_RECIPES, ID_USER, DATE_NOTIFICATION, TYPE) VALUES ('$commentId','$recipeId', '$userId', '$now', 'comment') ";
                        $res2 = mysqli_query($con, $query2);
                    }
                }
                echo "<script>var nblikes = " . $row[0] . " ;</script>";
                $query = " SELECT comment_user.TEXT, comment_user.DATE_COMMENT, user.FIRST_NAME, user.LAST_NAME, comment_user.ID_USER AS ID_USER, comment_user.ID_COMMENT AS ID_COMMENT FROM user JOIN comment_user ON comment_user.ID_USER=user.ID_USER WHERE comment_user.ID_RECIPES= '$recipeId' ";
                $res = mysqli_query($con, $query);
                $nbr = mysqli_num_rows($res);
                for ($i = 0; $i < $nbr; $i++) {
                    echo "<div class='cmm'>";
                    $row = mysqli_fetch_assoc($res);
                    echo "<div class='comments'><div class='part1'>$row[FIRST_NAME]&nbsp$row[LAST_NAME]&nbsp.&nbsp$row[DATE_COMMENT]";
                    if (isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1) {
                        if ((isset($_SESSION['ID_ROLE']) && $_SESSION['ID_ROLE'] == 1) || ($row['ID_USER'] == $_SESSION['ID_USER']) || ($_SESSION['ID_USER'] == $userId)) {
                            $commentId = $row['ID_COMMENT'];
                            echo ' <button
                                          class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                                          title="delete" onclick="openDelete(' . $commentId . ');">';
                            echo '<svg class="slds-button__icon slds-global-header__icon">';
                            echo '<use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#close"></use>';
                            echo '</svg>';
                            echo '</button>';
                        }
                    }
                    echo "</div><div class='part2'>$row[TEXT]</div></div>";
                    echo "</div>";
                    echo "<br/>";
                }
            }
            ?>
            <div class="all">
                <div class="model-body">
                    <p>Are you sure you want to delete this comment?</p>
                </div>
                <div class="model-footer">
                    <button onclick="closeDelete();" class="confirmButton">Close</button>
                    <button onclick="confirmDelete();" class="confirmButton">Delete</button>
                </div>
            </div>
            <script>
                <?php
                echo "var mediaNb = " . sizeof($media) . ";";
                echo "var lastImg = 0;";
                ?>
                setInterval(() => {
                    document.querySelector('.photo-' + lastImg)?.classList?.add('slds-hide');
                    lastImg++;
                    if (lastImg == mediaNb) {
                        lastImg = 0;
                    }
                    document.querySelector('.photo-' + lastImg)?.classList?.remove('slds-hide');
                }, 3000);
                function toggleLike(elem) {
                    elem.classList.toggle('liked');
                    if (elem.classList.contains('liked')) {
                        nblikes++;
                        fetch('./toggleLike.php?recipeId=' + recipeId);
                    } else {
                        nblikes--;
                        fetch('./toggleLike.php?recipeId=' + recipeId);
                    }
                    document.querySelector('.nblikes').textContent = nblikes + ' likes';
                }
                function toggleSave(elem) {
                    elem.classList.toggle('saved');
                    if (elem.classList.contains('saved')) {
                        fetch('./toggleSave.php?recipeId=' + recipeId);
                    } else {
                        fetch('./toggleSave.php?recipeId=' + recipeId);
                    }
                }
                function confirmDelete() {
                    document.querySelector('.all').style.display = "none";
                    location.href = './deleteComment.php?id=' + deleteCommentId;
                    deleteCommentId = null;
                }
                function openDelete(commentId) {
                    deleteCommentId = commentId;
                    document.querySelector('.all').style.display = "block";
                }
                function closeDelete() {
                    deleteCommentId = null;
                    document.querySelector('.all').style.display = "none";
                }
            </script>
</body>

</html>