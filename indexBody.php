<?php
$search;
$searchstr;
$searchWord = [];
$media = [];
$recipesList = [];
$limit = 10;
$pageNumber = 1;
if (isset($_GET['pageNumber'])) {
    $pageNumber = $_GET['pageNumber'];
}
$offset = ($pageNumber - 1) * $limit;
if (isset($_GET['search'])) {
    $search = $_GET['search'];
    $searchstr = $_GET['search'];
    $searchWord = explode(' ', $searchstr);
    if ($searchstr == '') {
        echo "<div class='nosearch'>you didn't search anything</div>";
    } else {
        foreach ($searchWord as $search) {
            if (strtolower($search) == "icebox" || strtolower($search) == "fridge" || strtolower($search) == "freezer") {
                $search = 'Refrigerator';
            } elseif (strtolower($search) == "griddle") {
                $search = 'Frying pan';
            } elseif (strtolower($search) == "cooktop" || strtolower($search) == "hob") {
                $search = 'Stovetop';
            } elseif (strtolower($search) == "casserole") {
                $search = 'pot';
            } elseif (strtolower($search) == "skillet") {
                $search = 'pan';
            } elseif (strtolower($search) == "microwave" || strtolower($search) == "bowl" || strtolower($search) == "cezve") {
                $search = 'Others';
            }
            $query = "SELECT recipes.ID_RECIPES as ID_RECIPES, recipes.NAME as NAME, recipes.VIEW_COUNT as VIEW_COUNT, media.CONTENT as CONTENT
                            FROM recipes , media,havetools, tools
                            WHERE( recipes.NAME LIKE '%$search%'
                            OR tools.NAME LIKE '%$search%')
                            AND recipes.ID_RECIPES = media.ID_RECIPES
                            AND recipes.ID_RECIPES = havetools.ID_RECIPES
                            AND tools.ID_TOOLS  = havetools.ID_TOOLS ORDER BY recipes.VIEW_COUNT DESC ";
            $result = mysqli_query($con, $query);
            $nbrow = mysqli_num_rows($result);
            for ($i = 0; $i < $nbrow; $i++) {
                $row = mysqli_fetch_assoc($result);
                if (!isset($media[$row['ID_RECIPES']])) {
                    $media[$row['ID_RECIPES']] = $row['CONTENT'];
                }
                $recipesList[$row['ID_RECIPES']] = $row;
            }
        }
        foreach ($searchWord as $search) {
            $query2 = "SELECT recipes.ID_RECIPES as ID_RECIPES,  recipes.NAME as NAME, recipes.VIEW_COUNT as VIEW_COUNT, media.CONTENT as CONTENT
                            FROM recipes , media, have_ing, ingredients
                            WHERE ingredients.NAME LIKE '%$search%'
                            AND recipes.ID_RECIPES = media.ID_RECIPES
                            AND recipes.ID_RECIPES = have_ing.ID_RECIPES
                            AND have_ing.ID_INGREDIENTS  = ingredients.ID_INGREDIENTS ORDER BY recipes.VIEW_COUNT DESC ";
            $res2 = mysqli_query($con, $query2);
            $nbr = mysqli_num_rows($res2);
            for ($j = 0; $j < $nbr; $j++) {
                $row2 = mysqli_fetch_assoc($res2);
                if (!isset($media[$row2['ID_RECIPES']])) {
                    $media[$row2['ID_RECIPES']] = $row2['CONTENT'];
                }
                $recipesList[$row2['ID_RECIPES']] = $row2;
            }
        }
        if ($nbr <= 0 && $nbrow <= 0) {
            echo "<div class='nosearch'>There is no recipe matching your search....</div>";
        }
    }
} else {
    $selectMediaQuery = "SELECT ID_RECIPES, CONTENT FROM media WHERE ";
    $selectQuery = "SELECT recipes.NAME AS NAME, recipes.VIEW_COUNT AS VIEW_COUNT,recipes.COUNTRY,recipes.DIFFICULTY, recipes.ID_RECIPES AS ID_RECIPES FROM recipes ";
    $query = "";
    if (isset($_GET['categoryId'])) {
        $query = $query . ", have_cat ";
    }
    if (isset($_GET['tagId'])) {
        $query = $query . ", having_tag ";
    }
    $has_Conditions = false;
    if (isset($_GET['countryName']) || isset($_GET['difficultyName']) || isset($_GET['categoryId']) || isset($_GET['tagId'])) {
        $query = $query . " WHERE  ";
    }

    if (isset($_GET['countryName'])) {
        if ($has_Conditions) {
            $query = $query . " AND ";
        } else {
            $has_Conditions = true;
        }
        $query = $query . "'" . $_GET['countryName'] . "' = recipes.COUNTRY ";
    }
    if (isset($_GET['difficultyName'])) {
        if ($has_Conditions) {
            $query = $query . " AND ";
        } else {
            $has_Conditions = true;
        }
        $query = $query . "'" . $_GET['difficultyName'] . "' = recipes.DIFFICULTY ";
    }
    if (isset($_GET['categoryId'])) {
        if ($has_Conditions) {
            $query = $query . " AND ";
        } else {
            $has_Conditions = true;
        }
        $query = $query . " recipes.ID_RECIPES = have_cat.ID_RECIPES ";
        $query = $query . " AND '" . $_GET['categoryId'] . "' = have_cat.ID_CATEGORIES ";
    }
    if (isset($_GET['tagId'])) {
        if ($has_Conditions) {
            $query = $query . " AND ";
        } else {
            $has_Conditions = true;
        }
        $query = $query . " recipes.ID_RECIPES = having_tag.ID_RECIPES ";
        $query = $query . " AND '" . $_GET['tagId'] . "' = having_tag.ID_TAG ";
    }
    $query = $query . " ORDER BY recipes.VIEW_COUNT DESC ";
    $res = mysqli_query($con, $selectQuery . $query);
    $r = mysqli_num_rows($res);
    for ($i = 0; $i < $r; $i++) {
        $row = mysqli_fetch_assoc($res);
        if ($i != 0) {
            $selectMediaQuery = $selectMediaQuery . ' OR ';
        }
        $selectMediaQuery = $selectMediaQuery . ' ID_RECIPES = \'' . $row['ID_RECIPES'] . '\'';
    }
    $res = mysqli_query($con, $selectMediaQuery);
    $r = mysqli_num_rows($res);
    for ($i = 0; $i < $r; $i++) {
        $row = mysqli_fetch_assoc($res);
        if (!isset($media[$row['ID_RECIPES']])) {
            $media[$row['ID_RECIPES']] = $row['CONTENT'];
        }
    }
    $res = mysqli_query($con, $selectQuery . $query);
    $r = mysqli_num_rows($res);
    for ($i = 0; $i < $r; $i++) {
        $row = mysqli_fetch_assoc($res);
        $recipesList[$row['ID_RECIPES']] = $row;
    }
}

