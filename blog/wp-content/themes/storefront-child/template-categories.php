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

$cat_args = Array( 
	'orderby' => 'name',
	'order'	=> 'asc',
	'hide_empty' => true
);

$pcat = get_terms('product_cat', $cat_args);
	$items = Array();
	if(is_array($pcat)){
	foreach($pcat as $c){
		// echo $c->term_id.' - '.$c->name;
		if (function_exists('z_taxonomy_image_url')) $thumb = z_taxonomy_image_url($c->term_id, 'thumbnail'); 
		// echo $c->slug;
		if($thumb){
			$items[] = Array(
				'name' => $c->name,
				'thumb' => $thumb,
				'uri' => 'categoria-produto/'.$c->slug
			);
		}
	}

	$items_json = base64_encode(json_encode($items));
}
get_header(); 
?>
<div id="categories-page" class="container w-100 mb-0 px-0  pt-5 mt-3">

<?php if(isset($items_json)): ?>
	<div class=" pb-5" id="brands">
		<categories 
			items_json="<?= $items_json ?>" 
			title="NOSSOS PRODUTOS"
			 cols="6"
			:base_url="'<?= $t_uri ?>/assets/images/mkk/'"
			store_url="<?= $store_url ?>/"
		/>
	</div>
<?php else: ?>
	<h3 class="text-center p-5">Nada para exibir.</h3>
<?php endif;?>
</div>

<script defer src="<?= $t_uri.'/assets/pjs/categories-page.min.js' ?>"></script>

<?php

get_footer();