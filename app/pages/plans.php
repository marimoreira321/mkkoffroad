<section class="bg-white vh-min-100 list-me z-2 p-rel pt-5 reveal l-fade-scroll">
    <div class="container p-5" id="plans">
        <div class="row">
            <div class="col-12 ml-2 text-center">
                <h2 class="t-orange">Conheça nossos planos!</h2>
                <p hidden class="menu-title"></p>
                <div class="divisor bg-brand-light mb-5 mt-3"></div>
                <div class="row justify-content-center">

                    <plan-box v-for="(idx,p) in plans"></plan-box>

                </div>
            </div>
        </div>
    </div>
</section>