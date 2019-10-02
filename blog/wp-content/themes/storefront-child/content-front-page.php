<?php
/**
 * The template used for displaying page content in page.php
 *
 * @package storefront
 */
$t_uri = get_template_directory_uri().'-child';
$store_url = get_site_url();

?>
<div id="front-page" class="container w-100">
	<div class="row bg-white" id="front-banner">
		<div class="col-12">
			<?php
			echo do_shortcode('[smartslider3 slider=2]');
		?>
		</div>
	</div>
	<h2 class="text-center font-24px">TODOS OS PRODUTOS
		<a
		href="<?= get_site_url() ?>/nossos-produtos"><i class="bg-brand-red fas fa-chevron-right text-white text-weight-bold p-2 ml-3" ></i></a>
	</h2>
	<div class="w-100" id="portfolio">
		<products v-for="(items, idx) in products"
			:items="items.items"
			:title="items.title"
			:title_url="'<?= $store_url ?>/'+items.title_url"
			:base_url="'<?= $t_uri ?>/assets/images/mkk/'"
			:key="idx"
		/>
	</div>
</div>

<script defer src="<?= $t_uri.'/assets/pjs/front-page.min.js' ?>"></script>