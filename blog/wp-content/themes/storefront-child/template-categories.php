<?php
/**
 * The template for displaying full width pages.
 *
 * Template Name: Categories
 *
 * @package storefront
 */

$t_uri = get_template_directory_uri().'-child';
get_header(); 
?>
<div id="categories-page" class="container w-100 mb-5">
	<div class="row bg-white" id="front-banner">
		<div class="col-12">
			
		</div>
	</div>
	<div class="bg-white" id="categories">
		<categories v-for="(items, idx) in categories" :key="idx"
			:items="items.items" 
			:title="items.title" 
			:base_url="'<?= $t_uri ?>/assets/images/diminas/'"
		/>

		
		<categories v-for="(items, idx) in brands" :key="idx"
			:items="items.items" 
			:title="items.title"
			 cols="3"
			:base_url="'<?= $t_uri ?>/assets/images/diminas/'"
		/>
		
	</div>
</div>

<script defer src="<?= $t_uri.'/assets/pjs/categories-page.min.js' ?>"></script>

<?php

get_footer();