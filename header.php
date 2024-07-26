<?php
if (!isset($_SESSION['openOverlay']) || $_SESSION['openOverlay'] != true) {
    echo '<header class="slds-global-header_container toggle-first slds-hide">';
} else {
    echo '<header class="slds-global-header_container toggle-first">';
}
?>
<div class="slds-global-header slds-grid slds-grid_align-spread">
    <div class='title'>Good Food...Good Mood</div>
    <div class="slds-global-header__item slds-global-header__item_search navbar">
        <div class="slds-radio_button-group">
            <a class="slds-radio_button slds-button slds-button_neutral slds-text-color_default" href="./index.php"
                title="Home">
                <span class="slds-icon_container slds-icon-utility-home">
                    <svg class="slds-icon slds-icon-text-default slds-icon_xx-small">
                        <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#home">
                        </use>
                    </svg>
                </span>
                Home
            </a>
            <div class="slds-radio_button slds-button slds-button_neutral slds-text-color_default"
                onclick="toggle('#categoriesBtn');" title="Categories">
                Categories
                <span class="slds-icon_container">
                    <svg class="slds-icon slds-icon-text-default slds-icon_xx-small">
                        <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#chevrondown">
                        </use>
                    </svg>
                </span>
                <div class="slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click menu-toggle"
                    id="categoriesBtn">
                    <div class="slds-dropdown" role="listbox">
                        <ul class="slds-listbox" role="presentation">
                            <?php
                            require_once 'connection.php';
                            $query = "SELECT ID_CATEGORIES , Name FROM Categories";
                            $res = mysqli_query($con, $query);
                            $r = mysqli_num_rows($res);
                            for ($i = 0; $i < $r; $i++) {
                                $row = mysqli_fetch_row($res);
                                echo '<li role="presentation" class="slds-listbox__item"><a href="./index.php?categoryId=' . $row[0] . '">' . $row[1] . '</a></li>';
                            }
                            ?>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="slds-radio_button slds-button slds-button_neutral slds-text-color_default"
                onclick="toggle('#tagsBtn');" title="Tags">
                Tags
                <span class="slds-icon_container">
                    <svg class="slds-icon slds-icon-text-default slds-icon_xx-small">
                        <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#chevrondown">
                        </use>
                    </svg>
                </span>
                <div class="slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click menu-toggle" id="tagsBtn">
                    <div class="slds-dropdown" role="listbox">
                        <ul class="slds-listbox" role="presentation">
                            <?php
                            // require_once 'connection.php';
                            $query = "SELECT Id_TAG, Name FROM Tag";
                            $res = mysqli_query($con, $query);
                            $r = mysqli_num_rows($res);
                            for ($i = 0; $i < $r; $i++) {
                                $row = mysqli_fetch_row($res);
                                echo '<li role="presentation" class="slds-listbox__item"><a href="./index.php?tagId=' . $row[0] . '">' . $row[1] . '</a></li>';
                            }
                            ?>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="slds-radio_button slds-button slds-button_neutral slds-text-color_default menu-toggle"
                onclick="toggle('#countriesBtn');" title="Countries">
                Countries
                <span class="slds-icon_container ">
                    <svg class="slds-icon slds-icon-text-default slds-icon_xx-small">
                        <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#chevrondown">
                        </use>
                    </svg>
                </span>
                <div class="slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click menu-toggle"
                    id="countriesBtn">
                    <div class="slds-dropdown" role="listbox">
                        <ul class="slds-listbox" role="presentation">
                            <?php
                            // require_once 'connection.php';
                            $query = "SELECT COUNTRY FROM recipes WHERE COUNTRY <> 'Others' GROUP BY COUNTRY ORDER BY COUNTRY";
                            $res = mysqli_query($con, $query);
                            $r = mysqli_num_rows($res);
                            for ($i = 0; $i < $r; $i++) {
                                $row = mysqli_fetch_row($res);
                                echo '<li role="presentation" class="slds-listbox__item"><a href="./index.php?countryName=' . $row[0] . '">' . $row[0] . '</a></li>';
                            }
                            ?>
                            <li role="presentation" class="slds-listbox__item">
                                <a href="./index.php?countryName=Others">Others</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="slds-radio_button slds-button slds-button_neutral slds-text-color_default menu-toggle"
                onclick="toggle('#difficultyBtn');" title="Difficulty">
                Difficulty
                <span class="slds-icon_container ">
                    <svg class="slds-icon slds-icon-text-default slds-icon_xx-small">
                        <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#chevrondown">
                        </use>
                    </svg>
                </span>
                <div class="slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click menu-toggle"
                    id="difficultyBtn">
                    <div class="slds-dropdown" role="listbox">
                        <ul class="slds-listbox" role="presentation">
                            <?php
                            // require_once 'connection.php';
                            $query = "SELECT DIFFICULTY FROM recipes WHERE DIFFICULTY <> 'Hard' GROUP BY DIFFICULTY ";
                            $res = mysqli_query($con, $query);
                            $r = mysqli_num_rows($res);
                            for ($i = 0; $i < $r; $i++) {
                                $row = mysqli_fetch_row($res);
                                echo '<li role="presentation" class="slds-listbox__item"><a href="./index.php?difficultyName=' . $row[0] . '">' . $row[0] . '</a></li>';
                            }
                            ?>
                            <li role="presentation" class="slds-listbox__item">
                                <a href="./index.php?difficultyName=Hard">Hard</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="slds-radio_button slds-button slds-button_neutral slds-text-color_default"
                onclick="toggle('#aboutBtn');" title="AboutUs">
                About us
                <span class="slds-icon_container ">
                    <svg class="slds-icon slds-icon-text-default slds-icon_xx-small">
                        <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#chevrondown">
                        </use>
                    </svg>
                </span>
                <div class="slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click menu-toggle" id="aboutBtn">
                    <div class="slds-dropdown" role="listbox">
                        <ul class="slds-listbox" role="presentation">
                            <li><a href="who-we-are.html">Who we are</a></li>
                            <li><a href="contact-us.html">Contact us</a></li>
                            <li><a href="privacy-policy.html">Privacy and policy</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="slds-global-header__item allIcons">
        <ul class="slds-global-actions">
            <ul class="slds-global-actions">
                <?php
                if (!isset($_SESSION['islogin']) || (isset($_SESSION['ID_ROLE']) && $_SESSION['ID_ROLE'] != 1)) {
                    ?>
                    <li class="slds-global-actions__item icons">
                        <div class="slds-dropdown-trigger slds-dropdown-trigger_click">
                            <button
                                class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                                title="Search" id="search-btn">
                                <svg class="slds-button__icon slds-global-header__icon">
                                    <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#search">
                                    </use>
                                </svg>
                            </button>
                        </div>
                    </li>
                    <li class="slds-global-actions__item icons">
                        <div class="slds-dropdown-trigger slds-dropdown-trigger_click">
                            <button
                                class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                                title="Cart" onclick="location.href='cart.php'">
                                <svg class="slds-button__icon slds-global-header__icon">
                                    <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#cart">
                                    </use>
                                </svg>
                            </button>
                        </div>
                    </li>
                    <li class="slds-global-actions__item icons">
                        <div class="slds-dropdown-trigger slds-dropdown-trigger_click">
                            <button
                                class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                                title="Add a recipe" onclick="location.href='addrecipe.php'">
                                <svg class="slds-button__icon slds-global-header__icon">
                                    <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#add">
                                    </use>
                                </svg>
                            </button>
                        </div>
                    </li>
                    <li class="slds-global-actions__item icons">
                        <div class="slds-dropdown-trigger slds-dropdown-trigger_click">
                            <button
                                class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                                title="Chefs" onclick="location.href='allUsers.php'">
                                <svg class="slds-button__icon slds-global-header__icon">
                                    <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#people">
                                    </use>
                                </svg>
                                <span class="slds-assistive-text">
                                </span>
                            </button>
                        </div>
                    </li>
                    <?php
                    // require_once 'connection.php';
                    if (isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2) {
                        $userId = $_SESSION['ID_USER'];
                        $query = "SELECT count(ID_NOTIFICATION) FROM notifications WHERE ID_USER = '$userId' AND OPENED = 0 ";
                        $res = mysqli_query($con, $query);
                        $row = mysqli_fetch_row($res);
                        $nb = $row[0];
                        if($nb != 0){
                        ?>
                        <li class="slds-global-actions__item icons">
                            <div class="slds-dropdown-trigger slds-dropdown-trigger_click">
                                <button
                                    class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action slds-incoming-notification"
                                    title="Notifications" aria-live="assertive" aria-atomic="true"
                                    onclick="location.href='notification.php'">
                                    <svg class="slds-button__icon slds-global-header__icon" aria-hidden="true">
                                        <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#notification"></use>
                                    </svg>
                                    <span class="slds-assistive-text">
                                        <?php echo $nb; ?> new notifications
                                    </span>
                                </button>
                                <span aria-hidden="true"
                                    class="slds-notification-badge slds-incoming-notification slds-show-notification"
                                    style="line-height: 1rem;">
                                    <?php echo $nb; ?>
                                </span>
                            </div>
                        </li>
                        <?php
                        }else {
                            ?>
                            <li class="slds-global-actions__item icons">
                            <div class="slds-dropdown-trigger slds-dropdown-trigger_click">
                                <button
                                    class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                                    title="Notifications" onclick="location.href='notification.php'">
                                    <svg class="slds-button__icon slds-global-header__icon">
                                        <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#notification">
                                        </use>
                                    </svg>
                                </button>
                            </div>
                        </li>
                        <?php
                        }
                    } else {
                        ?>
                        <li class="slds-global-actions__item icons">
                            <div class="slds-dropdown-trigger slds-dropdown-trigger_click">
                                <button
                                    class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                                    title="Notifications" onclick="location.href='notification.php'">
                                    <svg class="slds-button__icon slds-global-header__icon">
                                        <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#notification">
                                        </use>
                                    </svg>
                                </button>
                            </div>
                        </li>
                        <?php
                    }
                    ?>
                    <li class="slds-global-actions__item icons">
                        <div class="slds-dropdown-trigger slds-dropdown-trigger_click">
                            <button
                                class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                                title="User" onclick="location.href='userpage.php'">
                                <svg class="slds-button__icon slds-global-header__icon">
                                    <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#user">
                                    </use>
                                </svg>
                                <span class="slds-assistive-text">
                                </span>
                            </button>
                        </div>
                    </li>
                    <?php
                } //if
                else {
                    ?>
                    <li class="slds-global-actions__item icons">
                        <div class="slds-dropdown-trigger slds-dropdown-trigger_click">
                            <button
                                class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                                title="Search" id="search-btn">
                                <svg class="slds-button__icon slds-global-header__icon">
                                    <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#search">
                                    </use>
                                </svg>
                            </button>
                        </div>
                    </li>
                    <li class="slds-global-actions__item icons">
                        <div class="slds-dropdown-trigger slds-dropdown-trigger_click">
                            <button
                                class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                                title="Users" onclick="location.href='allUsers.php'">
                                <svg class="slds-button__icon slds-global-header__icon">
                                    <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#people">
                                    </use>
                                </svg>
                                <span class="slds-assistive-text">
                                </span>
                            </button>
                        </div>
                    </li>
                    <li class="slds-global-actions__item icons">
                        <div class="slds-dropdown-trigger slds-dropdown-trigger_click">
                            <button
                                class="slds-button slds-button_icon slds-button_icon slds-button_icon-container slds-button_icon-small slds-global-actions__notifications slds-global-actions__item-action"
                                title="Logout" onclick="location.href='logout.php'">
                                <svg class="slds-button__icon slds-global-header__icon">
                                    <use xlink:href="./Resources/icons/utility-sprite/svg/symbols.svg#logout">
                                    </use>
                                </svg>
                                <span class="slds-assistive-text">
                                </span>
                            </button>
                        </div>
                    </li>
                    <?php
                }
                ?>
            </ul>
    </div>
</div>
<form class="search-form" action="index.php" method="GET">
    <input type="search" id="search-box" name="search" placeholder="search">
    <label for="search-box" class="fas fa-search"></label>
</form>
<script>
    function closeMenuToggle() {
        document?.querySelectorAll('.menu-toggle').forEach(it => it.classList.remove('slds-is-open'))
    }
    function toggle(selector) {
        document?.querySelectorAll('.menu-toggle:not(' + selector + ')').forEach(it => it.classList.remove('slds-is-open'))
        document?.querySelector(selector)?.classList?.toggle('slds-is-open');
    }
    document.querySelector('#search-btn').onclick = () => {
        closeMenuToggle();
        document?.querySelector('.search-form')?.classList?.toggle('active');
    }
</script>
<?php
echo '</header>';
?>