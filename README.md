# MyMini

MyMini é um micro framework de trabalho para Web Developers focado na rapidez de desenvolvimento
sobre uma base sólida e concretizada para que o desenvolvedor tenha total liberdade ao iniciar seu projeto,
partindo de um pre-made project npm-ready. Contém, em suas dependências:
 - Bootstrap
 - jQuery
 - VueJs (não aplicado)
 - RequireJS
 - Browserify e Babelify para ES2015 -> ES5
 - Wordpress com um tema pré montado
 - Grunt
 * Outras depenências checar `package.json`.

 # Organização do Projeto

 O projeto é organizado em diretórios da seguinte forma:

    - MyMini
    ├── app
    │   ├── pages
    │   ├── partials
    │   │   ├── classes
    │   │   └── pieces
    │   ├── `config.php` (Configurações e roteamento do website)   
    │   └── `functions.php` (Funções globais do site)
    ├── assets
    │   ├── css (saida do scss)
    │   ├── fonts
    │   ├── img
    │   ├── js*
    │   │   ├── partials
    │   │   ├── `main.js` (Arquivo js principal)
    │   ├── pjs    
    │   │   └── `main.min.js` (saída do  broserify)
    │   └── sass*
    │   │   └── partials
    ├── blog
    │   ├── wp-content
    │   │   └── themes
    │   │       └── mmfw
    │   │           ├── css 
    │   │               └── Sass output folder
    │   │           ├── img
    │   │           ├── js*
    │   │               ├── partials
    │   │               ├── `script.js` (arquivo JavaScript principal)
    │   │           ├── pjs
    │   │               └── `script.min.js` (saída do browserify)
    │   │           ├── partials
    │   │               └── Pasta com componentes parciais das páginas
    │   │           ├── sass*
    │   │           ├── partials
    │   │               ├── `_theme.scss` (arquivo principal do tema)
    │   │               └── partials
    │   │           └── *Wordpress default files*
    │   └── *Wordpress content*
    ├── node_modules
    │ `index.php`
    │ `browserify.sh` - compila os arquivos `script.js` e `main.js` (depreciado, utilize o grunt)
    | `gruntfile.js`  - Roda o servidor grunt
    └── *Dependency Files*
    
* Diretórios watched pelo grunt.
