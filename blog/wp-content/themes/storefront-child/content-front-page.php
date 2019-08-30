<?php
/**
 * The template used for displaying page content in page.php
 *
 * @package storefront
 */
$t_uri = get_template_directory_uri().'-child';
?>
<div id="front-page" class="container w-100">
	<div class="row bg-white" id="front-banner">
		<div class="col-12">
			<?php
			echo do_shortcode('[smartslider3 slider=2]');
		?>
		</div>
	</div>
	<div class="w-100" id="portfolio">
		<products v-for="items in products" 
			:items="items.items" 
			:title="items.title" 
			:base_url="'<?= $t_uri ?>/assets/images/diminas/'"
		/>
	</div>
</div>

<script defer src="<?= $t_uri.'/assets/pjs/front-page.min.js' ?>"></script>