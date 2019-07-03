<?php
/**
 * The template used for displaying page content in page.php
 *
 * @package storefront
 */
$t_uri = get_template_directory_uri().'-child';
?>
<div id="front-page" class="container w-100">
	<div class="row" id="front-banner">
		<div class="col-12">
			<?php
			echo do_shortcode('[smartslider3 slider=2]');
		?>
		</div>
	</div>
	<div class="row pt-5 reveal l-fade-scroll" id="products">
		<div class="container">
			<h3 class="text-center t-brand-red text-strong mt-5">Nossos Produtos</h3>
			<div class="row justify-content-center">
				<div class="col-12 col-sm-4">
					<product :title="'<?= $t_uri.'/assets/images/diminas/queijo1_name.png' ?>'"
						:thumb="'<?= $t_uri.'/assets/images/diminas/queijo1.png' ?>'" :uri="'/'"></product>
				</div>
				<div class="col-12 col-sm-4">
					<product :title="'<?= $t_uri.'/assets/images/diminas/queijo1_name.png' ?>'"
						:thumb="'<?= $t_uri.'/assets/images/diminas/queijo1.png' ?>'" :uri="'/'"></product>
				</div>
				<div class="col-12 col-sm-4">
					<product :title="'<?= $t_uri.'/assets/images/diminas/queijo1_name.png' ?>'"
						:thumb="'<?= $t_uri.'/assets/images/diminas/queijo1.png' ?>'" :uri="'/'"></product>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-12 col-sm-4">
					<product :title="'<?= $t_uri.'/assets/images/diminas/queijo1_name.png' ?>'"
						:thumb="'<?= $t_uri.'/assets/images/diminas/queijo1.png' ?>'" :uri="'/'"></product>
				</div>
				<div class="col-12 col-sm-4">
					<product :title="'<?= $t_uri.'/assets/images/diminas/queijo1_name.png' ?>'"
						:thumb="'<?= $t_uri.'/assets/images/diminas/queijo1.png' ?>'" :uri="'/'"></product>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="advice-strip">
			<div class="container">
				<div class="row">
					<div class="col-12 col-sm-6 order-2 order-sm-1">

					</div>
					<div class="col-12 col-sm-6 order-1 order-sm-2">

					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="fp-jumbo">
		<jumbotron :title="'Combinação ideal'" :text="'Veja as combinações ideais com os queijos Cruzília!'" :uri="'/'"
			:thumb="'<?= $t_uri ?>/assets/images/diminas/CRU_combinacao-banner13-16.png'" :side="'right'"></jumbotron>
		<jumbotron :title="'Receitas'" :text="'Veja receitas deliciosas preparadas com queijos Cruzília!'" :uri="'/'"
			:thumb="'<?= $t_uri ?>/assets/images/diminas/zll-dicas-3-full.png'" :side="'left'"></jumbotron>
	</div>
	<div id="contact" class="row">
		<div class="col-12 col-sm-6">
			<h3 class="text-center t-brand-red text-strong mt-5">Siga-nos</h3>
		</div>
		<div class="col-12 col-sm-6">
			<h3 class="text-center t-brand-red text-strong mt-5">Contato</h3>
			<form class="d-flex mt-5 justify-content-center">
				<div class="form-group t-dark f-concert-one d-flex flex-column vw-30 text-left">

					<label>Seu nome: <br />
						<input class="form-control shadow-none my-1" v-model="name" type="tel">
					</label>
					<label>Telefone: <br />
						<input class="form-control shadow-none my-1" v-model="phone" type="tel">
					</label>
					<label>E-mail: <br />
						<input class="form-control shadow-none my-1" v-model="email" type="email">
					</label>
					<label>Sua mensagem: <br />
						<textarea class="form-control my-1" v-model="content"></textarea>
					</label><br />
					<button class="btn btn-success" @click="sendMail" type="button">Enviar!</button>
				</div>
			</form>
			<br /><small class="t-gray">Você também pode enviar um e-mail para:<br />
				<a href="mailto:contato@laticiniosdiminas.com.br">onpharma@outlook.com</a>
			</small>

		</div>
	</div>
	<div id="notes" class="row">
	<div class="col-12 col-sm-6">
	<h4>Indústria - Rua Aquiles, </h4>
	</div>
	<div class="col-12 col-sm-6">

	</div>
	</div>
</div>


<script defer src="<?= $t_uri.'/assets/pjs/script.min.js' ?>"></script>