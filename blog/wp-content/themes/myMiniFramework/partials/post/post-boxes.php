<?php $cat = get_the_category()[0]; ?>
<div class="box col-12 col-md-4 bg-white my-2 mx-2 shadow text-left" style="min-height: 500px;">
    <div class="row">
        <div class="box-img col-12 p-0">
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
        <div class="box-content col-12 order-1 p-4">
            <span class="box-ctg" style="color: <?php echo get_category_color($cat->term_id) ?>">#<?php echo $cat->name ?></span>
            <a href="<?php the_permalink() ?>">
                <div class="box-title text-title text-strong">
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
