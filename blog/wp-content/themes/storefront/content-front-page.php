<?php
/**
 * The template used for displaying page content in page.php
 *
 * @package storefront
 */
$t_uri = get_template_directory_uri();
?>
<div id="front-page" class="container w-100">
	<div class="row" id="front-banner">
		<div class="col-12">
		<?php
			echo do_shortcode('[smartslider3 slider=2]');
		?>
		</div>
	</div>
	<div class="row pt-5 reveal l-fade-scroll" id="products">
		<div class="container">
			<h3 class="text-center t-brand-red text-strong mt-5">Nossos Produtos</h3>
			<div class="row justify-content-center">
				<div class="col-12 col-sm-4">
					<product :title="'<?= $t_uri.'/assets/images/diminas/queijo1_name.png' ?>'"
						:thumb="'<?= $t_uri.'/assets/images/diminas/queijo1.png' ?>'"
						:uri="'/'"></product>
				</div>
				<div class="col-12 col-sm-4">
					<product :title="'<?= $t_uri.'/assets/images/diminas/queijo1_name.png' ?>'"
						:thumb="'<?= $t_uri.'/assets/images/diminas/queijo1.png' ?>'"
						:uri="'/'"></product>
				</div>
				<div class="col-12 col-sm-4">
					<product :title="'<?= $t_uri.'/assets/images/diminas/queijo1_name.png' ?>'"
						:thumb="'<?= $t_uri.'/assets/images/diminas/queijo1.png' ?>'"
						:uri="'/'"></product>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-12 col-sm-4">
					<product :title="'<?= $t_uri.'/assets/images/diminas/queijo1_name.png' ?>'"
						:thumb="'<?= $t_uri.'/assets/images/diminas/queijo1.png' ?>'"
						:uri="'/'"></product>
				</div>
				<div class="col-12 col-sm-4">
					<product :title="'<?= $t_uri.'/assets/images/diminas/queijo1_name.png' ?>'"
						:thumb="'<?= $t_uri.'/assets/images/diminas/queijo1.png' ?>'"
						:uri="'/'"></product>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="advice-strip">
			<div class="container">
				<div class="row">
					<div class="col-12 col-sm-6 order-2 order-sm-1">

					</div>
					<div class="col-12 col-sm-6 order-1 order-sm-2">

					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="fp-jumbo">
		<jumbotron :title="'Combinação ideal'" :text="'Veja as combinações ideais com os queijos Cruzília!'" :uri="'/'"
			:thumb="'<?= $t_uri ?>/assets/images/diminas/CRU_combinacao-banner13-16.png'" :side="'right'"></jumbotron>
		<jumbotron :title="'Receitas'" :text="'Veja receitas deliciosas preparadas com queijos Cruzília!'" :uri="'/'"
			:thumb="'<?= $t_uri ?>/assets/images/diminas/zll-dicas-3-full.png'" :side="'left'"></jumbotron>
	</div>
</div>


<script defer src="<?= $t_uri.'/assets/pjs/script.min.js' ?>"></script>