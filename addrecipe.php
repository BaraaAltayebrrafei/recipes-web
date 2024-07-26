<?php
require_once 'connection.php';
session_start();
if (!(isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1)) {
    header("Location:login.php");
}
if (isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2) {
    $musthave = [
        'name',
        'country',
        'categories',
        'tags',
        'ingredients',
        'quantity',
        'unite_mesure',
        'Preparation_time',
        'prep_method',
        'nbrprs',
        'level',
        'tools'
    ];
    $optional = [
        'calories',
        'price',
        'descp'
    ];
    $isAllSet = true;
    foreach ($musthave as $key) {
        $isAllSet = $isAllSet && isset($_POST[$key]) && $_POST[$key] != "";
    }
    if ($isAllSet) {

        if (isset($_POST['name'])) {
            $name = $_POST["name"];
        }

        if (isset($_POST['country'])) {
            $country = $_POST['country'];
        }

        if (isset($_POST['categories'])) {
            $categories = $_POST['categories'];
        }

        if (isset($_POST['tags'])) {
            $tags = $_POST['tags'];
        }

        if (isset($_POST['ingredients'])) {
            $ingredients = $_POST['ingredients'];
        }

        if (isset($_POST['tools'])) {
            $tools = $_POST['tools'];
        }
        
        if (isset($_POST['quantity'])) {
            $quantity_ing = $_POST['quantity'];
        }
        
        if (isset($_POST['unite_mesure'])) {
            $unite_ing = $_POST['unite_mesure'];
        }
        
        if (isset($_POST['descp']) && $_POST['descp'] != "") {
            $description = '\'' . $_POST['descp'] . '\'';
        } else
            $description = 'NULL';
        if (isset($_POST['Preparation_time'])) {
            $prep_time = $_POST['Preparation_time'];
        }

        if (isset($_POST['prep_method'])) {
            $prep_method = $_POST['prep_method'];
        }

        if (isset($_POST['nbrprs'])) {
            $nbrpersons = $_POST['nbrprs'];
        }

        if (isset($_POST['calories']) && $_POST['calories'] != "") {
            $calories = $_POST['calories'];
        } else
            $calories = 'NULL';
        if (isset($_POST['level'])) {
            $difficulty = $_POST['level'];
        }

        if (isset($_POST['price']) && $_POST['price'] != "") {
            $price = $_POST['price'];
        } else
            $price = 'NULL';
        
        if (!empty($_FILES['media']['name'])) {
            $date = date("Y-m-d");
            $query = "INSERT INTO recipes (ID_USER, NAME, DESCRIPTION, CALORIES, NUMBER_OF_PERSONS, PREPERATION_TIME, PREPERATION_METHOD, UNIT_PRICE, DIFFICULTY, COUNTRY, DATE_RECIPE) VALUES( " . $_SESSION['ID_USER'] . ", '$name',$description, $calories, '$nbrpersons', '$prep_time', '$prep_method', $price, '$difficulty', '$country','$date')";
            $result = mysqli_query($con, $query);
            if (!$result) {
                echo 'error not inserted';
                /*return;*/
            } else {
                echo 'A new recipe has been inserted';
                /*return;*/
            }
            $idrecipe = mysqli_insert_id($con);
            /*insert media*/
            for ($i = 0; $i < count($_FILES['media']['name']); $i++) {
                if ($_FILES['media']['size'][$i] > 5 * 1024 * 1024) {
                    echo "The image should not exceed 5 MB";
                    return;
                }
                $extension = pathinfo($_FILES['media']['name'][$i], PATHINFO_EXTENSION);
                if ($extension != 'webp' && $extension != 'jpeg' && $extension != 'jpg') {
                    echo 'The file should be an image ';
                    return;
                }
                $photos = $_FILES['media']['name'][$i];
                move_uploaded_file($_FILES['media']['tmp_name'][$i], "./img/$photos");
                $query = "INSERT INTO media VALUES(NULL,'$idrecipe','./img/$photos')";
                $res = mysqli_query($con, $query);
            }
            /*insert have_cat*/
            $query = "INSERT INTO have_cat VALUES ('$categories', '$idrecipe')";
            $result = mysqli_query($con, $query);

            /*insert having_tag*/
            $query = "INSERT INTO having_tag VALUES ('$idrecipe', '$tags')";
            $result = mysqli_query($con, $query);

            /*insert havetools*/
            foreach ($tools as $idtools) {
                $query = "INSERT INTO havetools VALUES ('$idtools','$idrecipe')";
                $result = mysqli_query($con, $query);
            }

            /*insert ingredients,have_ing*/
            for ($i = 0; $i < count($ingredients); $i++) {
                if (!isset($ingredients[$i]) || !isset($quantity_ing[$i]) || !isset($unite_ing[$i]))
                    continue;
                $name = $ingredients[$i];
                $quantity = $quantity_ing[$i];
                $unite = $unite_ing[$i];
                $query = "SELECT ID_INGREDIENTS FROM ingredients WHERE NAME = '$name'";
                $result = mysqli_query($con, $query);
                $nbr = mysqli_num_rows($result);
                if ($nbr != 0) {
                    $row = mysqli_fetch_row($result);
                    $idingredients = $row[0];
                    $query = "INSERT INTO have_ing (ID_INGREDIENTS, ID_RECIPES, QUANTITY, UNIT_OF_MEASURE) VALUES ('$idingredients', '$idrecipe', '$quantity', '$unite')";
                    $result = mysqli_query($con, $query);
                } else {
                    $query = "INSERT INTO ingredients VALUES(NULL,'$name')";
                    $res = mysqli_query($con, $query);
                    $idingredients = mysqli_insert_id($con);
                    $query = "INSERT INTO have_ing (ID_INGREDIENTS, ID_RECIPES, QUANTITY, UNIT_OF_MEASURE) VALUES ('$idingredients', '$idrecipe', '$quantity', '$unite')";
                    $result = mysqli_query($con, $query);
                }
            }
        }
    }
}
?>
<html>
    <head>
        <meta charpest="UTF-8">
        <title>Add recipe</title>
        <link rel="stylesheet" href="fontawesome-free/css/all.min.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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

            .form {
                position: absolute;
                top: 15%;
                right: 22%;
                box-shadow: var(--box-shadow);
                padding: 2rem;
                border-radius: .5rem;
                background: linear-gradient(45deg, #fa7952d7, transparent);
                text-align: center;
                width: 650px;
            }

            .addrecipe {
                font-size: 35px;
                text-transform: uppercase;
                color: #00026b;
            }

            .form .box {
                margin: .7rem 0;
                background: #fa795275;
                border-radius: .5rem;
                padding: 1rem;
                font-size: 18px;
                color: #00026b;
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

            .btn:active {
                box-shadow: none;
                transform: translateY(8px);
            }

            input {
                caret-color: #00026b;
            }

            input,
            progress {
                accent-color: #00026b;
            }

            .box::placeholder {
                color: #00026b7a;
                /*font-family: "Century Gothic", sans-serif;*/
            }

            .fctjs {
                color: #00026b;
                text-decoration: underline;
                font-size: 18px;
            }

            .first {
                color: #00026b;
                font-family: "Century Gothic", sans-serif;
                font-size: 18px;
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

            label {
                color: #00026b;
                font-size: 18px;
            }

            span {
                color: #00026b;
                font-size: 18px;
            }
        </style>
    </head>
    <body>
    <a href="index.php" class="back">
        < BACK </a>
            <div class='title'> Good Food...Good Mood</div>
            <form method="POST" action="addrecipe.php" enctype="multipart/form-data" class="form">
                <div class='addrecipe'>ADD RECIPE</div>
                <table>
                    <tr>
                        <td colspan="2"><input type="file" name="media[]" multiple class='box' required></td>
                    </tr>
                    <tr>
                        <td class='first'>Name of recipe</td>
                        <td><input type="text" name="name" placeholder="Recipe name" class='box' required /></td>
                    </tr>
                    <tr>
                        <td class='first'>Country</td>
                        <td>
                            <select name="country" class='box'>
                                <?php
                                require_once 'connection.php';
                                $query = "SELECT COUNTRY FROM recipes WHERE COUNTRY <> 'Others' GROUP BY COUNTRY ORDER BY COUNTRY ";
                                $result = mysqli_query($con, $query);
                                $nbrow = mysqli_num_rows($result);
                                if ($result) {
                                    for ($i = 0; $i < $nbrow; $i++) {
                                        $row = mysqli_fetch_assoc($result);
                                        echo "<option value=" . $row['COUNTRY'] . " > " . $row['COUNTRY'] . "</option>";
                                    }
                                    echo "<option value='Others'>Others</option>";
                                }
                                ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class='first'>Description</td>
                        <td><textarea name="descp" cols="20" rows="5" maxlength="255" class='box'></textarea></td>
                    </tr>
                    <tr>
                        <td class='first'>Categories</td>
                        <td>
                            <select name="categories" class='box'>
                                <?php
                               // require_once 'connection.php';
                                $query = "SELECT * FROM categories";
                                $result = mysqli_query($con, $query);
                                $nbrow = mysqli_num_rows($result);
                                if ($result) {
                                    for ($i = 0; $i < $nbrow; $i++) {
                                        $row = mysqli_fetch_assoc($result);
                                        echo "<option value=" . $row['ID_CATEGORIES'] . " > " . $row['NAME'] . "</option>";
                                    }
                                }
                                ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class='first'>Tags</td>
                        <td>
                            <select name="tags" class='box'>
                                <?php
                                require_once 'connection.php';
                                $query = "SELECT * FROM tag";
                                $result = mysqli_query($con, $query);
                                $nbrow = mysqli_num_rows($result);
                                if ($result) {
                                    for ($i = 0; $i < $nbrow; $i++) {
                                        $row = mysqli_fetch_assoc($result);
                                        echo "<option value=" . $row['ID_TAG'] . " > " . $row['NAME'] . "</option>";
                                    }
                                }
                                ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class='first'>Ingredients</td>
                        <td id="grp_ing_input">
                            <input name="ingredients[]" list="ingredients" placeholder="Item name" class='box' />
                            <datalist id="ingredients">
                                <?php
                                require_once 'connection.php';
                                $query = "SELECT NAME FROM ingredients";
                                $result = mysqli_query($con, $query);
                                $nbrow = mysqli_num_rows($result);
                                if ($result) {
                                    for ($i = 0; $i < $nbrow; $i++) {
                                        $row = mysqli_fetch_assoc($result);
                                        echo "<option value='" . $row['NAME'] . "' class='ing'></option> ";
                                    }
                                }
                                ?>
                            </datalist>
                            <input type="text" name="quantity[]" placeholder="Quantity" class='box' required />
                            <input type="text" name="unite_mesure[]" placeholder="Unit" class='box' required />
                            <div id="ingname"></div>
                        </td>
                        <td>
                            <a href="#" onclick="editIng()"><i class="fctjs"></i>Add</a>
                            <a href="#" onclick="remove_inputs()"><i class="fctjs"></i>Remove </a>
                        </td>
                    </tr>
                    <tr>
                        <td class='first'>Tools</td>
                        <td>
                            <select name="tools[]" class='box' size='1' style="padding : 0.2rem;" multiple required>
                                <?php
                                require_once 'connection.php';
                                $query = "SELECT * FROM tools WHERE NAME <> 'Others' ORDER BY NAME ";
                                $result = mysqli_query($con, $query);
                                $nbrow = mysqli_num_rows($result);
                                if ($result) {
                                    for ($i = 0; $i < $nbrow; $i++) {
                                        $row = mysqli_fetch_assoc($result);
                                        echo "<option value=" . $row['ID_TOOLS'] . " > " . $row['NAME'] . "</option>";
                                    }
                                    echo "<option value='7'>Others</option>";
                                }
                                ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class='first'>Preparation time</td>
                        <td><input type="number" name="Preparation_time" class="box" required></td>
                        <td><span>Minutes</span></td>
                    </tr>
                    <tr>
                        <td class='first'>Preparation method</td>
                        <td><textarea name="prep_method" cols="20" rows="5" class='box' required></textarea></td>
                    </tr>
                    <tr>
                        <td class='first'>Number of person</td>
                        <td> <input type="number" name="nbrprs" min="1" class='box' required /></td>
                    </tr>
                    <tr>
                        <td class='first'>Number of calories</td>
                        <td><input type="number" name="calories" min="0" class='box' /></td>
                        <td><span>Kcal.</span></td>
                    </tr>
                    <tr>
                        <td class='first'>Difficulty</td>
                         <td>
                            <label for="E">Easy</label><input type="radio" name="level" id="E" value="Easy"
                                class='box' />

                            <label for="M">Medium</label><input type="radio" name="level" id="M" value="Medium"
                                class='box' />

                            <label for="H">Hard</label><input type="radio" name="level" id="H" value="Hard"
                                class='box' />

                        </td>
                    </tr>
                    <tr>
                        <td id="enter_price" class='first'>Enter price in dollars.</td>
                        <td id="price"><input type="number" min="1.00" step="1.00" name="price" placeholder="30.5"
                                class='box'></td>
                    </tr>
                    <tr>
                        <td align='center'>
                            <input type="reset" value="Cancel" class='btn' />
                        </td>
                        <td align='center'>
                            <input type="submit" value="Post" class='btn' />
                        </td>
                    </tr>
                </table>
            </form>
            <script>
                let x = document.querySelectorAll(".ing")
                function editIng() {
                    let div1 = document.createElement("div");
                    div1.setAttribute('class', 'input_group_ing');
                    let new_qty = document.createElement("input")
                    new_qty.setAttribute('type', 'text')
                    new_qty.setAttribute('name', 'quantity[]')
                    new_qty.setAttribute('placeholder', 'Quantity')
                    new_qty.setAttribute('class', 'box')
                    let unite_mesure = document.createElement("input")
                    unite_mesure.setAttribute('name', 'unite_mesure[]');
                    unite_mesure.setAttribute('placeholder', 'Unit')
                    unite_mesure.setAttribute('class', 'box')
                    let input_ing = document.createElement('input')
                    input_ing.setAttribute('list', 'ingredients')
                    input_ing.setAttribute('name', 'ingredients[]');
                    input_ing.setAttribute('placeholder', 'Item name')
                    input_ing.setAttribute('class', 'box')
                    let list = document.createElement('datalist')
                    for (let i = 0; i < x.length; i++) {
                        let op = document.createElement('option')
                        op.value = x[i].value
                        list.appendChild(op)
                    }
                    let create = document.getElementById("ingname").appendChild(div1)
                    create.appendChild(input_ing)
                    create.appendChild(list)
                    create.appendChild(new_qty)
                    create.appendChild(unite_mesure)
                }
                function remove_inputs() {
                    let div = document.getElementsByClassName('input_group_ing');
                    div[div.length - 1].remove();
                }
            </script>
    </body>
</html>