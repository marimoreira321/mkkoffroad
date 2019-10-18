# MKKOFFROAD
Dependências:
 - Bootstrap
 - jQuery
 - VueJs
 - RequireJS
 - Browserify e Babelify
 - Wordpress com um tema pré montado
 - Grunt
 - Uglify

 * Outras depenências checar `package.json`.

# Iniciando o Projeto

Para iniciar seu trabalho, será necessário Node.js v10 ou superior instalado, para utilizar-se do Node Package Manager (npm)
Dentro do diretório do seu projeto, rode o npm:

* `$ npm install -g grunt `
* `$ npm install `

## Para executar seu projeto:

* `$ grunt dev `

** Note que este comando irá rodar um servidor em sua máquina em `localhost:3000`. Certifique-se de que possui php7.0+ instalado.

* `$ sudo apt-get install php`

## Para construir seu projeto, minificando arquivos *.js e *.sass:

* `$ grunt build `



    

# Utilidades

## Snippet VueJS

```
let data = {
   prop1,
   prop2,
   prop3,
}
let varName = new Vue({
   el: '#el-id',
   data: data,
   
   methods: {
      metod1: function(param)
      {
         this.prop1 = 3;
      },
      method2: function (param)
      {
         console.log(this.prop1);
      },
   },
   created: function {
      method1(param); //Chamada na criação do elemento `el`
   }
})
```
