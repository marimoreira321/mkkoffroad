<?php wp_head();
    /**
     * Sets up the title
     */
    $blog_title = get_bloginfo('name');
    /**
     * Sets up the header background style 
     */
    $bgi = "url('/assets/img/train.jpg') 0 80%;";      
    if((!is_front_page() && !is_category_page()) && has_post_thumbnail()){
        
        $bgi = "url('".get_the_post_thumbnail_url()."')";

    }elseif(is_category()){
        $blog_title = '#' . get_the_category()[0]->name;
    }
?>

<head>
    <title>
        <?php echo get_bloginfo('wpurl') ?> |
        <?php echo get_bloginfo('name') ?>
    </title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="<?php echo local_path(); ?>/style.css" rel="stylesheet">
</head>

<body>
    <div class="fixed header-box py-2" id="navbar">
        <div id="top-bar" class="container">

            <div id="gotoMainWebsite" class="" style="color: white;">
                <a href="/" class="">
                    Ir para <b>MyMiniFramework</b>
                </a>
            </div>
            <?php  if(!is_home()): ?>
            <div id="getBackToHome" class="d-none d-md-block" style="color: white;">
                <a href="/blog" class=" text-lighter">
                    <i class="fa fa-arrow-left mr-3 "></i>Voltar</a>
            </div>
            <?php endif; ?>
            <div class="row">
                <div class="col-12  justify-content-between">
                    <div class="row">
                        <div class="col-12 col-md-6 col-lg-5">
                            <form class="search-form no-margin">
                                <i class="fa fa-search"></i>
                                <?php get_search_form(); ?>
                            </form>
                            <div class="social d-none d-md-block mt-2 ml-2">
                                <a href="">
                                    <img src="<?php echo local_path() ?>/img/snw/facebook.png">
                                </a>
                                <a href="">
                                    <img src="<?php echo local_path() ?>/img/snw/linkedin.png">
                                </a>
                                <a href="">
                                    <img src="<?php echo local_path() ?>/img/snw/twitter.png">
                                </a>
                            </div>
                        </div>
                        <div class="tags col-lg-7 col-md-6 d-none d-md-block justify-content-end">
                            <?php 
                        foreach(get_categories() as $var){
                            $cc = get_category_color($var->term_id);
                            echo '
                            <a href="/category/'.$var->slug.'">
                                <span class="badge badge-default m-1" style="background: '.$cc.'">#'.$var->name.'</span>
                            </a>
                            ';
                        }
                    ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="pg-header" style="background: <?php echo $bgi ?>">

        <div class="header-box container">


            <?php 
        /**
         * Prints the blog title 
         */
            echo
             '<div class="title text-white m-0  mt-3 p-0 my-lg-5 py-lg-5 parallax hideOnScroll" data-speed="-3">'
            .'  <h1 class=" ml-3" >'.$blog_title.'</h1>'
            .'  <div class="ml-3">'
            .'      <p style="text-indent: 0">'.get_bloginfo('description').'</p>'
            .'  </div>'
            .'</div>';
            if(isset($action_call)) echo $action_call;
        ?>
        </div>
    </div>