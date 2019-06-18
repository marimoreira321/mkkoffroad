<html>
<?php 
    
    
    /**
     * Sets up what happen when the home is called
     */
    get_header();
    ?>
    <div id="body" class="container">
    <?php
        /**
         * Gets the template used to list the posts 
         */
        
        get_template_part('partials/home/home', get_post_format());
    ?>
</div>
<?php
    get_footer();
    
?>

    </body>

</html>