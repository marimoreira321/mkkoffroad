<?php
    the_post();
    $cat = get_the_category();
    if(array_key_exists(0, $cat)){
        $cat = $cat[0];
    }else{
        $cat = Array();
    }
    $pagename = get_query_var('pagename');  
    if ( !$pagename && $id > 0 ) {  
        // If a static page is set as the front page, $pagename will not be set. Retrieve it from the queried object  
        $post = $wp_query->get_queried_object();  
        $pagename = $post->post_name;  
    }
    if($pagename == 'noticias-antigas'):

?>
    <div class="container">
    <?php 
        require_once('noticias.php');
    else:
    ?>
        <div class="row">
            <div class="col-12 bg-white p-4 shadow text-indent" id="the_post">
                <div class="mb-5 text-purple font-12px" id="the_breadcrumb">
                    <span class="text-strong">Home</span> >>
                    <span class="text-strong">
                        <?php the_category(' ') ?> </span> >>
                    <span>
                        <?php the_title() ?>
                    </span>
                </div>
                <div class="meta d-flex text-purple" id="the_meta">
                    <span class="date pr-3">
                        <?php the_date('d/m/Y') ?>
                    </span>
                    <span class="category" style="text-indent:0; color: <?php echo get_category_color($cat->term_id) ?>"> #
                        <?= is_object($cat) ? $cat->name: '' ?>
                    </span>
                </div>
                <div id="the_title" class="my-4 text-strong text-purple">
                    <h1>
                        <?php the_title() ?>
                    </h1>
                </div>

                <div class="mx-4 text-grey" id="the_content">
                    <?php
                the_content();
            ?>
                </div>
            </div>
        </div>
        <?php
            get_template_part('partials/post/content-related-posts');
        ?>

    </div>
    <?php endif;