<?php
require_once 'app/config.php';
?>
<html>
    <head>
        <?php require_once "app/partials/head.php" ?>
    </head>
    <body>
        <header id="home">
            <?php $layout->getHeader(); ?>
        </header>

        <div id="main">
            <?php $layout->render(); ?>
        </div>
        <footer class="vh-30 bg-brand">
            <?php $layout->getFooter(); ?>
        </footer>
        <?php
            require_once 'app/partials/pieces/scripts.php';
        ?>

    </body>
</html>