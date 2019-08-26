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
	<div class="row mt-0 pt-0 reveal l-fade-scroll" id="products">
		<h3 class="h2 text-center t-white mt-0 w-100 py-3 bg-black-a mb-0">NOSSOS PRODUTOS</h3>
		<div class="container w-100 bg-white py-5">
			<div class="row justify-content-center">
				<div class="col-12 col-sm-4">
					<product title="UNIVERSAL" :thumb="'<?= $t_uri.'/assets/images/diminas/cat_01.webp' ?>'" :uri="'/'">
					</product>
				</div>
				<div class="col-12 col-sm-4">
					<product title="FAROLETES" :thumb="'<?= $t_uri.'/assets/images/diminas/cat_02.webp' ?>'" :uri="'/'">
					</product>
				</div>
				<div class="col-12 col-sm-4">
					<product title="RACKS" :thumb="'<?= $t_uri.'/assets/images/diminas/cat_03.webp' ?>'" :uri="'/'">
					</product>
				</div>
			</div>
		</div>
		<h3 class="h2 text-center t-white mt-0 w-100 py-3 mb-0 bg-black-a">RACKS</h3>
		<div class="container w-100 bg-white py-5">
			<div class="row justify-content-center">

				<div class="col-12 col-sm-3">
					<product title="TUNDRA CREW MAX" :thumb="'<?= $t_uri.'/assets/images/diminas/it_01.webp' ?>'"
						:uri="'/'"></product>
				</div>
				<div class="col-12 col-sm-3">
					<product title="DUSTER STANDARD" :thumb="'<?= $t_uri.'/assets/images/diminas/it_02.webp' ?>'"
						:uri="'/'"></product>
				</div>
				<div class="col-12 col-sm-3">
					<product title="YAKIME FRONTLOADER" :thumb="'<?= $t_uri.'/assets/images/diminas/it_03.webp' ?>'"
						:uri="'/'"></product>
				</div>
				<div class="col-12 col-sm-3">
					<product title="ALUCAB MOUNT" :thumb="'<?= $t_uri.'/assets/images/diminas/it_04.webp' ?>'"
						:uri="'/'">
					</product>
				</div>
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


<script defer src="<?= $t_uri.'/assets/pjs/front-page.min.js' ?>"></script>