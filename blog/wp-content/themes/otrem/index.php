<html>
<?php 
    
    
    /**
     * Sets up what happen when the home is called
     */
    get_header();
    ?>
    <div id="body" class="container">
    <?php
    if (is_home() || is_category()) {
        get_template_part('partials/home/home');
    }else{
         get_template_part('partials/post/content-post');
    }
    ?>
</div>
<?php
    get_footer();
    
?>

    </body>

</html>