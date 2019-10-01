<?php
/**
 * The Template for displaying all single products
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see 	    https://docs.woocommerce.com/document/template-structure/
 * @package 	WooCommerce/Templates
 * @version     1.6.4
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

$args = array( 'post_type' => 'product', 'stock' => 1, 'posts_per_page' => 5,'product_cat' => 'acessorios', 'orderby' =>'date','order' => 'ASC' );
$loop = new WP_Query( $args );
$site_url = get_site_url().'/loja/';
get_header( 'shop' ); ?>

<?php
		/**
		 * woocommerce_before_main_content hook.
		 *
		 * @hooked woocommerce_output_content_wrapper - 10 (outputs opening divs for the content)
		 * @hooked woocommerce_breadcrumb - 20
		 */
		do_action( 'woocommerce_before_main_content' );
	?>

<?php while ( have_posts() ) : the_post(); ?>

<?php wc_get_template_part( 'content', 'single-product' ); ?>

<?php endwhile; // end of the loop. ?>

<div class="row">
	<?php if($loop->have_posts()): ?>
	<h3 class="text-center">Acessórios</h3>
	<div class="col-12">
		<ul class="products row">
			<?php while($loop->have_posts()) :
				$loop->the_post();
				global $product;
			?>

				<li class="product col-md-3 col-5 mx-1 px-0">
					<a 
						href="<?= get_permalink($loop->post->ID) ?>"
						title="<?= esc_attr($loop->post->post_title ? $loop->post->post_title : $loop->post->ID) ?>"
					>
					<?php woocommerce_show_product_sale_flash( $post, $product ); ?>

					<?php if (has_post_thumbnail( $loop->post->ID )) echo get_the_post_thumbnail($loop->post->ID, 'shop_catalog'); else echo '<img src="'.woocommerce_placeholder_img_src().'" alt="Placeholder" width="300px" height="300px" />'; ?>

                        <h3><?php the_title(); ?></h3>

                        <span class="price"><?php echo $product->get_price_html(); ?></span>                    

                    </a>

                    <?php woocommerce_template_loop_add_to_cart( $loop->post, $product ); ?>
				</li>

			<?php endwhile; wp_reset_query() ?>
		</ul>
	</div>
	<?php endif; ?>

</div>
<?php
		/**
		 * woocommerce_after_main_content hook.
		 *
		 * @hooked woocommerce_output_content_wrapper_end - 10 (outputs closing divs for the content)
		 */
		do_action( 'woocommerce_after_main_content' );
	?>

<?php
		/**
		 * woocommerce_sidebar hook.
		 *
		 * @hooked woocommerce_get_sidebar - 10
		 */
		do_action( 'woocommerce_sidebar' );
	?>
<?php get_footer( 'shop' );

/* Omit closing PHP tag at the end of PHP files to avoid "headers already sent" issues. */