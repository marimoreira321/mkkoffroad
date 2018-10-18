<?php
    the_post();
    $cat = get_the_category()[0];

?>
    <div class="container">

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
                        <?php echo $cat->name ?>
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