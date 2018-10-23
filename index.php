<?php
require_once 'app/config.php';
?>
<html>
    <head>
        <?php require_once "app/partials/head.php" ?>
    </head>
    <body>
        <header id="home">
            <?php require_once $layout->getHeader(); ?>
        </header>

        <div id="main">
            <?php require_once $layout->render(); ?>
        </div>
        <footer class="vh-30 bg-brand">
            <?php require_once $layout->getFooter(); ?>
        </footer>
        <?php
            require_once 'app/partials/pieces/scripts.php';
        ?>

    </body>
</html>