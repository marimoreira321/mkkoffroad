<?php
/**
 * The header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package storefront
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2.0">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<?php
	$show_title = true;
	if(is_home() || $pagename == 'nossos-produtos'){
		$show_title = false;
		echo '<link rel="stylesheet" id="home-scss" href="'.get_template_directory_uri().'-child/assets/css/style.min.css" type="text/css" media="all">';
	}else{
		echo '<link rel="stylesheet" id="home-scss" href="'.get_template_directory_uri().'-child/assets/css/product-page.min.css" type="text/css" media="all">';		
	}
$base_url =  get_site_url().'/';
$img = false;
if(function_exists('z_taxonomy_image_url')) $img = z_taxonomy_image_url();

?>
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

	<?php do_action( 'storefront_before_site' ); ?>

	<div id="page" class="hfeed site">
		<?php do_action( 'storefront_before_header' ); ?>

		<header id="home" class="mb-0" role="banner">
			<div id="mobile-menu" class="d-block d-md-none">
				<mobile-menu 
				logo="<?= get_template_directory_uri().'-child/assets/images/mkk/default.png'?>" 
				base_url="<?= $base_url ?>"
				is_home="<?= is_home() ?>"
				/>
			</div>
			<nav class="menu mt-0 bg-transparent text-white">

				<div id="navbar">

					<div class="row d-none d-md-flex">
						<?php require_once 'partials/navbars/default-menu.php'; ?>
					</div>
				</div>
			</nav>
			<?php if($show_title && $img != false): ?>
				<div class="container m-0 mt-md-5 0 p-0 category-image vw-100" style="background-image: url('<?= $img ?>')">
				<?php if ( apply_filters( 'woocommerce_show_page_title', true ) ) : ?>
					<h1 class="woocommerce-products-header__title page-title text-center text-md-right"><?php woocommerce_page_title(); ?></h1>
				<?php endif; ?>
				</div>
				<?php endif; ?>
		</header><!-- #masthead -->


		<?php
	/**
	 * Functions hooked in to storefront_before_content
	 *
	 * @hooked storefront_header_widget_region - 10
	 * @hooked woocommerce_breadcrumb - 10
	 */
	do_action( 'storefront_before_content' );
	?>

		<div id="content" class="site-content mt-md-5" tabindex="-1">
			<div class="col-full">

				<?php
		do_action( 'storefront_content_top' );