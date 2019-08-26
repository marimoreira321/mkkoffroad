-- MySQL dump 10.17  Distrib 10.3.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mm_proj1
-- ------------------------------------------------------
-- Server version	10.3.15-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
`meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
PRIMARY KEY (`meta_id`),
KEY `comment_id` (`comment_id`),
KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
`comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
`comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
`comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
`comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
`comment_karma` int(11) NOT NULL DEFAULT 0,
`comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
`comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
`user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
PRIMARY KEY (`comment_ID`),
KEY `comment_post_ID` (`comment_post_ID`),
KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
KEY `comment_date_gmt` (`comment_date_gmt`),
KEY `comment_parent` (`comment_parent`),
KEY `comment_author_email` (`comment_author_email`(10)),
KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2019-08-25 20:28:26','2019-08-25 20:28:26','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
`link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
`link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
`link_rating` int(11) NOT NULL DEFAULT 0,
`link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
`link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
`link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
PRIMARY KEY (`link_id`),
KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_image_storage`
--

DROP TABLE IF EXISTS `wp_nextend2_image_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nextend2_image_storage` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`hash` varchar(32) NOT NULL,
`image` text NOT NULL,
`value` mediumtext NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_image_storage`
--

LOCK TABLES `wp_nextend2_image_storage` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_image_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nextend2_image_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_section_storage`
--

