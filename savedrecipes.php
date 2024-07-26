<html>
    <head>
        <meta charpest="UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="./Resources/styles/salesforce-lightning-design-system.min.css">
        <title>Saved Recipes</title>
        <style>
            a:link.back, a:visited.back {
                color:  #00026b;    
                background: #fa795275;    
                text-align: center;    
                text-decoration: none;   
                display: inline-block;    
                /* font-family: "Century Gothic", sans-serif;  */
                font-size: 20px;   
            }
            a:hover.back, a:active.back {
                background:  #fa795275;    
                /* font-family: "Century Gothic", sans-serif; */
            }
            a.back{
                padding: 18px 24px;
            }
            a:hover{
                text-decoration: none; 
            }
            .title{
                position: absolute;
                left: 420px;
                top: 0px;
                font-size: 50px;
                color: #00026b;
                /* font-family: "Century Gothic", sans-serif; */
            }
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
            .slds-box {
                background: linear-gradient(45deg, var(--pink), transparent);
            }
            .bloc {
                width: 250px;
                height: 275px;
                /*font-family: "Century Gothic", sans-serif;*/
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
            .no{
                font-size: 30px;
                color: var(--pink);
                text-align: center;
                padding-top: 30px;
            }
        </style>
    </head>
    <body>
    <?php
    require_once 'connection.php';
    session_start();
    $userId;
    if (!(isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1)) {
        header("Location:login.php");
    } else {
        $userId = $_SESSION['ID_USER'];
        echo "<a href='userpage.php' class='back'>< BACK</a>";
        echo "<div class='title'> Good Food...Good Mood</div>";
        echo "<br/><br/>";
        $query1 = "SELECT ID_RECIPES FROM saved WHERE ID_USER = $userId ";
        $res1 = mysqli_query($con, $query1);
        $nbr1 = mysqli_num_rows($res1);
        if($nbr1 != 0){
            echo '<div class="slds-grid slds-wrap slds-align_absolute-center">';
            for ($i = 0; $i < $nbr1; $i++) {
                $row1 = mysqli_fetch_row($res1);
                $query2 = "SELECT recipes.NAME AS NAME, recipes.VIEW_COUNT AS VIEW_COUNT, media.CONTENT AS CONTENT, recipes.ID_RECIPES AS ID_recipes FROM recipes,media WHERE recipes.ID_RECIPES = media.ID_RECIPES AND recipes.ID_RECIPES= $row1[0]  ORDER BY recipes.VIEW_COUNT DESC ";
                $res2 = mysqli_query($con, $query2);
                $nbr2 = mysqli_num_rows($res2);
                $row = mysqli_fetch_row($res2);
                if (!isset($lastIdRecipe) || $lastIdRecipe != $row[3]) {
                    echo '<a class="slds-col slds-box slds-size_1-of-4 bloc slds-text-align_center slds-m-around_x-small" href="./recipe-page.php?recipeId=' . $row[3] . '">';
                    echo '<div class="slds-align_absolute-center slds-box" style="width:150px; height: 150px; background-image: url(' . $row[2] . '); background-repeat: no-repeat; background-size: cover;"></div>';
                    echo "<div class='slds-text-color_default'>" . $row[0] . "</div>";
                    echo "<div class='slds-badge slds-badge_inverse'>" . $row[1] . " views " . "</div>";
                    echo "</a>";  
                }
                $lastIdRecipe = $row[3];
            }
            echo '</div>';
        }
        else echo "<div class='no'>You don't have any saved recipes </div>";
    }
    ?>
    </body>
</html>
