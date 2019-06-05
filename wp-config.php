<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'mm_proj1');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'root');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', 'root');

/** Nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Charset do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8');

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');
/** Disables WP_CRON */
define('DISABLE_WP_CRON', true);
/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '+e(:M1Q/vb!w+,CHn)cV$goKO,>3l<LhV*?{|GBc(aBEET|<&g#X4No.;uT;P!l>');
define('SECURE_AUTH_KEY',  't3}XF5}L`v]Khb8/IrI|L%.ispr1!-v.3><JEY-+6-dq,)5_SR-v3+D*Rn/.=)>s');
define('LOGGED_IN_KEY',    'NIewgJc|6Ox_dHDlVA>Fo~(dmsOja:YN|X Z61T|AMU(jZ>_+{0K~_@{}pbPe&n`');
define('NONCE_KEY',        '(tHQh^gqjjGHU|>%g(lG3T;-7ccK]z3@vy4|^!~yq%>#7}eV2DAb!}X~5_N?tz0|');
define('AUTH_SALT',        '$c,|s]93RWoEOS]XnXP&E8NBUL%6SV*n*h`tPdk_zl5z,)wjo}mjn)Z9}@34czGC');
define('SECURE_AUTH_SALT', ' c$$AT,p0.ER/[`qzVO?F7~-9RTAJr0X^k0.K8AX[eu?<Q/_k:pR-~]oIMY6}.T)');
define('LOGGED_IN_SALT',   '|A-?yhWN,T#!9*:k^gG73d*1RC`>Q+Pp~~J_Zjw_8&4$.2@^ex=q.|?w5UPb|N+c');
define('NONCE_SALT',       'b6erH%*z5l:0lstSu-`{R8):I*.4pGyr39juhl@g(h__ql,ciqH^zm+U7j$+5{8%');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix  = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
