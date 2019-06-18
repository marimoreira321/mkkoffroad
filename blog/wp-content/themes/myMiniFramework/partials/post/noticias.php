<?php 
/**
 * Template Name: MyMini - Notícias Antigas
 * Description: Página de notícias antigas da Prefeitura Municipal de Itajubá
 */
use Entity\NewsEntity;

require_once('class/NewsEntity.php');


if($_GET !== null && array_key_exists('sold', $_GET)){
    $s = addslashes(filter_input(INPUT_GET, 'sold'));
}else $s = "";
if($_GET !== null && array_key_exists('pps', $_GET)){
    $pps = addslashes(filter_input(INPUT_GET, 'pps'));
}else $pps = 1;
$n = new NewsEntity(['']);
$a = $n->getNews($s, $pps);
$amt = $a['pageAmount'];
$rsa = $a['resultSetAmount'];
array_pop($a);
array_pop($a);

?>
<section id="search" class="bg-dark">
    <div class="container p-5 mb-5">
        <div class="row justify-content-center">
            <div class="col-auto">
                <form method="get" enctype="multipart/form-data" class="">
                    <input type="text" class="form-control" name="sold" placeholder="Buscar notícias..">
                    <button class="btn btn-info p-1 m-0 btn-block"> Buscar </button>
                </form>
                <h3>
                    <?php
                    if($s == "" || $s == " "){
                        echo $rsa. ' resultados';
                    }else{
                        echo $rsa.' resultado'.(sizeof($a>1)?"s":"").' para "'.$s.'"';
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
        $arttexto = str_replace("\n", "<br>", $arttexto);
?>

<style>
    .pic-description{
        color: #b0b0b0;
        text-align: center;
        font-size: 10px;
        max-width: 60%;
    }
    .title-btn.collapsed i{
        transform: rotateY(180deg) rotateZ(45deg) !important;
    }
    .title-btn i{
        transition: ease-in-out 200ms;
        height: 20px !important;
        width: 20px !important;
    }
    .page-numbers .page-number{
        color: blue;
        border: 1px dashed #b0b0b0;
        padding: 5px 8px;
    }
    .page-numbers .page-number:hover{
        transform: scale(1.1);
        background-color: #dedede;
    }
    .page-numbers .page-number.active{
        background-color: #dedede;
        border-style: solid;
    }
.title-btn{
    font-size: 0.5em;
}

</style>
<section id="board<?= $artid ?>" class="text- z-2 p-rel" style="border-bottom: #dedede 1px dashed">
    <div class="container" id="wwdo">
        <div class="row justify-content-left">
            <h2 class="t-orange my-2 text-left">
                <a class=" title-btn collapsed  " data-toggle="collapse" href="#collapse<?= $artid ?>" role="button"
                    aria-expanded="false" aria-controls="collapse<?= $artid ?>">
                    <i class="fas fa-chevron-down mr-2"></i><?= utf8_encode($arttitulo) .' - <span class="text-grey">'. $artdata.'</span>' ?>
                </a>
            </h2><br />

        </div>
        <div class="collapse" id="collapse<?= $artid ?>">
            <div class="row justify-content-center">
                <div class="col-12 ml-2 text-left">
                    <div class="divisor bg-brand-light mb-5 mt-3"></div>
                    <p class="t-black f-concert-one text-justify">
                        <?= utf8_encode($arttexto) ?>

                    </p>
                </div>
            </div>
            <div class="row justify-content-center mb-5">
                <?php if(array_key_exists(0, $img['img'])):?>
                <?php 
                    if(is_array($img)):
                        $i = 0;
                        foreach($img['img'] as $im):
                    ?>
                <img class="d-block w-50" src="<?= $im['name'] ?>" alt="<?= $im['desc'] ?>">
                <span class="pic-description"><?= utf8_encode($im['desc']); ?></span>
                <?php ++$i;
                        endforeach; 
                    endif;
                    ?>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>
<?php endforeach;
endif;
?>
<div class="page-numbers row justify-content-center w-100 text-center mt-3">
    <span class="h5 col-12">
        PÁGINAS: <?=ceil($amt)?>
    </span><BR/><BR/>
    <?php
    $i = 1;
    if($pps > 10){
        $page = $pps - 10;
    }else{
        $page = 1;
    }
    
    while($i <= 20 && $page <= ceil($amt)){
        $page == $pps ? $c="active":$c="";
        echo '<a href="?sold='.$s.'&pps='.$page.'" class="page-number mx-2 '.$c.'">'.$page.'</a>';
        ++$i;
        $page++;
    }
    ?>
</div>
