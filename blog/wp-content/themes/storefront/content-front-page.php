<?php
/**
 * The template used for displaying page content in page.php
 *
 * @package storefront
 */

?>
<div id="front-page" class="container w-100">
	<div class="row" id="front-banner">
		<div class="col-12">
		<?php
			echo do_shortcode('[smartslider3 slider=2]');
		?>
		</div>
	</div>
	<div class="row" id="products">
		<div class="col-12">
			<h3>Nossos Produtos</h3>
			<div class="row justify-content-center">
				<div class="col-12 col-sm-4">
					<product :title="<?= get_template_directory_uri().'/assets/images/diminas/queijo1_name.png' ?>"
					:thumb="<?= get_template_directory_uri().'/assets/images/diminas/queijo1.png' ?>"></product>
				</div>
				<div class="col-12 col-sm-4">

				</div>
				<div class="col-12 col-sm-4">

				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-12 col-sm-4">

				</div>
				<div class="col-12 col-sm-4">

				</div>
			</div>
		</div>
	</div>
</div>


<script defer src="<?= get_template_directory_uri().'/assets/pjs/script.min.js' ?>"></script>