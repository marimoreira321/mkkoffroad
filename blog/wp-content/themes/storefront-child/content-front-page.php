<?php
/**
 * The template used for displaying page content in page.php
 *
 * @package storefront
 */
$t_uri = get_template_directory_uri().'-child';
?>
<div id="front-page" class="container w-100">
	<div class="row" id="front-banner">
		<div class="col-12">
			<?php
			echo do_shortcode('[smartslider3 slider=2]');
		?>
		</div>
	</div>
	<div class="row mt-0 pt-0 reveal l-fade-scroll" id="products">
		<h3 class="h2 text-center t-white mt-0 w-100 py-3 bg-black-a-3 mb-0 fp-title">NOSSOS PRODUTOS</h3>
		<div class="container w-100 bg-white py-5">
			<div class="row justify-content-center">
				<div class="col-12 col-sm-3">
					<product title="BAGS UNIVERSAIS" :thumb="'<?= $t_uri.'/assets/images/diminas/cat_01.webp' ?>'"
						:uri="'/'">
					</product>
				</div>
				<div class="col-12 col-sm-3">
					<product title="ILUMINAÇÃO" :thumb="'<?= $t_uri.'/assets/images/diminas/cat_02.webp' ?>'"
						:uri="'/'">
					</product>
				</div>
				<div class="col-12 col-sm-3">
					<product title="ACESSÓRIOS" :thumb="'<?= $t_uri.'/assets/images/diminas/cat_03.webp' ?>'"
						:uri="'/'">
					</product>
				</div>
				<div class="col-12 col-sm-3">
					<product title="BARRACAS" :thumb="'<?= $t_uri.'/assets/images/diminas/cat_03.webp' ?>'" :uri="'/'">
					</product>
				</div>
			</div>
		</div>
		<h3 class="h2 text-center t-white mt-0 w-100 py-3 mb-0 bg-black-a-3 fp-title">RACKS</h3>
		<div class="container w-100 bg-white py-5">
			<div class="row justify-content-center">

				<div class="col-12 col-sm-3">
					<product title="PRECISÃO NO ENCAIXE" :thumb="'<?= $t_uri.'/assets/images/diminas/it_01.webp' ?>'"
						:uri="'/'"></product>
				</div>
				<div class="col-12 col-sm-3">
					<product title="ACABAMENTO PREMIUM" :thumb="'<?= $t_uri.'/assets/images/diminas/it_02.webp' ?>'"
						:uri="'/'"></product>
				</div>
				<div class="col-12 col-sm-3">
					<product title="PROTEÇÃO SUPERIOR" :thumb="'<?= $t_uri.'/assets/images/diminas/it_03.webp' ?>'"
						:uri="'/'"></product>
				</div>
				<div class="col-12 col-sm-3">
					<product title="TECNOLOGIA" :thumb="'<?= $t_uri.'/assets/images/diminas/it_04.webp' ?>'" :uri="'/'">
					</product>
				</div>
			</div>
		</div>
	</div>
</div>






<script defer src="<?= $t_uri.'/assets/pjs/front-page.min.js' ?>"></script>