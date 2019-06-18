
<?php 
/**
 * Template Name: MyMini - Notícias Antigas
 * Description: Página de notícias antigas da Prefeitura Municipal de Itajubá
 */
use Entity\News\NewsEntity;

require_once('app/partials/classes/entities/NewsEntity.php');


if($_GET !== null && array_key_exists('s', $_GET)){
    $s = addslashes(filter_input(INPUT_GET, 's'));
}else $s = "";
$n = new NewsEntity(['']);
$a = $n->getNews($s);
?>
<section id="search" class="bg-dark b-shadow">
    <div class="container p-5">
        <div class="row justify-content-center">
            <div class="col-auto">
                <form method="get" enctype="multipart/form-data" class="">
                    <input type="text" class="form-control" name="s" placeholder="Buscar notícias..">
                    <button class="btn btn-info p-1 m-0 btn-block"> Buscar </button>
                </form>
                <h3>
                <?php
                    if($s == "" || $s == " "){
                        echo 'Todos os resultados:';
                    }else{
                        echo sizeof($a).' resultado'.(sizeof($a>1)?"s":"").' para "'.$s.'"';
                    }
                ?>
                </h3>
            </div>
        </div>
    </div>
</section>
<?php


if(is_array($a)):
    foreach($a as $art):
        extract($art);
        $img['img'] = Array();
        for($i = 1; $i <= 6; $i++){
            $im = 'http://www.itajuba.mg.gov.br/pminews/upload/'.strtolower(${'artimg'.$i});
            if(${'artimg'.$i} != "" && url_exists($im)){
                $img['img'][$i-1]['name'] = $im;
                $img['img'][$i-1]['desc'] = ${'artlegendimg'.$i};
            }
        }
?>

<style>
    .carousel {
        height: 300px;
        width: 400px;
    }

    .carousel img {
        width: 100%;
    }
</style>
<section id="board<?= $artid ?>" class="bg-brand-dark vh-100 b-shadow z-2 p-rel pt-5">
    <div class="container p-5" id="wwdo">
        <div class="row justify-content-center">
            <h2 class="t-orange text-center">
                <?= utf8_encode($arttitulo) ?>
            </h2><br />
            <?php if(array_key_exists(0, $img['img'])):?>
            <div id="carousel<?= $artid ?>" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <?php 
                    if(is_array($img)):
                        $i = 0;
                        foreach($img['img'] as $im):
                    ?>

                    <div class="carousel-item <?= $i == 0 ? 'active':'' ?>">
                        <img class="d-block w-100" src="<?= $im['name'] ?>" alt="<?= $im['desc'] ?>">
                    </div>

                    <?php ++$i;
                        endforeach; 
                    endif;
                    ?>

                </div>
                <a class="carousel-control-prev" href="#carousel<?= $artid ?>"" role=" button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel<?= $artid ?>"" role=" button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <?php endif; ?>
        </div>
        <div class="row justify-content-center">
            <div class="col-12 ml-2 text-left">


                <div class="divisor bg-brand-light mb-5 mt-3"></div>
                <p class="t-white f-concert-one">
                    <?= utf8_encode($arttexto) ?>
                </p>
            </div>
        </div>
    </div>
</section>
<?php endforeach;
endif;
?>