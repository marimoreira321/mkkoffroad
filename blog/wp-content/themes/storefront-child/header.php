<?php
/**
 * The header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package storefront
 */

?><!doctype html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2.0">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<?php
	if(is_home() || $pagename == 'categorias'){
		echo '<link rel="stylesheet" id="home-scss" href="'.get_template_directory_uri().'-child/assets/css/style.min.css" type="text/css" media="all">';
	}else{
		echo '<link rel="stylesheet" id="home-scss" href="'.get_template_directory_uri().'-child/assets/css/product-page.min.css" type="text/css" media="all">';		
	}
?>
<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

<?php do_action( 'storefront_before_site' ); ?>

<div id="page" class="hfeed site">
<?php do_action( 'storefront_before_header' ); ?>

	<header id="home" class="mb-0" role="banner">
		<i class="fas fa-bars fa-2x d-md-none pointer position-fixed t-white bg-navbar-fixed rounded px-2 py-1" id="menu-toggler" style="z-index: 999; top: 0.5em; left: 0.5em"></i>
		<nav class="menu mt-0 bg-transparent text-white">

			<div id="navbar">
				<div class="row">
				<?php require_once 'partials/navbars/default-menu.php'; ?>
				</div>
			</div>
		</nav>

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

	<div id="content" class="site-content" tabindex="-1">
		<div class="col-full">

		<?php
		do_action( 'storefront_content_top' );
