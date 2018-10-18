<?php

echo '<script src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
            crossorigin="anonymous">
      </script>';
echo '<script src="assets/js/main.js" type="text/javascript"></script>';

foreach ($layout->getJs() as $s) {
    echo '<script src="assets/js/' . $s . '" type="text/javascript"></script>';
}