<?php
/**
 * The template for displaying full width pages.
 *
 * Template Name: Categories
 *
 * @package storefront
 */

$t_uri = get_template_directory_uri().'-child';
$store_url = get_site_url();
get_header(); 
?>
<div id="categories-page" class="container w-100 mb-0 px-0  pt-5 mt-3">


	<div class="" id="categories">
		<categories v-for="(items, idx) in categories" :key="idx"
			:items="items.items" 
			title="NOSSOS PRODUTOS" 
			:base_url="'<?= $t_uri ?>/assets/images/mkk/'"
			store_url="<?= $store_url ?>/"
		/>		
	</div>

	<div class=" pb-5" id="brands">
		<categories v-for="(items, idx) in brands" :key="idx"
			:items="items.items" 
			:title="items.title"
			 cols="3"
			:base_url="'<?= $t_uri ?>/assets/images/mkk/'"
			store_url="<?= $store_url ?>/"
		/>
	</div>
</div>

<script defer src="<?= $t_uri.'/assets/pjs/categories-page.min.js' ?>"></script>

<?php

get_footer();