echo '<div class="slds-grid slds-wrap slds-align_absolute-center">';
$counter = 0;
foreach ($recipesList as $key => $row) {
    if ($counter >= $offset && $counter < $offset + $limit && $counter < sizeof($recipesList)) {
        echo '<div class="slds-col slds-box slds-size_1-of-4 bloc slds-text-align_center slds-m-around_x-small" onclick="openOrDelete(this, \'' . $key . '\');">';
        if (isset($_SESSION['ID_ROLE']) && $_SESSION['ID_ROLE'] == 1) {
            echo '<div class="delete-btn" onclick="openOrDelete(this, \'' . $key . '\');">';
            echo ' <button
                      class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                      title="delete">';
            echo '<svg class="slds-button__icon slds-global-header__icon">';
            echo '<use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#close"></use>';
            echo '</svg>';
            echo '</button>';
            echo '</div>';
        }
        echo '<div class="slds-align_absolute-center slds-box" style="width:150px; height: 150px; background-image: url(';
        if (isset($media[$key])) {
            echo $media[$key];
        }
        echo '); background-repeat: no-repeat; background-size: cover;"></div>';
        echo "<div class='slds-text-color_default'>" . $row['NAME'] . "</div>";
        echo "<div class='slds-badge slds-badge_inverse'>" . $row['VIEW_COUNT'] . " views " . "</div>";
        echo "</div>";
    }
    $counter++;
}

echo "</div>";
echo "<div class='slds-grid slds-align_absolute-center'>";
$addonePage = 0;
if (fmod(sizeof($recipesList), $limit) != 0) {
    $addonePage = 1;
}
for ($i = 1; $i <= sizeof($recipesList) / $limit + $addonePage; $i++) {
    $params = ['pageNumber=' . $i];
    foreach ($_GET as $key => $value) {
        if ($key != 'pageNumber') {
            array_push($params, $key . "=" . $value);
        }
    }
    echo '<a href="./index.php?' . join('&', $params) . '" class="slds-badge">' . $i . '</a>';
}
echo "</div>";
?>