<?php   
        /**
         *  Builds the query array to WP_Query($args)
         *
         * Chekcs if a category page is shown and include this to the query.
         */
        $args = array(
            'posts_per_page' => 6,
        );
    
        if(is_category_page()){
            $args = array(
                'posts_per_page' => 6,
                'category__in' => get_the_category()[0]->term_id
            );
        }
        /**
         * Query to select the posts listed into $args
         */
        $query = new WP_Query($args);
        $i=0;
        while ($query->have_posts() && $i<6) {
            $query->the_post();
            $cat = get_the_category()[0];
            /**
             * Set up the box size for the main box, image and text part size for col-md.
             * To insert a new query just add col-xx-yy to the variable
             */
            $box_size = "col-md-4";
            $img_size = "col-md-12";
            $txt_size = "col-md-12";
            if ($i===0) {
                $box_size = "col-md-12";
                $img_size = "col-md-8 order-md-2";
                $txt_size = "col-md-4";
            }
            elseif($i>=4)
                $box_size = 'col-md-6';
                ++$i;
?>

<div class="<?= $box_size ?> box col-12 bg-white my-2 shadow text-left">
    <div class="row">
        <div class="<?= $img_size ?> box-img col-12 p-0">
            <?php
                        /**
                         * This sets up a thumbnail image if it exists. Otherwise, sets a default image.
                         */
                        has_post_thumbnail() ? 
                            $post_thumb = the_post_thumbnail() : $post_thumb = "<img src='".get_bloginfo('template_directory')."/img/home/fig 1.png'>";
                            remove_image_size($post_thumb);
            ?>
                <a href="<?php the_permalink() ?>">
                    <?php echo $post_thumb; ?>
                </a>
        </div>
        <div class="<?= $txt_size ?> box-content col-12 order-md-1 p-4">
            <span class="box-ctg" style="color: <?= get_category_color($cat->term_id) ?>">#<?php echo $cat->name ?></span>
            <a href="<?php the_permalink() ?>">
                <div class="box-title text-strong text-title">
                    <?php the_title(); ?>
                </div>
                <div class="box-dcptn text-grey">
                    <?php the_excerpt(); ?>
                </div>

            </a>
        </div>
    </div>
    <a href="<?php the_permalink() ?>">
        <button class="btn btn-success m-4">LER MAIS</button>
    </a>
</div>
<?php         
    }//endwhile