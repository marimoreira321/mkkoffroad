<?php

echo '<script src="assets/js/main.min.js" type="text/javascript"></script>';

foreach ($layout->getJs() as $s) {
    echo '<script src="assets/js/' . $s . '" type="text/javascript"></script>';
}