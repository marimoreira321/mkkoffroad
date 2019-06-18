<div id="body" class="container">
    <div class="row no-margin"z>

<?php
        /**
         * Makes a post query to call
         */
    query_posts(array('posts_per_page'=>6));
    /**
     * Check if there is any post in database
     */
    if(have_posts()){
        /**
         * Gets the page that contains the post format to the homepage.
         */
        get_template_part('partials/home/content-home', get_post_format());
        /**
         * Resets the query to the next call
         */
        wp_reset_query();
    }//endif
?>

    </div>
