<?php wp_head();
    /**
     * Sets up the title
     */
    $blog_info = "";
    if(is_home()){
        $blog_title = get_bloginfo('name');
        $blog_info = get_bloginfo('description');
    }else{
        $blog_title = get_the_title();
    }
    /**
     * Sets up the header background style 
     */
    $bgi = "url('/assets/img/train.jpg') 0 80%;";      
    if(!is_front_page() && !is_category_page()){

        if(has_post_thumbnail()) {$bgi = "url('".get_the_post_thumbnail_url()."')";}

        $action_call = '<div class="col-12 d-flex justify-content-end pr-0 call-to-action">'
                            .'<div class="">'
                                .'<button class="btn btn-1 btn-purple">MMFW</button>'
                                .'<button class="btn btn-1 btn-white border-1 mr-0">MMFW</button>'
                            .'</div>'
                        .'</div>';

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
    <link href="<?php echo local_path(); ?>/style.css" rel="stylesheet">
</head>

<body>
    <div class="fixed header-box pb-3" id="navbar">
        <div id="top-bar" class="container">

            <div id="gotoWebSite" class="" style="color: white;">Ir para
                <a href="/" class="">
                    <b>MyMiniFramework</b>
                </a>
            </div>
            <?php if(!is_home()){  ?>
            <div id="getBackToHome" class="d-none d-md-block" style="color: white;">
                <a href="/blog" class=" text-lighter">
                    <i class="fa fa-arrow-left mr-3 "></i>Voltar</a>
            </div>
            <?php }?>
            <div class="row">
                <div class="col-12  justify-content-between">
                    <div class="row">
                        <div class="col-12 col-md-6 col-lg-5">
                            <form class="search-form no-margin">
                                <i class="fa fa-search"></i>
                                <input type="text" placeholder="Buscar.." name="s" id="s">
                            </form>
                            <div class="social d-none d-md-block mt-2 ml-4">
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
                            <a href="/blog/category/'.$var->slug.'">
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
    <div id="pg-header" class="" style="background: <?php echo $bgi?>; <?php if(!is_home()) echo 'height: 100vh' ?>" >

        <div class="header-box container parallax hideOnScroll"  data-speed="-3">


            <?php 
        /**
         * Prints the blog title 
         */
            echo
             '<div class="title text-white m-0  mt-3 p-0 my-lg-5 py-lg-5">'
            .'  <h1 class=" ml-3 ">'.$blog_title.'</h1>'
            .'  <div class="ml-3">'
            .'      <p style="text-indent: 0">'.$blog_info.'</p>'
            .'  </div>'
            .'</div>';
            if(isset($action_call)) echo $action_call;
        ?>
        </div>
    </div>