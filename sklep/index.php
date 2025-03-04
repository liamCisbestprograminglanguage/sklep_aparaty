<?php include("conf.php") ?>

<!DOCTYPE html>

<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aparaty.pl</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>

    <?php include("nav.php"); ?>

    <div id="content-area">
    <?php
    if (isset($_GET['id'])) {
        switch ($_GET['id']) {
            case '2':
                include("aparaty.php");
                break;
            case '3':
                include("obiektywy.php");
                break;
            case '4':
                include("prod.php");
                break;
            case '5':
                include("koszyk.php");
                break;
            case '6':
                include("prod_prod.php");
                break;
            default:
                include("home.php");
                break;
        }
    } else {
        include("home.php");
    }
    ?>
    </div>

    <script>
        document.getElementById('toggle-btn').addEventListener('click', function () {
        const navbarBottom = document.getElementById('navbar_bottom');
        navbarBottom.classList.toggle('open');
    });
    </script>

</body>

</html>