DROP TABLE IF EXISTS `wp_nextend2_section_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nextend2_section_storage` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`application` varchar(20) NOT NULL,
`section` varchar(128) NOT NULL,
`referencekey` varchar(128) NOT NULL,
`value` mediumtext NOT NULL,
`system` int(11) NOT NULL DEFAULT 0,
`editable` int(11) NOT NULL DEFAULT 1,
PRIMARY KEY (`id`),
KEY `application` (`application`,`section`,`referencekey`),
KEY `application_2` (`application`,`section`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_section_storage`
--

LOCK TABLES `wp_nextend2_section_storage` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_section_storage` DISABLE KEYS */;
INSERT INTO `wp_nextend2_section_storage` VALUES (10000,'system','global','n2_ss3_version','3.3.20r4039',1,1);
/*!40000 ALTER TABLE `wp_nextend2_section_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_smartslider3_generators`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_generators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nextend2_smartslider3_generators` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`group` varchar(254) NOT NULL,
`type` varchar(254) NOT NULL,
`params` text NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_smartslider3_generators`
--

LOCK TABLES `wp_nextend2_smartslider3_generators` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_generators` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_generators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_smartslider3_sliders`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nextend2_smartslider3_sliders` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`alias` varchar(255) DEFAULT NULL,
`title` varchar(100) NOT NULL,
`type` varchar(30) NOT NULL,
`params` mediumtext NOT NULL,
`time` datetime NOT NULL,
`thumbnail` varchar(255) NOT NULL,
`ordering` int(11) NOT NULL DEFAULT 0,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders`
--

LOCK TABLES `wp_nextend2_smartslider3_sliders` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_sliders` DISABLE KEYS */;
INSERT INTO `wp_nextend2_smartslider3_sliders` VALUES (1,NULL,'Sample Slider','simple','{\"controlsScroll\":\"0\",\"controlsDrag\":\"1\",\"controlsTouch\":\"horizontal\",\"controlsKeyboard\":\"1\",\"thumbnail\":\"\",\"align\":\"normal\",\"backgroundMode\":\"fill\",\"animation\":\"horizontal\",\"animation-duration\":\"600\",\"animation-delay\":\"0\",\"animation-easing\":\"easeOutQuad\",\"animation-parallax-overlap\":\"0\",\"background-animation\":\"\",\"background-animation-speed\":\"normal\",\"animation-shifted-background-animation\":\"auto\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"carousel\":\"1\",\"background\":\"\",\"background-fixed\":\"0\",\"background-size\":\"cover\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"backgroundVideoMode\":\"fill\",\"dynamic-height\":\"0\",\"loop-single-slide\":\"0\",\"padding\":\"0|*|0|*|0|*|0\",\"border-width\":\"0\",\"border-color\":\"3E3E3Eff\",\"border-radius\":\"0\",\"slider-preset\":\"\",\"slider-css\":\"\",\"slide-css\":\"\",\"width\":\"1200\",\"height\":\"600\",\"desktop-portrait-minimum-font-size\":\"1\",\"desktop-landscape\":\"0\",\"desktop-landscape-width\":\"1440\",\"desktop-landscape-height\":\"0\",\"desktop-landscape-minimum-font-size\":\"1\",\"fontsize\":\"16\",\"desktop\":\"1\",\"tablet\":\"1\",\"mobile\":\"1\",\"margin\":\"0|*|0|*|0|*|0\",\"tablet-portrait\":\"0\",\"tablet-portrait-width\":\"800\",\"tablet-portrait-height\":\"0\",\"tablet-portrait-minimum-font-size\":\"1\",\"tablet-landscape\":\"0\",\"tablet-landscape-width\":\"1024\",\"tablet-landscape-height\":\"0\",\"tablet-landscape-minimum-font-size\":\"1\",\"mobile-portrait\":\"0\",\"mobile-portrait-width\":\"440\",\"mobile-portrait-height\":\"0\",\"mobile-portrait-minimum-font-size\":\"1\",\"mobile-landscape\":\"0\",\"mobile-landscape-width\":\"740\",\"mobile-landscape-height\":\"0\",\"mobile-landscape-minimum-font-size\":\"1\",\"responsive-mode\":\"auto\",\"responsiveScaleDown\":\"1\",\"responsiveScaleUp\":\"1\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveSlideWidthMax\":\"3000\",\"autoplay\":\"1\",\"autoplayDuration\":\"8000\",\"autoplayStart\":\"1\",\"autoplayfinish\":\"0|*|loop|*|current\",\"autoplayAllowReStart\":\"0\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"autoplayResumeClick\":\"0\",\"autoplayResumeMouse\":\"0\",\"autoplayResumeMedia\":\"1\",\"playfirstlayer\":\"1\",\"playonce\":\"0\",\"layer-animation-play-in\":\"end\",\"layer-animation-play-mode\":\"skippable\",\"parallax-enabled\":\"1\",\"parallax-enabled-mobile\":\"0\",\"parallax-3d\":\"0\",\"parallax-animate\":\"1\",\"parallax-horizontal\":\"mouse\",\"parallax-vertical\":\"mouse\",\"parallax-mouse-origin\":\"slider\",\"parallax-scroll-move\":\"both\",\"perspective\":\"1000\",\"imageload\":\"0\",\"imageloadNeighborSlides\":\"0\",\"optimize\":\"0\",\"optimize-quality\":\"70\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"layer-image-optimize\":\"0\",\"layer-image-tablet\":\"50\",\"layer-image-mobile\":\"30\",\"layer-image-base64\":\"0\",\"layer-image-base64-size\":\"5\",\"playWhenVisible\":\"1\",\"fadeOnLoad\":\"1\",\"fadeOnScroll\":\"0\",\"spinner\":\"simpleWhite\",\"custom-spinner\":\"\",\"custom-spinner-width\":\"100\",\"custom-spinner-height\":\"100\",\"custom-display\":\"1\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"randomize\":\"0\",\"randomizeFirst\":\"0\",\"randomize-cache\":\"1\",\"variations\":\"5\",\"maximumslidecount\":\"1000\",\"global-lightbox\":\"0\",\"global-lightbox-label\":\"0\",\"maintain-session\":\"0\",\"blockrightclick\":\"0\",\"overflow-hidden-page\":\"0\",\"bg-parallax-tablet\":\"1\",\"bg-parallax-mobile\":\"1\",\"callbacks\":\"\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-desktop\":\"1\",\"widget-arrow-display-tablet\":\"1\",\"widget-arrow-display-mobile\":\"1\",\"widget-arrow-exclude-slides\":\"\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-responsive-desktop\":\"1\",\"widget-arrow-responsive-tablet\":\"0.7\",\"widget-arrow-responsive-mobile\":\"0.5\",\"widget-arrow-previous-image\":\"\",\"widget-arrow-previous\":\"$ss$/plugins/widgetarrow/image/image/previous/thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widget-arrow-animation\":\"fade\",\"widget-arrow-mirror\":\"1\",\"widget-arrow-next-image\":\"\",\"widget-arrow-next\":\"$ss$/plugins/widgetarrow/image/image/next/thin-horizontal.svg\",\"widget-arrow-next-color\":\"ffffffcc\",\"widget-arrow-next-hover\":\"0\",\"widget-arrow-next-hover-color\":\"ffffffcc\",\"widgetbullet\":\"transition\",\"widget-bullet-display-desktop\":\"1\",\"widget-bullet-display-tablet\":\"1\",\"widget-bullet-display-mobile\":\"1\",\"widget-bullet-exclude-slides\":\"\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-thumbnail-show-image\":\"1\",\"widget-bullet-thumbnail-width\":\"120\",\"widget-bullet-thumbnail-height\":\"81\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDsifV19\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-position-mode\":\"simple\",\"widget-bullet-position-area\":\"12\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"10\",\"widget-bullet-position-horizontal\":\"left\",\"widget-bullet-position-horizontal-position\":\"0\",\"widget-bullet-position-horizontal-unit\":\"px\",\"widget-bullet-position-vertical\":\"top\",\"widget-bullet-position-vertical-position\":\"0\",\"widget-bullet-position-vertical-unit\":\"px\",\"widget-bullet-action\":\"click\",\"widget-bullet-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwYWIiLCJwYWRkaW5nIjoiNXwqfDV8Knw1fCp8NXwqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiI1MCIsImV4dHJhIjoibWFyZ2luOiA0cHg7In0seyJleHRyYSI6IiIsImJhY2tncm91bmRjb2xvciI6IjA5YjQ3NGZmIn1dfQ==\",\"widget-bullet-bar\":\"\",\"widget-bullet-bar-full-size\":\"0\",\"widget-bullet-align\":\"center\",\"widget-bullet-orientation\":\"auto\",\"widget-bullet-overlay\":\"0\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-desktop\":\"1\",\"widget-autoplay-display-tablet\":\"1\",\"widget-autoplay-display-mobile\":\"1\",\"widget-autoplay-exclude-slides\":\"\",\"widget-autoplay-display-hover\":\"0\",\"widgetindicator\":\"disabled\",\"widget-indicator-display-desktop\":\"1\",\"widget-indicator-display-tablet\":\"1\",\"widget-indicator-display-mobile\":\"1\",\"widget-indicator-exclude-slides\":\"\",\"widget-indicator-display-hover\":\"0\",\"widgetbar\":\"disabled\",\"widget-bar-display-desktop\":\"1\",\"widget-bar-display-tablet\":\"1\",\"widget-bar-display-mobile\":\"1\",\"widget-bar-exclude-slides\":\"\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-desktop\":\"1\",\"widget-thumbnail-display-tablet\":\"1\",\"widget-thumbnail-display-mobile\":\"1\",\"widget-thumbnail-exclude-slides\":\"\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-show-image\":\"1\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"disabled\",\"widget-shadow-display-desktop\":\"1\",\"widget-shadow-display-tablet\":\"1\",\"widget-shadow-display-mobile\":\"1\",\"widget-shadow-exclude-slides\":\"\",\"widgetfullscreen\":\"disabled\",\"widget-fullscreen-display-desktop\":\"1\",\"widget-fullscreen-display-tablet\":\"1\",\"widget-fullscreen-display-mobile\":\"1\",\"widget-fullscreen-exclude-slides\":\"\",\"widget-fullscreen-display-hover\":\"0\",\"widgethtml\":\"disabled\",\"widget-html-display-desktop\":\"1\",\"widget-html-display-tablet\":\"1\",\"widget-html-display-mobile\":\"1\",\"widget-html-exclude-slides\":\"\",\"widget-html-display-hover\":\"0\",\"widgets\":\"arrow\"}','2015-11-01 14:14:20','',0);
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_smartslider3_sliders_xref`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_sliders_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nextend2_smartslider3_sliders_xref` (
`group_id` int(11) NOT NULL,
`slider_id` int(11) NOT NULL,
`ordering` int(11) NOT NULL DEFAULT 0,
PRIMARY KEY (`group_id`,`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders_xref`
--

LOCK TABLES `wp_nextend2_smartslider3_sliders_xref` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_sliders_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_sliders_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_nextend2_smartslider3_slides`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_nextend2_smartslider3_slides` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`title` varchar(200) NOT NULL,
`slider` int(11) NOT NULL,
`publish_up` datetime NOT NULL,
`publish_down` datetime NOT NULL,
`published` tinyint(1) NOT NULL,
`first` int(11) NOT NULL,
`slide` longtext DEFAULT NULL,
`description` text NOT NULL,
`thumbnail` varchar(255) NOT NULL,
`params` text NOT NULL,
`ordering` int(11) NOT NULL,
`generator_id` int(11) NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_nextend2_smartslider3_slides`
--

LOCK TABLES `wp_nextend2_smartslider3_slides` WRITE;
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_slides` DISABLE KEYS */;
INSERT INTO `wp_nextend2_smartslider3_slides` VALUES (1,'Slide One',1,'2015-11-01 12:27:34','2025-11-11 12:27:34',1,0,'[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Martin Dwyer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Martin Dwyer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Application Developer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Application Developer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]','','https://smartslider3.com/sample/developerthumbnail.jpg','{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/programmer.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}',0,0),(2,'Slide Two',1,'2015-11-01 12:27:34','2025-11-11 12:27:34',1,0,'[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Rachel Wright\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Rachel Wright\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Art Director & Photographer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Art Director & Photographer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]','','https://smartslider3.com/sample/artdirectorthumbnail.jpg','{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/free1.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}',1,0),(3,'Slide Three',1,'2015-11-01 12:27:34','2025-11-11 12:27:34',1,0,'[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Andrew Butler\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Andrew Butler\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Photographer & Illustrator\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Photographer & Illustrator\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]','','https://smartslider3.com/sample/photographerthumbnail.jpg','{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/photographer.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}',2,0);
/*!40000 ALTER TABLE `wp_nextend2_smartslider3_slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
`option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
`autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
PRIMARY KEY (`option_id`),
UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:3000/blog','yes'),(2,'home','http://localhost:3000/blog','yes'),(3,'blogname','MKK Offroad','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','mury_gh@hotmail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'rewrite_rules','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:2:{i:0;s:33:\"smart-slider-3/smart-slider-3.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','storefront','yes'),(41,'stylesheet','storefront-child','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','38590','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','0','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:0:{}','yes'),(80,'widget_rss','a:0:{}','yes'),(81,'uninstall_plugins','a:0:{}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','3','yes'),(92,'show_comments_cookies_opt_in','0','yes'),(93,'initial_db_version','38590','yes'),(94,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:122:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:42:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','yes'),(95,'fresh_site','0','yes'),(96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(101,'sidebars_widgets','a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:18:\"smartslider_area_1\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(102,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'cron','a:12:{i:1566764917;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1566764921;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566764968;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566764970;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1566764978;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566765028;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1566768568;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1566775768;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566777600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566786568;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1567468800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}','yes'),(112,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:7:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.4\";s:7:\"version\";s:5:\"5.0.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.10.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.10.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.10-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.9.10-new-bundled.zip\";s:7:\"partial\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.10-partial-8.zip\";s:8:\"rollback\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.10-rollback-8.zip\";}s:7:\"current\";s:6:\"4.9.10\";s:7:\"version\";s:6:\"4.9.10\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"4.9.8\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1566764923;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-05 14:41:09\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}}','no'),(113,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1566764934;s:7:\"checked\";a:14:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:36:\"category-color/rl_category_color.php\";s:3:\"1.2\";s:43:\"colorful-categories/colorful-categories.php\";s:5:\"2.0.8\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:6:\"1.9.12\";s:9:\"hello.php\";s:3:\"1.7\";s:19:\"jetpack/jetpack.php\";s:5:\"7.3.0\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:6:\"2.1.15\";s:33:\"smart-slider-3/smart-slider-3.php\";s:6:\"3.3.20\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.4\";s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";s:5:\"3.6.1\";s:45:\"woo-shipping-gateway/woo-shipping-gateway.php\";s:5:\"2.1.6\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:6:\"1.6.14\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.20.0\";s:36:\"woo-yapay/wc-yapay_intermediador.php\";s:5:\"0.2.8\";}s:8:\"response\";a:10:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"colorful-categories/colorful-categories.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/colorful-categories\";s:4:\"slug\";s:19:\"colorful-categories\";s:6:\"plugin\";s:43:\"colorful-categories/colorful-categories.php\";s:11:\"new_version\";s:6:\"2.0.10\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/colorful-categories/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/colorful-categories.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/colorful-categories/assets/icon-256x256.jpg?rev=1486270\";s:2:\"1x\";s:72:\"https://ps.w.org/colorful-categories/assets/icon-128x128.jpg?rev=1486270\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/colorful-categories/assets/banner-772x250.jpg?rev=993083\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:6:\"1.9.15\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.1.9.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:6:\"2.1.17\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.1.17.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"smart-slider-3/smart-slider-3.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/smart-slider-3\";s:4:\"slug\";s:14:\"smart-slider-3\";s:6:\"plugin\";s:33:\"smart-slider-3/smart-slider-3.php\";s:11:\"new_version\";s:6:\"3.3.21\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/smart-slider-3/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/smart-slider-3.3.3.21.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/smart-slider-3/assets/icon-256x256.png?rev=1284893\";s:2:\"1x\";s:67:\"https://ps.w.org/smart-slider-3/assets/icon-128x128.png?rev=1284893\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/smart-slider-3/assets/banner-1544x500.png?rev=1902662\";s:2:\"1x\";s:69:\"https://ps.w.org/smart-slider-3/assets/banner-772x250.png?rev=1902662\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.7.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:6:\"1.6.17\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:93:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.17.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1948167\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1948167\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.21.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.21.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"woo-yapay/wc-yapay_intermediador.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/woo-yapay\";s:4:\"slug\";s:9:\"woo-yapay\";s:6:\"plugin\";s:36:\"woo-yapay/wc-yapay_intermediador.php\";s:11:\"new_version\";s:5:\"0.4.8\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/woo-yapay/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/woo-yapay.0.4.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/woo-yapay/assets/icon-256x256.jpg?rev=1840253\";s:2:\"1x\";s:62:\"https://ps.w.org/woo-yapay/assets/icon-128x128.jpg?rev=1840252\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/woo-yapay/assets/banner-1544x500.jpg?rev=1840248\";s:2:\"1x\";s:64:\"https://ps.w.org/woo-yapay/assets/banner-772x250.jpg?rev=1840251\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"jetpack\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"7.3.0\";s:7:\"updated\";s:19:\"2019-05-13 19:54:14\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/jetpack/7.3.0/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"smart-slider-3\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:6:\"3.3.20\";s:7:\"updated\";s:19:\"2018-11-05 12:18:56\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/translation/plugin/smart-slider-3/3.3.20/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"3.6.4\";s:7:\"updated\";s:19:\"2019-06-17 18:34:40\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/3.6.4/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:44:\"woocommerce-extra-checkout-fields-for-brazil\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"3.6.1\";s:7:\"updated\";s:19:\"2017-05-13 20:37:50\";s:7:\"package\";s:111:\"https://downloads.wordpress.org/translation/plugin/woocommerce-extra-checkout-fields-for-brazil/3.6.1/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:36:\"category-color/rl_category_color.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/category-color\";s:4:\"slug\";s:14:\"category-color\";s:6:\"plugin\";s:36:\"category-color/rl_category_color.php\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/category-color/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/category-color.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/category-color/assets/icon-256x256.png?rev=1056597\";s:2:\"1x\";s:67:\"https://ps.w.org/category-color/assets/icon-128x128.png?rev=1062054\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/category-color/assets/banner-772x250.png?rev=1056597\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"7.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.7.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";a:0:{}}s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:58:\"w.org/plugins/woocommerce-extra-checkout-fields-for-brazil\";s:4:\"slug\";s:44:\"woocommerce-extra-checkout-fields-for-brazil\";s:6:\"plugin\";s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";s:11:\"new_version\";s:5:\"3.6.1\";s:3:\"url\";s:75:\"https://wordpress.org/plugins/woocommerce-extra-checkout-fields-for-brazil/\";s:7:\"package\";s:93:\"https://downloads.wordpress.org/plugin/woocommerce-extra-checkout-fields-for-brazil.3.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:97:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/icon-256x256.png?rev=1356956\";s:2:\"1x\";s:97:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/icon-128x128.png?rev=1356956\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:100:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/banner-1544x500.png?rev=1356956\";s:2:\"1x\";s:99:\"https://ps.w.org/woocommerce-extra-checkout-fields-for-brazil/assets/banner-772x250.png?rev=1356956\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woo-shipping-gateway/woo-shipping-gateway.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woo-shipping-gateway\";s:4:\"slug\";s:20:\"woo-shipping-gateway\";s:6:\"plugin\";s:45:\"woo-shipping-gateway/woo-shipping-gateway.php\";s:11:\"new_version\";s:5:\"2.1.6\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woo-shipping-gateway/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/woo-shipping-gateway.2.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woo-shipping-gateway/assets/icon-256x256.png?rev=2034482\";s:2:\"1x\";s:73:\"https://ps.w.org/woo-shipping-gateway/assets/icon-128x128.png?rev=2034482\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woo-shipping-gateway/assets/banner-1544x500.png?rev=2034482\";s:2:\"1x\";s:75:\"https://ps.w.org/woo-shipping-gateway/assets/banner-772x250.png?rev=2034482\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(114,'_site_transient_timeout_theme_roots','1566767136','no'),(115,'_site_transient_theme_roots','a:3:{s:15:\"myMiniFramework\";s:7:\"/themes\";s:16:\"storefront-child\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";}','no'),(116,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1566765337;s:7:\"checked\";a:2:{s:16:\"storefront-child\";s:3:\"1.0\";s:10:\"storefront\";s:5:\"2.5.0\";}s:8:\"response\";a:1:{s:10:\"storefront\";a:6:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"2.5.3\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.2.5.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:10:\"storefront\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"2.5.0\";s:7:\"updated\";s:19:\"2019-06-24 16:35:33\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/storefront/2.5.0/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}}','no'),(117,'_site_transient_timeout_browser_43841bb675e84b7370e10e281dbfe43a','1567369729','no'),(118,'_site_transient_browser_43841bb675e84b7370e10e281dbfe43a','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"68.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(119,'_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e','1566808131','no'),(120,'_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e','a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:11:\"WordCamp US\";s:3:\"url\";s:29:\"https://2019.us.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2019-11-01 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"St. Louis, MO, USA\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:38.6532135;s:9:\"longitude\";d:-90.3136733;}}i:1;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:19:\"WordCamp São Paulo\";s:3:\"url\";s:34:\"https://2019.saopaulo.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-10-05 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:30:\"São Paulo, São Paulo, Brazil\";s:7:\"country\";s:2:\"BR\";s:8:\"latitude\";d:-23.5642229;s:9:\"longitude\";d:-46.6380978;}}}}','no'),(121,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1566808132','no'),(122,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><ul><li>An error has occurred, which probably means the feed is down. Try again later.</li></ul></div><div class=\"rss-widget\"><ul><li>An error has occurred, which probably means the feed is down. Try again later.</li></ul></div>','no'),(123,'can_compress_scripts','1','no'),(124,'_transient_timeout_plugin_slugs','1566851353','no'),(125,'_transient_plugin_slugs','a:14:{i:0;s:19:\"akismet/akismet.php\";i:1;s:36:\"category-color/rl_category_color.php\";i:2;s:43:\"colorful-categories/colorful-categories.php\";i:3;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:4;s:9:\"hello.php\";i:5;s:19:\"jetpack/jetpack.php\";i:6;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:7;s:33:\"smart-slider-3/smart-slider-3.php\";i:8;s:27:\"woocommerce/woocommerce.php\";i:9;s:93:\"woocommerce-extra-checkout-fields-for-brazil/woocommerce-extra-checkout-fields-for-brazil.php\";i:10;s:45:\"woo-shipping-gateway/woo-shipping-gateway.php\";i:11;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:12;s:45:\"woocommerce-services/woocommerce-services.php\";i:13;s:36:\"woo-yapay/wc-yapay_intermediador.php\";}','no'),(126,'recently_activated','a:0:{}','yes'),(127,'n2_ss3_version','3.3.20r4039','yes'),(128,'widget_smartslider3','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(131,'woocommerce_store_address','R. Joaquim Dias','yes'),(132,'woocommerce_store_address_2','250','yes'),(133,'woocommerce_store_city','Itajubá','yes'),(134,'woocommerce_default_country','BR:MG','yes'),(135,'woocommerce_store_postcode','37502022','yes'),(136,'woocommerce_allowed_countries','all','yes'),(137,'woocommerce_all_except_countries','','yes'),(138,'woocommerce_specific_allowed_countries','','yes'),(139,'woocommerce_ship_to_countries','','yes'),(140,'woocommerce_specific_ship_to_countries','','yes'),(141,'woocommerce_default_customer_address','geolocation','yes'),(142,'woocommerce_calc_taxes','no','yes'),(143,'woocommerce_enable_coupons','yes','yes'),(144,'woocommerce_calc_discounts_sequentially','no','no'),(145,'woocommerce_currency','BRL','yes'),(146,'woocommerce_currency_pos','left','yes'),(147,'woocommerce_price_thousand_sep','.','yes'),(148,'woocommerce_price_decimal_sep',',','yes'),(149,'woocommerce_price_num_decimals','2','yes'),(150,'woocommerce_shop_page_id','6','yes'),(151,'woocommerce_cart_redirect_after_add','no','yes'),(152,'woocommerce_enable_ajax_add_to_cart','yes','yes'),(153,'woocommerce_placeholder_image','5','yes'),(154,'woocommerce_weight_unit','kg','yes'),(155,'woocommerce_dimension_unit','cm','yes'),(156,'woocommerce_enable_reviews','yes','yes'),(157,'woocommerce_review_rating_verification_label','yes','no'),(158,'woocommerce_review_rating_verification_required','no','no'),(159,'woocommerce_enable_review_rating','yes','yes'),(160,'woocommerce_review_rating_required','yes','no'),(161,'woocommerce_manage_stock','yes','yes'),(162,'woocommerce_hold_stock_minutes','60','no'),(163,'woocommerce_notify_low_stock','yes','no'),(164,'woocommerce_notify_no_stock','yes','no'),(165,'woocommerce_stock_email_recipient','mury_gh@hotmail.com','no'),(166,'woocommerce_notify_low_stock_amount','2','no'),(167,'woocommerce_notify_no_stock_amount','0','yes'),(168,'woocommerce_hide_out_of_stock_items','no','yes'),(169,'woocommerce_stock_format','','yes'),(170,'woocommerce_file_download_method','force','no'),(171,'woocommerce_downloads_require_login','no','no'),(172,'woocommerce_downloads_grant_access_after_payment','yes','no'),(173,'woocommerce_prices_include_tax','no','yes'),(174,'woocommerce_tax_based_on','shipping','yes'),(175,'woocommerce_shipping_tax_class','inherit','yes'),(176,'woocommerce_tax_round_at_subtotal','no','yes'),(177,'woocommerce_tax_classes','Reduced rate\nZero rate','yes'),(178,'woocommerce_tax_display_shop','excl','yes'),(179,'woocommerce_tax_display_cart','excl','yes'),(180,'woocommerce_price_display_suffix','','yes'),(181,'woocommerce_tax_total_display','itemized','no'),(182,'woocommerce_enable_shipping_calc','yes','no'),(183,'woocommerce_shipping_cost_requires_address','no','yes'),(184,'woocommerce_ship_to_destination','billing','no'),(185,'woocommerce_shipping_debug_mode','no','yes'),(186,'woocommerce_enable_guest_checkout','yes','no'),(187,'woocommerce_enable_checkout_login_reminder','no','no'),(188,'woocommerce_enable_signup_and_login_from_checkout','no','no'),(189,'woocommerce_enable_myaccount_registration','no','no'),(190,'woocommerce_registration_generate_username','yes','no'),(191,'woocommerce_registration_generate_password','yes','no'),(192,'woocommerce_erasure_request_removes_order_data','no','no'),(193,'woocommerce_erasure_request_removes_download_data','no','no'),(194,'woocommerce_allow_bulk_remove_personal_data','no','no'),(195,'woocommerce_registration_privacy_policy_text','Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].','yes'),(196,'woocommerce_checkout_privacy_policy_text','Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].','yes'),(197,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no'),(198,'woocommerce_trash_pending_orders','','no'),(199,'woocommerce_trash_failed_orders','','no'),(200,'woocommerce_trash_cancelled_orders','','no'),(201,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no'),(202,'woocommerce_email_from_name','MKK Offroad','no'),(203,'woocommerce_email_from_address','mury_gh@hotmail.com','no'),(204,'woocommerce_email_header_image','','no'),(205,'woocommerce_email_footer_text','{site_title}<br/>Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>','no'),(206,'woocommerce_email_base_color','#96588a','no'),(207,'woocommerce_email_background_color','#f7f7f7','no'),(208,'woocommerce_email_body_background_color','#ffffff','no'),(209,'woocommerce_email_text_color','#3c3c3c','no'),(210,'woocommerce_cart_page_id','7','yes'),(211,'woocommerce_checkout_page_id','8','yes'),(212,'woocommerce_myaccount_page_id','9','yes'),(213,'woocommerce_terms_page_id','','no'),(214,'woocommerce_force_ssl_checkout','no','yes'),(215,'woocommerce_unforce_ssl_checkout','no','yes'),(216,'woocommerce_checkout_pay_endpoint','order-pay','yes'),(217,'woocommerce_checkout_order_received_endpoint','order-received','yes'),(218,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes'),(219,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes'),(220,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes'),(221,'woocommerce_myaccount_orders_endpoint','orders','yes'),(222,'woocommerce_myaccount_view_order_endpoint','view-order','yes'),(223,'woocommerce_myaccount_downloads_endpoint','downloads','yes'),(224,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes'),(225,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes'),(226,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes'),(227,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes'),(228,'woocommerce_logout_endpoint','customer-logout','yes'),(229,'woocommerce_api_enabled','no','yes'),(230,'woocommerce_allow_tracking','no','no'),(231,'woocommerce_show_marketplace_suggestions','yes','no'),(232,'woocommerce_single_image_width','600','yes'),(233,'woocommerce_thumbnail_image_width','300','yes'),(234,'woocommerce_checkout_highlight_required_fields','yes','yes'),(235,'woocommerce_demo_store','no','no'),(236,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','yes'),(237,'current_theme_supports_woocommerce','yes','yes'),(238,'woocommerce_queue_flush_rewrite_rules','no','yes'),(239,'_transient_wc_attribute_taxonomies','a:0:{}','yes'),(240,'product_cat_children','a:0:{}','yes'),(241,'default_product_cat','15','yes'),(244,'woocommerce_version','3.6.4','yes'),(245,'woocommerce_db_version','3.6.4','yes'),(246,'woocommerce_admin_notices','a:3:{i:0;s:20:\"no_secure_connection\";i:1;s:19:\"no_shipping_methods\";i:2;s:14:\"template_files\";}','yes'),(247,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','yes'),(248,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(249,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(250,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(251,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(252,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(253,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(254,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(255,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(256,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(257,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(258,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(259,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(260,'_transient_wc_count_comments','O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}','yes'),(261,'_transient_as_comment_count','O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}','yes'),(262,'woocommerce_meta_box_errors','a:0:{}','yes'),(263,'woocommerce_product_type','physical','yes'),(264,'woocommerce_sell_in_person','1','yes'),(265,'woocommerce_ppec_paypal_settings','a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}','yes'),(266,'woocommerce_cheque_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),(267,'woocommerce_bacs_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),(268,'woocommerce_cod_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','yes'),(269,'_transient_shipping-transient-version','1566765034','yes'),(270,'_transient_timeout_wc_shipping_method_count','1569357034','no'),(271,'_transient_wc_shipping_method_count','a:2:{s:7:\"version\";s:10:\"1566765034\";s:5:\"value\";i:0;}','no'),(272,'_transient_timeout_wc_report_sales_by_date','1566851731','no'),(273,'_transient_wc_report_sales_by_date','a:8:{s:32:\"a64f376a7f11cf5084caad12cdf46a97\";a:0:{}s:32:\"4c4d55f4859653fd93466f03d84f2996\";a:0:{}s:32:\"557f6f323d1daf8168d6176988d25541\";a:0:{}s:32:\"c426742434d47bad7c0fc8458de50b5c\";N;s:32:\"964cbbf7f2441db0195e19fa1a77843a\";a:0:{}s:32:\"3fa406684096d4cf8750f932f3354c12\";a:0:{}s:32:\"0cea00701d7176dd21319c26992bcf14\";a:0:{}s:32:\"618447c28171e0842a069840ebc5379f\";a:0:{}}','no'),(274,'_transient_timeout_wc_admin_report','1566851434','no'),(275,'_transient_wc_admin_report','a:1:{s:32:\"fd7810f0e63a9142313983b94385c9cd\";a:0:{}}','no'),(276,'_transient_timeout_wc_low_stock_count','1569357034','no'),(277,'_transient_wc_low_stock_count','0','no'),(278,'_transient_timeout_wc_outofstock_count','1569357034','no'),(279,'_transient_wc_outofstock_count','0','no'),(280,'theme_mods_twentyseventeen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1566765062;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),(281,'current_theme','MKK OFFROAD','yes'),(282,'theme_mods_storefront','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1566765341;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:18:\"smartslider_area_1\";a:0:{}}}}','yes'),(283,'theme_switched','','yes'),(284,'storefront_nux_fresh_site','0','yes'),(285,'woocommerce_catalog_rows','4','yes'),(286,'woocommerce_catalog_columns','3','yes'),(287,'woocommerce_maybe_regenerate_images_hash','27acde77266b4d2a3491118955cb3f66','yes'),(289,'_transient_timeout_external_ip_address_127.0.0.1','1567369866','no'),(290,'_transient_external_ip_address_127.0.0.1','179.108.21.242','no'),(293,'_transient_is_multi_author','0','yes'),(294,'_transient_timeout__woocommerce_helper_subscriptions','1566766236','no'),(295,'_transient__woocommerce_helper_subscriptions','a:0:{}','no'),(296,'_transient_timeout__woocommerce_helper_updates','1566808536','no'),(297,'_transient__woocommerce_helper_updates','a:4:{s:4:\"hash\";s:32:\"358c40eaa335ac0d027f3e9faa3c726e\";s:7:\"updated\";i:1566765336;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}','no'),(299,'theme_mods_storefront-child','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
`meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
PRIMARY KEY (`meta_id`),
KEY `post_id` (`post_id`),
KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,5,'_wp_attached_file','woocommerce-placeholder.png'),(4,5,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
`ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
`post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
`post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
`post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
`post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
`post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
`post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
`comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
`ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
`post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
`pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
`post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
`post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
`post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
`post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
`guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`menu_order` int(11) NOT NULL DEFAULT 0,
`post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
`post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`comment_count` bigint(20) NOT NULL DEFAULT 0,
PRIMARY KEY (`ID`),
KEY `post_name` (`post_name`(191)),
KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
KEY `post_parent` (`post_parent`),
KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2019-08-25 20:28:26','2019-08-25 20:28:26','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2019-08-25 20:28:26','2019-08-25 20:28:26','',0,'http://localhost:3000/blog/?p=1',0,'post','',1),(2,1,'2019-08-25 20:28:26','2019-08-25 20:28:26','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:3000/blog/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','closed','open','','sample-page','','','2019-08-25 20:28:26','2019-08-25 20:28:26','',0,'http://localhost:3000/blog/?page_id=2',0,'page','',0),(3,1,'2019-08-25 20:28:26','2019-08-25 20:28:26','<h2>Who we are</h2><p>Our website address is: http://localhost:3000/blog.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>','Privacy Policy','','draft','closed','open','','privacy-policy','','','2019-08-25 20:28:26','2019-08-25 20:28:26','',0,'http://localhost:3000/blog/?page_id=3',0,'page','',0),(4,1,'2019-08-25 20:28:49','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2019-08-25 20:28:49','0000-00-00 00:00:00','',0,'http://localhost:3000/blog/?p=4',0,'post','',0),(5,1,'2019-08-25 20:29:28','2019-08-25 20:29:28','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2019-08-25 20:29:28','2019-08-25 20:29:28','',0,'http://localhost:3000/blog/wp-content/uploads/2019/08/woocommerce-placeholder.png',0,'attachment','image/png',0),(6,1,'2019-08-25 20:29:59','2019-08-25 20:29:59','','Shop','','publish','closed','closed','','shop','','','2019-08-25 20:29:59','2019-08-25 20:29:59','',0,'http://localhost:3000/blog/?page_id=6',0,'page','',0),(7,1,'2019-08-25 20:30:00','2019-08-25 20:30:00','<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->','Cart','','publish','closed','closed','','cart','','','2019-08-25 20:30:00','2019-08-25 20:30:00','',0,'http://localhost:3000/blog/?page_id=7',0,'page','',0),(8,1,'2019-08-25 20:30:00','2019-08-25 20:30:00','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Checkout','','publish','closed','closed','','checkout','','','2019-08-25 20:30:00','2019-08-25 20:30:00','',0,'http://localhost:3000/blog/?page_id=8',0,'page','',0),(9,1,'2019-08-25 20:30:00','2019-08-25 20:30:00','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','My account','','publish','closed','closed','','my-account','','','2019-08-25 20:30:00','2019-08-25 20:30:00','',0,'http://localhost:3000/blog/?page_id=9',0,'page','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
`object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
`term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
`term_order` int(11) NOT NULL DEFAULT 0,
PRIMARY KEY (`object_id`,`term_taxonomy_id`),
KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
`taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
`parent` bigint(20) unsigned NOT NULL DEFAULT 0,
`count` bigint(20) NOT NULL DEFAULT 0,
PRIMARY KEY (`term_taxonomy_id`),
UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'product_type','',0,0),(3,3,'product_type','',0,0),(4,4,'product_type','',0,0),(5,5,'product_type','',0,0),(6,6,'product_visibility','',0,0),(7,7,'product_visibility','',0,0),(8,8,'product_visibility','',0,0),(9,9,'product_visibility','',0,0),(10,10,'product_visibility','',0,0),(11,11,'product_visibility','',0,0),(12,12,'product_visibility','',0,0),(13,13,'product_visibility','',0,0),(14,14,'product_visibility','',0,0),(15,15,'product_cat','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
`meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
`meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
PRIMARY KEY (`meta_id`),
KEY `term_id` (`term_id`),
KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`term_group` bigint(10) NOT NULL DEFAULT 0,
PRIMARY KEY (`term_id`),
KEY `slug` (`slug`(191)),
KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'simple','simple',0),(3,'grouped','grouped',0),(4,'variable','variable',0),(5,'external','external',0),(6,'exclude-from-search','exclude-from-search',0),(7,'exclude-from-catalog','exclude-from-catalog',0),(8,'featured','featured',0),(9,'outofstock','outofstock',0),(10,'rated-1','rated-1',0),(11,'rated-2','rated-2',0),(12,'rated-3','rated-3',0),(13,'rated-4','rated-4',0),(14,'rated-5','rated-5',0),(15,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
`meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
PRIMARY KEY (`umeta_id`),
KEY `user_id` (`user_id`),
KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers','wp496_privacy'),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:1:{s:64:\"970a1017745dec6230f62d0edbf7d732c1980fb15370eb3e4697163cbdf11f96\";a:4:{s:10:\"expiration\";i:1566937721;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101 Firefox/68.0\";s:5:\"login\";i:1566764921;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','4'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),(19,1,'_woocommerce_tracks_anon_id','woo:9bnuJCJ3gykg91UpPupsf84O'),(20,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:0:{}}'),(21,1,'wc_last_active','1566691200');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
`ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
`user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`user_status` int(11) NOT NULL DEFAULT 0,
`display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
PRIMARY KEY (`ID`),
KEY `user_login_key` (`user_login`),
KEY `user_nicename` (`user_nicename`),
KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BQ1Wr0oOlvrR8DvxpGxOmv8gpBDUS.1','admin','mury_gh@hotmail.com','','2019-08-25 20:28:26','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_download_log` (
`download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`timestamp` datetime NOT NULL,
`permission_id` bigint(20) unsigned NOT NULL,
`user_id` bigint(20) unsigned DEFAULT NULL,
`user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
PRIMARY KEY (`download_log_id`),
KEY `permission_id` (`permission_id`),
KEY `timestamp` (`timestamp`),
CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_product_meta_lookup` (
`product_id` bigint(20) NOT NULL,
`sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
`virtual` tinyint(1) DEFAULT 0,
`downloadable` tinyint(1) DEFAULT 0,
`min_price` decimal(10,2) DEFAULT NULL,
`max_price` decimal(10,2) DEFAULT NULL,
`onsale` tinyint(1) DEFAULT 0,
`stock_quantity` double DEFAULT NULL,
`stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
`rating_count` bigint(20) DEFAULT 0,
`average_rating` decimal(3,2) DEFAULT 0.00,
`total_sales` bigint(20) DEFAULT 0,
PRIMARY KEY (`product_id`),
KEY `virtual` (`virtual`),
KEY `downloadable` (`downloadable`),
KEY `stock_status` (`stock_status`),
KEY `stock_quantity` (`stock_quantity`),
KEY `onsale` (`onsale`),
KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_webhooks` (
`webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
`name` text COLLATE utf8mb4_unicode_ci NOT NULL,
`user_id` bigint(20) unsigned NOT NULL,
`delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
`secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
`topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
`date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
`date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
`date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
`date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
`api_version` smallint(4) NOT NULL,
`failure_count` smallint(10) NOT NULL DEFAULT 0,
`pending_delivery` tinyint(1) NOT NULL DEFAULT 0,
PRIMARY KEY (`webhook_id`),
KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_api_keys` (
`key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`user_id` bigint(20) unsigned NOT NULL,
`description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
`consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
`consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
`nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
`last_access` datetime DEFAULT NULL,
PRIMARY KEY (`key_id`),
KEY `consumer_key` (`consumer_key`),
KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
`attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
`attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
`attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
`attribute_public` int(1) NOT NULL DEFAULT 1,
PRIMARY KEY (`attribute_id`),
KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
`permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
`product_id` bigint(20) unsigned NOT NULL,
`order_id` bigint(20) unsigned NOT NULL DEFAULT 0,
`order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
`user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
`user_id` bigint(20) unsigned DEFAULT NULL,
`downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
`access_expires` datetime DEFAULT NULL,
`download_count` bigint(20) unsigned NOT NULL DEFAULT 0,
PRIMARY KEY (`permission_id`),
KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
KEY `order_id` (`order_id`),
KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_log` (
`log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`timestamp` datetime NOT NULL,
`level` smallint(4) NOT NULL,
`source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
`message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
`context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
PRIMARY KEY (`log_id`),
KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
`meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`order_item_id` bigint(20) unsigned NOT NULL,
`meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
PRIMARY KEY (`meta_id`),
KEY `order_item_id` (`order_item_id`),
KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_items` (
`order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
`order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`order_id` bigint(20) unsigned NOT NULL,
PRIMARY KEY (`order_item_id`),
KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
`meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`payment_token_id` bigint(20) unsigned NOT NULL,
`meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
PRIMARY KEY (`meta_id`),
KEY `payment_token_id` (`payment_token_id`),
KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokens` (
`token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
`token` text COLLATE utf8mb4_unicode_ci NOT NULL,
`user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
`type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
`is_default` tinyint(1) NOT NULL DEFAULT 0,
PRIMARY KEY (`token_id`),
KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_sessions` (
`session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
`session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
`session_expiry` bigint(20) unsigned NOT NULL,
PRIMARY KEY (`session_id`),
UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES (1,'1','a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:707:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"BR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"BR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"mury_gh@hotmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}',1566937865);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
`location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`zone_id` bigint(20) unsigned NOT NULL,
`location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
`location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
PRIMARY KEY (`location_id`),
KEY `location_id` (`location_id`),
KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
`zone_id` bigint(20) unsigned NOT NULL,
`instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
`method_order` bigint(20) unsigned NOT NULL,
`is_enabled` tinyint(1) NOT NULL DEFAULT 1,
PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zones` (
`zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
`zone_order` bigint(20) unsigned NOT NULL,
PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
`location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
`tax_rate_id` bigint(20) unsigned NOT NULL,
`location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
PRIMARY KEY (`location_id`),
KEY `tax_rate_id` (`tax_rate_id`),
KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rates` (
`tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`tax_rate_priority` bigint(20) unsigned NOT NULL,
`tax_rate_compound` int(1) NOT NULL DEFAULT 0,
`tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
`tax_rate_order` bigint(20) unsigned NOT NULL,
`tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
PRIMARY KEY (`tax_rate_id`),
KEY `tax_rate_country` (`tax_rate_country`),
KEY `tax_rate_state` (`tax_rate_state`(2)),
KEY `tax_rate_class` (`tax_rate_class`(10)),
KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-25 17:56:15
