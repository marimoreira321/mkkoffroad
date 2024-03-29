<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package storefront
 */

?>

</div><!-- .col-full -->
</div><!-- #content -->

<?php do_action( 'storefront_before_footer' ); ?>

<footer id="colophon" class="site-footer" role="contentinfo" style="background: #222">
	<div class="container">
		<div class="row t-white" style="border-bottom: 2px solid white">
			<div class="col-12 col-md-6">
				<h3 class="t-white text-center">
					ACOMPANHE-NOS EM NOSSAS REDES SOCIAIS
				</h3>
			</div>
			<div class="col-12 col-md-6 text-center">
				<a href="" class="no-decoration t-white"><i class="fab fa-2x fa-instagram "></i></a>
				<a href="" class="no-decoration t-white"><i class="fab fa-2x fa-facebook mx-3"></i></a>
				<a href="" class="no-decoration t-white"><i class="fab fa-2x fa-youtube"></i></a>
			</div>
		</div>

		<div class="row  py-3">
			<div class="col-12 col-md-6">
				<h3 class="t-white text-center m-0 p-0">
					FIQUE POR DENTRO DAS NOVIDADES
				</h3>
			</div>
			<div class="col-12 col-md-6 text-center">
				<form class="newsletter-form m-0 p-0">
					<input placeholder="Seu email" type="email" required name="newsletter">
					<button class="btn btn-success p-0 px-2 m-0" >
						Cadastrar
					</button>
				</form>
			</div>
		</div>

		<?php do_action( 'storefront_footer' ); ?>
 
	</div><!-- .col-full -->
</footer><!-- #colophon -->

<?php do_action( 'storefront_after_footer' ); ?>

</div><!-- #page -->

<?php wp_footer(); ?>
<script src="<?= get_template_directory_uri().'-child/assets/pjs/main.min.js'?>"></script>
</body>

</html>