<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="./Resources/styles/salesforce-lightning-design-system.min.css">
    <title>All Chefs</title>
    <style>
        :root {
            --box-radow: 0 .5rem 1rem rgba(0, 0, 0, .1);
        }

        body {
            background-color: #eee;
            padding-left: 130px;
        }

        .main{
            position: absolute;
            top : 100px;
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
            position :absolute;
            top : 5px;
            left : 5px;
        }

        .title {
            position: absolute;
            left: 420px;
            top: 0px;
            font-size: 50px;
            color: #00026b;
            font-family: "Century Gothic", sans-serif;
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
            top: 25%;
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
        }
    </style>
</head>
<body>
    <a href="index.php" class="back">< BACK</a>
    <div class='title'> Good Food...Good Mood</div>
    <?php
    session_start();
    $tab = [];
    if (!isset($_SESSION['islogin']) && $_SESSION['islogin'] != 1) {
        header("Location:login.php");
    } else {
        require_once 'connection.php';
        $query = "SELECT user.ID_USER, user.FIRST_NAME, user.LAST_NAME, user.EMAIL, COUNT(follow.ID_USER_FOLLOWEE) FROM user,follow WHERE user.ID_USER = follow.ID_USER_FOLLOWEE AND user.ID_USER <>  $_SESSION[ID_USER] GROUP BY user.ID_USER ORDER BY COUNT(follow.ID_USER_FOLLOWEE) DESC ";
        $res = mysqli_query($con, $query);
        $nbr = mysqli_num_rows($res);
        echo '<div class="main">';
        for ($i = 0; $i < $nbr; $i++) {
            $row = mysqli_fetch_row($res);
            array_push($tab, $row[0]);
            echo '<div class="box">';
            if (isset($_SESSION['ID_ROLE']) && $_SESSION['ID_ROLE'] == 1) {
                echo '<div>';
                echo ' <button
                            class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                            title="delete" onclick="openDelete(' . $row[0] . ');">';                          
                echo '<svg class="slds-button__icon slds-global-header__icon">';
                echo '<use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#close"></use>';
                echo '</svg>';
                echo '</button>';
                echo '</div>';
                echo '<br/>';
            }
            echo "<a class='nom' href='userpage.php?id=$row[0]'>$row[1]&nbsp&nbsp$row[2]";
            echo '<br/>';
            echo $row[3];
            echo '</a>';
            echo '<div>';
            echo "<div class='slds-badge slds-badge_inverse'>" . $row[4] . " followers </div>";
            echo '<br/>';
            echo '</div>';
            echo '</div>';
        }
        $query = "SELECT ID_USER, FIRST_NAME, LAST_NAME, EMAIL FROM user WHERE ID_USER <>  $_SESSION[ID_USER] AND ID_ROLE <> 1 ";
        $res = mysqli_query($con, $query);
        $nbr = mysqli_num_rows($res);
        for ($i = 0; $i < $nbr; $i++) {
            $row = mysqli_fetch_row($res);
            if(!exists($tab,$row[0])){
                echo '<div class="box">';
                if (isset($_SESSION['ID_ROLE']) && $_SESSION['ID_ROLE'] == 1) {
                    echo '<div>';
                    echo ' <button
                                class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                                title="delete" onclick="openDelete(' . $row[0] . ');">';                          
                    echo '<svg class="slds-button__icon slds-global-header__icon">';
                    echo '<use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#close"></use>';
                    echo '</svg>';
                    echo '</button>';
                    echo '</div>';
                    echo '<br/>';
                }
                echo "<a class='nom' href='userpage.php?id=$row[0]'>$row[1]&nbsp&nbsp$row[2]";
                echo '<br/>';
                echo $row[3];
                echo '</a>';
                echo '<div>';
                echo "<div class='slds-badge slds-badge_inverse'> 0 followers </div>";
                echo '<br/>';
                echo '</div>';
                echo '</div>';
            }
        }
        echo '</div>';
    }
    ?>
        <div class="all">
            <div class="model-body">
                <p>Are you sure you want to delete this user?</p>
            </div>
            <div class="model-footer">
                <button onclick="closeDelete();" class="confirmButton">Close</button>
                <button onclick="confirmDelete();" class="confirmButton">Delete</button>
            </div>
        </div>
    <?php
        function exists($tab,$userId) {
            for($i=0;$i<count($tab);$i++){
                if($tab[$i] == $userId) return true;
            }
            return false;
        }
    ?>
    <script>
        function confirmDelete() {
            document.querySelector('.all').style.display = "none";
            location.href = './deleteUser.php?id=' + deleteUserId;
            deleteUserId = null;
        }
        function openDelete(userId) {
            deleteUserId = userId;
            document.querySelector('.all').style.display = "block";
        }
        function closeDelete() {
            deleteUserId = null;
            document.querySelector('.all').style.display = "none";
        }
    </script>
</body>

</html>