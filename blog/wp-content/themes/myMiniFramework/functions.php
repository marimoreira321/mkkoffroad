<?php
    /**
     * Sets up wordpress supports and functions to this template.
     */
function My_setup(){

	/**
	 * Loads the main theme domain
	 */
     load_theme_textdomain("mova");
    
     // Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
    add_theme_support( 'title-tag' );
    /**
	 * Adds the support for the post thumbnails
	 */
    add_theme_support( 'post-thumbnails' );

    /*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
    ) );
    
	/*
	 * Enable support for Post Formats.
	 *
	 * See: https://codex.wordpress.org/Post_Formats
	 */
	add_theme_support( 'post-formats', array(
		'aside',
		'image',
		'video',
		'quote',
		'link',
		'gallery',
		'audio',
    ) );
    
    add_theme_support( 'custom-logo', array(
		'width'       => 250,
		'height'      => 250,
		'flex-width'  => true,
	) );
	
	function mova_excerpt_len( $length ) {
		return 25;
	}
	add_filter( 'excerpt_length', 'mova_excerpt_len', 999 );

}
add_action( 'after_setup_theme', 'My_setup' );

/**
 * This function returns if the current page is a specific page category
 */
function is_category_page(){
	$is = explode("/", filter_input(INPUT_SERVER, 'REQUEST_URI'))[1];
	if(strtolower($is) === 'category'){
		return true;
	}
	return false;
}
/**
 * Returns this blog template directory
 */
function local_path(){
	return get_bloginfo('template_directory');
}
/**
 * Returns the color of the selected category
 * @param $term_id Category ID.
 */
function get_category_color($term_id){
	return get_term_meta($term_id, 'cc_color', true);
}
function swapChars($string)
{
    return preg_replace(array("/(á|à|ã|â|ä)/","/(Á|À|Ã|Â|Ä)/","/(é|è|ê|ë)/","/(É|È|Ê|Ë)/","/(í|ì|î|ï)/","/(Í|Ì|Î|Ï)/","/(ó|ò|õ|ô|ö)/","/(Ó|Ò|Õ|Ô|Ö)/","/(ú|ù|û|ü)/","/(Ú|Ù|Û|Ü)/","/(ñ)/","/(Ñ)/"),explode(" ","a A e E i I o O u U n N"),$string);
}	
function makeArrayFromQuery($q, $cls = null, $map = false)
{
	$r = array();

	while ($ln = $q->fetch(PDO::FETCH_ASSOC)) {
		if ($cls == null && !$map) {
            $r[] = $ln;
        } elseif ($cls != null && $map) {
            $r[] = new $cls(array_map('utf8_encode',$ln));
        } else {
            $r[] = new $cls($ln);
        }
    }
    return $r;
}
function url_exists($url)
{
    $ch = curl_init($url);    
    curl_setopt($ch, CURLOPT_NOBODY, true);
    curl_exec($ch);
    $code = curl_getinfo($ch, CURLINFO_HTTP_CODE);

    if($code == 200){
       $status = true;
    }else{
      $status = false;
    }
    curl_close($ch);
   return $status;
}