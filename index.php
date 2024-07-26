<html>

<head>
  <meta charpest="UTF-8">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link rel="stylesheet" href="./Resources/styles/salesforce-lightning-design-system.min.css">
  <link rel="stylesheet" href="index.css">
  <title>Home Page</title>
</head>
<?php
session_start();
if (!isset($_SESSION['openOverlay']) || $_SESSION['openOverlay'] != true) {
  require_once './overlay.php';
}
require_once './header.php';
require_once 'connection.php';
?>

<body class="slds-brand-band slds-brand-band_large">
  <?php
  /*if (isset($_SESSION['ID_ROLE']) && $_SESSION['ID_ROLE'] == 1) {
    $userName = $_SESSION['FNAME'];
    echo "Welcome admin $userName";
    $_SESSION['islogin'] = 1;

  } else if (isset($_SESSION['ID_ROLE']) && $_SESSION['ID_ROLE'] == 2) {
    $userName = $_SESSION['FNAME'];
    echo "Welcome user $userName";
    $_SESSION['islogin'] = 1;
  }*/
  ?>
  <?php
  if (!isset($_SESSION['openOverlay']) || $_SESSION['openOverlay'] != true) {
    echo '<div class="slds-p-top_xx-large toggle-first slds-hidden">';
  } else {
    echo '<div class="slds-p-top_xx-large toggle-first">';
  }
  ?>
  <?php
  echo '</div>';
  require_once 'indexBody.php';
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
    var deleteRecipeId;
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
    function openDelete(recipeId) {
      closeMenuToggle();
      deleteRecipeId = recipeId;
      document.querySelector('.all').style.display = "block";
    }
    function closeDelete() {
      deleteRecipeId = null;
      document.querySelector('.all').style.display = "none";
    }
  </script>
</body>

</html>