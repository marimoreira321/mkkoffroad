<div class="row my-4">
    <center>
        <div class="col-12 text-center" id="the_related_posts">
            
            <div class="row">
                <?php
                /**
                 * This code shows 3 related posts to this ones category tag
                 */
                $tag_list = get_the_category($post->ID);    

                if($tag_list){
                    $cats = array();
                    foreach($tag_list as $tag){
                        $cats = $tag->term_id;
                    }
                    $args = array(
                        'category__in' => $cats,
                        'post__not_in' => array($post->ID),
                        'posts_per_page' => 3, //amount of posts to get
                        'ignore_sticky_posts' => 1
                    );
                    $query = new WP_Query($args);
                    if($query->have_posts()){
                        echo '<h3 class="text-title text-purple my-5 col-12">Artigos Relacionados</h3>';
                        while($query->have_posts()){
                            $query->the_post();
                            get_template_part('partials/post/post-boxes'); 
                        }
                    }
                }
                                   
                ?>
            </div>
        </div>
</div>