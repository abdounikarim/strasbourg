# WordPress MySQL database migration
#
# Generated: Sunday 7. January 2018 12:17 UTC
# Hostname: localhost
# Database: `strasbourg`
# URL: //strasbourg.abdounikarim.com
# Path: /var/www/html/strasbourg
# Tables: str_cf_form_entries, str_cf_form_entry_meta, str_cf_form_entry_values, str_cf_forms, str_cf_tracking, str_cf_tracking_meta, str_commentmeta, str_comments, str_duplicator_packages, str_links, str_metaseo_images, str_options, str_postmeta, str_posts, str_supsystic_tbl_columns, str_supsystic_tbl_diagrams, str_supsystic_tbl_rows, str_supsystic_tbl_tables, str_term_relationships, str_term_taxonomy, str_termmeta, str_terms, str_usermeta, str_users, str_wpgmza, str_wpgmza_categories, str_wpgmza_category_maps, str_wpgmza_maps, str_wpgmza_polygon, str_wpgmza_polylines, str_wpms_links
# Table Prefix: str_
# Post Types: revision, attachment, nav_menu_item, page, post
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `str_cf_form_entries`
#

DROP TABLE IF EXISTS `str_cf_form_entries`;


#
# Table structure of table `str_cf_form_entries`
#

CREATE TABLE `str_cf_form_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` varchar(18) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `user_id` (`user_id`),
  KEY `date_time` (`datestamp`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_cf_form_entries`
#
INSERT INTO `str_cf_form_entries` ( `id`, `form_id`, `user_id`, `datestamp`, `status`) VALUES
(1, 'CF5a1be4286d10e', 0, '2017-11-27 10:53:18', 'active') ;

#
# End of data contents of table `str_cf_form_entries`
# --------------------------------------------------------



#
# Delete any existing table `str_cf_form_entry_meta`
#

DROP TABLE IF EXISTS `str_cf_form_entry_meta`;


#
# Table structure of table `str_cf_form_entry_meta`
#

CREATE TABLE `str_cf_form_entry_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `process_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_cf_form_entry_meta`
#

#
# End of data contents of table `str_cf_form_entry_meta`
# --------------------------------------------------------



#
# Delete any existing table `str_cf_form_entry_values`
#

DROP TABLE IF EXISTS `str_cf_form_entry_values`;


#
# Table structure of table `str_cf_form_entry_values`
#

CREATE TABLE `str_cf_form_entry_values` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `field_id` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`entry_id`),
  KEY `field_id` (`field_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_cf_form_entry_values`
#
INSERT INTO `str_cf_form_entry_values` ( `id`, `entry_id`, `field_id`, `slug`, `value`) VALUES
(1, 1, 'fld_9013405', 'votre_nom', 'test'),
(2, 1, 'fld_4462498', 'votre_email', 'abdounikarim@hotmail.fr'),
(3, 1, 'fld_3356865', 'votre_activit_du_mois', 'Illuminations de la Cathédrale'),
(4, 1, 'fld_4191374', 'envoyer', 'click') ;

#
# End of data contents of table `str_cf_form_entry_values`
# --------------------------------------------------------



#
# Delete any existing table `str_cf_forms`
#

DROP TABLE IF EXISTS `str_cf_forms`;


#
# Table structure of table `str_cf_forms`
#

CREATE TABLE `str_cf_forms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` varchar(18) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `config` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_cf_forms`
#
INSERT INTO `str_cf_forms` ( `id`, `form_id`, `type`, `config`) VALUES
(1, 'CF5a1be3140606b', 'revision', 'a:10:{s:2:"ID";s:15:"CF5a1be3140606b";s:4:"name";s:21:"Formulaire de contact";s:11:"description";s:0:"";s:7:"success";s:61:"Le formulaire a été envoyé. Merci pour votre contribution.";s:9:"form_ajax";i:1;s:9:"hide_form";i:1;s:11:"check_honey";i:1;s:10:"db_support";i:1;s:6:"mailer";a:1:{s:9:"on_insert";i:1;}s:8:"template";s:0:"";}'),
(2, 'CF5a1be3140606b', 'primary', 'a:20:{s:13:"_last_updated";s:31:"Mon, 27 Nov 2017 10:07:23 +0000";s:2:"ID";s:15:"CF5a1be3140606b";s:10:"cf_version";s:7:"1.5.7.1";s:4:"name";s:21:"Formulaire de contact";s:10:"scroll_top";i:0;s:7:"success";s:64:"Le formulaire a été envoyé. Merci pour votre contribution.			";s:10:"db_support";i:1;s:6:"pinned";i:0;s:9:"hide_form";i:1;s:11:"check_honey";i:1;s:12:"avatar_field";N;s:9:"form_ajax";i:1;s:15:"custom_callback";s:0:"";s:11:"layout_grid";a:2:{s:6:"fields";a:8:{s:11:"fld_9931154";s:3:"1:1";s:11:"fld_9635422";s:3:"1:1";s:11:"fld_3719568";s:3:"1:1";s:11:"fld_2674869";s:3:"1:1";s:11:"fld_4049194";s:3:"1:1";s:11:"fld_2273844";s:3:"1:1";s:11:"fld_4291573";s:3:"1:1";s:11:"fld_5748248";s:3:"1:1";}s:9:"structure";s:2:"12";}s:6:"fields";a:8:{s:11:"fld_9931154";a:8:{s:2:"ID";s:11:"fld_9931154";s:4:"type";s:4:"text";s:5:"label";s:16:"Titre du message";s:4:"slug";s:16:"titre_du_message";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:5:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"type_override";s:4:"text";s:4:"mask";s:0:"";}}s:11:"fld_9635422";a:8:{s:2:"ID";s:11:"fld_9635422";s:4:"type";s:4:"text";s:5:"label";s:9:"Votre nom";s:4:"slug";s:9:"votre_nom";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:5:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"type_override";s:4:"text";s:4:"mask";s:0:"";}}s:11:"fld_3719568";a:8:{s:2:"ID";s:11:"fld_3719568";s:4:"type";s:11:"date_picker";s:5:"label";s:23:"Votre date de naissance";s:4:"slug";s:23:"votre_date_de_naissance";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:7:{s:12:"custom_class";s:0:"";s:7:"default";s:0:"";s:6:"format";s:10:"dd/mm/yyyy";s:10:"start_view";s:5:"month";s:10:"start_date";s:0:"";s:8:"end_date";s:2:"0d";s:8:"language";s:2:"fr";}}s:11:"fld_2674869";a:8:{s:2:"ID";s:11:"fld_2674869";s:4:"type";s:5:"email";s:5:"label";s:11:"Votre email";s:4:"slug";s:11:"votre_email";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:3:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";}}s:11:"fld_4049194";a:7:{s:2:"ID";s:11:"fld_4049194";s:4:"type";s:8:"checkbox";s:5:"label";s:21:"Résident de la ville";s:4:"slug";s:19:"rsident_de_la_ville";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:11:{s:12:"custom_class";s:0:"";s:14:"default_option";s:0:"";s:9:"auto_type";s:0:"";s:8:"taxonomy";s:8:"category";s:9:"post_type";s:4:"post";s:11:"value_field";s:4:"name";s:11:"orderby_tax";s:5:"count";s:12:"orderby_post";s:2:"ID";s:5:"order";s:3:"ASC";s:7:"default";s:0:"";s:6:"option";a:1:{s:10:"opt1271532";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:3:"Oui";s:5:"label";s:3:"Oui";}}}}s:11:"fld_2273844";a:7:{s:2:"ID";s:11:"fld_2273844";s:4:"type";s:8:"dropdown";s:5:"label";s:12:"Nationalité";s:4:"slug";s:10:"nationalit";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:14:"default_option";s:0:"";s:9:"auto_type";s:0:"";s:8:"taxonomy";s:8:"category";s:9:"post_type";s:4:"post";s:11:"value_field";s:4:"name";s:11:"orderby_tax";s:5:"count";s:12:"orderby_post";s:2:"ID";s:5:"order";s:3:"ASC";s:7:"default";s:0:"";s:6:"option";a:249:{s:9:"opt563240";a:3:{s:10:"calc_value";s:11:"Afghanistan";s:5:"value";s:11:"Afghanistan";s:5:"label";s:11:"Afghanistan";}s:10:"opt1155992";a:3:{s:10:"calc_value";s:14:"Åland Islands";s:5:"value";s:14:"Åland Islands";s:5:"label";s:14:"Åland Islands";}s:10:"opt2662252";a:3:{s:10:"calc_value";s:7:"Albania";s:5:"value";s:7:"Albania";s:5:"label";s:7:"Albania";}s:10:"opt3617445";a:3:{s:10:"calc_value";s:7:"Algeria";s:5:"value";s:7:"Algeria";s:5:"label";s:7:"Algeria";}s:10:"opt4292282";a:3:{s:10:"calc_value";s:14:"American Samoa";s:5:"value";s:14:"American Samoa";s:5:"label";s:14:"American Samoa";}s:10:"opt5670390";a:3:{s:10:"calc_value";s:7:"Andorra";s:5:"value";s:7:"Andorra";s:5:"label";s:7:"Andorra";}s:10:"opt7281592";a:3:{s:10:"calc_value";s:6:"Angola";s:5:"value";s:6:"Angola";s:5:"label";s:6:"Angola";}s:10:"opt7595720";a:3:{s:10:"calc_value";s:8:"Anguilla";s:5:"value";s:8:"Anguilla";s:5:"label";s:8:"Anguilla";}s:10:"opt9282460";a:3:{s:10:"calc_value";s:10:"Antarctica";s:5:"value";s:10:"Antarctica";s:5:"label";s:10:"Antarctica";}s:11:"opt10274332";a:3:{s:10:"calc_value";s:19:"Antigua and Barbuda";s:5:"value";s:19:"Antigua and Barbuda";s:5:"label";s:19:"Antigua and Barbuda";}s:11:"opt11423907";a:3:{s:10:"calc_value";s:9:"Argentina";s:5:"value";s:9:"Argentina";s:5:"label";s:9:"Argentina";}s:11:"opt11945834";a:3:{s:10:"calc_value";s:7:"Armenia";s:5:"value";s:7:"Armenia";s:5:"label";s:7:"Armenia";}s:11:"opt13116760";a:3:{s:10:"calc_value";s:5:"Aruba";s:5:"value";s:5:"Aruba";s:5:"label";s:5:"Aruba";}s:11:"opt14511230";a:3:{s:10:"calc_value";s:9:"Australia";s:5:"value";s:9:"Australia";s:5:"label";s:9:"Australia";}s:11:"opt14798696";a:3:{s:10:"calc_value";s:7:"Austria";s:5:"value";s:7:"Austria";s:5:"label";s:7:"Austria";}s:11:"opt16542194";a:3:{s:10:"calc_value";s:10:"Azerbaijan";s:5:"value";s:10:"Azerbaijan";s:5:"label";s:10:"Azerbaijan";}s:11:"opt17493746";a:3:{s:10:"calc_value";s:7:"Bahamas";s:5:"value";s:7:"Bahamas";s:5:"label";s:7:"Bahamas";}s:11:"opt18449600";a:3:{s:10:"calc_value";s:7:"Bahrain";s:5:"value";s:7:"Bahrain";s:5:"label";s:7:"Bahrain";}s:11:"opt18953272";a:3:{s:10:"calc_value";s:10:"Bangladesh";s:5:"value";s:10:"Bangladesh";s:5:"label";s:10:"Bangladesh";}s:11:"opt20316192";a:3:{s:10:"calc_value";s:8:"Barbados";s:5:"value";s:8:"Barbados";s:5:"label";s:8:"Barbados";}s:11:"opt21864047";a:3:{s:10:"calc_value";s:7:"Belarus";s:5:"value";s:7:"Belarus";s:5:"label";s:7:"Belarus";}s:11:"opt22046318";a:3:{s:10:"calc_value";s:7:"Belgium";s:5:"value";s:7:"Belgium";s:5:"label";s:7:"Belgium";}s:11:"opt23803058";a:3:{s:10:"calc_value";s:6:"Belize";s:5:"value";s:6:"Belize";s:5:"label";s:6:"Belize";}s:11:"opt24426822";a:3:{s:10:"calc_value";s:5:"Benin";s:5:"value";s:5:"Benin";s:5:"label";s:5:"Benin";}s:11:"opt25884807";a:3:{s:10:"calc_value";s:7:"Bermuda";s:5:"value";s:7:"Bermuda";s:5:"label";s:7:"Bermuda";}s:11:"opt26794499";a:3:{s:10:"calc_value";s:6:"Bhutan";s:5:"value";s:6:"Bhutan";s:5:"label";s:6:"Bhutan";}s:11:"opt27327114";a:3:{s:10:"calc_value";s:31:"Bolivia, Plurinational State of";s:5:"value";s:31:"Bolivia, Plurinational State of";s:5:"label";s:31:"Bolivia, Plurinational State of";}s:11:"opt28628513";a:3:{s:10:"calc_value";s:32:"Bonaire, Sint Eustatius and Saba";s:5:"value";s:32:"Bonaire, Sint Eustatius and Saba";s:5:"label";s:32:"Bonaire, Sint Eustatius and Saba";}s:11:"opt29713865";a:3:{s:10:"calc_value";s:22:"Bosnia and Herzegovina";s:5:"value";s:22:"Bosnia and Herzegovina";s:5:"label";s:22:"Bosnia and Herzegovina";}s:11:"opt30940263";a:3:{s:10:"calc_value";s:8:"Botswana";s:5:"value";s:8:"Botswana";s:5:"label";s:8:"Botswana";}s:11:"opt31571268";a:3:{s:10:"calc_value";s:13:"Bouvet Island";s:5:"value";s:13:"Bouvet Island";s:5:"label";s:13:"Bouvet Island";}s:11:"opt33208551";a:3:{s:10:"calc_value";s:6:"Brazil";s:5:"value";s:6:"Brazil";s:5:"label";s:6:"Brazil";}s:11:"opt33685334";a:3:{s:10:"calc_value";s:30:"British Indian Ocean Territory";s:5:"value";s:30:"British Indian Ocean Territory";s:5:"label";s:30:"British Indian Ocean Territory";}s:11:"opt35529848";a:3:{s:10:"calc_value";s:17:"Brunei Darussalam";s:5:"value";s:17:"Brunei Darussalam";s:5:"label";s:17:"Brunei Darussalam";}s:11:"opt35678347";a:3:{s:10:"calc_value";s:8:"Bulgaria";s:5:"value";s:8:"Bulgaria";s:5:"label";s:8:"Bulgaria";}s:11:"opt37096455";a:3:{s:10:"calc_value";s:12:"Burkina Faso";s:5:"value";s:12:"Burkina Faso";s:5:"label";s:12:"Burkina Faso";}s:11:"opt38468195";a:3:{s:10:"calc_value";s:7:"Burundi";s:5:"value";s:7:"Burundi";s:5:"label";s:7:"Burundi";}s:11:"opt38972352";a:3:{s:10:"calc_value";s:8:"Cambodia";s:5:"value";s:8:"Cambodia";s:5:"label";s:8:"Cambodia";}s:11:"opt40786584";a:3:{s:10:"calc_value";s:8:"Cameroon";s:5:"value";s:8:"Cameroon";s:5:"label";s:8:"Cameroon";}s:11:"opt41291317";a:3:{s:10:"calc_value";s:6:"Canada";s:5:"value";s:6:"Canada";s:5:"label";s:6:"Canada";}s:11:"opt42232003";a:3:{s:10:"calc_value";s:10:"Cape Verde";s:5:"value";s:10:"Cape Verde";s:5:"label";s:10:"Cape Verde";}s:11:"opt43689267";a:3:{s:10:"calc_value";s:14:"Cayman Islands";s:5:"value";s:14:"Cayman Islands";s:5:"label";s:14:"Cayman Islands";}s:11:"opt44775421";a:3:{s:10:"calc_value";s:24:"Central African Republic";s:5:"value";s:24:"Central African Republic";s:5:"label";s:24:"Central African Republic";}s:11:"opt45170011";a:3:{s:10:"calc_value";s:4:"Chad";s:5:"value";s:4:"Chad";s:5:"label";s:4:"Chad";}s:11:"opt47148552";a:3:{s:10:"calc_value";s:5:"Chile";s:5:"value";s:5:"Chile";s:5:"label";s:5:"Chile";}s:11:"opt47369429";a:3:{s:10:"calc_value";s:5:"China";s:5:"value";s:5:"China";s:5:"label";s:5:"China";}s:11:"opt49246899";a:3:{s:10:"calc_value";s:16:"Christmas Island";s:5:"value";s:16:"Christmas Island";s:5:"label";s:16:"Christmas Island";}s:11:"opt49781806";a:3:{s:10:"calc_value";s:23:"Cocos (Keeling) Islands";s:5:"value";s:23:"Cocos (Keeling) Islands";s:5:"label";s:23:"Cocos (Keeling) Islands";}s:11:"opt50669974";a:3:{s:10:"calc_value";s:8:"Colombia";s:5:"value";s:8:"Colombia";s:5:"label";s:8:"Colombia";}s:11:"opt52029273";a:3:{s:10:"calc_value";s:7:"Comoros";s:5:"value";s:7:"Comoros";s:5:"label";s:7:"Comoros";}s:11:"opt52496519";a:3:{s:10:"calc_value";s:5:"Congo";s:5:"value";s:5:"Congo";s:5:"label";s:5:"Congo";}s:11:"opt53930764";a:3:{s:10:"calc_value";s:37:"Congo, the Democratic Republic of the";s:5:"value";s:37:"Congo, the Democratic Republic of the";s:5:"label";s:37:"Congo, the Democratic Republic of the";}s:11:"opt55276308";a:3:{s:10:"calc_value";s:12:"Cook Islands";s:5:"value";s:12:"Cook Islands";s:5:"label";s:12:"Cook Islands";}s:11:"opt55827299";a:3:{s:10:"calc_value";s:10:"Costa Rica";s:5:"value";s:10:"Costa Rica";s:5:"label";s:10:"Costa Rica";}s:11:"opt57147833";a:3:{s:10:"calc_value";s:14:"Côte d\'Ivoire";s:5:"value";s:14:"Côte d\'Ivoire";s:5:"label";s:14:"Côte d\'Ivoire";}s:11:"opt57949872";a:3:{s:10:"calc_value";s:7:"Croatia";s:5:"value";s:7:"Croatia";s:5:"label";s:7:"Croatia";}s:11:"opt59608582";a:3:{s:10:"calc_value";s:4:"Cuba";s:5:"value";s:4:"Cuba";s:5:"label";s:4:"Cuba";}s:11:"opt60137869";a:3:{s:10:"calc_value";s:8:"Curaçao";s:5:"value";s:8:"Curaçao";s:5:"label";s:8:"Curaçao";}s:11:"opt61056563";a:3:{s:10:"calc_value";s:6:"Cyprus";s:5:"value";s:6:"Cyprus";s:5:"label";s:6:"Cyprus";}s:11:"opt62404845";a:3:{s:10:"calc_value";s:14:"Czech Republic";s:5:"value";s:14:"Czech Republic";s:5:"label";s:14:"Czech Republic";}s:11:"opt63365630";a:3:{s:10:"calc_value";s:7:"Denmark";s:5:"value";s:7:"Denmark";s:5:"label";s:7:"Denmark";}s:11:"opt64459514";a:3:{s:10:"calc_value";s:8:"Djibouti";s:5:"value";s:8:"Djibouti";s:5:"label";s:8:"Djibouti";}s:11:"opt65357223";a:3:{s:10:"calc_value";s:8:"Dominica";s:5:"value";s:8:"Dominica";s:5:"label";s:8:"Dominica";}s:11:"opt66521837";a:3:{s:10:"calc_value";s:18:"Dominican Republic";s:5:"value";s:18:"Dominican Republic";s:5:"label";s:18:"Dominican Republic";}s:11:"opt67744497";a:3:{s:10:"calc_value";s:7:"Ecuador";s:5:"value";s:7:"Ecuador";s:5:"label";s:7:"Ecuador";}s:11:"opt68166539";a:3:{s:10:"calc_value";s:5:"Egypt";s:5:"value";s:5:"Egypt";s:5:"label";s:5:"Egypt";}s:11:"opt69323564";a:3:{s:10:"calc_value";s:11:"El Salvador";s:5:"value";s:11:"El Salvador";s:5:"label";s:11:"El Salvador";}s:11:"opt70933991";a:3:{s:10:"calc_value";s:17:"Equatorial Guinea";s:5:"value";s:17:"Equatorial Guinea";s:5:"label";s:17:"Equatorial Guinea";}s:11:"opt71958633";a:3:{s:10:"calc_value";s:7:"Eritrea";s:5:"value";s:7:"Eritrea";s:5:"label";s:7:"Eritrea";}s:11:"opt72357950";a:3:{s:10:"calc_value";s:7:"Estonia";s:5:"value";s:7:"Estonia";s:5:"label";s:7:"Estonia";}s:11:"opt73781154";a:3:{s:10:"calc_value";s:8:"Ethiopia";s:5:"value";s:8:"Ethiopia";s:5:"label";s:8:"Ethiopia";}s:11:"opt74629056";a:3:{s:10:"calc_value";s:27:"Falkland Islands (Malvinas)";s:5:"value";s:27:"Falkland Islands (Malvinas)";s:5:"label";s:27:"Falkland Islands (Malvinas)";}s:11:"opt76357151";a:3:{s:10:"calc_value";s:13:"Faroe Islands";s:5:"value";s:13:"Faroe Islands";s:5:"label";s:13:"Faroe Islands";}s:11:"opt76600421";a:3:{s:10:"calc_value";s:4:"Fiji";s:5:"value";s:4:"Fiji";s:5:"label";s:4:"Fiji";}s:11:"opt78190366";a:3:{s:10:"calc_value";s:7:"Finland";s:5:"value";s:7:"Finland";s:5:"label";s:7:"Finland";}s:11:"opt79087339";a:3:{s:10:"calc_value";s:6:"France";s:5:"value";s:6:"France";s:5:"label";s:6:"France";}s:11:"opt80015835";a:3:{s:10:"calc_value";s:13:"French Guiana";s:5:"value";s:13:"French Guiana";s:5:"label";s:13:"French Guiana";}s:11:"opt81461240";a:3:{s:10:"calc_value";s:16:"French Polynesia";s:5:"value";s:16:"French Polynesia";s:5:"label";s:16:"French Polynesia";}s:11:"opt82643120";a:3:{s:10:"calc_value";s:27:"French Southern Territories";s:5:"value";s:27:"French Southern Territories";s:5:"label";s:27:"French Southern Territories";}s:11:"opt82969989";a:3:{s:10:"calc_value";s:5:"Gabon";s:5:"value";s:5:"Gabon";s:5:"label";s:5:"Gabon";}s:11:"opt84667674";a:3:{s:10:"calc_value";s:6:"Gambia";s:5:"value";s:6:"Gambia";s:5:"label";s:6:"Gambia";}s:11:"opt85396591";a:3:{s:10:"calc_value";s:7:"Georgia";s:5:"value";s:7:"Georgia";s:5:"label";s:7:"Georgia";}s:11:"opt86662918";a:3:{s:10:"calc_value";s:7:"Germany";s:5:"value";s:7:"Germany";s:5:"label";s:7:"Germany";}s:11:"opt87454862";a:3:{s:10:"calc_value";s:5:"Ghana";s:5:"value";s:5:"Ghana";s:5:"label";s:5:"Ghana";}s:11:"opt88336821";a:3:{s:10:"calc_value";s:9:"Gibraltar";s:5:"value";s:9:"Gibraltar";s:5:"label";s:9:"Gibraltar";}s:11:"opt89635044";a:3:{s:10:"calc_value";s:6:"Greece";s:5:"value";s:6:"Greece";s:5:"label";s:6:"Greece";}s:11:"opt90298304";a:3:{s:10:"calc_value";s:9:"Greenland";s:5:"value";s:9:"Greenland";s:5:"label";s:9:"Greenland";}s:11:"opt92050263";a:3:{s:10:"calc_value";s:7:"Grenada";s:5:"value";s:7:"Grenada";s:5:"label";s:7:"Grenada";}s:11:"opt92392160";a:3:{s:10:"calc_value";s:10:"Guadeloupe";s:5:"value";s:10:"Guadeloupe";s:5:"label";s:10:"Guadeloupe";}s:11:"opt93790719";a:3:{s:10:"calc_value";s:4:"Guam";s:5:"value";s:4:"Guam";s:5:"label";s:4:"Guam";}s:11:"opt94419994";a:3:{s:10:"calc_value";s:9:"Guatemala";s:5:"value";s:9:"Guatemala";s:5:"label";s:9:"Guatemala";}s:11:"opt96122435";a:3:{s:10:"calc_value";s:8:"Guernsey";s:5:"value";s:8:"Guernsey";s:5:"label";s:8:"Guernsey";}s:11:"opt97201325";a:3:{s:10:"calc_value";s:6:"Guinea";s:5:"value";s:6:"Guinea";s:5:"label";s:6:"Guinea";}s:11:"opt97635000";a:3:{s:10:"calc_value";s:13:"Guinea-Bissau";s:5:"value";s:13:"Guinea-Bissau";s:5:"label";s:13:"Guinea-Bissau";}s:11:"opt98790146";a:3:{s:10:"calc_value";s:6:"Guyana";s:5:"value";s:6:"Guyana";s:5:"label";s:6:"Guyana";}s:12:"opt100424902";a:3:{s:10:"calc_value";s:5:"Haiti";s:5:"value";s:5:"Haiti";s:5:"label";s:5:"Haiti";}s:12:"opt101497321";a:3:{s:10:"calc_value";s:33:"Heard Island and McDonald Islands";s:5:"value";s:33:"Heard Island and McDonald Islands";s:5:"label";s:33:"Heard Island and McDonald Islands";}s:12:"opt102684604";a:3:{s:10:"calc_value";s:29:"Holy See (Vatican City State)";s:5:"value";s:29:"Holy See (Vatican City State)";s:5:"label";s:29:"Holy See (Vatican City State)";}s:12:"opt103419338";a:3:{s:10:"calc_value";s:8:"Honduras";s:5:"value";s:8:"Honduras";s:5:"label";s:8:"Honduras";}s:12:"opt103814339";a:3:{s:10:"calc_value";s:9:"Hong Kong";s:5:"value";s:9:"Hong Kong";s:5:"label";s:9:"Hong Kong";}s:12:"opt105004037";a:3:{s:10:"calc_value";s:7:"Hungary";s:5:"value";s:7:"Hungary";s:5:"label";s:7:"Hungary";}s:12:"opt105918035";a:3:{s:10:"calc_value";s:7:"Iceland";s:5:"value";s:7:"Iceland";s:5:"label";s:7:"Iceland";}s:12:"opt107056305";a:3:{s:10:"calc_value";s:5:"India";s:5:"value";s:5:"India";s:5:"label";s:5:"India";}s:12:"opt108454380";a:3:{s:10:"calc_value";s:9:"Indonesia";s:5:"value";s:9:"Indonesia";s:5:"label";s:9:"Indonesia";}s:12:"opt109553458";a:3:{s:10:"calc_value";s:25:"Iran, Islamic Republic of";s:5:"value";s:25:"Iran, Islamic Republic of";s:5:"label";s:25:"Iran, Islamic Republic of";}s:12:"opt110135457";a:3:{s:10:"calc_value";s:4:"Iraq";s:5:"value";s:4:"Iraq";s:5:"label";s:4:"Iraq";}s:12:"opt112028097";a:3:{s:10:"calc_value";s:7:"Ireland";s:5:"value";s:7:"Ireland";s:5:"label";s:7:"Ireland";}s:12:"opt113027161";a:3:{s:10:"calc_value";s:11:"Isle of Man";s:5:"value";s:11:"Isle of Man";s:5:"label";s:11:"Isle of Man";}s:12:"opt113719766";a:3:{s:10:"calc_value";s:6:"Israel";s:5:"value";s:6:"Israel";s:5:"label";s:6:"Israel";}s:12:"opt114486754";a:3:{s:10:"calc_value";s:5:"Italy";s:5:"value";s:5:"Italy";s:5:"label";s:5:"Italy";}s:12:"opt115444676";a:3:{s:10:"calc_value";s:7:"Jamaica";s:5:"value";s:7:"Jamaica";s:5:"label";s:7:"Jamaica";}s:12:"opt117032793";a:3:{s:10:"calc_value";s:5:"Japan";s:5:"value";s:5:"Japan";s:5:"label";s:5:"Japan";}s:12:"opt118377568";a:3:{s:10:"calc_value";s:6:"Jersey";s:5:"value";s:6:"Jersey";s:5:"label";s:6:"Jersey";}s:12:"opt119241239";a:3:{s:10:"calc_value";s:6:"Jordan";s:5:"value";s:6:"Jordan";s:5:"label";s:6:"Jordan";}s:12:"opt119687308";a:3:{s:10:"calc_value";s:10:"Kazakhstan";s:5:"value";s:10:"Kazakhstan";s:5:"label";s:10:"Kazakhstan";}s:12:"opt121620788";a:3:{s:10:"calc_value";s:5:"Kenya";s:5:"value";s:5:"Kenya";s:5:"label";s:5:"Kenya";}s:12:"opt122561430";a:3:{s:10:"calc_value";s:8:"Kiribati";s:5:"value";s:8:"Kiribati";s:5:"label";s:8:"Kiribati";}s:12:"opt122752054";a:3:{s:10:"calc_value";s:38:"Korea, Democratic People\'s Republic of";s:5:"value";s:38:"Korea, Democratic People\'s Republic of";s:5:"label";s:38:"Korea, Democratic People\'s Republic of";}s:12:"opt124386275";a:3:{s:10:"calc_value";s:18:"Korea, Republic of";s:5:"value";s:18:"Korea, Republic of";s:5:"label";s:18:"Korea, Republic of";}s:12:"opt125107702";a:3:{s:10:"calc_value";s:6:"Kuwait";s:5:"value";s:6:"Kuwait";s:5:"label";s:6:"Kuwait";}s:12:"opt126002050";a:3:{s:10:"calc_value";s:10:"Kyrgyzstan";s:5:"value";s:10:"Kyrgyzstan";s:5:"label";s:10:"Kyrgyzstan";}s:12:"opt127763738";a:3:{s:10:"calc_value";s:32:"Lao People\'s Democratic Republic";s:5:"value";s:32:"Lao People\'s Democratic Republic";s:5:"label";s:32:"Lao People\'s Democratic Republic";}s:12:"opt128724400";a:3:{s:10:"calc_value";s:6:"Latvia";s:5:"value";s:6:"Latvia";s:5:"label";s:6:"Latvia";}s:12:"opt129334909";a:3:{s:10:"calc_value";s:7:"Lebanon";s:5:"value";s:7:"Lebanon";s:5:"label";s:7:"Lebanon";}s:12:"opt130149610";a:3:{s:10:"calc_value";s:7:"Lesotho";s:5:"value";s:7:"Lesotho";s:5:"label";s:7:"Lesotho";}s:12:"opt131072296";a:3:{s:10:"calc_value";s:7:"Liberia";s:5:"value";s:7:"Liberia";s:5:"label";s:7:"Liberia";}s:12:"opt132497073";a:3:{s:10:"calc_value";s:5:"Libya";s:5:"value";s:5:"Libya";s:5:"label";s:5:"Libya";}s:12:"opt133585900";a:3:{s:10:"calc_value";s:13:"Liechtenstein";s:5:"value";s:13:"Liechtenstein";s:5:"label";s:13:"Liechtenstein";}s:12:"opt134792648";a:3:{s:10:"calc_value";s:9:"Lithuania";s:5:"value";s:9:"Lithuania";s:5:"label";s:9:"Lithuania";}s:12:"opt136154551";a:3:{s:10:"calc_value";s:10:"Luxembourg";s:5:"value";s:10:"Luxembourg";s:5:"label";s:10:"Luxembourg";}s:12:"opt137162375";a:3:{s:10:"calc_value";s:5:"Macao";s:5:"value";s:5:"Macao";s:5:"label";s:5:"Macao";}s:12:"opt137772261";a:3:{s:10:"calc_value";s:42:"Macedonia, the former Yugoslav Republic of";s:5:"value";s:42:"Macedonia, the former Yugoslav Republic of";s:5:"label";s:42:"Macedonia, the former Yugoslav Republic of";}s:12:"opt138941392";a:3:{s:10:"calc_value";s:10:"Madagascar";s:5:"value";s:10:"Madagascar";s:5:"label";s:10:"Madagascar";}s:12:"opt140014363";a:3:{s:10:"calc_value";s:6:"Malawi";s:5:"value";s:6:"Malawi";s:5:"label";s:6:"Malawi";}s:12:"opt141404573";a:3:{s:10:"calc_value";s:8:"Malaysia";s:5:"value";s:8:"Malaysia";s:5:"label";s:8:"Malaysia";}s:12:"opt141813447";a:3:{s:10:"calc_value";s:8:"Maldives";s:5:"value";s:8:"Maldives";s:5:"label";s:8:"Maldives";}s:12:"opt143360551";a:3:{s:10:"calc_value";s:4:"Mali";s:5:"value";s:4:"Mali";s:5:"label";s:4:"Mali";}s:12:"opt144618949";a:3:{s:10:"calc_value";s:5:"Malta";s:5:"value";s:5:"Malta";s:5:"label";s:5:"Malta";}s:12:"opt144787918";a:3:{s:10:"calc_value";s:16:"Marshall Islands";s:5:"value";s:16:"Marshall Islands";s:5:"label";s:16:"Marshall Islands";}s:12:"opt146409411";a:3:{s:10:"calc_value";s:10:"Martinique";s:5:"value";s:10:"Martinique";s:5:"label";s:10:"Martinique";}s:12:"opt146953779";a:3:{s:10:"calc_value";s:10:"Mauritania";s:5:"value";s:10:"Mauritania";s:5:"label";s:10:"Mauritania";}s:12:"opt148168453";a:3:{s:10:"calc_value";s:9:"Mauritius";s:5:"value";s:9:"Mauritius";s:5:"label";s:9:"Mauritius";}s:12:"opt149292419";a:3:{s:10:"calc_value";s:7:"Mayotte";s:5:"value";s:7:"Mayotte";s:5:"label";s:7:"Mayotte";}s:12:"opt150780670";a:3:{s:10:"calc_value";s:6:"Mexico";s:5:"value";s:6:"Mexico";s:5:"label";s:6:"Mexico";}s:12:"opt151754965";a:3:{s:10:"calc_value";s:31:"Micronesia, Federated States of";s:5:"value";s:31:"Micronesia, Federated States of";s:5:"label";s:31:"Micronesia, Federated States of";}s:12:"opt152263611";a:3:{s:10:"calc_value";s:20:"Moldova, Republic of";s:5:"value";s:20:"Moldova, Republic of";s:5:"label";s:20:"Moldova, Republic of";}s:12:"opt153251342";a:3:{s:10:"calc_value";s:6:"Monaco";s:5:"value";s:6:"Monaco";s:5:"label";s:6:"Monaco";}s:12:"opt154289224";a:3:{s:10:"calc_value";s:8:"Mongolia";s:5:"value";s:8:"Mongolia";s:5:"label";s:8:"Mongolia";}s:12:"opt155705842";a:3:{s:10:"calc_value";s:10:"Montenegro";s:5:"value";s:10:"Montenegro";s:5:"label";s:10:"Montenegro";}s:12:"opt156974530";a:3:{s:10:"calc_value";s:10:"Montserrat";s:5:"value";s:10:"Montserrat";s:5:"label";s:10:"Montserrat";}s:12:"opt157960419";a:3:{s:10:"calc_value";s:7:"Morocco";s:5:"value";s:7:"Morocco";s:5:"label";s:7:"Morocco";}s:12:"opt159158243";a:3:{s:10:"calc_value";s:10:"Mozambique";s:5:"value";s:10:"Mozambique";s:5:"label";s:10:"Mozambique";}s:12:"opt159472872";a:3:{s:10:"calc_value";s:7:"Myanmar";s:5:"value";s:7:"Myanmar";s:5:"label";s:7:"Myanmar";}s:12:"opt160460855";a:3:{s:10:"calc_value";s:7:"Namibia";s:5:"value";s:7:"Namibia";s:5:"label";s:7:"Namibia";}s:12:"opt162373410";a:3:{s:10:"calc_value";s:5:"Nauru";s:5:"value";s:5:"Nauru";s:5:"label";s:5:"Nauru";}s:12:"opt163427789";a:3:{s:10:"calc_value";s:5:"Nepal";s:5:"value";s:5:"Nepal";s:5:"label";s:5:"Nepal";}s:12:"opt164230326";a:3:{s:10:"calc_value";s:11:"Netherlands";s:5:"value";s:11:"Netherlands";s:5:"label";s:11:"Netherlands";}s:12:"opt165304054";a:3:{s:10:"calc_value";s:13:"New Caledonia";s:5:"value";s:13:"New Caledonia";s:5:"label";s:13:"New Caledonia";}s:12:"opt166127509";a:3:{s:10:"calc_value";s:11:"New Zealand";s:5:"value";s:11:"New Zealand";s:5:"label";s:11:"New Zealand";}s:12:"opt167424869";a:3:{s:10:"calc_value";s:9:"Nicaragua";s:5:"value";s:9:"Nicaragua";s:5:"label";s:9:"Nicaragua";}s:12:"opt168751347";a:3:{s:10:"calc_value";s:5:"Niger";s:5:"value";s:5:"Niger";s:5:"label";s:5:"Niger";}s:12:"opt169227994";a:3:{s:10:"calc_value";s:7:"Nigeria";s:5:"value";s:7:"Nigeria";s:5:"label";s:7:"Nigeria";}s:12:"opt170612662";a:3:{s:10:"calc_value";s:4:"Niue";s:5:"value";s:4:"Niue";s:5:"label";s:4:"Niue";}s:12:"opt171722199";a:3:{s:10:"calc_value";s:14:"Norfolk Island";s:5:"value";s:14:"Norfolk Island";s:5:"label";s:14:"Norfolk Island";}s:12:"opt172883955";a:3:{s:10:"calc_value";s:24:"Northern Mariana Islands";s:5:"value";s:24:"Northern Mariana Islands";s:5:"label";s:24:"Northern Mariana Islands";}s:12:"opt173701479";a:3:{s:10:"calc_value";s:6:"Norway";s:5:"value";s:6:"Norway";s:5:"label";s:6:"Norway";}s:12:"opt174563503";a:3:{s:10:"calc_value";s:4:"Oman";s:5:"value";s:4:"Oman";s:5:"label";s:4:"Oman";}s:12:"opt175972071";a:3:{s:10:"calc_value";s:8:"Pakistan";s:5:"value";s:8:"Pakistan";s:5:"label";s:8:"Pakistan";}s:12:"opt176606959";a:3:{s:10:"calc_value";s:5:"Palau";s:5:"value";s:5:"Palau";s:5:"label";s:5:"Palau";}s:12:"opt177855643";a:3:{s:10:"calc_value";s:31:"Palestinian Territory, Occupied";s:5:"value";s:31:"Palestinian Territory, Occupied";s:5:"label";s:31:"Palestinian Territory, Occupied";}s:12:"opt178677430";a:3:{s:10:"calc_value";s:6:"Panama";s:5:"value";s:6:"Panama";s:5:"label";s:6:"Panama";}s:12:"opt179682044";a:3:{s:10:"calc_value";s:16:"Papua New Guinea";s:5:"value";s:16:"Papua New Guinea";s:5:"label";s:16:"Papua New Guinea";}s:12:"opt181017765";a:3:{s:10:"calc_value";s:8:"Paraguay";s:5:"value";s:8:"Paraguay";s:5:"label";s:8:"Paraguay";}s:12:"opt181495577";a:3:{s:10:"calc_value";s:4:"Peru";s:5:"value";s:4:"Peru";s:5:"label";s:4:"Peru";}s:12:"opt182645499";a:3:{s:10:"calc_value";s:11:"Philippines";s:5:"value";s:11:"Philippines";s:5:"label";s:11:"Philippines";}s:12:"opt184210556";a:3:{s:10:"calc_value";s:8:"Pitcairn";s:5:"value";s:8:"Pitcairn";s:5:"label";s:8:"Pitcairn";}s:12:"opt185076877";a:3:{s:10:"calc_value";s:6:"Poland";s:5:"value";s:6:"Poland";s:5:"label";s:6:"Poland";}s:12:"opt185795054";a:3:{s:10:"calc_value";s:8:"Portugal";s:5:"value";s:8:"Portugal";s:5:"label";s:8:"Portugal";}s:12:"opt186924216";a:3:{s:10:"calc_value";s:11:"Puerto Rico";s:5:"value";s:11:"Puerto Rico";s:5:"label";s:11:"Puerto Rico";}s:12:"opt188117845";a:3:{s:10:"calc_value";s:5:"Qatar";s:5:"value";s:5:"Qatar";s:5:"label";s:5:"Qatar";}s:12:"opt188930036";a:3:{s:10:"calc_value";s:8:"Réunion";s:5:"value";s:8:"Réunion";s:5:"label";s:8:"Réunion";}s:12:"opt189908997";a:3:{s:10:"calc_value";s:7:"Romania";s:5:"value";s:7:"Romania";s:5:"label";s:7:"Romania";}s:12:"opt191055322";a:3:{s:10:"calc_value";s:18:"Russian Federation";s:5:"value";s:18:"Russian Federation";s:5:"label";s:18:"Russian Federation";}s:12:"opt192569748";a:3:{s:10:"calc_value";s:6:"Rwanda";s:5:"value";s:6:"Rwanda";s:5:"label";s:6:"Rwanda";}s:12:"opt193911524";a:3:{s:10:"calc_value";s:17:"Saint Barthélemy";s:5:"value";s:17:"Saint Barthélemy";s:5:"label";s:17:"Saint Barthélemy";}s:12:"opt194037192";a:3:{s:10:"calc_value";s:44:"Saint Helena, Ascension and Tristan da Cunha";s:5:"value";s:44:"Saint Helena, Ascension and Tristan da Cunha";s:5:"label";s:44:"Saint Helena, Ascension and Tristan da Cunha";}s:12:"opt196081353";a:3:{s:10:"calc_value";s:21:"Saint Kitts and Nevis";s:5:"value";s:21:"Saint Kitts and Nevis";s:5:"label";s:21:"Saint Kitts and Nevis";}s:12:"opt196798438";a:3:{s:10:"calc_value";s:11:"Saint Lucia";s:5:"value";s:11:"Saint Lucia";s:5:"label";s:11:"Saint Lucia";}s:12:"opt197234023";a:3:{s:10:"calc_value";s:26:"Saint Martin (French part)";s:5:"value";s:26:"Saint Martin (French part)";s:5:"label";s:26:"Saint Martin (French part)";}s:12:"opt198203930";a:3:{s:10:"calc_value";s:25:"Saint Pierre and Miquelon";s:5:"value";s:25:"Saint Pierre and Miquelon";s:5:"label";s:25:"Saint Pierre and Miquelon";}s:12:"opt200261997";a:3:{s:10:"calc_value";s:32:"Saint Vincent and the Grenadines";s:5:"value";s:32:"Saint Vincent and the Grenadines";s:5:"label";s:32:"Saint Vincent and the Grenadines";}s:12:"opt200901374";a:3:{s:10:"calc_value";s:5:"Samoa";s:5:"value";s:5:"Samoa";s:5:"label";s:5:"Samoa";}s:12:"opt202178279";a:3:{s:10:"calc_value";s:10:"San Marino";s:5:"value";s:10:"San Marino";s:5:"label";s:10:"San Marino";}s:12:"opt202940383";a:3:{s:10:"calc_value";s:21:"Sao Tome and Principe";s:5:"value";s:21:"Sao Tome and Principe";s:5:"label";s:21:"Sao Tome and Principe";}s:12:"opt203726752";a:3:{s:10:"calc_value";s:12:"Saudi Arabia";s:5:"value";s:12:"Saudi Arabia";s:5:"label";s:12:"Saudi Arabia";}s:12:"opt205001886";a:3:{s:10:"calc_value";s:7:"Senegal";s:5:"value";s:7:"Senegal";s:5:"label";s:7:"Senegal";}s:12:"opt206347899";a:3:{s:10:"calc_value";s:6:"Serbia";s:5:"value";s:6:"Serbia";s:5:"label";s:6:"Serbia";}s:12:"opt207135407";a:3:{s:10:"calc_value";s:10:"Seychelles";s:5:"value";s:10:"Seychelles";s:5:"label";s:10:"Seychelles";}s:12:"opt208388753";a:3:{s:10:"calc_value";s:12:"Sierra Leone";s:5:"value";s:12:"Sierra Leone";s:5:"label";s:12:"Sierra Leone";}s:12:"opt209344175";a:3:{s:10:"calc_value";s:9:"Singapore";s:5:"value";s:9:"Singapore";s:5:"label";s:9:"Singapore";}s:12:"opt209766058";a:3:{s:10:"calc_value";s:25:"Sint Maarten (Dutch part)";s:5:"value";s:25:"Sint Maarten (Dutch part)";s:5:"label";s:25:"Sint Maarten (Dutch part)";}s:12:"opt210982575";a:3:{s:10:"calc_value";s:8:"Slovakia";s:5:"value";s:8:"Slovakia";s:5:"label";s:8:"Slovakia";}s:12:"opt212471018";a:3:{s:10:"calc_value";s:8:"Slovenia";s:5:"value";s:8:"Slovenia";s:5:"label";s:8:"Slovenia";}s:12:"opt213327083";a:3:{s:10:"calc_value";s:15:"Solomon Islands";s:5:"value";s:15:"Solomon Islands";s:5:"label";s:15:"Solomon Islands";}s:12:"opt214350096";a:3:{s:10:"calc_value";s:7:"Somalia";s:5:"value";s:7:"Somalia";s:5:"label";s:7:"Somalia";}s:12:"opt215106146";a:3:{s:10:"calc_value";s:12:"South Africa";s:5:"value";s:12:"South Africa";s:5:"label";s:12:"South Africa";}s:12:"opt216153921";a:3:{s:10:"calc_value";s:44:"South Georgia and the South Sandwich Islands";s:5:"value";s:44:"South Georgia and the South Sandwich Islands";s:5:"label";s:44:"South Georgia and the South Sandwich Islands";}s:12:"opt217944389";a:3:{s:10:"calc_value";s:11:"South Sudan";s:5:"value";s:11:"South Sudan";s:5:"label";s:11:"South Sudan";}s:12:"opt218836110";a:3:{s:10:"calc_value";s:5:"Spain";s:5:"value";s:5:"Spain";s:5:"label";s:5:"Spain";}s:12:"opt219890341";a:3:{s:10:"calc_value";s:9:"Sri Lanka";s:5:"value";s:9:"Sri Lanka";s:5:"label";s:9:"Sri Lanka";}s:12:"opt220566548";a:3:{s:10:"calc_value";s:5:"Sudan";s:5:"value";s:5:"Sudan";s:5:"label";s:5:"Sudan";}s:12:"opt221841808";a:3:{s:10:"calc_value";s:8:"Suriname";s:5:"value";s:8:"Suriname";s:5:"label";s:8:"Suriname";}s:12:"opt222808197";a:3:{s:10:"calc_value";s:22:"Svalbard and Jan Mayen";s:5:"value";s:22:"Svalbard and Jan Mayen";s:5:"label";s:22:"Svalbard and Jan Mayen";}s:12:"opt223484469";a:3:{s:10:"calc_value";s:9:"Swaziland";s:5:"value";s:9:"Swaziland";s:5:"label";s:9:"Swaziland";}s:12:"opt225222571";a:3:{s:10:"calc_value";s:6:"Sweden";s:5:"value";s:6:"Sweden";s:5:"label";s:6:"Sweden";}s:12:"opt225765856";a:3:{s:10:"calc_value";s:11:"Switzerland";s:5:"value";s:11:"Switzerland";s:5:"label";s:11:"Switzerland";}s:12:"opt226768244";a:3:{s:10:"calc_value";s:20:"Syrian Arab Republic";s:5:"value";s:20:"Syrian Arab Republic";s:5:"label";s:20:"Syrian Arab Republic";}s:12:"opt227546447";a:3:{s:10:"calc_value";s:25:"Taiwan, Province of China";s:5:"value";s:25:"Taiwan, Province of China";s:5:"label";s:25:"Taiwan, Province of China";}s:12:"opt229094289";a:3:{s:10:"calc_value";s:10:"Tajikistan";s:5:"value";s:10:"Tajikistan";s:5:"label";s:10:"Tajikistan";}s:12:"opt230319313";a:3:{s:10:"calc_value";s:28:"Tanzania, United Republic of";s:5:"value";s:28:"Tanzania, United Republic of";s:5:"label";s:28:"Tanzania, United Republic of";}s:12:"opt231144034";a:3:{s:10:"calc_value";s:8:"Thailand";s:5:"value";s:8:"Thailand";s:5:"label";s:8:"Thailand";}s:12:"opt232195383";a:3:{s:10:"calc_value";s:11:"Timor-Leste";s:5:"value";s:11:"Timor-Leste";s:5:"label";s:11:"Timor-Leste";}s:12:"opt233464664";a:3:{s:10:"calc_value";s:4:"Togo";s:5:"value";s:4:"Togo";s:5:"label";s:4:"Togo";}s:12:"opt233941749";a:3:{s:10:"calc_value";s:7:"Tokelau";s:5:"value";s:7:"Tokelau";s:5:"label";s:7:"Tokelau";}s:12:"opt234977024";a:3:{s:10:"calc_value";s:5:"Tonga";s:5:"value";s:5:"Tonga";s:5:"label";s:5:"Tonga";}s:12:"opt236361512";a:3:{s:10:"calc_value";s:19:"Trinidad and Tobago";s:5:"value";s:19:"Trinidad and Tobago";s:5:"label";s:19:"Trinidad and Tobago";}s:12:"opt237881226";a:3:{s:10:"calc_value";s:7:"Tunisia";s:5:"value";s:7:"Tunisia";s:5:"label";s:7:"Tunisia";}s:12:"opt238677026";a:3:{s:10:"calc_value";s:6:"Turkey";s:5:"value";s:6:"Turkey";s:5:"label";s:6:"Turkey";}s:12:"opt240049829";a:3:{s:10:"calc_value";s:12:"Turkmenistan";s:5:"value";s:12:"Turkmenistan";s:5:"label";s:12:"Turkmenistan";}s:12:"opt240217166";a:3:{s:10:"calc_value";s:24:"Turks and Caicos Islands";s:5:"value";s:24:"Turks and Caicos Islands";s:5:"label";s:24:"Turks and Caicos Islands";}s:12:"opt241666583";a:3:{s:10:"calc_value";s:6:"Tuvalu";s:5:"value";s:6:"Tuvalu";s:5:"label";s:6:"Tuvalu";}s:12:"opt243063554";a:3:{s:10:"calc_value";s:6:"Uganda";s:5:"value";s:6:"Uganda";s:5:"label";s:6:"Uganda";}s:12:"opt243455452";a:3:{s:10:"calc_value";s:7:"Ukraine";s:5:"value";s:7:"Ukraine";s:5:"label";s:7:"Ukraine";}s:12:"opt245160347";a:3:{s:10:"calc_value";s:20:"United Arab Emirates";s:5:"value";s:20:"United Arab Emirates";s:5:"label";s:20:"United Arab Emirates";}s:12:"opt245914345";a:3:{s:10:"calc_value";s:14:"United Kingdom";s:5:"value";s:14:"United Kingdom";s:5:"label";s:14:"United Kingdom";}s:12:"opt246620725";a:3:{s:10:"calc_value";s:13:"United States";s:5:"value";s:13:"United States";s:5:"label";s:13:"United States";}s:12:"opt248492352";a:3:{s:10:"calc_value";s:36:"United States Minor Outlying Islands";s:5:"value";s:36:"United States Minor Outlying Islands";s:5:"label";s:36:"United States Minor Outlying Islands";}s:12:"opt249207412";a:3:{s:10:"calc_value";s:7:"Uruguay";s:5:"value";s:7:"Uruguay";s:5:"label";s:7:"Uruguay";}s:12:"opt249765311";a:3:{s:10:"calc_value";s:10:"Uzbekistan";s:5:"value";s:10:"Uzbekistan";s:5:"label";s:10:"Uzbekistan";}s:12:"opt251600246";a:3:{s:10:"calc_value";s:7:"Vanuatu";s:5:"value";s:7:"Vanuatu";s:5:"label";s:7:"Vanuatu";}s:12:"opt251960274";a:3:{s:10:"calc_value";s:33:"Venezuela, Bolivarian Republic of";s:5:"value";s:33:"Venezuela, Bolivarian Republic of";s:5:"label";s:33:"Venezuela, Bolivarian Republic of";}s:12:"opt253623980";a:3:{s:10:"calc_value";s:8:"Viet Nam";s:5:"value";s:8:"Viet Nam";s:5:"label";s:8:"Viet Nam";}s:12:"opt254206978";a:3:{s:10:"calc_value";s:23:"Virgin Islands, British";s:5:"value";s:23:"Virgin Islands, British";s:5:"label";s:23:"Virgin Islands, British";}s:12:"opt255658428";a:3:{s:10:"calc_value";s:20:"Virgin Islands, U.S.";s:5:"value";s:20:"Virgin Islands, U.S.";s:5:"label";s:20:"Virgin Islands, U.S.";}s:12:"opt256276375";a:3:{s:10:"calc_value";s:17:"Wallis and Futuna";s:5:"value";s:17:"Wallis and Futuna";s:5:"label";s:17:"Wallis and Futuna";}s:12:"opt257858163";a:3:{s:10:"calc_value";s:14:"Western Sahara";s:5:"value";s:14:"Western Sahara";s:5:"label";s:14:"Western Sahara";}s:12:"opt257987175";a:3:{s:10:"calc_value";s:5:"Yemen";s:5:"value";s:5:"Yemen";s:5:"label";s:5:"Yemen";}s:12:"opt259003842";a:3:{s:10:"calc_value";s:6:"Zambia";s:5:"value";s:6:"Zambia";s:5:"label";s:6:"Zambia";}s:12:"opt260305608";a:3:{s:10:"calc_value";s:8:"Zimbabwe";s:5:"value";s:8:"Zimbabwe";s:5:"label";s:8:"Zimbabwe";}}}}s:11:"fld_4291573";a:8:{s:2:"ID";s:11:"fld_4291573";s:4:"type";s:9:"paragraph";s:5:"label";s:7:"Message";s:4:"slug";s:7:"message";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:4:"rows";i:4;s:7:"default";s:0:"";}}s:11:"fld_5748248";a:7:{s:2:"ID";s:11:"fld_5748248";s:4:"type";s:6:"button";s:5:"label";s:7:"Envoyer";s:4:"slug";s:7:"envoyer";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:4:"type";s:6:"submit";s:5:"class";s:15:"btn btn-default";s:6:"target";s:0:"";}}}s:10:"page_names";a:1:{i:0;s:6:"Page 1";}s:6:"mailer";a:9:{s:9:"on_insert";i:1;s:11:"sender_name";s:29:"Notification de Caldera Forms";s:12:"sender_email";s:22:"abdounikarim@gmail.com";s:8:"reply_to";s:0:"";s:10:"email_type";s:4:"html";s:10:"recipients";s:0:"";s:6:"bcc_to";s:0:"";s:13:"email_subject";s:21:"Formulaire de contact";s:13:"email_message";s:9:"{summary}";}s:18:"conditional_groups";a:1:{s:6:"fields";a:0:{}}s:8:"settings";a:1:{s:10:"responsive";a:1:{s:11:"break_point";s:2:"sm";}}s:7:"version";s:7:"1.5.7.1";}'),
(3, 'CF5a1be4286d10e', 'revision', 'a:10:{s:2:"ID";s:15:"CF5a1be4286d10e";s:4:"name";s:24:"Formulaire d\'inscription";s:11:"description";s:0:"";s:7:"success";s:61:"Le formulaire a été envoyé. Merci pour votre contribution.";s:9:"form_ajax";i:1;s:9:"hide_form";i:1;s:11:"check_honey";i:1;s:10:"db_support";i:1;s:6:"mailer";a:1:{s:9:"on_insert";i:1;}s:8:"template";s:0:"";}'),
(4, 'CF5a1be4286d10e', 'revision', 'a:20:{s:13:"_last_updated";s:31:"Mon, 27 Nov 2017 10:12:00 +0000";s:2:"ID";s:15:"CF5a1be4286d10e";s:10:"cf_version";s:7:"1.5.7.1";s:4:"name";s:24:"Formulaire d\'inscription";s:10:"scroll_top";i:0;s:7:"success";s:64:"Le formulaire a été envoyé. Merci pour votre contribution.			";s:10:"db_support";i:1;s:6:"pinned";i:0;s:9:"hide_form";i:1;s:11:"check_honey";i:1;s:12:"avatar_field";N;s:9:"form_ajax";i:1;s:15:"custom_callback";s:0:"";s:11:"layout_grid";a:2:{s:6:"fields";a:4:{s:11:"fld_9013405";s:3:"1:1";s:11:"fld_4462498";s:3:"1:1";s:11:"fld_3356865";s:3:"1:1";s:11:"fld_4191374";s:3:"1:1";}s:9:"structure";s:2:"12";}s:6:"fields";a:4:{s:11:"fld_9013405";a:8:{s:2:"ID";s:11:"fld_9013405";s:4:"type";s:4:"text";s:5:"label";s:9:"Votre nom";s:4:"slug";s:9:"votre_nom";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:5:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"type_override";s:4:"text";s:4:"mask";s:0:"";}}s:11:"fld_4462498";a:8:{s:2:"ID";s:11:"fld_4462498";s:4:"type";s:5:"email";s:5:"label";s:11:"Votre email";s:4:"slug";s:11:"votre_email";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:3:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";}}s:11:"fld_3356865";a:7:{s:2:"ID";s:11:"fld_3356865";s:4:"type";s:8:"dropdown";s:5:"label";s:23:"Votre activité du mois";s:4:"slug";s:21:"votre_activit_du_mois";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:14:"default_option";s:0:"";s:9:"auto_type";s:0:"";s:8:"taxonomy";s:8:"category";s:9:"post_type";s:4:"post";s:11:"value_field";s:4:"name";s:11:"orderby_tax";s:5:"count";s:12:"orderby_post";s:2:"ID";s:5:"order";s:3:"ASC";s:7:"default";s:0:"";s:6:"option";a:10:{s:10:"opt1473629";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:31:"Illuminations de la Cathédrale";s:5:"label";s:31:"Illuminations de la Cathédrale";}s:10:"opt1516454";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:31:"Illuminations de la Cathédrale";s:5:"label";s:31:"Illuminations de la Cathédrale";}s:10:"opt1096911";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:32:"Une forêt en bois... Construire";s:5:"label";s:32:"Une forêt en bois... Construire";}s:10:"opt1331378";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:35:"Le Vent de la Réforme. Luther 1517";s:5:"label";s:35:"Le Vent de la Réforme. Luther 1517";}s:10:"opt1594233";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:18:"Brocante de l\'Etal";s:5:"label";s:18:"Brocante de l\'Etal";}s:10:"opt1199416";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:15:"La femme Oiseau";s:5:"label";s:15:"La femme Oiseau";}s:10:"opt1429281";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:14:"Surprise Party";s:5:"label";s:14:"Surprise Party";}s:10:"opt1984821";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:8:"Odrylane";s:5:"label";s:8:"Odrylane";}s:10:"opt1231871";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:29:"Visites du quartier européen";s:5:"label";s:29:"Visites du quartier européen";}s:10:"opt1999051";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:18:"Fête de la bière";s:5:"label";s:18:"Fête de la bière";}}}}s:11:"fld_4191374";a:7:{s:2:"ID";s:11:"fld_4191374";s:4:"type";s:6:"button";s:5:"label";s:7:"Envoyer";s:4:"slug";s:7:"envoyer";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:4:"type";s:6:"submit";s:5:"class";s:15:"btn btn-default";s:6:"target";s:0:"";}}}s:10:"page_names";a:1:{i:0;s:6:"Page 1";}s:6:"mailer";a:9:{s:9:"on_insert";i:1;s:11:"sender_name";s:29:"Notification de Caldera Forms";s:12:"sender_email";s:22:"abdounikarim@gmail.com";s:8:"reply_to";s:0:"";s:10:"email_type";s:4:"html";s:10:"recipients";s:0:"";s:6:"bcc_to";s:0:"";s:13:"email_subject";s:24:"Formulaire d\'inscription";s:13:"email_message";s:9:"{summary}";}s:18:"conditional_groups";a:1:{s:6:"fields";a:0:{}}s:8:"settings";a:1:{s:10:"responsive";a:1:{s:11:"break_point";s:2:"sm";}}s:7:"version";s:7:"1.5.7.1";}'),
(5, 'CF5a1be4286d10e', 'revision', 'a:20:{s:13:"_last_updated";s:31:"Mon, 27 Nov 2017 10:12:08 +0000";s:2:"ID";s:15:"CF5a1be4286d10e";s:10:"cf_version";s:7:"1.5.7.1";s:4:"name";s:24:"Formulaire d\'inscription";s:10:"scroll_top";i:0;s:7:"success";s:64:"Le formulaire a été envoyé. Merci pour votre contribution.			";s:10:"db_support";i:1;s:6:"pinned";i:0;s:9:"hide_form";i:1;s:11:"check_honey";i:1;s:12:"avatar_field";N;s:9:"form_ajax";i:1;s:15:"custom_callback";s:0:"";s:11:"layout_grid";a:2:{s:6:"fields";a:4:{s:11:"fld_9013405";s:3:"1:1";s:11:"fld_4462498";s:3:"1:1";s:11:"fld_3356865";s:3:"1:1";s:11:"fld_4191374";s:3:"1:1";}s:9:"structure";s:2:"12";}s:6:"fields";a:4:{s:11:"fld_9013405";a:8:{s:2:"ID";s:11:"fld_9013405";s:4:"type";s:4:"text";s:5:"label";s:9:"Votre nom";s:4:"slug";s:9:"votre_nom";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:5:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"type_override";s:4:"text";s:4:"mask";s:0:"";}}s:11:"fld_4462498";a:8:{s:2:"ID";s:11:"fld_4462498";s:4:"type";s:5:"email";s:5:"label";s:11:"Votre email";s:4:"slug";s:11:"votre_email";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:3:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";}}s:11:"fld_3356865";a:8:{s:2:"ID";s:11:"fld_3356865";s:4:"type";s:8:"dropdown";s:5:"label";s:23:"Votre activité du mois";s:4:"slug";s:21:"votre_activit_du_mois";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:14:"default_option";s:0:"";s:9:"auto_type";s:0:"";s:8:"taxonomy";s:8:"category";s:9:"post_type";s:4:"post";s:11:"value_field";s:4:"name";s:11:"orderby_tax";s:5:"count";s:12:"orderby_post";s:2:"ID";s:5:"order";s:3:"ASC";s:7:"default";s:0:"";s:6:"option";a:10:{s:10:"opt1473629";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:31:"Illuminations de la Cathédrale";s:5:"label";s:31:"Illuminations de la Cathédrale";}s:10:"opt1516454";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:31:"Illuminations de la Cathédrale";s:5:"label";s:31:"Illuminations de la Cathédrale";}s:10:"opt1096911";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:32:"Une forêt en bois... Construire";s:5:"label";s:32:"Une forêt en bois... Construire";}s:10:"opt1331378";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:35:"Le Vent de la Réforme. Luther 1517";s:5:"label";s:35:"Le Vent de la Réforme. Luther 1517";}s:10:"opt1594233";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:18:"Brocante de l\'Etal";s:5:"label";s:18:"Brocante de l\'Etal";}s:10:"opt1199416";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:15:"La femme Oiseau";s:5:"label";s:15:"La femme Oiseau";}s:10:"opt1429281";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:14:"Surprise Party";s:5:"label";s:14:"Surprise Party";}s:10:"opt1984821";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:8:"Odrylane";s:5:"label";s:8:"Odrylane";}s:10:"opt1231871";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:29:"Visites du quartier européen";s:5:"label";s:29:"Visites du quartier européen";}s:10:"opt1999051";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:18:"Fête de la bière";s:5:"label";s:18:"Fête de la bière";}}}}s:11:"fld_4191374";a:7:{s:2:"ID";s:11:"fld_4191374";s:4:"type";s:6:"button";s:5:"label";s:7:"Envoyer";s:4:"slug";s:7:"envoyer";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:4:"type";s:6:"submit";s:5:"class";s:15:"btn btn-default";s:6:"target";s:0:"";}}}s:10:"page_names";a:1:{i:0;s:6:"Page 1";}s:6:"mailer";a:9:{s:9:"on_insert";i:1;s:11:"sender_name";s:29:"Notification de Caldera Forms";s:12:"sender_email";s:22:"abdounikarim@gmail.com";s:8:"reply_to";s:0:"";s:10:"email_type";s:4:"html";s:10:"recipients";s:0:"";s:6:"bcc_to";s:0:"";s:13:"email_subject";s:24:"Formulaire d\'inscription";s:13:"email_message";s:9:"{summary}";}s:18:"conditional_groups";a:1:{s:6:"fields";a:0:{}}s:8:"settings";a:1:{s:10:"responsive";a:1:{s:11:"break_point";s:2:"sm";}}s:7:"version";s:7:"1.5.7.1";}'),
(6, 'CF5a1be4286d10e', 'primary', 'a:20:{s:13:"_last_updated";s:31:"Mon, 27 Nov 2017 10:13:24 +0000";s:2:"ID";s:15:"CF5a1be4286d10e";s:10:"cf_version";s:7:"1.5.7.1";s:4:"name";s:24:"Formulaire d\'inscription";s:10:"scroll_top";i:0;s:7:"success";s:67:"Le formulaire a été envoyé. Merci pour votre contribution.						";s:10:"db_support";i:1;s:6:"pinned";i:0;s:9:"hide_form";i:1;s:11:"check_honey";i:1;s:12:"avatar_field";N;s:9:"form_ajax";i:1;s:15:"custom_callback";s:0:"";s:11:"layout_grid";a:2:{s:6:"fields";a:4:{s:11:"fld_9013405";s:3:"1:1";s:11:"fld_4462498";s:3:"1:1";s:11:"fld_3356865";s:3:"1:1";s:11:"fld_4191374";s:3:"1:1";}s:9:"structure";s:2:"12";}s:6:"fields";a:4:{s:11:"fld_9013405";a:8:{s:2:"ID";s:11:"fld_9013405";s:4:"type";s:4:"text";s:5:"label";s:9:"Votre nom";s:4:"slug";s:9:"votre_nom";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:5:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"type_override";s:4:"text";s:4:"mask";s:0:"";}}s:11:"fld_4462498";a:8:{s:2:"ID";s:11:"fld_4462498";s:4:"type";s:5:"email";s:5:"label";s:11:"Votre email";s:4:"slug";s:11:"votre_email";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:3:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";}}s:11:"fld_3356865";a:8:{s:2:"ID";s:11:"fld_3356865";s:4:"type";s:8:"dropdown";s:5:"label";s:23:"Votre activité du mois";s:4:"slug";s:21:"votre_activit_du_mois";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:14:"default_option";s:0:"";s:9:"auto_type";s:0:"";s:8:"taxonomy";s:8:"category";s:9:"post_type";s:4:"post";s:11:"value_field";s:4:"name";s:11:"orderby_tax";s:4:"name";s:12:"orderby_post";s:4:"name";s:5:"order";s:3:"ASC";s:7:"default";s:0:"";s:6:"option";a:10:{s:10:"opt1473629";a:3:{s:10:"calc_value";s:31:"Illuminations de la Cathédrale";s:5:"value";s:31:"Illuminations de la Cathédrale";s:5:"label";s:31:"Illuminations de la Cathédrale";}s:10:"opt1516454";a:3:{s:10:"calc_value";s:31:"Illuminations de la Cathédrale";s:5:"value";s:36:"Arrested Development + DJ Stan Smith";s:5:"label";s:36:"Arrested Development + DJ Stan Smith";}s:10:"opt1096911";a:3:{s:10:"calc_value";s:32:"Une forêt en bois... Construire";s:5:"value";s:32:"Une forêt en bois... Construire";s:5:"label";s:32:"Une forêt en bois... Construire";}s:10:"opt1331378";a:3:{s:10:"calc_value";s:35:"Le Vent de la Réforme. Luther 1517";s:5:"value";s:35:"Le Vent de la Réforme. Luther 1517";s:5:"label";s:35:"Le Vent de la Réforme. Luther 1517";}s:10:"opt1594233";a:3:{s:10:"calc_value";s:18:"Brocante de l\'Etal";s:5:"value";s:18:"Brocante de l\'Etal";s:5:"label";s:18:"Brocante de l\'Etal";}s:10:"opt1199416";a:3:{s:10:"calc_value";s:15:"La femme Oiseau";s:5:"value";s:15:"La femme Oiseau";s:5:"label";s:15:"La femme Oiseau";}s:10:"opt1429281";a:3:{s:10:"calc_value";s:14:"Surprise Party";s:5:"value";s:14:"Surprise Party";s:5:"label";s:14:"Surprise Party";}s:10:"opt1984821";a:3:{s:10:"calc_value";s:8:"Odrylane";s:5:"value";s:8:"Odrylane";s:5:"label";s:8:"Odrylane";}s:10:"opt1231871";a:3:{s:10:"calc_value";s:29:"Visites du quartier européen";s:5:"value";s:29:"Visites du quartier européen";s:5:"label";s:29:"Visites du quartier européen";}s:10:"opt1999051";a:3:{s:10:"calc_value";s:18:"Fête de la bière";s:5:"value";s:18:"Fête de la bière";s:5:"label";s:18:"Fête de la bière";}}}}s:11:"fld_4191374";a:7:{s:2:"ID";s:11:"fld_4191374";s:4:"type";s:6:"button";s:5:"label";s:7:"Envoyer";s:4:"slug";s:7:"envoyer";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:4:"type";s:6:"submit";s:5:"class";s:15:"btn btn-default";s:6:"target";s:0:"";}}}s:10:"page_names";a:1:{i:0;s:6:"Page 1";}s:6:"mailer";a:9:{s:9:"on_insert";i:1;s:11:"sender_name";s:29:"Notification de Caldera Forms";s:12:"sender_email";s:22:"abdounikarim@gmail.com";s:8:"reply_to";s:0:"";s:10:"email_type";s:4:"html";s:10:"recipients";s:0:"";s:6:"bcc_to";s:0:"";s:13:"email_subject";s:24:"Formulaire d\'inscription";s:13:"email_message";s:9:"{summary}";}s:18:"conditional_groups";a:0:{}s:8:"settings";a:1:{s:10:"responsive";a:1:{s:11:"break_point";s:2:"sm";}}s:7:"version";s:7:"1.5.7.1";}') ;

#
# End of data contents of table `str_cf_forms`
# --------------------------------------------------------



#
# Delete any existing table `str_cf_tracking`
#

DROP TABLE IF EXISTS `str_cf_tracking`;


#
# Table structure of table `str_cf_tracking`
#

CREATE TABLE `str_cf_tracking` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `process_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_cf_tracking`
#

#
# End of data contents of table `str_cf_tracking`
# --------------------------------------------------------



#
# Delete any existing table `str_cf_tracking_meta`
#

DROP TABLE IF EXISTS `str_cf_tracking_meta`;


#
# Table structure of table `str_cf_tracking_meta`
#

CREATE TABLE `str_cf_tracking_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_cf_tracking_meta`
#

#
# End of data contents of table `str_cf_tracking_meta`
# --------------------------------------------------------



#
# Delete any existing table `str_commentmeta`
#

DROP TABLE IF EXISTS `str_commentmeta`;


#
# Table structure of table `str_commentmeta`
#

CREATE TABLE `str_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_commentmeta`
#

#
# End of data contents of table `str_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `str_comments`
#

DROP TABLE IF EXISTS `str_comments`;


#
# Table structure of table `str_comments`
#

CREATE TABLE `str_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_comments`
#

#
# End of data contents of table `str_comments`
# --------------------------------------------------------



#
# Delete any existing table `str_duplicator_packages`
#

DROP TABLE IF EXISTS `str_duplicator_packages`;


#
# Table structure of table `str_duplicator_packages`
#

CREATE TABLE `str_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `str_duplicator_packages`
#
INSERT INTO `str_duplicator_packages` ( `id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20171127_strasbourg', 'c23e2000465aa8494413171127102836', 100, '2017-11-27 10:28:41', 'strasbourg_admin', 'O:11:"DUP_Package":23:{s:7:"Created";s:19:"2017-11-27 10:28:36";s:7:"Version";s:6:"1.2.30";s:9:"VersionWP";s:3:"4.9";s:9:"VersionDB";s:6:"5.6.35";s:10:"VersionPHP";s:5:"7.1.8";s:9:"VersionOS";s:6:"Darwin";s:2:"ID";i:1;s:4:"Name";s:19:"20171127_strasbourg";s:4:"Hash";s:32:"c23e2000465aa8494413171127102836";s:8:"NameHash";s:52:"20171127_strasbourg_c23e2000465aa8494413171127102836";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:46:"/Users/casrime/Web/strasbourg/wp-snapshots/tmp";s:8:"StoreURL";s:31:"http://strasbourg.abdounikarim.com/wp-snapshots/";s:8:"ScanFile";s:62:"20171127_strasbourg_c23e2000465aa8494413171127102836_scan.json";s:7:"Runtime";s:10:"14.07 sec.";s:7:"ExeSize";s:7:"443.3KB";s:7:"ZipSize";s:7:"32.97MB";s:6:"Status";N;s:6:"WPUser";s:16:"strasbourg_admin";s:7:"Archive";O:11:"DUP_Archive":18:{s:10:"FilterDirs";s:0:"";s:11:"FilterFiles";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:14:"FilterFilesAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:12:"ExportOnlyDB";i:0;s:4:"File";s:64:"20171127_strasbourg_c23e2000465aa8494413171127102836_archive.zip";s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:29:"/Users/casrime/Web/strasbourg";s:4:"Size";i:34567411;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":8:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;s:8:"TreeSize";a:0:{}s:11:"TreeWarning";a:0:{}}s:10:"\0*\0Package";r:1;s:29:"\0DUP_Archive\0tmpFilterDirsAll";a:0:{}s:24:"\0DUP_Archive\0wpCorePaths";a:6:{i:0;s:38:"/Users/casrime/Web/strasbourg/wp-admin";i:1;s:48:"/Users/casrime/Web/strasbourg/wp-content/uploads";i:2;s:50:"/Users/casrime/Web/strasbourg/wp-content/languages";i:3;s:48:"/Users/casrime/Web/strasbourg/wp-content/plugins";i:4;s:47:"/Users/casrime/Web/strasbourg/wp-content/themes";i:5;s:41:"/Users/casrime/Web/strasbourg/wp-includes";}}s:9:"Installer";O:13:"DUP_Installer":7:{s:4:"File";s:66:"20171127_strasbourg_c23e2000465aa8494413171127102836_installer.php";s:4:"Size";i:453938;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:10:"\0*\0Package";r:1;}s:8:"Database";O:12:"DUP_Database":13:{s:4:"Type";s:5:"MySQL";s:4:"Size";i:555857;s:4:"File";s:65:"20171127_strasbourg_c23e2000465aa8494413171127102836_database.sql";s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:8:"Comments";s:28:"MySQL Community Server (GPL)";s:10:"\0*\0Package";r:1;s:25:"\0DUP_Database\0dbStorePath";s:112:"/Users/casrime/Web/strasbourg/wp-snapshots/tmp/20171127_strasbourg_c23e2000465aa8494413171127102836_database.sql";s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}') ;

#
# End of data contents of table `str_duplicator_packages`
# --------------------------------------------------------



#
# Delete any existing table `str_links`
#

DROP TABLE IF EXISTS `str_links`;


#
# Table structure of table `str_links`
#

CREATE TABLE `str_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_links`
#

#
# End of data contents of table `str_links`
# --------------------------------------------------------



#
# Delete any existing table `str_metaseo_images`
#

DROP TABLE IF EXISTS `str_metaseo_images`;


#
# Table structure of table `str_metaseo_images`
#

CREATE TABLE `str_metaseo_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `posts_optimized_id` text COLLATE utf8_unicode_ci NOT NULL,
  `posts_need_to_optimize_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `posts_prepare_to_optimize` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `legend` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `str_metaseo_images`
#

#
# End of data contents of table `str_metaseo_images`
# --------------------------------------------------------



#
# Delete any existing table `str_options`
#

DROP TABLE IF EXISTS `str_options`;


#
# Table structure of table `str_options`
#

CREATE TABLE `str_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_options`
#
INSERT INTO `str_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://strasbourg.abdounikarim.com', 'yes'),
(2, 'home', 'http://strasbourg.abdounikarim.com', 'yes'),
(3, 'blogname', 'Strasbourg', 'yes'),
(4, 'blogdescription', 'Office de tourisme', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'abdounikarim@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '6', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:93:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:25:"^cf-api/([^/]*)/([^/]*)/?";s:49:"index.php?cf_api=$matches[1]&cf_entry=$matches[2]";s:17:"^cf-api/([^/]*)/?";s:28:"index.php?cf_api=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=22&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:35:"awesome-weather/awesome-weather.php";i:1;s:30:"caldera-forms/caldera-core.php";i:2;s:31:"cookie-notice/cookie-notice.php";i:3;s:44:"data-tables-generator-by-supsystic/index.php";i:4;s:25:"duplicator/duplicator.php";i:5;s:25:"menu-icons/menu-icons.php";i:6;s:60:"quick-pagepost-redirect-plugin/page_post_redirect_plugin.php";i:7;s:75:"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php";i:8;s:31:"wp-google-maps/wpGoogleMaps.php";i:9;s:27:"wp-meta-seo/wp-meta-seo.php";i:10;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'consulting', 'yes'),
(41, 'stylesheet', 'consulting-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '22', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '38', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'str_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:9:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:9:"footer-w1";a:1:{i:0;s:37:"recent-posts-widget-with-thumbnails-3";}s:9:"footer-w2";a:1:{i:0;s:13:"custom_html-2";}s:9:"footer-w3";a:0:{}s:9:"footer-w4";a:0:{}s:9:"footer-w5";a:0:{}s:9:"footer-w6";a:0:{}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `str_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:"title";s:21:"Météo à Strasbourg";s:7:"content";s:75:"[awesome-weather location="Strasbourg" units="C" custom_bg_color="#4498e7"]";}s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1515356347;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1515399594;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1515400856;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1515401681;a:1:{s:32:"caldera_forms_tracking_send_rows";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1511770858;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(133, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'Consulting Child', 'yes'),
(141, 'theme_mods_consulting-child', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header_menu";i:3;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:4;}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(143, 'consulting_thinkup_migrate_introstyle', '1', 'yes'),
(146, 'consulting_thinkup_notice_welcome', '1', 'yes'),
(162, 'consulting_thinkup_redux_variables', 'a:24:{s:29:"thinkup_homepage_sliderswitch";s:7:"option4";s:35:"thinkup_homepage_sliderimage1_image";a:1:{s:3:"url";s:77:"http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg1.jpg";}s:35:"thinkup_homepage_sliderimage1_title";s:0:"";s:34:"thinkup_homepage_sliderimage1_desc";s:0:"";s:34:"thinkup_homepage_sliderimage1_link";s:0:"";s:30:"thinkup_homepage_section1_icon";s:17:"fa fa-newspaper-o";s:31:"thinkup_homepage_section1_title";s:11:"Actualités";s:30:"thinkup_homepage_section1_desc";s:39:"Les dernières nouvelles de votre ville";s:30:"thinkup_homepage_section2_icon";s:10:"fa fa-info";s:31:"thinkup_homepage_section2_title";s:12:"Plus d\'infos";s:30:"thinkup_homepage_section2_desc";s:49:"En savoir plus sur la ville et ses spécificités";s:30:"thinkup_homepage_section3_icon";s:14:"fa fa-list-alt";s:31:"thinkup_homepage_section3_title";s:18:"Activités du mois";s:30:"thinkup_homepage_section3_desc";s:42:"Inscrivez-vous à de nombreuses activités";s:27:"thinkup_header_stickyswitch";i:1;s:27:"thinkup_header_searchswitch";i:1;s:30:"thinkup_homepage_sectionswitch";i:1;s:21:"thinkup_footer_layout";s:7:"option2";s:30:"thinkup_homepage_section1_link";i:30;s:30:"thinkup_homepage_section2_link";i:24;s:30:"thinkup_homepage_section3_link";i:26;s:35:"thinkup_homepage_sliderimage2_image";a:1:{s:3:"url";s:77:"http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg2.jpg";}s:35:"thinkup_homepage_sliderimage3_image";a:1:{s:3:"url";s:77:"http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg3.jpg";}s:34:"thinkup_homepage_sliderpresetwidth";i:1;}', 'yes'),
(168, 'category_children', 'a:0:{}', 'yes'),
(170, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(176, 'recently_activated', 'a:0:{}', 'yes'),
(200, 'CF_DB', '6', 'yes'),
(201, 'cookie_notice_options', 'a:19:{s:12:"message_text";s:193:"Nous utilisons des cookies pour vous garantir la meilleure expérience sur notre site. Si vous continuez à utiliser ce dernier, nous considérerons que vous acceptez l\'utilisation des cookies.";s:11:"accept_text";s:9:"J\'accepte";s:8:"see_more";s:3:"yes";s:12:"see_more_opt";a:4:{s:4:"text";s:14:"En savoir plus";s:9:"link_type";s:6:"custom";s:2:"id";s:5:"empty";s:4:"link";s:54:"https://www.cnil.fr/fr/cookies-traceurs-que-dit-la-loi";}s:11:"link_target";s:6:"_blank";s:11:"refuse_text";s:9:"Je refuse";s:11:"refuse_code";s:0:"";s:9:"on_scroll";s:3:"yes";s:16:"on_scroll_offset";i:100;s:4:"time";s:4:"year";s:16:"script_placement";s:6:"footer";s:8:"position";s:6:"bottom";s:11:"hide_effect";s:4:"fade";s:9:"css_style";s:10:"wp-default";s:6:"colors";a:2:{s:4:"text";s:4:"#fff";s:3:"bar";s:4:"#000";}s:10:"refuse_opt";s:2:"no";s:11:"redirection";b:0;s:19:"deactivation_delete";s:2:"no";s:9:"translate";b:0;}', 'no'),
(202, 'cookie_notice_version', '1.2.40', 'no'),
(203, 'duplicator_settings', 'a:10:{s:7:"version";s:6:"1.2.30";s:18:"uninstall_settings";b:1;s:15:"uninstall_files";b:1;s:16:"uninstall_tables";b:1;s:13:"package_debug";b:0;s:17:"package_mysqldump";b:1;s:22:"package_mysqldump_path";s:0:"";s:24:"package_phpdump_qrylimit";s:3:"100";s:17:"package_zip_flush";b:0;s:20:"storage_htaccess_off";b:0;}', 'yes'),
(204, 'duplicator_version_plugin', '1.2.30', 'yes'),
(205, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(206, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(207, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(208, 'wpgmza_db_version', '6.4.06', 'yes'),
(209, 'wpgmaps_current_version', '6.4.06', 'yes'),
(210, '_wpms_dash_last_update', '1515327253', 'yes'),
(211, 'wpms_set_ignore', '0', 'yes'),
(212, '_aio_import_notice_flag', '0', 'yes'),
(213, '_yoast_import_notice_flag', '0', 'yes'),
(214, 'plugin_to_sync_with', '0', 'yes'),
(215, 'widget_recent-posts-widget-with-thumbnails', 'a:2:{i:3;a:28:{s:5:"title";s:20:"Dernière actualité";s:11:"default_url";s:107:"http://strasbourg.abdounikarim.com/wp-content/plugins/recent-posts-widget-with-thumbnails/default_thumb.gif";s:16:"thumb_dimensions";s:6:"medium";s:12:"category_ids";a:1:{i:0;i:1;}s:14:"excerpt_length";i:55;s:12:"number_posts";i:1;s:17:"post_title_length";i:1000;s:12:"thumb_height";i:75;s:11:"thumb_width";i:75;s:17:"hide_current_post";b:0;s:10:"hide_title";b:0;s:17:"keep_aspect_ratio";b:1;s:11:"keep_sticky";b:0;s:12:"only_1st_img";b:0;s:12:"random_order";b:0;s:11:"show_author";b:0;s:15:"show_categories";b:0;s:20:"show_comments_number";b:0;s:9:"show_date";b:0;s:12:"show_excerpt";b:0;s:14:"ignore_excerpt";b:0;s:16:"set_more_as_link";b:0;s:10:"show_thumb";b:1;s:11:"try_1st_img";b:0;s:11:"use_default";b:0;s:15:"open_new_window";b:0;s:21:"print_post_categories";b:0;s:12:"excerpt_more";s:6:" […]";}s:12:"_multiwidget";i:1;}', 'yes'),
(216, 'widget_awesomeweatherwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(217, 'widget_wpgmza_map_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(218, 'widget_caldera_forms_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(220, '_calderaforms_lastupdate', '1.5.7.1', 'yes'),
(221, 'WPGMZA_OTHER_SETTINGS', 'a:1:{s:27:"wpgmza_settings_marker_pull";s:1:"0";}', 'yes'),
(222, 'ppr_version', '5.1.8', 'yes'),
(223, 'metaseo_db_version3.3.0', '1', 'yes'),
(225, 'wpms_last_update_post', '1511777874', 'yes'),
(226, 'options_dashboard', 'a:4:{s:10:"newcontent";a:2:{i:0;d:0;i:1;a:2:{i:0;i:0;i:1;s:2:"19";}}s:9:"metatitle";a:2:{i:0;d:64;i:1;a:2:{i:0;i:12;i:1;i:19;}}s:10:"image_meta";a:2:{s:11:"imgs_statis";a:3:{i:0;s:2:"11";i:1;s:2:"11";i:2;d:100;}s:17:"imgs_metas_statis";a:3:{i:0;s:2:"11";i:1;s:2:"11";i:2;d:100;}}s:8:"metadesc";a:2:{i:0;d:64;i:1;a:2:{i:0;i:12;i:1;s:2:"19";}}}', 'yes'),
(229, '_metaseo_settings', 'a:15:{s:18:"metaseo_title_home";s:0:"";s:17:"metaseo_desc_home";s:0:"";s:20:"metaseo_showfacebook";s:0:"";s:19:"metaseo_showfbappid";s:0:"";s:19:"metaseo_showtwitter";s:0:"";s:20:"metaseo_twitter_card";s:7:"summary";s:21:"metaseo_metatitle_tab";s:1:"0";s:20:"metaseo_showkeywords";s:1:"0";s:22:"metaseo_showtmetablock";s:1:"1";s:18:"metaseo_showsocial";s:1:"1";s:19:"metaseo_seovalidate";s:1:"0";s:17:"metaseo_linkfield";s:1:"1";s:14:"metaseo_follow";s:1:"0";s:13:"metaseo_index";s:1:"0";s:20:"metaseo_overridemeta";s:1:"1";}', 'yes'),
(234, 'open-weather-key', '6fc22c758429dd17559eae085f93ab94', 'yes'),
(235, 'aw-error-handling', 'source', 'yes'),
(282, 'supsystic_tbl_plugin_version', '1.6.9', 'yes'),
(283, '_supsystic_tables_rev', '60', 'yes'),
(284, 'widget_tables_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(285, 'supsystic_tbl_reviewNotice', 'a:2:{s:4:"time";i:1512379821;s:5:"shown";b:0;}', 'yes'),
(286, 'supsystic_tbl_welcome_page_was_showed', '1', 'yes'),
(296, 'quickppr_redirects', 'a:2:{s:29:"http://strasbourg.abdounikarim.com/actualites/";s:49:"http://strasbourg.abdounikarim.com/category/actus";s:30:"http://strasbourg.abdounikarim.com/plus-dinfos/";s:50:"http://strasbourg.abdounikarim.com/category/infos/";}', 'yes'),
(297, 'quickppr_redirects_meta', 'a:2:{s:29:"http://strasbourg.abdounikarim.com/actualites/";a:2:{s:9:"newwindow";i:0;s:8:"nofollow";i:0;}s:30:"http://strasbourg.abdounikarim.com/plus-dinfos/";a:2:{s:9:"newwindow";i:0;s:8:"nofollow";i:0;}}', 'yes'),
(307, '_cf_clippy_first', '1511777030', 'no'),
(308, '_caldera_forms_styleincludes', 'a:3:{s:5:"alert";b:1;s:4:"form";b:1;s:4:"grid";b:1;}', 'yes'),
(309, '_caldera_forms_forms', 'a:2:{s:15:"CF5a1be3140606b";s:15:"CF5a1be3140606b";s:15:"CF5a1be4286d10e";s:15:"CF5a1be4286d10e";}', 'no'),
(312, 'CF5a1be3140606b', 'a:21:{s:13:"_last_updated";s:31:"Mon, 27 Nov 2017 10:07:23 +0000";s:2:"ID";s:15:"CF5a1be3140606b";s:5:"db_id";i:1;s:10:"cf_version";s:7:"1.5.7.1";s:4:"name";s:21:"Formulaire de contact";s:10:"scroll_top";i:0;s:7:"success";s:64:"Le formulaire a été envoyé. Merci pour votre contribution.			";s:10:"db_support";i:1;s:6:"pinned";i:0;s:9:"hide_form";i:1;s:11:"check_honey";i:1;s:12:"avatar_field";N;s:9:"form_ajax";i:1;s:15:"custom_callback";s:0:"";s:11:"layout_grid";a:2:{s:6:"fields";a:8:{s:11:"fld_9931154";s:3:"1:1";s:11:"fld_9635422";s:3:"1:1";s:11:"fld_3719568";s:3:"1:1";s:11:"fld_2674869";s:3:"1:1";s:11:"fld_4049194";s:3:"1:1";s:11:"fld_2273844";s:3:"1:1";s:11:"fld_4291573";s:3:"1:1";s:11:"fld_5748248";s:3:"1:1";}s:9:"structure";s:2:"12";}s:6:"fields";a:8:{s:11:"fld_9931154";a:8:{s:2:"ID";s:11:"fld_9931154";s:4:"type";s:4:"text";s:5:"label";s:16:"Titre du message";s:4:"slug";s:16:"titre_du_message";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:5:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"type_override";s:4:"text";s:4:"mask";s:0:"";}}s:11:"fld_9635422";a:8:{s:2:"ID";s:11:"fld_9635422";s:4:"type";s:4:"text";s:5:"label";s:9:"Votre nom";s:4:"slug";s:9:"votre_nom";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:5:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"type_override";s:4:"text";s:4:"mask";s:0:"";}}s:11:"fld_3719568";a:8:{s:2:"ID";s:11:"fld_3719568";s:4:"type";s:11:"date_picker";s:5:"label";s:23:"Votre date de naissance";s:4:"slug";s:23:"votre_date_de_naissance";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:7:{s:12:"custom_class";s:0:"";s:7:"default";s:0:"";s:6:"format";s:10:"dd/mm/yyyy";s:10:"start_view";s:5:"month";s:10:"start_date";s:0:"";s:8:"end_date";s:2:"0d";s:8:"language";s:2:"fr";}}s:11:"fld_2674869";a:8:{s:2:"ID";s:11:"fld_2674869";s:4:"type";s:5:"email";s:5:"label";s:11:"Votre email";s:4:"slug";s:11:"votre_email";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:3:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";}}s:11:"fld_4049194";a:7:{s:2:"ID";s:11:"fld_4049194";s:4:"type";s:8:"checkbox";s:5:"label";s:21:"Résident de la ville";s:4:"slug";s:19:"rsident_de_la_ville";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:11:{s:12:"custom_class";s:0:"";s:14:"default_option";s:0:"";s:9:"auto_type";s:0:"";s:8:"taxonomy";s:8:"category";s:9:"post_type";s:4:"post";s:11:"value_field";s:4:"name";s:11:"orderby_tax";s:5:"count";s:12:"orderby_post";s:2:"ID";s:5:"order";s:3:"ASC";s:7:"default";s:0:"";s:6:"option";a:1:{s:10:"opt1271532";a:3:{s:10:"calc_value";s:0:"";s:5:"value";s:3:"Oui";s:5:"label";s:3:"Oui";}}}}s:11:"fld_2273844";a:7:{s:2:"ID";s:11:"fld_2273844";s:4:"type";s:8:"dropdown";s:5:"label";s:12:"Nationalité";s:4:"slug";s:10:"nationalit";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:14:"default_option";s:0:"";s:9:"auto_type";s:0:"";s:8:"taxonomy";s:8:"category";s:9:"post_type";s:4:"post";s:11:"value_field";s:4:"name";s:11:"orderby_tax";s:5:"count";s:12:"orderby_post";s:2:"ID";s:5:"order";s:3:"ASC";s:7:"default";s:0:"";s:6:"option";a:249:{s:9:"opt563240";a:3:{s:10:"calc_value";s:11:"Afghanistan";s:5:"value";s:11:"Afghanistan";s:5:"label";s:11:"Afghanistan";}s:10:"opt1155992";a:3:{s:10:"calc_value";s:14:"Åland Islands";s:5:"value";s:14:"Åland Islands";s:5:"label";s:14:"Åland Islands";}s:10:"opt2662252";a:3:{s:10:"calc_value";s:7:"Albania";s:5:"value";s:7:"Albania";s:5:"label";s:7:"Albania";}s:10:"opt3617445";a:3:{s:10:"calc_value";s:7:"Algeria";s:5:"value";s:7:"Algeria";s:5:"label";s:7:"Algeria";}s:10:"opt4292282";a:3:{s:10:"calc_value";s:14:"American Samoa";s:5:"value";s:14:"American Samoa";s:5:"label";s:14:"American Samoa";}s:10:"opt5670390";a:3:{s:10:"calc_value";s:7:"Andorra";s:5:"value";s:7:"Andorra";s:5:"label";s:7:"Andorra";}s:10:"opt7281592";a:3:{s:10:"calc_value";s:6:"Angola";s:5:"value";s:6:"Angola";s:5:"label";s:6:"Angola";}s:10:"opt7595720";a:3:{s:10:"calc_value";s:8:"Anguilla";s:5:"value";s:8:"Anguilla";s:5:"label";s:8:"Anguilla";}s:10:"opt9282460";a:3:{s:10:"calc_value";s:10:"Antarctica";s:5:"value";s:10:"Antarctica";s:5:"label";s:10:"Antarctica";}s:11:"opt10274332";a:3:{s:10:"calc_value";s:19:"Antigua and Barbuda";s:5:"value";s:19:"Antigua and Barbuda";s:5:"label";s:19:"Antigua and Barbuda";}s:11:"opt11423907";a:3:{s:10:"calc_value";s:9:"Argentina";s:5:"value";s:9:"Argentina";s:5:"label";s:9:"Argentina";}s:11:"opt11945834";a:3:{s:10:"calc_value";s:7:"Armenia";s:5:"value";s:7:"Armenia";s:5:"label";s:7:"Armenia";}s:11:"opt13116760";a:3:{s:10:"calc_value";s:5:"Aruba";s:5:"value";s:5:"Aruba";s:5:"label";s:5:"Aruba";}s:11:"opt14511230";a:3:{s:10:"calc_value";s:9:"Australia";s:5:"value";s:9:"Australia";s:5:"label";s:9:"Australia";}s:11:"opt14798696";a:3:{s:10:"calc_value";s:7:"Austria";s:5:"value";s:7:"Austria";s:5:"label";s:7:"Austria";}s:11:"opt16542194";a:3:{s:10:"calc_value";s:10:"Azerbaijan";s:5:"value";s:10:"Azerbaijan";s:5:"label";s:10:"Azerbaijan";}s:11:"opt17493746";a:3:{s:10:"calc_value";s:7:"Bahamas";s:5:"value";s:7:"Bahamas";s:5:"label";s:7:"Bahamas";}s:11:"opt18449600";a:3:{s:10:"calc_value";s:7:"Bahrain";s:5:"value";s:7:"Bahrain";s:5:"label";s:7:"Bahrain";}s:11:"opt18953272";a:3:{s:10:"calc_value";s:10:"Bangladesh";s:5:"value";s:10:"Bangladesh";s:5:"label";s:10:"Bangladesh";}s:11:"opt20316192";a:3:{s:10:"calc_value";s:8:"Barbados";s:5:"value";s:8:"Barbados";s:5:"label";s:8:"Barbados";}s:11:"opt21864047";a:3:{s:10:"calc_value";s:7:"Belarus";s:5:"value";s:7:"Belarus";s:5:"label";s:7:"Belarus";}s:11:"opt22046318";a:3:{s:10:"calc_value";s:7:"Belgium";s:5:"value";s:7:"Belgium";s:5:"label";s:7:"Belgium";}s:11:"opt23803058";a:3:{s:10:"calc_value";s:6:"Belize";s:5:"value";s:6:"Belize";s:5:"label";s:6:"Belize";}s:11:"opt24426822";a:3:{s:10:"calc_value";s:5:"Benin";s:5:"value";s:5:"Benin";s:5:"label";s:5:"Benin";}s:11:"opt25884807";a:3:{s:10:"calc_value";s:7:"Bermuda";s:5:"value";s:7:"Bermuda";s:5:"label";s:7:"Bermuda";}s:11:"opt26794499";a:3:{s:10:"calc_value";s:6:"Bhutan";s:5:"value";s:6:"Bhutan";s:5:"label";s:6:"Bhutan";}s:11:"opt27327114";a:3:{s:10:"calc_value";s:31:"Bolivia, Plurinational State of";s:5:"value";s:31:"Bolivia, Plurinational State of";s:5:"label";s:31:"Bolivia, Plurinational State of";}s:11:"opt28628513";a:3:{s:10:"calc_value";s:32:"Bonaire, Sint Eustatius and Saba";s:5:"value";s:32:"Bonaire, Sint Eustatius and Saba";s:5:"label";s:32:"Bonaire, Sint Eustatius and Saba";}s:11:"opt29713865";a:3:{s:10:"calc_value";s:22:"Bosnia and Herzegovina";s:5:"value";s:22:"Bosnia and Herzegovina";s:5:"label";s:22:"Bosnia and Herzegovina";}s:11:"opt30940263";a:3:{s:10:"calc_value";s:8:"Botswana";s:5:"value";s:8:"Botswana";s:5:"label";s:8:"Botswana";}s:11:"opt31571268";a:3:{s:10:"calc_value";s:13:"Bouvet Island";s:5:"value";s:13:"Bouvet Island";s:5:"label";s:13:"Bouvet Island";}s:11:"opt33208551";a:3:{s:10:"calc_value";s:6:"Brazil";s:5:"value";s:6:"Brazil";s:5:"label";s:6:"Brazil";}s:11:"opt33685334";a:3:{s:10:"calc_value";s:30:"British Indian Ocean Territory";s:5:"value";s:30:"British Indian Ocean Territory";s:5:"label";s:30:"British Indian Ocean Territory";}s:11:"opt35529848";a:3:{s:10:"calc_value";s:17:"Brunei Darussalam";s:5:"value";s:17:"Brunei Darussalam";s:5:"label";s:17:"Brunei Darussalam";}s:11:"opt35678347";a:3:{s:10:"calc_value";s:8:"Bulgaria";s:5:"value";s:8:"Bulgaria";s:5:"label";s:8:"Bulgaria";}s:11:"opt37096455";a:3:{s:10:"calc_value";s:12:"Burkina Faso";s:5:"value";s:12:"Burkina Faso";s:5:"label";s:12:"Burkina Faso";}s:11:"opt38468195";a:3:{s:10:"calc_value";s:7:"Burundi";s:5:"value";s:7:"Burundi";s:5:"label";s:7:"Burundi";}s:11:"opt38972352";a:3:{s:10:"calc_value";s:8:"Cambodia";s:5:"value";s:8:"Cambodia";s:5:"label";s:8:"Cambodia";}s:11:"opt40786584";a:3:{s:10:"calc_value";s:8:"Cameroon";s:5:"value";s:8:"Cameroon";s:5:"label";s:8:"Cameroon";}s:11:"opt41291317";a:3:{s:10:"calc_value";s:6:"Canada";s:5:"value";s:6:"Canada";s:5:"label";s:6:"Canada";}s:11:"opt42232003";a:3:{s:10:"calc_value";s:10:"Cape Verde";s:5:"value";s:10:"Cape Verde";s:5:"label";s:10:"Cape Verde";}s:11:"opt43689267";a:3:{s:10:"calc_value";s:14:"Cayman Islands";s:5:"value";s:14:"Cayman Islands";s:5:"label";s:14:"Cayman Islands";}s:11:"opt44775421";a:3:{s:10:"calc_value";s:24:"Central African Republic";s:5:"value";s:24:"Central African Republic";s:5:"label";s:24:"Central African Republic";}s:11:"opt45170011";a:3:{s:10:"calc_value";s:4:"Chad";s:5:"value";s:4:"Chad";s:5:"label";s:4:"Chad";}s:11:"opt47148552";a:3:{s:10:"calc_value";s:5:"Chile";s:5:"value";s:5:"Chile";s:5:"label";s:5:"Chile";}s:11:"opt47369429";a:3:{s:10:"calc_value";s:5:"China";s:5:"value";s:5:"China";s:5:"label";s:5:"China";}s:11:"opt49246899";a:3:{s:10:"calc_value";s:16:"Christmas Island";s:5:"value";s:16:"Christmas Island";s:5:"label";s:16:"Christmas Island";}s:11:"opt49781806";a:3:{s:10:"calc_value";s:23:"Cocos (Keeling) Islands";s:5:"value";s:23:"Cocos (Keeling) Islands";s:5:"label";s:23:"Cocos (Keeling) Islands";}s:11:"opt50669974";a:3:{s:10:"calc_value";s:8:"Colombia";s:5:"value";s:8:"Colombia";s:5:"label";s:8:"Colombia";}s:11:"opt52029273";a:3:{s:10:"calc_value";s:7:"Comoros";s:5:"value";s:7:"Comoros";s:5:"label";s:7:"Comoros";}s:11:"opt52496519";a:3:{s:10:"calc_value";s:5:"Congo";s:5:"value";s:5:"Congo";s:5:"label";s:5:"Congo";}s:11:"opt53930764";a:3:{s:10:"calc_value";s:37:"Congo, the Democratic Republic of the";s:5:"value";s:37:"Congo, the Democratic Republic of the";s:5:"label";s:37:"Congo, the Democratic Republic of the";}s:11:"opt55276308";a:3:{s:10:"calc_value";s:12:"Cook Islands";s:5:"value";s:12:"Cook Islands";s:5:"label";s:12:"Cook Islands";}s:11:"opt55827299";a:3:{s:10:"calc_value";s:10:"Costa Rica";s:5:"value";s:10:"Costa Rica";s:5:"label";s:10:"Costa Rica";}s:11:"opt57147833";a:3:{s:10:"calc_value";s:14:"Côte d\'Ivoire";s:5:"value";s:14:"Côte d\'Ivoire";s:5:"label";s:14:"Côte d\'Ivoire";}s:11:"opt57949872";a:3:{s:10:"calc_value";s:7:"Croatia";s:5:"value";s:7:"Croatia";s:5:"label";s:7:"Croatia";}s:11:"opt59608582";a:3:{s:10:"calc_value";s:4:"Cuba";s:5:"value";s:4:"Cuba";s:5:"label";s:4:"Cuba";}s:11:"opt60137869";a:3:{s:10:"calc_value";s:8:"Curaçao";s:5:"value";s:8:"Curaçao";s:5:"label";s:8:"Curaçao";}s:11:"opt61056563";a:3:{s:10:"calc_value";s:6:"Cyprus";s:5:"value";s:6:"Cyprus";s:5:"label";s:6:"Cyprus";}s:11:"opt62404845";a:3:{s:10:"calc_value";s:14:"Czech Republic";s:5:"value";s:14:"Czech Republic";s:5:"label";s:14:"Czech Republic";}s:11:"opt63365630";a:3:{s:10:"calc_value";s:7:"Denmark";s:5:"value";s:7:"Denmark";s:5:"label";s:7:"Denmark";}s:11:"opt64459514";a:3:{s:10:"calc_value";s:8:"Djibouti";s:5:"value";s:8:"Djibouti";s:5:"label";s:8:"Djibouti";}s:11:"opt65357223";a:3:{s:10:"calc_value";s:8:"Dominica";s:5:"value";s:8:"Dominica";s:5:"label";s:8:"Dominica";}s:11:"opt66521837";a:3:{s:10:"calc_value";s:18:"Dominican Republic";s:5:"value";s:18:"Dominican Republic";s:5:"label";s:18:"Dominican Republic";}s:11:"opt67744497";a:3:{s:10:"calc_value";s:7:"Ecuador";s:5:"value";s:7:"Ecuador";s:5:"label";s:7:"Ecuador";}s:11:"opt68166539";a:3:{s:10:"calc_value";s:5:"Egypt";s:5:"value";s:5:"Egypt";s:5:"label";s:5:"Egypt";}s:11:"opt69323564";a:3:{s:10:"calc_value";s:11:"El Salvador";s:5:"value";s:11:"El Salvador";s:5:"label";s:11:"El Salvador";}s:11:"opt70933991";a:3:{s:10:"calc_value";s:17:"Equatorial Guinea";s:5:"value";s:17:"Equatorial Guinea";s:5:"label";s:17:"Equatorial Guinea";}s:11:"opt71958633";a:3:{s:10:"calc_value";s:7:"Eritrea";s:5:"value";s:7:"Eritrea";s:5:"label";s:7:"Eritrea";}s:11:"opt72357950";a:3:{s:10:"calc_value";s:7:"Estonia";s:5:"value";s:7:"Estonia";s:5:"label";s:7:"Estonia";}s:11:"opt73781154";a:3:{s:10:"calc_value";s:8:"Ethiopia";s:5:"value";s:8:"Ethiopia";s:5:"label";s:8:"Ethiopia";}s:11:"opt74629056";a:3:{s:10:"calc_value";s:27:"Falkland Islands (Malvinas)";s:5:"value";s:27:"Falkland Islands (Malvinas)";s:5:"label";s:27:"Falkland Islands (Malvinas)";}s:11:"opt76357151";a:3:{s:10:"calc_value";s:13:"Faroe Islands";s:5:"value";s:13:"Faroe Islands";s:5:"label";s:13:"Faroe Islands";}s:11:"opt76600421";a:3:{s:10:"calc_value";s:4:"Fiji";s:5:"value";s:4:"Fiji";s:5:"label";s:4:"Fiji";}s:11:"opt78190366";a:3:{s:10:"calc_value";s:7:"Finland";s:5:"value";s:7:"Finland";s:5:"label";s:7:"Finland";}s:11:"opt79087339";a:3:{s:10:"calc_value";s:6:"France";s:5:"value";s:6:"France";s:5:"label";s:6:"France";}s:11:"opt80015835";a:3:{s:10:"calc_value";s:13:"French Guiana";s:5:"value";s:13:"French Guiana";s:5:"label";s:13:"French Guiana";}s:11:"opt81461240";a:3:{s:10:"calc_value";s:16:"French Polynesia";s:5:"value";s:16:"French Polynesia";s:5:"label";s:16:"French Polynesia";}s:11:"opt82643120";a:3:{s:10:"calc_value";s:27:"French Southern Territories";s:5:"value";s:27:"French Southern Territories";s:5:"label";s:27:"French Southern Territories";}s:11:"opt82969989";a:3:{s:10:"calc_value";s:5:"Gabon";s:5:"value";s:5:"Gabon";s:5:"label";s:5:"Gabon";}s:11:"opt84667674";a:3:{s:10:"calc_value";s:6:"Gambia";s:5:"value";s:6:"Gambia";s:5:"label";s:6:"Gambia";}s:11:"opt85396591";a:3:{s:10:"calc_value";s:7:"Georgia";s:5:"value";s:7:"Georgia";s:5:"label";s:7:"Georgia";}s:11:"opt86662918";a:3:{s:10:"calc_value";s:7:"Germany";s:5:"value";s:7:"Germany";s:5:"label";s:7:"Germany";}s:11:"opt87454862";a:3:{s:10:"calc_value";s:5:"Ghana";s:5:"value";s:5:"Ghana";s:5:"label";s:5:"Ghana";}s:11:"opt88336821";a:3:{s:10:"calc_value";s:9:"Gibraltar";s:5:"value";s:9:"Gibraltar";s:5:"label";s:9:"Gibraltar";}s:11:"opt89635044";a:3:{s:10:"calc_value";s:6:"Greece";s:5:"value";s:6:"Greece";s:5:"label";s:6:"Greece";}s:11:"opt90298304";a:3:{s:10:"calc_value";s:9:"Greenland";s:5:"value";s:9:"Greenland";s:5:"label";s:9:"Greenland";}s:11:"opt92050263";a:3:{s:10:"calc_value";s:7:"Grenada";s:5:"value";s:7:"Grenada";s:5:"label";s:7:"Grenada";}s:11:"opt92392160";a:3:{s:10:"calc_value";s:10:"Guadeloupe";s:5:"value";s:10:"Guadeloupe";s:5:"label";s:10:"Guadeloupe";}s:11:"opt93790719";a:3:{s:10:"calc_value";s:4:"Guam";s:5:"value";s:4:"Guam";s:5:"label";s:4:"Guam";}s:11:"opt94419994";a:3:{s:10:"calc_value";s:9:"Guatemala";s:5:"value";s:9:"Guatemala";s:5:"label";s:9:"Guatemala";}s:11:"opt96122435";a:3:{s:10:"calc_value";s:8:"Guernsey";s:5:"value";s:8:"Guernsey";s:5:"label";s:8:"Guernsey";}s:11:"opt97201325";a:3:{s:10:"calc_value";s:6:"Guinea";s:5:"value";s:6:"Guinea";s:5:"label";s:6:"Guinea";}s:11:"opt97635000";a:3:{s:10:"calc_value";s:13:"Guinea-Bissau";s:5:"value";s:13:"Guinea-Bissau";s:5:"label";s:13:"Guinea-Bissau";}s:11:"opt98790146";a:3:{s:10:"calc_value";s:6:"Guyana";s:5:"value";s:6:"Guyana";s:5:"label";s:6:"Guyana";}s:12:"opt100424902";a:3:{s:10:"calc_value";s:5:"Haiti";s:5:"value";s:5:"Haiti";s:5:"label";s:5:"Haiti";}s:12:"opt101497321";a:3:{s:10:"calc_value";s:33:"Heard Island and McDonald Islands";s:5:"value";s:33:"Heard Island and McDonald Islands";s:5:"label";s:33:"Heard Island and McDonald Islands";}s:12:"opt102684604";a:3:{s:10:"calc_value";s:29:"Holy See (Vatican City State)";s:5:"value";s:29:"Holy See (Vatican City State)";s:5:"label";s:29:"Holy See (Vatican City State)";}s:12:"opt103419338";a:3:{s:10:"calc_value";s:8:"Honduras";s:5:"value";s:8:"Honduras";s:5:"label";s:8:"Honduras";}s:12:"opt103814339";a:3:{s:10:"calc_value";s:9:"Hong Kong";s:5:"value";s:9:"Hong Kong";s:5:"label";s:9:"Hong Kong";}s:12:"opt105004037";a:3:{s:10:"calc_value";s:7:"Hungary";s:5:"value";s:7:"Hungary";s:5:"label";s:7:"Hungary";}s:12:"opt105918035";a:3:{s:10:"calc_value";s:7:"Iceland";s:5:"value";s:7:"Iceland";s:5:"label";s:7:"Iceland";}s:12:"opt107056305";a:3:{s:10:"calc_value";s:5:"India";s:5:"value";s:5:"India";s:5:"label";s:5:"India";}s:12:"opt108454380";a:3:{s:10:"calc_value";s:9:"Indonesia";s:5:"value";s:9:"Indonesia";s:5:"label";s:9:"Indonesia";}s:12:"opt109553458";a:3:{s:10:"calc_value";s:25:"Iran, Islamic Republic of";s:5:"value";s:25:"Iran, Islamic Republic of";s:5:"label";s:25:"Iran, Islamic Republic of";}s:12:"opt110135457";a:3:{s:10:"calc_value";s:4:"Iraq";s:5:"value";s:4:"Iraq";s:5:"label";s:4:"Iraq";}s:12:"opt112028097";a:3:{s:10:"calc_value";s:7:"Ireland";s:5:"value";s:7:"Ireland";s:5:"label";s:7:"Ireland";}s:12:"opt113027161";a:3:{s:10:"calc_value";s:11:"Isle of Man";s:5:"value";s:11:"Isle of Man";s:5:"label";s:11:"Isle of Man";}s:12:"opt113719766";a:3:{s:10:"calc_value";s:6:"Israel";s:5:"value";s:6:"Israel";s:5:"label";s:6:"Israel";}s:12:"opt114486754";a:3:{s:10:"calc_value";s:5:"Italy";s:5:"value";s:5:"Italy";s:5:"label";s:5:"Italy";}s:12:"opt115444676";a:3:{s:10:"calc_value";s:7:"Jamaica";s:5:"value";s:7:"Jamaica";s:5:"label";s:7:"Jamaica";}s:12:"opt117032793";a:3:{s:10:"calc_value";s:5:"Japan";s:5:"value";s:5:"Japan";s:5:"label";s:5:"Japan";}s:12:"opt118377568";a:3:{s:10:"calc_value";s:6:"Jersey";s:5:"value";s:6:"Jersey";s:5:"label";s:6:"Jersey";}s:12:"opt119241239";a:3:{s:10:"calc_value";s:6:"Jordan";s:5:"value";s:6:"Jordan";s:5:"label";s:6:"Jordan";}s:12:"opt119687308";a:3:{s:10:"calc_value";s:10:"Kazakhstan";s:5:"value";s:10:"Kazakhstan";s:5:"label";s:10:"Kazakhstan";}s:12:"opt121620788";a:3:{s:10:"calc_value";s:5:"Kenya";s:5:"value";s:5:"Kenya";s:5:"label";s:5:"Kenya";}s:12:"opt122561430";a:3:{s:10:"calc_value";s:8:"Kiribati";s:5:"value";s:8:"Kiribati";s:5:"label";s:8:"Kiribati";}s:12:"opt122752054";a:3:{s:10:"calc_value";s:38:"Korea, Democratic People\'s Republic of";s:5:"value";s:38:"Korea, Democratic People\'s Republic of";s:5:"label";s:38:"Korea, Democratic People\'s Republic of";}s:12:"opt124386275";a:3:{s:10:"calc_value";s:18:"Korea, Republic of";s:5:"value";s:18:"Korea, Republic of";s:5:"label";s:18:"Korea, Republic of";}s:12:"opt125107702";a:3:{s:10:"calc_value";s:6:"Kuwait";s:5:"value";s:6:"Kuwait";s:5:"label";s:6:"Kuwait";}s:12:"opt126002050";a:3:{s:10:"calc_value";s:10:"Kyrgyzstan";s:5:"value";s:10:"Kyrgyzstan";s:5:"label";s:10:"Kyrgyzstan";}s:12:"opt127763738";a:3:{s:10:"calc_value";s:32:"Lao People\'s Democratic Republic";s:5:"value";s:32:"Lao People\'s Democratic Republic";s:5:"label";s:32:"Lao People\'s Democratic Republic";}s:12:"opt128724400";a:3:{s:10:"calc_value";s:6:"Latvia";s:5:"value";s:6:"Latvia";s:5:"label";s:6:"Latvia";}s:12:"opt129334909";a:3:{s:10:"calc_value";s:7:"Lebanon";s:5:"value";s:7:"Lebanon";s:5:"label";s:7:"Lebanon";}s:12:"opt130149610";a:3:{s:10:"calc_value";s:7:"Lesotho";s:5:"value";s:7:"Lesotho";s:5:"label";s:7:"Lesotho";}s:12:"opt131072296";a:3:{s:10:"calc_value";s:7:"Liberia";s:5:"value";s:7:"Liberia";s:5:"label";s:7:"Liberia";}s:12:"opt132497073";a:3:{s:10:"calc_value";s:5:"Libya";s:5:"value";s:5:"Libya";s:5:"label";s:5:"Libya";}s:12:"opt133585900";a:3:{s:10:"calc_value";s:13:"Liechtenstein";s:5:"value";s:13:"Liechtenstein";s:5:"label";s:13:"Liechtenstein";}s:12:"opt134792648";a:3:{s:10:"calc_value";s:9:"Lithuania";s:5:"value";s:9:"Lithuania";s:5:"label";s:9:"Lithuania";}s:12:"opt136154551";a:3:{s:10:"calc_value";s:10:"Luxembourg";s:5:"value";s:10:"Luxembourg";s:5:"label";s:10:"Luxembourg";}s:12:"opt137162375";a:3:{s:10:"calc_value";s:5:"Macao";s:5:"value";s:5:"Macao";s:5:"label";s:5:"Macao";}s:12:"opt137772261";a:3:{s:10:"calc_value";s:42:"Macedonia, the former Yugoslav Republic of";s:5:"value";s:42:"Macedonia, the former Yugoslav Republic of";s:5:"label";s:42:"Macedonia, the former Yugoslav Republic of";}s:12:"opt138941392";a:3:{s:10:"calc_value";s:10:"Madagascar";s:5:"value";s:10:"Madagascar";s:5:"label";s:10:"Madagascar";}s:12:"opt140014363";a:3:{s:10:"calc_value";s:6:"Malawi";s:5:"value";s:6:"Malawi";s:5:"label";s:6:"Malawi";}s:12:"opt141404573";a:3:{s:10:"calc_value";s:8:"Malaysia";s:5:"value";s:8:"Malaysia";s:5:"label";s:8:"Malaysia";}s:12:"opt141813447";a:3:{s:10:"calc_value";s:8:"Maldives";s:5:"value";s:8:"Maldives";s:5:"label";s:8:"Maldives";}s:12:"opt143360551";a:3:{s:10:"calc_value";s:4:"Mali";s:5:"value";s:4:"Mali";s:5:"label";s:4:"Mali";}s:12:"opt144618949";a:3:{s:10:"calc_value";s:5:"Malta";s:5:"value";s:5:"Malta";s:5:"label";s:5:"Malta";}s:12:"opt144787918";a:3:{s:10:"calc_value";s:16:"Marshall Islands";s:5:"value";s:16:"Marshall Islands";s:5:"label";s:16:"Marshall Islands";}s:12:"opt146409411";a:3:{s:10:"calc_value";s:10:"Martinique";s:5:"value";s:10:"Martinique";s:5:"label";s:10:"Martinique";}s:12:"opt146953779";a:3:{s:10:"calc_value";s:10:"Mauritania";s:5:"value";s:10:"Mauritania";s:5:"label";s:10:"Mauritania";}s:12:"opt148168453";a:3:{s:10:"calc_value";s:9:"Mauritius";s:5:"value";s:9:"Mauritius";s:5:"label";s:9:"Mauritius";}s:12:"opt149292419";a:3:{s:10:"calc_value";s:7:"Mayotte";s:5:"value";s:7:"Mayotte";s:5:"label";s:7:"Mayotte";}s:12:"opt150780670";a:3:{s:10:"calc_value";s:6:"Mexico";s:5:"value";s:6:"Mexico";s:5:"label";s:6:"Mexico";}s:12:"opt151754965";a:3:{s:10:"calc_value";s:31:"Micronesia, Federated States of";s:5:"value";s:31:"Micronesia, Federated States of";s:5:"label";s:31:"Micronesia, Federated States of";}s:12:"opt152263611";a:3:{s:10:"calc_value";s:20:"Moldova, Republic of";s:5:"value";s:20:"Moldova, Republic of";s:5:"label";s:20:"Moldova, Republic of";}s:12:"opt153251342";a:3:{s:10:"calc_value";s:6:"Monaco";s:5:"value";s:6:"Monaco";s:5:"label";s:6:"Monaco";}s:12:"opt154289224";a:3:{s:10:"calc_value";s:8:"Mongolia";s:5:"value";s:8:"Mongolia";s:5:"label";s:8:"Mongolia";}s:12:"opt155705842";a:3:{s:10:"calc_value";s:10:"Montenegro";s:5:"value";s:10:"Montenegro";s:5:"label";s:10:"Montenegro";}s:12:"opt156974530";a:3:{s:10:"calc_value";s:10:"Montserrat";s:5:"value";s:10:"Montserrat";s:5:"label";s:10:"Montserrat";}s:12:"opt157960419";a:3:{s:10:"calc_value";s:7:"Morocco";s:5:"value";s:7:"Morocco";s:5:"label";s:7:"Morocco";}s:12:"opt159158243";a:3:{s:10:"calc_value";s:10:"Mozambique";s:5:"value";s:10:"Mozambique";s:5:"label";s:10:"Mozambique";}s:12:"opt159472872";a:3:{s:10:"calc_value";s:7:"Myanmar";s:5:"value";s:7:"Myanmar";s:5:"label";s:7:"Myanmar";}s:12:"opt160460855";a:3:{s:10:"calc_value";s:7:"Namibia";s:5:"value";s:7:"Namibia";s:5:"label";s:7:"Namibia";}s:12:"opt162373410";a:3:{s:10:"calc_value";s:5:"Nauru";s:5:"value";s:5:"Nauru";s:5:"label";s:5:"Nauru";}s:12:"opt163427789";a:3:{s:10:"calc_value";s:5:"Nepal";s:5:"value";s:5:"Nepal";s:5:"label";s:5:"Nepal";}s:12:"opt164230326";a:3:{s:10:"calc_value";s:11:"Netherlands";s:5:"value";s:11:"Netherlands";s:5:"label";s:11:"Netherlands";}s:12:"opt165304054";a:3:{s:10:"calc_value";s:13:"New Caledonia";s:5:"value";s:13:"New Caledonia";s:5:"label";s:13:"New Caledonia";}s:12:"opt166127509";a:3:{s:10:"calc_value";s:11:"New Zealand";s:5:"value";s:11:"New Zealand";s:5:"label";s:11:"New Zealand";}s:12:"opt167424869";a:3:{s:10:"calc_value";s:9:"Nicaragua";s:5:"value";s:9:"Nicaragua";s:5:"label";s:9:"Nicaragua";}s:12:"opt168751347";a:3:{s:10:"calc_value";s:5:"Niger";s:5:"value";s:5:"Niger";s:5:"label";s:5:"Niger";}s:12:"opt169227994";a:3:{s:10:"calc_value";s:7:"Nigeria";s:5:"value";s:7:"Nigeria";s:5:"label";s:7:"Nigeria";}s:12:"opt170612662";a:3:{s:10:"calc_value";s:4:"Niue";s:5:"value";s:4:"Niue";s:5:"label";s:4:"Niue";}s:12:"opt171722199";a:3:{s:10:"calc_value";s:14:"Norfolk Island";s:5:"value";s:14:"Norfolk Island";s:5:"label";s:14:"Norfolk Island";}s:12:"opt172883955";a:3:{s:10:"calc_value";s:24:"Northern Mariana Islands";s:5:"value";s:24:"Northern Mariana Islands";s:5:"label";s:24:"Northern Mariana Islands";}s:12:"opt173701479";a:3:{s:10:"calc_value";s:6:"Norway";s:5:"value";s:6:"Norway";s:5:"label";s:6:"Norway";}s:12:"opt174563503";a:3:{s:10:"calc_value";s:4:"Oman";s:5:"value";s:4:"Oman";s:5:"label";s:4:"Oman";}s:12:"opt175972071";a:3:{s:10:"calc_value";s:8:"Pakistan";s:5:"value";s:8:"Pakistan";s:5:"label";s:8:"Pakistan";}s:12:"opt176606959";a:3:{s:10:"calc_value";s:5:"Palau";s:5:"value";s:5:"Palau";s:5:"label";s:5:"Palau";}s:12:"opt177855643";a:3:{s:10:"calc_value";s:31:"Palestinian Territory, Occupied";s:5:"value";s:31:"Palestinian Territory, Occupied";s:5:"label";s:31:"Palestinian Territory, Occupied";}s:12:"opt178677430";a:3:{s:10:"calc_value";s:6:"Panama";s:5:"value";s:6:"Panama";s:5:"label";s:6:"Panama";}s:12:"opt179682044";a:3:{s:10:"calc_value";s:16:"Papua New Guinea";s:5:"value";s:16:"Papua New Guinea";s:5:"label";s:16:"Papua New Guinea";}s:12:"opt181017765";a:3:{s:10:"calc_value";s:8:"Paraguay";s:5:"value";s:8:"Paraguay";s:5:"label";s:8:"Paraguay";}s:12:"opt181495577";a:3:{s:10:"calc_value";s:4:"Peru";s:5:"value";s:4:"Peru";s:5:"label";s:4:"Peru";}s:12:"opt182645499";a:3:{s:10:"calc_value";s:11:"Philippines";s:5:"value";s:11:"Philippines";s:5:"label";s:11:"Philippines";}s:12:"opt184210556";a:3:{s:10:"calc_value";s:8:"Pitcairn";s:5:"value";s:8:"Pitcairn";s:5:"label";s:8:"Pitcairn";}s:12:"opt185076877";a:3:{s:10:"calc_value";s:6:"Poland";s:5:"value";s:6:"Poland";s:5:"label";s:6:"Poland";}s:12:"opt185795054";a:3:{s:10:"calc_value";s:8:"Portugal";s:5:"value";s:8:"Portugal";s:5:"label";s:8:"Portugal";}s:12:"opt186924216";a:3:{s:10:"calc_value";s:11:"Puerto Rico";s:5:"value";s:11:"Puerto Rico";s:5:"label";s:11:"Puerto Rico";}s:12:"opt188117845";a:3:{s:10:"calc_value";s:5:"Qatar";s:5:"value";s:5:"Qatar";s:5:"label";s:5:"Qatar";}s:12:"opt188930036";a:3:{s:10:"calc_value";s:8:"Réunion";s:5:"value";s:8:"Réunion";s:5:"label";s:8:"Réunion";}s:12:"opt189908997";a:3:{s:10:"calc_value";s:7:"Romania";s:5:"value";s:7:"Romania";s:5:"label";s:7:"Romania";}s:12:"opt191055322";a:3:{s:10:"calc_value";s:18:"Russian Federation";s:5:"value";s:18:"Russian Federation";s:5:"label";s:18:"Russian Federation";}s:12:"opt192569748";a:3:{s:10:"calc_value";s:6:"Rwanda";s:5:"value";s:6:"Rwanda";s:5:"label";s:6:"Rwanda";}s:12:"opt193911524";a:3:{s:10:"calc_value";s:17:"Saint Barthélemy";s:5:"value";s:17:"Saint Barthélemy";s:5:"label";s:17:"Saint Barthélemy";}s:12:"opt194037192";a:3:{s:10:"calc_value";s:44:"Saint Helena, Ascension and Tristan da Cunha";s:5:"value";s:44:"Saint Helena, Ascension and Tristan da Cunha";s:5:"label";s:44:"Saint Helena, Ascension and Tristan da Cunha";}s:12:"opt196081353";a:3:{s:10:"calc_value";s:21:"Saint Kitts and Nevis";s:5:"value";s:21:"Saint Kitts and Nevis";s:5:"label";s:21:"Saint Kitts and Nevis";}s:12:"opt196798438";a:3:{s:10:"calc_value";s:11:"Saint Lucia";s:5:"value";s:11:"Saint Lucia";s:5:"label";s:11:"Saint Lucia";}s:12:"opt197234023";a:3:{s:10:"calc_value";s:26:"Saint Martin (French part)";s:5:"value";s:26:"Saint Martin (French part)";s:5:"label";s:26:"Saint Martin (French part)";}s:12:"opt198203930";a:3:{s:10:"calc_value";s:25:"Saint Pierre and Miquelon";s:5:"value";s:25:"Saint Pierre and Miquelon";s:5:"label";s:25:"Saint Pierre and Miquelon";}s:12:"opt200261997";a:3:{s:10:"calc_value";s:32:"Saint Vincent and the Grenadines";s:5:"value";s:32:"Saint Vincent and the Grenadines";s:5:"label";s:32:"Saint Vincent and the Grenadines";}s:12:"opt200901374";a:3:{s:10:"calc_value";s:5:"Samoa";s:5:"value";s:5:"Samoa";s:5:"label";s:5:"Samoa";}s:12:"opt202178279";a:3:{s:10:"calc_value";s:10:"San Marino";s:5:"value";s:10:"San Marino";s:5:"label";s:10:"San Marino";}s:12:"opt202940383";a:3:{s:10:"calc_value";s:21:"Sao Tome and Principe";s:5:"value";s:21:"Sao Tome and Principe";s:5:"label";s:21:"Sao Tome and Principe";}s:12:"opt203726752";a:3:{s:10:"calc_value";s:12:"Saudi Arabia";s:5:"value";s:12:"Saudi Arabia";s:5:"label";s:12:"Saudi Arabia";}s:12:"opt205001886";a:3:{s:10:"calc_value";s:7:"Senegal";s:5:"value";s:7:"Senegal";s:5:"label";s:7:"Senegal";}s:12:"opt206347899";a:3:{s:10:"calc_value";s:6:"Serbia";s:5:"value";s:6:"Serbia";s:5:"label";s:6:"Serbia";}s:12:"opt207135407";a:3:{s:10:"calc_value";s:10:"Seychelles";s:5:"value";s:10:"Seychelles";s:5:"label";s:10:"Seychelles";}s:12:"opt208388753";a:3:{s:10:"calc_value";s:12:"Sierra Leone";s:5:"value";s:12:"Sierra Leone";s:5:"label";s:12:"Sierra Leone";}s:12:"opt209344175";a:3:{s:10:"calc_value";s:9:"Singapore";s:5:"value";s:9:"Singapore";s:5:"label";s:9:"Singapore";}s:12:"opt209766058";a:3:{s:10:"calc_value";s:25:"Sint Maarten (Dutch part)";s:5:"value";s:25:"Sint Maarten (Dutch part)";s:5:"label";s:25:"Sint Maarten (Dutch part)";}s:12:"opt210982575";a:3:{s:10:"calc_value";s:8:"Slovakia";s:5:"value";s:8:"Slovakia";s:5:"label";s:8:"Slovakia";}s:12:"opt212471018";a:3:{s:10:"calc_value";s:8:"Slovenia";s:5:"value";s:8:"Slovenia";s:5:"label";s:8:"Slovenia";}s:12:"opt213327083";a:3:{s:10:"calc_value";s:15:"Solomon Islands";s:5:"value";s:15:"Solomon Islands";s:5:"label";s:15:"Solomon Islands";}s:12:"opt214350096";a:3:{s:10:"calc_value";s:7:"Somalia";s:5:"value";s:7:"Somalia";s:5:"label";s:7:"Somalia";}s:12:"opt215106146";a:3:{s:10:"calc_value";s:12:"South Africa";s:5:"value";s:12:"South Africa";s:5:"label";s:12:"South Africa";}s:12:"opt216153921";a:3:{s:10:"calc_value";s:44:"South Georgia and the South Sandwich Islands";s:5:"value";s:44:"South Georgia and the South Sandwich Islands";s:5:"label";s:44:"South Georgia and the South Sandwich Islands";}s:12:"opt217944389";a:3:{s:10:"calc_value";s:11:"South Sudan";s:5:"value";s:11:"South Sudan";s:5:"label";s:11:"South Sudan";}s:12:"opt218836110";a:3:{s:10:"calc_value";s:5:"Spain";s:5:"value";s:5:"Spain";s:5:"label";s:5:"Spain";}s:12:"opt219890341";a:3:{s:10:"calc_value";s:9:"Sri Lanka";s:5:"value";s:9:"Sri Lanka";s:5:"label";s:9:"Sri Lanka";}s:12:"opt220566548";a:3:{s:10:"calc_value";s:5:"Sudan";s:5:"value";s:5:"Sudan";s:5:"label";s:5:"Sudan";}s:12:"opt221841808";a:3:{s:10:"calc_value";s:8:"Suriname";s:5:"value";s:8:"Suriname";s:5:"label";s:8:"Suriname";}s:12:"opt222808197";a:3:{s:10:"calc_value";s:22:"Svalbard and Jan Mayen";s:5:"value";s:22:"Svalbard and Jan Mayen";s:5:"label";s:22:"Svalbard and Jan Mayen";}s:12:"opt223484469";a:3:{s:10:"calc_value";s:9:"Swaziland";s:5:"value";s:9:"Swaziland";s:5:"label";s:9:"Swaziland";}s:12:"opt225222571";a:3:{s:10:"calc_value";s:6:"Sweden";s:5:"value";s:6:"Sweden";s:5:"label";s:6:"Sweden";}s:12:"opt225765856";a:3:{s:10:"calc_value";s:11:"Switzerland";s:5:"value";s:11:"Switzerland";s:5:"label";s:11:"Switzerland";}s:12:"opt226768244";a:3:{s:10:"calc_value";s:20:"Syrian Arab Republic";s:5:"value";s:20:"Syrian Arab Republic";s:5:"label";s:20:"Syrian Arab Republic";}s:12:"opt227546447";a:3:{s:10:"calc_value";s:25:"Taiwan, Province of China";s:5:"value";s:25:"Taiwan, Province of China";s:5:"label";s:25:"Taiwan, Province of China";}s:12:"opt229094289";a:3:{s:10:"calc_value";s:10:"Tajikistan";s:5:"value";s:10:"Tajikistan";s:5:"label";s:10:"Tajikistan";}s:12:"opt230319313";a:3:{s:10:"calc_value";s:28:"Tanzania, United Republic of";s:5:"value";s:28:"Tanzania, United Republic of";s:5:"label";s:28:"Tanzania, United Republic of";}s:12:"opt231144034";a:3:{s:10:"calc_value";s:8:"Thailand";s:5:"value";s:8:"Thailand";s:5:"label";s:8:"Thailand";}s:12:"opt232195383";a:3:{s:10:"calc_value";s:11:"Timor-Leste";s:5:"value";s:11:"Timor-Leste";s:5:"label";s:11:"Timor-Leste";}s:12:"opt233464664";a:3:{s:10:"calc_value";s:4:"Togo";s:5:"value";s:4:"Togo";s:5:"label";s:4:"Togo";}s:12:"opt233941749";a:3:{s:10:"calc_value";s:7:"Tokelau";s:5:"value";s:7:"Tokelau";s:5:"label";s:7:"Tokelau";}s:12:"opt234977024";a:3:{s:10:"calc_value";s:5:"Tonga";s:5:"value";s:5:"Tonga";s:5:"label";s:5:"Tonga";}s:12:"opt236361512";a:3:{s:10:"calc_value";s:19:"Trinidad and Tobago";s:5:"value";s:19:"Trinidad and Tobago";s:5:"label";s:19:"Trinidad and Tobago";}s:12:"opt237881226";a:3:{s:10:"calc_value";s:7:"Tunisia";s:5:"value";s:7:"Tunisia";s:5:"label";s:7:"Tunisia";}s:12:"opt238677026";a:3:{s:10:"calc_value";s:6:"Turkey";s:5:"value";s:6:"Turkey";s:5:"label";s:6:"Turkey";}s:12:"opt240049829";a:3:{s:10:"calc_value";s:12:"Turkmenistan";s:5:"value";s:12:"Turkmenistan";s:5:"label";s:12:"Turkmenistan";}s:12:"opt240217166";a:3:{s:10:"calc_value";s:24:"Turks and Caicos Islands";s:5:"value";s:24:"Turks and Caicos Islands";s:5:"label";s:24:"Turks and Caicos Islands";}s:12:"opt241666583";a:3:{s:10:"calc_value";s:6:"Tuvalu";s:5:"value";s:6:"Tuvalu";s:5:"label";s:6:"Tuvalu";}s:12:"opt243063554";a:3:{s:10:"calc_value";s:6:"Uganda";s:5:"value";s:6:"Uganda";s:5:"label";s:6:"Uganda";}s:12:"opt243455452";a:3:{s:10:"calc_value";s:7:"Ukraine";s:5:"value";s:7:"Ukraine";s:5:"label";s:7:"Ukraine";}s:12:"opt245160347";a:3:{s:10:"calc_value";s:20:"United Arab Emirates";s:5:"value";s:20:"United Arab Emirates";s:5:"label";s:20:"United Arab Emirates";}s:12:"opt245914345";a:3:{s:10:"calc_value";s:14:"United Kingdom";s:5:"value";s:14:"United Kingdom";s:5:"label";s:14:"United Kingdom";}s:12:"opt246620725";a:3:{s:10:"calc_value";s:13:"United States";s:5:"value";s:13:"United States";s:5:"label";s:13:"United States";}s:12:"opt248492352";a:3:{s:10:"calc_value";s:36:"United States Minor Outlying Islands";s:5:"value";s:36:"United States Minor Outlying Islands";s:5:"label";s:36:"United States Minor Outlying Islands";}s:12:"opt249207412";a:3:{s:10:"calc_value";s:7:"Uruguay";s:5:"value";s:7:"Uruguay";s:5:"label";s:7:"Uruguay";}s:12:"opt249765311";a:3:{s:10:"calc_value";s:10:"Uzbekistan";s:5:"value";s:10:"Uzbekistan";s:5:"label";s:10:"Uzbekistan";}s:12:"opt251600246";a:3:{s:10:"calc_value";s:7:"Vanuatu";s:5:"value";s:7:"Vanuatu";s:5:"label";s:7:"Vanuatu";}s:12:"opt251960274";a:3:{s:10:"calc_value";s:33:"Venezuela, Bolivarian Republic of";s:5:"value";s:33:"Venezuela, Bolivarian Republic of";s:5:"label";s:33:"Venezuela, Bolivarian Republic of";}s:12:"opt253623980";a:3:{s:10:"calc_value";s:8:"Viet Nam";s:5:"value";s:8:"Viet Nam";s:5:"label";s:8:"Viet Nam";}s:12:"opt254206978";a:3:{s:10:"calc_value";s:23:"Virgin Islands, British";s:5:"value";s:23:"Virgin Islands, British";s:5:"label";s:23:"Virgin Islands, British";}s:12:"opt255658428";a:3:{s:10:"calc_value";s:20:"Virgin Islands, U.S.";s:5:"value";s:20:"Virgin Islands, U.S.";s:5:"label";s:20:"Virgin Islands, U.S.";}s:12:"opt256276375";a:3:{s:10:"calc_value";s:17:"Wallis and Futuna";s:5:"value";s:17:"Wallis and Futuna";s:5:"label";s:17:"Wallis and Futuna";}s:12:"opt257858163";a:3:{s:10:"calc_value";s:14:"Western Sahara";s:5:"value";s:14:"Western Sahara";s:5:"label";s:14:"Western Sahara";}s:12:"opt257987175";a:3:{s:10:"calc_value";s:5:"Yemen";s:5:"value";s:5:"Yemen";s:5:"label";s:5:"Yemen";}s:12:"opt259003842";a:3:{s:10:"calc_value";s:6:"Zambia";s:5:"value";s:6:"Zambia";s:5:"label";s:6:"Zambia";}s:12:"opt260305608";a:3:{s:10:"calc_value";s:8:"Zimbabwe";s:5:"value";s:8:"Zimbabwe";s:5:"label";s:8:"Zimbabwe";}}}}s:11:"fld_4291573";a:8:{s:2:"ID";s:11:"fld_4291573";s:4:"type";s:9:"paragraph";s:5:"label";s:7:"Message";s:4:"slug";s:7:"message";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:4:"rows";i:4;s:7:"default";s:0:"";}}s:11:"fld_5748248";a:7:{s:2:"ID";s:11:"fld_5748248";s:4:"type";s:6:"button";s:5:"label";s:7:"Envoyer";s:4:"slug";s:7:"envoyer";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:4:"type";s:6:"submit";s:5:"class";s:15:"btn btn-default";s:6:"target";s:0:"";}}}s:10:"page_names";a:1:{i:0;s:6:"Page 1";}s:6:"mailer";a:9:{s:9:"on_insert";i:1;s:11:"sender_name";s:29:"Notification de Caldera Forms";s:12:"sender_email";s:22:"abdounikarim@gmail.com";s:8:"reply_to";s:0:"";s:10:"email_type";s:4:"html";s:10:"recipients";s:0:"";s:6:"bcc_to";s:0:"";s:13:"email_subject";s:21:"Formulaire de contact";s:13:"email_message";s:9:"{summary}";}s:18:"conditional_groups";a:1:{s:6:"fields";a:0:{}}s:8:"settings";a:1:{s:10:"responsive";a:1:{s:11:"break_point";s:2:"sm";}}s:7:"version";s:7:"1.5.7.1";}', 'yes') ;
INSERT INTO `str_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(318, 'CF5a1be4286d10e', 'a:21:{s:13:"_last_updated";s:31:"Mon, 27 Nov 2017 10:13:24 +0000";s:2:"ID";s:15:"CF5a1be4286d10e";s:5:"db_id";i:5;s:10:"cf_version";s:7:"1.5.7.1";s:4:"name";s:24:"Formulaire d\'inscription";s:10:"scroll_top";i:0;s:7:"success";s:67:"Le formulaire a été envoyé. Merci pour votre contribution.						";s:10:"db_support";i:1;s:6:"pinned";i:0;s:9:"hide_form";i:1;s:11:"check_honey";i:1;s:12:"avatar_field";N;s:9:"form_ajax";i:1;s:15:"custom_callback";s:0:"";s:11:"layout_grid";a:2:{s:6:"fields";a:4:{s:11:"fld_9013405";s:3:"1:1";s:11:"fld_4462498";s:3:"1:1";s:11:"fld_3356865";s:3:"1:1";s:11:"fld_4191374";s:3:"1:1";}s:9:"structure";s:2:"12";}s:6:"fields";a:4:{s:11:"fld_9013405";a:8:{s:2:"ID";s:11:"fld_9013405";s:4:"type";s:4:"text";s:5:"label";s:9:"Votre nom";s:4:"slug";s:9:"votre_nom";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:5:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"type_override";s:4:"text";s:4:"mask";s:0:"";}}s:11:"fld_4462498";a:8:{s:2:"ID";s:11:"fld_4462498";s:4:"type";s:5:"email";s:5:"label";s:11:"Votre email";s:4:"slug";s:11:"votre_email";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:3:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";}}s:11:"fld_3356865";a:8:{s:2:"ID";s:11:"fld_3356865";s:4:"type";s:8:"dropdown";s:5:"label";s:23:"Votre activité du mois";s:4:"slug";s:21:"votre_activit_du_mois";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:8:"required";i:1;s:7:"caption";s:0:"";s:6:"config";a:12:{s:12:"custom_class";s:0:"";s:11:"placeholder";s:0:"";s:14:"default_option";s:0:"";s:9:"auto_type";s:0:"";s:8:"taxonomy";s:8:"category";s:9:"post_type";s:4:"post";s:11:"value_field";s:4:"name";s:11:"orderby_tax";s:4:"name";s:12:"orderby_post";s:4:"name";s:5:"order";s:3:"ASC";s:7:"default";s:0:"";s:6:"option";a:10:{s:10:"opt1473629";a:3:{s:10:"calc_value";s:31:"Illuminations de la Cathédrale";s:5:"value";s:31:"Illuminations de la Cathédrale";s:5:"label";s:31:"Illuminations de la Cathédrale";}s:10:"opt1516454";a:3:{s:10:"calc_value";s:31:"Illuminations de la Cathédrale";s:5:"value";s:36:"Arrested Development + DJ Stan Smith";s:5:"label";s:36:"Arrested Development + DJ Stan Smith";}s:10:"opt1096911";a:3:{s:10:"calc_value";s:32:"Une forêt en bois... Construire";s:5:"value";s:32:"Une forêt en bois... Construire";s:5:"label";s:32:"Une forêt en bois... Construire";}s:10:"opt1331378";a:3:{s:10:"calc_value";s:35:"Le Vent de la Réforme. Luther 1517";s:5:"value";s:35:"Le Vent de la Réforme. Luther 1517";s:5:"label";s:35:"Le Vent de la Réforme. Luther 1517";}s:10:"opt1594233";a:3:{s:10:"calc_value";s:18:"Brocante de l\'Etal";s:5:"value";s:18:"Brocante de l\'Etal";s:5:"label";s:18:"Brocante de l\'Etal";}s:10:"opt1199416";a:3:{s:10:"calc_value";s:15:"La femme Oiseau";s:5:"value";s:15:"La femme Oiseau";s:5:"label";s:15:"La femme Oiseau";}s:10:"opt1429281";a:3:{s:10:"calc_value";s:14:"Surprise Party";s:5:"value";s:14:"Surprise Party";s:5:"label";s:14:"Surprise Party";}s:10:"opt1984821";a:3:{s:10:"calc_value";s:8:"Odrylane";s:5:"value";s:8:"Odrylane";s:5:"label";s:8:"Odrylane";}s:10:"opt1231871";a:3:{s:10:"calc_value";s:29:"Visites du quartier européen";s:5:"value";s:29:"Visites du quartier européen";s:5:"label";s:29:"Visites du quartier européen";}s:10:"opt1999051";a:3:{s:10:"calc_value";s:18:"Fête de la bière";s:5:"value";s:18:"Fête de la bière";s:5:"label";s:18:"Fête de la bière";}}}}s:11:"fld_4191374";a:7:{s:2:"ID";s:11:"fld_4191374";s:4:"type";s:6:"button";s:5:"label";s:7:"Envoyer";s:4:"slug";s:7:"envoyer";s:10:"conditions";a:1:{s:4:"type";s:0:"";}s:7:"caption";s:0:"";s:6:"config";a:4:{s:12:"custom_class";s:0:"";s:4:"type";s:6:"submit";s:5:"class";s:15:"btn btn-default";s:6:"target";s:0:"";}}}s:10:"page_names";a:1:{i:0;s:6:"Page 1";}s:6:"mailer";a:9:{s:9:"on_insert";i:1;s:11:"sender_name";s:29:"Notification de Caldera Forms";s:12:"sender_email";s:22:"abdounikarim@gmail.com";s:8:"reply_to";s:0:"";s:10:"email_type";s:4:"html";s:10:"recipients";s:0:"";s:6:"bcc_to";s:0:"";s:13:"email_subject";s:24:"Formulaire d\'inscription";s:13:"email_message";s:9:"{summary}";}s:18:"conditional_groups";a:0:{}s:8:"settings";a:1:{s:10:"responsive";a:1:{s:11:"break_point";s:2:"sm";}}s:7:"version";s:7:"1.5.7.1";}', 'yes'),
(324, 'WPGMZA_FIRST_TIME', '6.4.06', 'yes'),
(325, 'wpgmza_stats', 'a:2:{s:15:"list_maps_basic";a:3:{s:5:"views";i:2;s:13:"last_accessed";s:19:"2017-11-27 10:15:32";s:14:"first_accessed";s:19:"2017-11-27 10:14:50";}s:9:"dashboard";a:3:{s:5:"views";i:2;s:13:"last_accessed";s:19:"2017-11-27 10:17:29";s:14:"first_accessed";s:19:"2017-11-27 10:15:35";}}', 'yes'),
(326, 'wpgmza_google_maps_api_key', 'AIzaSyDyYKTeNVtrwQLmS1u0Z3b7Kk8zwpHdZBE', 'yes'),
(327, 'WPGMZA_SETTINGS', 'a:10:{s:24:"map_default_starting_lat";s:9:"48.581886";s:24:"map_default_starting_lng";s:17:"7.750030000000038";s:18:"map_default_height";s:3:"400";s:17:"map_default_width";s:3:"100";s:16:"map_default_zoom";i:15;s:20:"map_default_max_zoom";i:1;s:16:"map_default_type";i:1;s:21:"map_default_alignment";i:1;s:22:"map_default_width_type";s:2:"\\%";s:23:"map_default_height_type";s:2:"px";}', 'yes'),
(332, 'duplicator_ui_view_state', 'a:3:{s:22:"dup-pack-storage-panel";s:1:"0";s:22:"dup-pack-archive-panel";s:1:"0";s:24:"dup-pack-installer-panel";s:1:"0";}', 'yes'),
(333, 'duplicator_package_active', 'O:11:"DUP_Package":23:{s:7:"Created";s:19:"2017-11-27 10:28:36";s:7:"Version";s:6:"1.2.30";s:9:"VersionWP";s:3:"4.9";s:9:"VersionDB";s:6:"5.6.35";s:10:"VersionPHP";s:5:"7.1.8";s:9:"VersionOS";s:6:"Darwin";s:2:"ID";N;s:4:"Name";s:19:"20171127_strasbourg";s:4:"Hash";s:32:"c23e2000465aa8494413171127102836";s:8:"NameHash";s:52:"20171127_strasbourg_c23e2000465aa8494413171127102836";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:46:"/Users/casrime/Web/strasbourg/wp-snapshots/tmp";s:8:"StoreURL";s:31:"http://strasbourg.abdounikarim.com/wp-snapshots/";s:8:"ScanFile";s:62:"20171127_strasbourg_c23e2000465aa8494413171127102836_scan.json";s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:6:"Status";N;s:6:"WPUser";N;s:7:"Archive";O:11:"DUP_Archive":18:{s:10:"FilterDirs";s:0:"";s:11:"FilterFiles";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:14:"FilterFilesAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:12:"ExportOnlyDB";i:0;s:4:"File";N;s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:29:"/Users/casrime/Web/strasbourg";s:4:"Size";i:0;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":8:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;s:8:"TreeSize";a:0:{}s:11:"TreeWarning";a:0:{}}s:10:"\0*\0Package";O:11:"DUP_Package":23:{s:7:"Created";s:19:"2017-11-27 10:28:36";s:7:"Version";s:6:"1.2.30";s:9:"VersionWP";s:3:"4.9";s:9:"VersionDB";s:6:"5.6.35";s:10:"VersionPHP";s:5:"7.1.8";s:9:"VersionOS";s:6:"Darwin";s:2:"ID";N;s:4:"Name";s:19:"20171127_strasbourg";s:4:"Hash";s:32:"c23e2000465aa8494413171127102836";s:8:"NameHash";s:52:"20171127_strasbourg_c23e2000465aa8494413171127102836";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:46:"/Users/casrime/Web/strasbourg/wp-snapshots/tmp";s:8:"StoreURL";s:31:"http://strasbourg.abdounikarim.com/wp-snapshots/";s:8:"ScanFile";N;s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:6:"Status";N;s:6:"WPUser";N;s:7:"Archive";r:22;s:9:"Installer";O:13:"DUP_Installer":7:{s:4:"File";N;s:4:"Size";i:0;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:10:"\0*\0Package";r:57;}s:8:"Database";O:12:"DUP_Database":13:{s:4:"Type";s:5:"MySQL";s:4:"Size";N;s:4:"File";N;s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:8:"Comments";s:28:"MySQL Community Server (GPL)";s:10:"\0*\0Package";r:57;s:25:"\0DUP_Database\0dbStorePath";N;s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}s:29:"\0DUP_Archive\0tmpFilterDirsAll";a:0:{}s:24:"\0DUP_Archive\0wpCorePaths";a:6:{i:0;s:38:"/Users/casrime/Web/strasbourg/wp-admin";i:1;s:48:"/Users/casrime/Web/strasbourg/wp-content/uploads";i:2;s:50:"/Users/casrime/Web/strasbourg/wp-content/languages";i:3;s:48:"/Users/casrime/Web/strasbourg/wp-content/plugins";i:4;s:47:"/Users/casrime/Web/strasbourg/wp-content/themes";i:5;s:41:"/Users/casrime/Web/strasbourg/wp-includes";}}s:9:"Installer";r:79;s:8:"Database";r:87;}', 'yes'),
(349, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:22:"abdounikarim@gmail.com";s:7:"version";s:5:"4.9.1";s:9:"timestamp";i:1515327154;}', 'no'),
(374, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1515327428;}', 'no') ;

#
# End of data contents of table `str_options`
# --------------------------------------------------------



#
# Delete any existing table `str_postmeta`
#

DROP TABLE IF EXISTS `str_postmeta`;


#
# Table structure of table `str_postmeta`
#

CREATE TABLE `str_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_postmeta`
#
INSERT INTO `str_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_wp_attached_file', '2017/11/logo_OTSR.gif'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:270;s:6:"height";i:100;s:4:"file";s:21:"2017/11/logo_OTSR.gif";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"logo_OTSR-150x100.gif";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 4, '_edit_lock', '1511770919:1'),
(5, 4, '_wp_attachment_image_alt', 'Logo Office de tourisme de Strasbourg'),
(6, 4, '_edit_last', '1'),
(7, 5, '_wp_attached_file', '2017/11/strasbourg1.jpg'),
(8, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1077;s:4:"file";s:23:"2017/11/strasbourg1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"strasbourg1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"strasbourg1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"strasbourg1-768x431.jpg";s:5:"width";i:768;s:6:"height";i:431;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"strasbourg1-1024x574.jpg";s:5:"width";i:1024;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:24:"strasbourg1-1140x285.jpg";s:5:"width";i:1140;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:23:"strasbourg1-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:23:"Canon PowerShot SX10 IS";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"5";s:3:"iso";s:2:"80";s:13:"shutter_speed";s:7:"0.00125";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(9, 6, '_wp_attached_file', '2017/11/strasbourg2.jpg'),
(10, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:23:"2017/11/strasbourg2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"strasbourg2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"strasbourg2-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"strasbourg2-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"strasbourg2-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:24:"strasbourg2-1140x285.jpg";s:5:"width";i:1140;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:23:"strasbourg2-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(11, 7, '_wp_attached_file', '2017/11/strasbourg3.jpg'),
(12, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1271;s:4:"file";s:23:"2017/11/strasbourg3.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"strasbourg3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"strasbourg3-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"strasbourg3-768x508.jpg";s:5:"width";i:768;s:6:"height";i:508;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"strasbourg3-1024x678.jpg";s:5:"width";i:1024;s:6:"height";i:678;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:24:"strasbourg3-1140x285.jpg";s:5:"width";i:1140;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:23:"strasbourg3-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"9";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D7000";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:2:"30";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(13, 8, '_wp_attached_file', '2017/11/strasbourg-2218446_1920-1-1024x678.jpg'),
(14, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:678;s:4:"file";s:46:"2017/11/strasbourg-2218446_1920-1-1024x678.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"strasbourg-2218446_1920-1-1024x678-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"strasbourg-2218446_1920-1-1024x678-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:46:"strasbourg-2218446_1920-1-1024x678-768x509.jpg";s:5:"width";i:768;s:6:"height";i:509;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:47:"strasbourg-2218446_1920-1-1024x678-1024x678.jpg";s:5:"width";i:1024;s:6:"height";i:678;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:47:"strasbourg-2218446_1920-1-1024x678-1024x285.jpg";s:5:"width";i:1024;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:46:"strasbourg-2218446_1920-1-1024x678-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(15, 9, '_wp_attached_file', '2017/11/16265582622_bf6b85d6fe_k-1024x768.jpg'),
(16, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:45:"2017/11/16265582622_bf6b85d6fe_k-1024x768.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"16265582622_bf6b85d6fe_k-1024x768-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"16265582622_bf6b85d6fe_k-1024x768-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"16265582622_bf6b85d6fe_k-1024x768-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"16265582622_bf6b85d6fe_k-1024x768-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:46:"16265582622_bf6b85d6fe_k-1024x768-1024x285.jpg";s:5:"width";i:1024;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:45:"16265582622_bf6b85d6fe_k-1024x768-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 10, '_wp_attached_file', '2017/11/5669016502_896d49dec2_o-1024x694.jpg'),
(18, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:694;s:4:"file";s:44:"2017/11/5669016502_896d49dec2_o-1024x694.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"5669016502_896d49dec2_o-1024x694-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"5669016502_896d49dec2_o-1024x694-300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"5669016502_896d49dec2_o-1024x694-768x521.jpg";s:5:"width";i:768;s:6:"height";i:521;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:45:"5669016502_896d49dec2_o-1024x694-1024x694.jpg";s:5:"width";i:1024;s:6:"height";i:694;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:45:"5669016502_896d49dec2_o-1024x694-1024x285.jpg";s:5:"width";i:1024;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:44:"5669016502_896d49dec2_o-1024x694-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(19, 11, '_wp_attached_file', '2017/11/8340579891_894cf74bce_k-1024x683.jpg'),
(20, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:44:"2017/11/8340579891_894cf74bce_k-1024x683.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"8340579891_894cf74bce_k-1024x683-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"8340579891_894cf74bce_k-1024x683-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"8340579891_894cf74bce_k-1024x683-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:45:"8340579891_894cf74bce_k-1024x683-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:45:"8340579891_894cf74bce_k-1024x683-1024x285.jpg";s:5:"width";i:1024;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:44:"8340579891_894cf74bce_k-1024x683-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(21, 12, '_wp_attached_file', '2017/11/14836487185_2d2b4973d7_o.jpg'),
(22, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:640;s:4:"file";s:36:"2017/11/14836487185_2d2b4973d7_o.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"14836487185_2d2b4973d7_o-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"14836487185_2d2b4973d7_o-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:36:"14836487185_2d2b4973d7_o-640x285.jpg";s:5:"width";i:640;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:36:"14836487185_2d2b4973d7_o-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(23, 13, '_wp_attached_file', '2017/11/strasbourg-909343_1920-1024x685.jpg'),
(24, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:685;s:4:"file";s:43:"2017/11/strasbourg-909343_1920-1024x685.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"strasbourg-909343_1920-1024x685-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"strasbourg-909343_1920-1024x685-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"strasbourg-909343_1920-1024x685-768x514.jpg";s:5:"width";i:768;s:6:"height";i:514;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"strasbourg-909343_1920-1024x685-1024x685.jpg";s:5:"width";i:1024;s:6:"height";i:685;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:44:"strasbourg-909343_1920-1024x685-1024x285.jpg";s:5:"width";i:1024;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:43:"strasbourg-909343_1920-1024x685-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 14, '_wp_attached_file', '2017/11/event-1255709_1920-1024x576.jpg'),
(26, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:576;s:4:"file";s:39:"2017/11/event-1255709_1920-1024x576.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"event-1255709_1920-1024x576-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"event-1255709_1920-1024x576-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:39:"event-1255709_1920-1024x576-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:40:"event-1255709_1920-1024x576-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:40:"event-1255709_1920-1024x576-1024x285.jpg";s:5:"width";i:1024;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:39:"event-1255709_1920-1024x576-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(27, 15, '_wp_attached_file', '2017/11/graduation-995042_1920-1024x409.jpg'),
(28, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:409;s:4:"file";s:43:"2017/11/graduation-995042_1920-1024x409.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"graduation-995042_1920-1024x409-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"graduation-995042_1920-1024x409-300x120.jpg";s:5:"width";i:300;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"graduation-995042_1920-1024x409-768x307.jpg";s:5:"width";i:768;s:6:"height";i:307;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"graduation-995042_1920-1024x409-1024x409.jpg";s:5:"width";i:1024;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:44:"graduation-995042_1920-1024x409-1024x285.jpg";s:5:"width";i:1024;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:43:"graduation-995042_1920-1024x409-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(29, 16, '_wp_attached_file', '2017/11/fuel-1596622_1920-1024x681.jpg'),
(30, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:681;s:4:"file";s:38:"2017/11/fuel-1596622_1920-1024x681.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"fuel-1596622_1920-1024x681-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"fuel-1596622_1920-1024x681-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"fuel-1596622_1920-1024x681-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:39:"fuel-1596622_1920-1024x681-1024x681.jpg";s:5:"width";i:1024;s:6:"height";i:681;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:39:"fuel-1596622_1920-1024x681-1024x285.jpg";s:5:"width";i:1024;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:38:"fuel-1596622_1920-1024x681-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(31, 17, '_wp_attached_file', '2017/11/6555688549_1de29ac10f_b.jpg'),
(32, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:35:"2017/11/6555688549_1de29ac10f_b.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"6555688549_1de29ac10f_b-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"6555688549_1de29ac10f_b-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"6555688549_1de29ac10f_b-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"6555688549_1de29ac10f_b-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:36:"6555688549_1de29ac10f_b-1024x285.jpg";s:5:"width";i:1024;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:35:"6555688549_1de29ac10f_b-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(33, 8, '_edit_lock', '1511771309:1'),
(34, 5, '_edit_lock', '1511771257:1'),
(35, 5, '_wp_attachment_image_alt', 'Slider - Grande île de Strasbourg'),
(36, 5, '_edit_last', '1'),
(37, 6, '_edit_lock', '1511771278:1'),
(38, 6, '_wp_attachment_image_alt', 'Slider - Strasbourg'),
(39, 6, '_edit_last', '1'),
(40, 7, '_edit_lock', '1511771293:1'),
(41, 7, '_wp_attachment_image_alt', 'Slider - Grande île de Strasbourg nuit'),
(42, 7, '_edit_last', '1'),
(43, 8, '_wp_attachment_image_alt', 'Grande île de Strasbourg'),
(44, 8, '_edit_last', '1'),
(45, 9, '_wp_attachment_image_alt', 'Strasbourg - Le conseil de l\'Europe'),
(46, 10, '_wp_attachment_image_alt', 'Strasbourg - Le palais des Droits de l\'Homme'),
(47, 11, '_wp_attachment_image_alt', 'Strasbourg - Le parlement européen'),
(48, 12, '_wp_attachment_image_alt', 'Strasbourg - Le parc de l\'orangerie'),
(49, 13, '_wp_attachment_image_alt', 'Strasbourg - La cathédrale Notre-Dame'),
(50, 14, '_wp_attachment_image_alt', 'Strasbourg - Violence en pleine rue'),
(51, 15, '_wp_attachment_image_alt', 'Strasbourg - Résultat du bac'),
(52, 16, '_wp_attachment_image_alt', 'Strasbourg - Un nouveau carburant pour les bus'),
(53, 17, '_wp_attachment_image_alt', 'Strasbourg - Travaux sur le tunnel du tramway'),
(64, 22, '_edit_last', '1'),
(65, 22, '_wp_page_template', 'default'),
(66, 22, '_edit_lock', '1511773442:1'),
(67, 24, '_edit_last', '1'),
(68, 24, '_edit_lock', '1511771983:1'),
(69, 24, '_wp_page_template', 'default'),
(70, 26, '_edit_last', '1'),
(71, 26, '_wp_page_template', 'default'),
(72, 26, '_edit_lock', '1511775015:1'),
(73, 28, '_edit_last', '1'),
(74, 28, '_wp_page_template', 'default'),
(75, 28, '_edit_lock', '1511777796:1'),
(76, 30, '_edit_last', '1'),
(77, 30, '_wp_page_template', 'default'),
(78, 30, '_edit_lock', '1511771990:1'),
(79, 32, '_menu_item_type', 'post_type'),
(80, 32, '_menu_item_menu_item_parent', '0'),
(81, 32, '_menu_item_object_id', '28'),
(82, 32, '_menu_item_object', 'page'),
(83, 32, '_menu_item_target', ''),
(84, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 32, '_menu_item_xfn', ''),
(86, 32, '_menu_item_url', ''),
(88, 33, '_menu_item_type', 'post_type'),
(89, 33, '_menu_item_menu_item_parent', '0'),
(90, 33, '_menu_item_object_id', '26'),
(91, 33, '_menu_item_object', 'page'),
(92, 33, '_menu_item_target', ''),
(93, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(94, 33, '_menu_item_xfn', ''),
(95, 33, '_menu_item_url', ''),
(97, 34, '_menu_item_type', 'post_type'),
(98, 34, '_menu_item_menu_item_parent', '0'),
(99, 34, '_menu_item_object_id', '22'),
(100, 34, '_menu_item_object', 'page'),
(101, 34, '_menu_item_target', ''),
(102, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(103, 34, '_menu_item_xfn', ''),
(104, 34, '_menu_item_url', ''),
(106, 35, '_menu_item_type', 'taxonomy'),
(107, 35, '_menu_item_menu_item_parent', '0'),
(108, 35, '_menu_item_object_id', '1'),
(109, 35, '_menu_item_object', 'category'),
(110, 35, '_menu_item_target', ''),
(111, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(112, 35, '_menu_item_xfn', ''),
(113, 35, '_menu_item_url', ''),
(115, 36, '_menu_item_type', 'taxonomy') ;
INSERT INTO `str_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(116, 36, '_menu_item_menu_item_parent', '0'),
(117, 36, '_menu_item_object_id', '2'),
(118, 36, '_menu_item_object', 'category'),
(119, 36, '_menu_item_target', ''),
(120, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(121, 36, '_menu_item_xfn', ''),
(122, 36, '_menu_item_url', ''),
(124, 34, 'menu-icons', 'a:8:{s:4:"type";s:9:"dashicons";s:4:"icon";s:20:"dashicons-admin-home";s:10:"hide_label";s:0:"";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(126, 38, '_wp_attached_file', '2017/11/cropped-logo_OTSR.gif'),
(127, 38, '_wp_attachment_context', 'site-icon'),
(128, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:29:"2017/11/cropped-logo_OTSR.gif";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"cropped-logo_OTSR-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";}s:6:"medium";a:4:{s:4:"file";s:29:"cropped-logo_OTSR-300x300.gif";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/gif";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:29:"cropped-logo_OTSR-512x285.gif";s:5:"width";i:512;s:6:"height";i:285;s:9:"mime-type";s:9:"image/gif";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:29:"cropped-logo_OTSR-380x254.gif";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:9:"image/gif";}s:13:"site_icon-270";a:4:{s:4:"file";s:29:"cropped-logo_OTSR-270x270.gif";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/gif";}s:13:"site_icon-192";a:4:{s:4:"file";s:29:"cropped-logo_OTSR-192x192.gif";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/gif";}s:13:"site_icon-180";a:4:{s:4:"file";s:29:"cropped-logo_OTSR-180x180.gif";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/gif";}s:12:"site_icon-32";a:4:{s:4:"file";s:27:"cropped-logo_OTSR-32x32.gif";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(134, 40, '_wp_attached_file', '2017/11/strasbourg-1634088_1920.jpg'),
(135, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:35:"2017/11/strasbourg-1634088_1920.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"strasbourg-1634088_1920-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"strasbourg-1634088_1920-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"strasbourg-1634088_1920-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"strasbourg-1634088_1920-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column1-1/4";a:4:{s:4:"file";s:36:"strasbourg-1634088_1920-1140x285.jpg";s:5:"width";i:1140;s:6:"height";i:285;s:9:"mime-type";s:10:"image/jpeg";}s:30:"consulting-thinkup-column3-2/3";a:4:{s:4:"file";s:35:"strasbourg-1634088_1920-380x254.jpg";s:5:"width";i:380;s:6:"height";i:254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.4";s:6:"credit";s:0:"";s:6:"camera";s:5:"LGV31";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.97";s:3:"iso";s:2:"50";s:13:"shutter_speed";s:16:"0.00115074798619";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(136, 40, '_wp_attachment_image_alt', 'Strasbourg - Canal d\'eau'),
(137, 22, 'wpms_validate_analysis', ''),
(138, 40, '_metaseo_fix_metas_counter', '1'),
(139, 40, '_metaseo_fix_metas', 'a:1:{i:22;a:4:{s:2:"ID";s:2:"22";s:5:"title";s:7:"Accueil";s:9:"post_type";s:4:"page";s:4:"meta";a:1:{i:0;a:2:{s:7:"img_src";s:98:"http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-1634088_1920-1024x576.jpg";s:4:"type";a:2:{s:3:"alt";s:24:"Strasbourg - Canal d\'eau";s:5:"title";s:24:"Strasbourg - Canal d\'eau";}}}}}'),
(141, 22, '_metaseo_metatitle', 'Accueil - Strasbourg'),
(142, 22, '_metaseo_metadesc', 'Accueil'),
(143, 22, '_metaseo_metaopengraph-title', ''),
(144, 22, '_metaseo_metaopengraph-desc', ''),
(145, 22, '_metaseo_metaopengraph-image', ''),
(146, 22, '_metaseo_metatwitter-title', ''),
(147, 22, '_metaseo_metatwitter-desc', ''),
(148, 22, '_metaseo_metatwitter-image', ''),
(149, 22, '_oembed_03670fd25e7cc7c883a11c894af9586f', '<blockquote class="wp-embedded-content" data-secret="3wuHKl092j"><a href="http://strasbourg.abdounikarim.com/">Accueil</a></blockquote><iframe class="wp-embedded-content" sandbox="allow-scripts" security="restricted" style="position: absolute; clip: rect(1px, 1px, 1px, 1px);" src="http://strasbourg.abdounikarim.com/embed/#?secret=3wuHKl092j" data-secret="3wuHKl092j" width="600" height="338" title="« Accueil » &#8212; Strasbourg" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>'),
(150, 22, '_oembed_time_03670fd25e7cc7c883a11c894af9586f', '1511773424'),
(151, 49, '_edit_last', '1'),
(152, 49, '_edit_lock', '1511773588:1'),
(154, 49, '_metaseo_metatitle', 'Violence en pleine rue - Strasbourg'),
(155, 49, '_metaseo_metadesc', 'Violence en pleine rue'),
(156, 49, '_metaseo_metaopengraph-title', ''),
(157, 49, '_metaseo_metaopengraph-desc', ''),
(158, 49, '_metaseo_metaopengraph-image', ''),
(159, 49, '_metaseo_metatwitter-title', ''),
(160, 49, '_metaseo_metatwitter-desc', ''),
(161, 49, '_metaseo_metatwitter-image', ''),
(162, 14, '_metaseo_fix_metas_counter', '0'),
(163, 14, '_metaseo_fix_metas', 'a:0:{}'),
(164, 49, 'wpms_validate_analysis', ''),
(165, 49, '_thumbnail_id', '14'),
(167, 51, '_edit_last', '1'),
(168, 51, '_edit_lock', '1511773709:1'),
(169, 51, 'wpms_validate_analysis', ''),
(170, 51, '_thumbnail_id', '15'),
(172, 51, '_metaseo_metatitle', 'Résultat du bac - Strasbourg'),
(173, 51, '_metaseo_metadesc', 'Résultat du bac'),
(174, 51, '_metaseo_metaopengraph-title', ''),
(175, 51, '_metaseo_metaopengraph-desc', ''),
(176, 51, '_metaseo_metaopengraph-image', ''),
(177, 51, '_metaseo_metatwitter-title', ''),
(178, 51, '_metaseo_metatwitter-desc', ''),
(179, 51, '_metaseo_metatwitter-image', ''),
(180, 15, '_metaseo_fix_metas_counter', '0'),
(181, 15, '_metaseo_fix_metas', 'a:0:{}'),
(182, 53, '_edit_last', '1'),
(183, 53, '_edit_lock', '1511773762:1'),
(184, 53, 'wpms_validate_analysis', ''),
(185, 53, '_thumbnail_id', '16'),
(187, 53, '_metaseo_metatitle', 'Un nouveau carburant pour les bus - Strasbourg'),
(188, 53, '_metaseo_metadesc', 'Un nouveau carburant pour les bus'),
(189, 53, '_metaseo_metaopengraph-title', ''),
(190, 53, '_metaseo_metaopengraph-desc', ''),
(191, 53, '_metaseo_metaopengraph-image', ''),
(192, 53, '_metaseo_metatwitter-title', ''),
(193, 53, '_metaseo_metatwitter-desc', ''),
(194, 53, '_metaseo_metatwitter-image', ''),
(195, 16, '_metaseo_fix_metas_counter', '0'),
(196, 16, '_metaseo_fix_metas', 'a:0:{}'),
(197, 55, '_edit_last', '1'),
(198, 17, '_metaseo_fix_metas_counter', '1'),
(199, 17, '_metaseo_fix_metas', 'a:1:{i:55;a:4:{s:2:"ID";s:2:"55";s:5:"title";s:32:"Travaux sur le tunnel du tramway";s:9:"post_type";s:4:"post";s:4:"meta";a:1:{i:0;a:2:{s:7:"img_src";s:98:"http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/6555688549_1de29ac10f_b-1024x768.jpg";s:4:"type";a:2:{s:3:"alt";s:45:"Strasbourg - Travaux sur le tunnel du tramway";s:5:"title";s:45:"Strasbourg - Travaux sur le tunnel du tramway";}}}}}'),
(200, 55, '_edit_lock', '1511773985:1'),
(201, 55, 'wpms_validate_analysis', ''),
(202, 55, '_thumbnail_id', '17'),
(204, 55, '_metaseo_metatitle', 'Travaux sur le tunnel du tramway - Strasbourg'),
(205, 55, '_metaseo_metadesc', 'Travaux sur le tunnel du tramway'),
(206, 55, '_metaseo_metaopengraph-title', ''),
(207, 55, '_metaseo_metaopengraph-desc', ''),
(208, 55, '_metaseo_metaopengraph-image', ''),
(209, 55, '_metaseo_metatwitter-title', ''),
(210, 55, '_metaseo_metatwitter-desc', ''),
(211, 55, '_metaseo_metatwitter-image', ''),
(213, 58, '_edit_last', '1'),
(214, 58, '_edit_lock', '1511774474:1'),
(215, 58, 'wpms_validate_analysis', ''),
(216, 58, '_thumbnail_id', '13'),
(218, 58, '_metaseo_metatitle', 'La cathédrale Notre-Dame - Strasbourg'),
(219, 58, '_metaseo_metadesc', 'La cathédrale Notre-Dame'),
(220, 58, '_metaseo_metaopengraph-title', ''),
(221, 58, '_metaseo_metaopengraph-desc', ''),
(222, 58, '_metaseo_metaopengraph-image', ''),
(223, 58, '_metaseo_metatwitter-title', ''),
(224, 58, '_metaseo_metatwitter-desc', ''),
(225, 58, '_metaseo_metatwitter-image', ''),
(226, 13, '_metaseo_fix_metas_counter', '0'),
(227, 13, '_metaseo_fix_metas', 'a:0:{}'),
(228, 60, '_edit_last', '1'),
(229, 12, '_metaseo_fix_metas_counter', '1'),
(230, 12, '_metaseo_fix_metas', 'a:1:{i:60;a:4:{s:2:"ID";s:2:"60";s:5:"title";s:22:"Le parc de l\'orangerie";s:9:"post_type";s:4:"post";s:4:"meta";a:1:{i:0;a:2:{s:7:"img_src";s:90:"http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/14836487185_2d2b4973d7_o.jpg";s:4:"type";a:2:{s:3:"alt";s:35:"Strasbourg - Le parc de l\'orangerie";s:5:"title";s:35:"Strasbourg - Le parc de l\'orangerie";}}}}}') ;
INSERT INTO `str_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(231, 60, '_edit_lock', '1511774526:1'),
(232, 60, 'wpms_validate_analysis', ''),
(233, 60, '_thumbnail_id', '12'),
(235, 60, '_metaseo_metatitle', 'Le parc de l\'orangerie - Strasbourg'),
(236, 60, '_metaseo_metadesc', 'Le parc de l\'orangerie'),
(237, 60, '_metaseo_metaopengraph-title', ''),
(238, 60, '_metaseo_metaopengraph-desc', ''),
(239, 60, '_metaseo_metaopengraph-image', ''),
(240, 60, '_metaseo_metatwitter-title', ''),
(241, 60, '_metaseo_metatwitter-desc', ''),
(242, 60, '_metaseo_metatwitter-image', ''),
(243, 62, '_edit_last', '1'),
(244, 11, '_metaseo_fix_metas_counter', '0'),
(245, 11, '_metaseo_fix_metas', 'a:0:{}'),
(246, 62, '_edit_lock', '1511774578:1'),
(247, 62, 'wpms_validate_analysis', ''),
(248, 62, '_thumbnail_id', '11'),
(250, 62, '_metaseo_metatitle', 'Le parlement européen - Strasbourg'),
(251, 62, '_metaseo_metadesc', 'Le parlement européen'),
(252, 62, '_metaseo_metaopengraph-title', ''),
(253, 62, '_metaseo_metaopengraph-desc', ''),
(254, 62, '_metaseo_metaopengraph-image', ''),
(255, 62, '_metaseo_metatwitter-title', ''),
(256, 62, '_metaseo_metatwitter-desc', ''),
(257, 62, '_metaseo_metatwitter-image', ''),
(258, 64, '_edit_last', '1'),
(259, 10, '_metaseo_fix_metas_counter', '0'),
(260, 10, '_metaseo_fix_metas', 'a:0:{}'),
(261, 64, '_edit_lock', '1511774639:1'),
(262, 64, 'wpms_validate_analysis', ''),
(263, 64, '_thumbnail_id', '10'),
(265, 64, '_metaseo_metatitle', 'Le palais des Droits de l\'Homme - Strasbourg'),
(266, 64, '_metaseo_metadesc', 'Le palais des Droits de l\'Homme'),
(267, 64, '_metaseo_metaopengraph-title', ''),
(268, 64, '_metaseo_metaopengraph-desc', ''),
(269, 64, '_metaseo_metaopengraph-image', ''),
(270, 64, '_metaseo_metatwitter-title', ''),
(271, 64, '_metaseo_metatwitter-desc', ''),
(272, 64, '_metaseo_metatwitter-image', ''),
(273, 66, '_edit_last', '1'),
(274, 9, '_metaseo_fix_metas_counter', '0'),
(275, 9, '_metaseo_fix_metas', 'a:0:{}'),
(276, 66, '_edit_lock', '1511774693:1'),
(277, 66, 'wpms_validate_analysis', ''),
(278, 66, '_thumbnail_id', '9'),
(280, 66, '_metaseo_metatitle', 'Le conseil de l\'Europe - Strasbourg'),
(281, 66, '_metaseo_metadesc', 'Le conseil de l\'Europe'),
(282, 66, '_metaseo_metaopengraph-title', ''),
(283, 66, '_metaseo_metaopengraph-desc', ''),
(284, 66, '_metaseo_metaopengraph-image', ''),
(285, 66, '_metaseo_metatwitter-title', ''),
(286, 66, '_metaseo_metatwitter-desc', ''),
(287, 66, '_metaseo_metatwitter-image', ''),
(288, 68, '_edit_last', '1'),
(289, 8, '_metaseo_fix_metas_counter', '0'),
(290, 8, '_metaseo_fix_metas', 'a:0:{}'),
(291, 68, '_edit_lock', '1511774804:1'),
(292, 68, 'wpms_validate_analysis', ''),
(293, 68, '_thumbnail_id', '8'),
(295, 68, '_metaseo_metatitle', 'Grande île de Strasbourg - Strasbourg'),
(296, 68, '_metaseo_metadesc', 'Grande île de Strasbourg'),
(297, 68, '_metaseo_metaopengraph-title', ''),
(298, 68, '_metaseo_metaopengraph-desc', ''),
(299, 68, '_metaseo_metaopengraph-image', ''),
(300, 68, '_metaseo_metatwitter-title', ''),
(301, 68, '_metaseo_metatwitter-desc', ''),
(302, 68, '_metaseo_metatwitter-image', ''),
(303, 26, '_metaseo_metatitle', ''),
(304, 26, '_metaseo_metadesc', ''),
(305, 26, '_metaseo_metaopengraph-title', ''),
(306, 26, '_metaseo_metaopengraph-desc', ''),
(307, 26, '_metaseo_metaopengraph-image', ''),
(308, 26, '_metaseo_metatwitter-title', ''),
(309, 26, '_metaseo_metatwitter-desc', ''),
(310, 26, '_metaseo_metatwitter-image', ''),
(311, 71, '_edit_last', '1'),
(312, 71, '_edit_lock', '1511777445:1'),
(313, 71, '_wp_page_template', 'default'),
(314, 71, '_metaseo_metatitle', ''),
(315, 71, '_metaseo_metadesc', ''),
(316, 71, '_metaseo_metaopengraph-title', ''),
(317, 71, '_metaseo_metaopengraph-desc', ''),
(318, 71, '_metaseo_metaopengraph-image', ''),
(319, 71, '_metaseo_metatwitter-title', ''),
(320, 71, '_metaseo_metatwitter-desc', ''),
(321, 71, '_metaseo_metatwitter-image', ''),
(322, 73, '_edit_last', '1'),
(323, 73, '_edit_lock', '1511775914:1'),
(324, 73, '_wp_page_template', 'default'),
(325, 73, '_metaseo_metatitle', 'Mentions légales - Strasbourg'),
(326, 73, '_metaseo_metadesc', 'Mentions légales'),
(327, 73, '_metaseo_metaopengraph-title', ''),
(328, 73, '_metaseo_metaopengraph-desc', ''),
(329, 73, '_metaseo_metaopengraph-image', ''),
(330, 73, '_metaseo_metatwitter-title', ''),
(331, 73, '_metaseo_metatwitter-desc', ''),
(332, 73, '_metaseo_metatwitter-image', ''),
(333, 73, 'wpms_validate_analysis', ''),
(339, 28, '_metaseo_metatitle', ''),
(340, 28, '_metaseo_metadesc', '') ;
INSERT INTO `str_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(341, 28, '_metaseo_metaopengraph-title', ''),
(342, 28, '_metaseo_metaopengraph-desc', ''),
(343, 28, '_metaseo_metaopengraph-image', ''),
(344, 28, '_metaseo_metatwitter-title', ''),
(345, 28, '_metaseo_metatwitter-desc', ''),
(346, 28, '_metaseo_metatwitter-image', '') ;

#
# End of data contents of table `str_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `str_posts`
#

DROP TABLE IF EXISTS `str_posts`;


#
# Table structure of table `str_posts`
#

CREATE TABLE `str_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_posts`
#
INSERT INTO `str_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2017-11-27 09:24:01', '2017-11-27 08:24:01', '', 'Logo Office de tourisme de Strasbourg', '', 'inherit', 'open', 'closed', '', 'logo_otsr', '', '', '2017-11-27 09:31:17', '2017-11-27 08:31:17', '', 0, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/logo_OTSR.gif', 0, 'attachment', 'image/gif', 0),
(5, 1, '2017-11-27 09:25:56', '2017-11-27 08:25:56', '', 'Slider - Grande île de Strasbourg', '', 'inherit', 'open', 'closed', '', 'strasbourg1', '', '', '2017-11-27 09:29:53', '2017-11-27 08:29:53', '', 0, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg1.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2017-11-27 09:25:59', '2017-11-27 08:25:59', '', 'Slider - Strasbourg', '', 'inherit', 'open', 'closed', '', 'strasbourg2', '', '', '2017-11-27 09:30:21', '2017-11-27 08:30:21', '', 0, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg2.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2017-11-27 09:26:02', '2017-11-27 08:26:02', '', 'Slider - Grande île de Strasbourg nuit', '', 'inherit', 'open', 'closed', '', 'strasbourg3', '', '', '2017-11-27 09:30:36', '2017-11-27 08:30:36', '', 0, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg3.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2017-11-27 09:27:43', '2017-11-27 08:27:43', '', 'Grande île de Strasbourg', '', 'inherit', 'open', 'closed', '', 'strasbourg-2218446_1920-1-1024x678', '', '', '2017-11-27 10:27:25', '2017-11-27 09:27:25', '', 68, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-2218446_1920-1-1024x678.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2017-11-27 09:27:47', '2017-11-27 08:27:47', '', 'Strasbourg - Le conseil de l\'Europe', '', 'inherit', 'open', 'closed', '', '16265582622_bf6b85d6fe_k-1024x768', '', '', '2017-11-27 10:26:35', '2017-11-27 09:26:35', '', 66, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/16265582622_bf6b85d6fe_k-1024x768.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2017-11-27 09:27:50', '2017-11-27 08:27:50', '', 'Strasbourg - Le palais des Droits de l\'Homme', '', 'inherit', 'open', 'closed', '', '5669016502_896d49dec2_o-1024x694', '', '', '2017-11-27 10:25:40', '2017-11-27 09:25:40', '', 64, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/5669016502_896d49dec2_o-1024x694.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2017-11-27 09:27:56', '2017-11-27 08:27:56', '', 'Strasbourg - Le parlement européen', '', 'inherit', 'open', 'closed', '', '8340579891_894cf74bce_k-1024x683', '', '', '2017-11-27 10:24:50', '2017-11-27 09:24:50', '', 62, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/8340579891_894cf74bce_k-1024x683.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2017-11-27 09:27:59', '2017-11-27 08:27:59', '', 'Strasbourg - Le parc de l\'orangerie', '', 'inherit', 'open', 'closed', '', '14836487185_2d2b4973d7_o', '', '', '2017-11-27 10:23:49', '2017-11-27 09:23:49', '', 60, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/14836487185_2d2b4973d7_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2017-11-27 09:28:01', '2017-11-27 08:28:01', '', 'Strasbourg - La cathédrale Notre-Dame', '', 'inherit', 'open', 'closed', '', 'strasbourg-909343_1920-1024x685', '', '', '2017-11-27 10:22:38', '2017-11-27 09:22:38', '', 58, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-909343_1920-1024x685.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2017-11-27 09:28:18', '2017-11-27 08:28:18', '', 'Strasbourg - Violence en pleine rue', '', 'inherit', 'open', 'closed', '', 'event-1255709_1920-1024x576', '', '', '2017-11-27 10:07:39', '2017-11-27 09:07:39', '', 49, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/event-1255709_1920-1024x576.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2017-11-27 09:28:22', '2017-11-27 08:28:22', '', 'Strasbourg - Résultat du bac', '', 'inherit', 'open', 'closed', '', 'graduation-995042_1920-1024x409', '', '', '2017-11-27 10:09:16', '2017-11-27 09:09:16', '', 51, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/graduation-995042_1920-1024x409.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2017-11-27 09:28:25', '2017-11-27 08:28:25', '', 'Strasbourg - Un nouveau carburant pour les bus', '', 'inherit', 'open', 'closed', '', 'fuel-1596622_1920-1024x681', '', '', '2017-11-27 10:11:13', '2017-11-27 09:11:13', '', 53, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/fuel-1596622_1920-1024x681.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2017-11-27 09:28:28', '2017-11-27 08:28:28', '', 'Strasbourg - Travaux sur le tunnel du tramway', '', 'inherit', 'open', 'closed', '', '6555688549_1de29ac10f_b', '', '', '2017-11-27 10:12:03', '2017-11-27 09:12:03', '', 55, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/6555688549_1de29ac10f_b.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2017-11-27 09:41:21', '2017-11-27 08:41:21', '<h2 class="widget-title">Bienvenue sur la page d\'accueil du site de l\'office de tourisme de la ville de Strasbourg</h2>\r\n<img class="aligncenter wp-image-40 size-large" title="Strasbourg - Canal d\'eau" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-1634088_1920-1024x576.jpg" alt="Strasbourg - Canal d\'eau" width="1024" height="576" />\r\n\r\nBonjour et bienvenue sur le site de l\'office de tourisme de la ville de Strasbourg. Vous pouvez suivre les dernières <a href="http://strasbourg.abdounikarim.com/category/actus/">actualités</a>, avoir <a href="http://strasbourg.abdounikarim.com/category/infos/">plus d\'infos</a> sur notre ville.\r\n\r\nVous pouvez aussi retrouver les <a href="http://strasbourg.abdounikarim.com/activites-du-mois/">activités du mois</a>.\r\n\r\nPour toute autre demande, n\'hésitez pas à nous <a href="http://strasbourg.abdounikarim.com/contact/">contacter</a>.', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2017-11-27 10:05:26', '2017-11-27 09:05:26', '', 0, 'http://strasbourg.abdounikarim.com/?page_id=22', 0, 'page', '', 0),
(23, 1, '2017-11-27 09:41:21', '2017-11-27 08:41:21', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-11-27 09:41:21', '2017-11-27 08:41:21', '', 22, 'http://strasbourg.abdounikarim.com/2017/11/27/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2017-11-27 09:41:44', '2017-11-27 08:41:44', '', 'Plus d\'infos', '', 'publish', 'closed', 'closed', '', 'plus-dinfos', '', '', '2017-11-27 09:41:44', '2017-11-27 08:41:44', '', 0, 'http://strasbourg.abdounikarim.com/?page_id=24', 0, 'page', '', 0),
(25, 1, '2017-11-27 09:41:44', '2017-11-27 08:41:44', '', 'Plus d\'infos', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-11-27 09:41:44', '2017-11-27 08:41:44', '', 24, 'http://strasbourg.abdounikarim.com/2017/11/27/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-11-27 09:41:52', '2017-11-27 08:41:52', '[supsystic-tables id=1]', 'Activités du mois', '', 'publish', 'closed', 'closed', '', 'activites-du-mois', '', '', '2017-11-27 10:32:20', '2017-11-27 09:32:20', '', 0, 'http://strasbourg.abdounikarim.com/?page_id=26', 0, 'page', '', 0),
(27, 1, '2017-11-27 09:41:52', '2017-11-27 08:41:52', '', 'Activités du mois', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-11-27 09:41:52', '2017-11-27 08:41:52', '', 26, 'http://strasbourg.abdounikarim.com/2017/11/27/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-11-27 09:41:58', '2017-11-27 08:41:58', 'Les champs marqués d\'une astérisque * sont obligatoires\r\n\r\n[caldera_form id="CF5a1be3140606b"]\r\n\r\n[wpgmza id="1"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-11-27 11:17:54', '2017-11-27 10:17:54', '', 0, 'http://strasbourg.abdounikarim.com/?page_id=28', 0, 'page', '', 0),
(29, 1, '2017-11-27 09:41:58', '2017-11-27 08:41:58', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2017-11-27 09:41:58', '2017-11-27 08:41:58', '', 28, 'http://strasbourg.abdounikarim.com/2017/11/27/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-11-27 09:42:12', '2017-11-27 08:42:12', '', 'Actualités', '', 'publish', 'closed', 'closed', '', 'actualites', '', '', '2017-11-27 09:42:12', '2017-11-27 08:42:12', '', 0, 'http://strasbourg.abdounikarim.com/?page_id=30', 0, 'page', '', 0),
(31, 1, '2017-11-27 09:42:12', '2017-11-27 08:42:12', '', 'Actualités', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2017-11-27 09:42:12', '2017-11-27 08:42:12', '', 30, 'http://strasbourg.abdounikarim.com/2017/11/27/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-11-27 09:43:07', '2017-11-27 08:43:07', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2017-11-27 09:44:07', '2017-11-27 08:44:07', '', 0, 'http://strasbourg.abdounikarim.com/?p=32', 5, 'nav_menu_item', '', 0),
(33, 1, '2017-11-27 09:43:07', '2017-11-27 08:43:07', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2017-11-27 09:44:07', '2017-11-27 08:44:07', '', 0, 'http://strasbourg.abdounikarim.com/?p=33', 4, 'nav_menu_item', '', 0),
(34, 1, '2017-11-27 09:43:07', '2017-11-27 08:43:07', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2017-11-27 09:44:07', '2017-11-27 08:44:07', '', 0, 'http://strasbourg.abdounikarim.com/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2017-11-27 09:43:07', '2017-11-27 08:43:07', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2017-11-27 09:44:07', '2017-11-27 08:44:07', '', 0, 'http://strasbourg.abdounikarim.com/?p=35', 2, 'nav_menu_item', '', 0),
(36, 1, '2017-11-27 09:43:07', '2017-11-27 08:43:07', '', 'Plus d\'infos', '', 'publish', 'closed', 'closed', '', 'plus-dinfos', '', '', '2017-11-27 09:44:07', '2017-11-27 08:44:07', '', 0, 'http://strasbourg.abdounikarim.com/?p=36', 3, 'nav_menu_item', '', 0),
(38, 1, '2017-11-27 09:46:05', '2017-11-27 08:46:05', 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/cropped-logo_OTSR.gif', 'cropped-logo_OTSR.gif', '', 'inherit', 'open', 'closed', '', 'cropped-logo_otsr-gif', '', '', '2017-11-27 09:46:05', '2017-11-27 08:46:05', '', 0, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/cropped-logo_OTSR.gif', 0, 'attachment', 'image/gif', 0),
(40, 1, '2017-11-27 09:48:46', '2017-11-27 08:48:46', '', 'Strasbourg - Canal d\'eau', '', 'inherit', 'open', 'closed', '', 'strasbourg-1634088_1920', '', '', '2017-11-27 09:49:59', '2017-11-27 08:49:59', '', 22, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-1634088_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2017-11-27 09:49:01', '2017-11-27 08:49:01', '<h3 class="widget-title">Bienvenue sur le site de l\'office de tourisme de la ville de Strasbourg</h3>\n&nbsp;', 'Accueil', '', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2017-11-27 09:49:01', '2017-11-27 08:49:01', '', 22, 'http://strasbourg.abdounikarim.com/2017/11/27/22-autosave-v1/', 0, 'revision', '', 0),
(42, 1, '2017-11-27 09:50:37', '2017-11-27 08:50:37', '<h3 class="widget-title">Bienvenue sur le site de l\'office de tourisme de la ville de Strasbourg</h3>\r\n<img class="aligncenter size-large wp-image-40" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-1634088_1920-1024x576.jpg" alt="Strasbourg - Canal d\'eau" width="1024" height="576" />\r\n\r\nBonjour et bienvenue sur le site de l\'office de tourisme de la ville de Strasbourg. Vous pouvez suivre les dernières <a href="http://strasbourg.abdounikarim.com/category/actus/">actualités</a>, avoir <a href="http://strasbourg.abdounikarim.com/category/infos/">plus d\'infos</a> sur notre ville.\r\n\r\nVous pouvez aussi retrouver les <a href="http://strasbourg.abdounikarim.com/activites-du-mois/">activités du mois</a>.\r\n\r\nPour toute autre demande, n\'hésitez pas à nous <a href="http://strasbourg.abdounikarim.com/contact/">contacter</a>.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-11-27 09:50:37', '2017-11-27 08:50:37', '', 22, 'http://strasbourg.abdounikarim.com/2017/11/27/22-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-11-27 09:54:42', '2017-11-27 08:54:42', '<div class="wall"\n style="background-color: #F2F3F7; border: 30px solid #fff; width: 90%; height: 90%; margin: 0 auto;">\n\n        <h1 style="text-align: center; font-family:\'open-sans\', arial;\n         color: #444; font-size: 60px; padding: 50px;">ERROR 404 <br />-<br />NOT FOUND</h1>\n    <p style="text-align: center; font-family:\'open-sans\', arial; color: #444;\n     font-size: 40px; padding: 20px; line-height: 55px;">\n    // You may have mis-typed the URL,<br />\n    // Or the page has been removed,<br />\n    // Actually, there is nothing to see here...</p>\n        <p style="text-align: center;"><a style=" font-family:\'open-sans\', arial; color: #444;\n         font-size: 20px; padding: 20px; line-height: 30px; text-decoration: none;"\n          href="http://strasbourg.abdounikarim.com"><< Go back to home page >></a></p>\n    </div>', '404 error page', 'metaseo_404_page', 'publish', 'closed', 'closed', '', '404-error-page', '', '', '2017-11-27 09:54:42', '2017-11-27 08:54:42', '', 0, 'http://strasbourg.abdounikarim.com/404-error-page/', 0, 'page', '', 0),
(44, 1, '2017-11-27 09:54:42', '2017-11-27 08:54:42', '', 'WPMS HTML Sitemap', 'metaseo_html_sitemap', 'publish', 'closed', 'closed', '', 'wpms-html-sitemap', '', '', '2017-11-27 09:54:42', '2017-11-27 08:54:42', '', 0, 'http://strasbourg.abdounikarim.com/wpms-html-sitemap/', 0, 'page', '', 0),
(45, 1, '2017-11-27 09:58:24', '2017-11-27 08:58:24', '<h3 class="widget-title">Bienvenue sur la page d\'accueil du site de l\'office de tourisme de la ville de Strasbourg</h3>\r\n<img class="aligncenter wp-image-40 size-large" title="Strasbourg - Canal d\'eau" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-1634088_1920-1024x576.jpg" alt="Strasbourg - Canal d\'eau" width="1024" height="576" />\r\n\r\nBonjour et bienvenue sur le site de l\'office de tourisme de la ville de Strasbourg. Vous pouvez suivre les dernières <a href="http://strasbourg.abdounikarim.com/category/actus/">actualités</a>, avoir <a href="http://strasbourg.abdounikarim.com/category/infos/">plus d\'infos</a> sur notre ville.\r\n\r\nVous pouvez aussi retrouver les <a href="http://strasbourg.abdounikarim.com/activites-du-mois/">activités du mois</a>.\r\n\r\nPour toute autre demande, n\'hésitez pas à nous <a href="http://strasbourg.abdounikarim.com/contact/">contacter</a>.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-11-27 09:58:24', '2017-11-27 08:58:24', '', 22, 'http://strasbourg.abdounikarim.com/2017/11/27/22-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-11-27 09:58:40', '2017-11-27 08:58:40', '<h2 class="widget-title">Bienvenue sur la page d\'accueil du site de l\'office de tourisme de la ville de Strasbourg</h2>\r\n<img class="aligncenter wp-image-40 size-large" title="Strasbourg - Canal d\'eau" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-1634088_1920-1024x576.jpg" alt="Strasbourg - Canal d\'eau" width="1024" height="576" />\r\n\r\nBonjour et bienvenue sur le site de l\'office de tourisme de la ville de Strasbourg. Vous pouvez suivre les dernières <a href="http://strasbourg.abdounikarim.com/category/actus/">actualités</a>, avoir <a href="http://strasbourg.abdounikarim.com/category/infos/">plus d\'infos</a> sur notre ville.\r\n\r\nVous pouvez aussi retrouver les <a href="http://strasbourg.abdounikarim.com/activites-du-mois/">activités du mois</a>.\r\n\r\nPour toute autre demande, n\'hésitez pas à nous <a href="http://strasbourg.abdounikarim.com/contact/">contacter</a>.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-11-27 09:58:40', '2017-11-27 08:58:40', '', 22, 'http://strasbourg.abdounikarim.com/2017/11/27/22-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-11-27 10:04:14', '2017-11-27 09:04:14', '<h2 class="widget-title">Bienvenue sur la page d\'accueil du site de l\'office de tourisme de la ville de Strasbourg</h2>\r\n<img class="aligncenter wp-image-40 size-large" title="Strasbourg - Canal d\'eau" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-1634088_1920-1024x576.jpg" alt="Strasbourg - Canal d\'eau" width="1024" height="576" />\r\n\r\nBonjour et bienvenue sur le site de l\'office de tourisme de la ville de Strasbourg. Vous pouvez suivre les dernières <a href="http://strasbourg.abdounikarim.com/category/actus/">actualités</a>, avoir <a href="http://strasbourg.abdounikarim.com/category/infos/">plus d\'infos</a> sur notre ville.\r\n\r\nVous pouvez aussi retrouver les <a href="http://strasbourg.abdounikarim.com/activites-du-mois/">activités du mois</a>.\r\n\r\nPour toute autre demande, n\'hésitez pas à nous <a href="http://strasbourg.abdounikarim.com/contact/">contacter</a>.\r\n\r\n[awesome-weather location="Strasbourg" units="C"]', 'Accueil', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-11-27 10:04:14', '2017-11-27 09:04:14', '', 22, 'http://strasbourg.abdounikarim.com/2017/11/27/22-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-11-27 10:05:26', '2017-11-27 09:05:26', '<h2 class="widget-title">Bienvenue sur la page d\'accueil du site de l\'office de tourisme de la ville de Strasbourg</h2>\r\n<img class="aligncenter wp-image-40 size-large" title="Strasbourg - Canal d\'eau" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-1634088_1920-1024x576.jpg" alt="Strasbourg - Canal d\'eau" width="1024" height="576" />\r\n\r\nBonjour et bienvenue sur le site de l\'office de tourisme de la ville de Strasbourg. Vous pouvez suivre les dernières <a href="http://strasbourg.abdounikarim.com/category/actus/">actualités</a>, avoir <a href="http://strasbourg.abdounikarim.com/category/infos/">plus d\'infos</a> sur notre ville.\r\n\r\nVous pouvez aussi retrouver les <a href="http://strasbourg.abdounikarim.com/activites-du-mois/">activités du mois</a>.\r\n\r\nPour toute autre demande, n\'hésitez pas à nous <a href="http://strasbourg.abdounikarim.com/contact/">contacter</a>.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-11-27 10:05:26', '2017-11-27 09:05:26', '', 22, 'http://strasbourg.abdounikarim.com/2017/11/27/22-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2017-11-27 10:07:51', '2017-11-27 09:07:51', '<img class="aligncenter wp-image-14 size-large" title="Strasbourg - Violence en pleine rue" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/event-1255709_1920-1024x576-1024x576.jpg" alt="Strasbourg - Violence en pleine rue" width="1024" height="576" />\r\n\r\nUn homme a été tabassé en pleine rue, dans le quartier de l’Elsau, dans la nuit de lundi à mardi. Ce mercredi matin, le pronostic vital de l’homme reste engagé, selon France 3.\r\nLes raisons de la rixe sont encore inconnues.\r\n\r\nLes policiers sont intervenus et ont placé en garde à vue un individu qui aurait participé à la bagarre.\r\nUne enquête a été ouverte.', 'Violence en pleine rue', '', 'publish', 'open', 'open', '', 'violence-en-pleine-rue', '', '', '2017-11-27 10:08:46', '2017-11-27 09:08:46', '', 0, 'http://strasbourg.abdounikarim.com/?p=49', 0, 'post', '', 0),
(50, 1, '2017-11-27 10:07:51', '2017-11-27 09:07:51', '<img class="aligncenter wp-image-14 size-large" title="Strasbourg - Violence en pleine rue" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/event-1255709_1920-1024x576-1024x576.jpg" alt="Strasbourg - Violence en pleine rue" width="1024" height="576" />\r\n\r\nUn homme a été tabassé en pleine rue, dans le quartier de l’Elsau, dans la nuit de lundi à mardi. Ce mercredi matin, le pronostic vital de l’homme reste engagé, selon France 3.\r\nLes raisons de la rixe sont encore inconnues.\r\n\r\nLes policiers sont intervenus et ont placé en garde à vue un individu qui aurait participé à la bagarre.\r\nUne enquête a été ouverte.', 'Violence en pleine rue', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2017-11-27 10:07:51', '2017-11-27 09:07:51', '', 49, 'http://strasbourg.abdounikarim.com/2017/11/27/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2017-11-27 10:09:58', '2017-11-27 09:09:58', '<img class="aligncenter wp-image-15 size-large" title="Strasbourg - Résultat du bac" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/graduation-995042_1920-1024x409-1024x409.jpg" alt="Strasbourg - Résultat du bac" width="1024" height="409" />\r\n\r\nCe mercredi 5 juillet 2017, à partir de 10h00, seront disponibles les résultats du bac pour les filières générales et technologiques de l’académie de Strasbourg sur le site du rectorat. Les résultats du bac professionnel seront disponibles ce même jour à partir de 11 heures.', 'Résultat du bac', '', 'publish', 'open', 'open', '', 'resultat-du-bac', '', '', '2017-11-27 10:09:58', '2017-11-27 09:09:58', '', 0, 'http://strasbourg.abdounikarim.com/?p=51', 0, 'post', '', 0),
(52, 1, '2017-11-27 10:09:58', '2017-11-27 09:09:58', '<img class="aligncenter wp-image-15 size-large" title="Strasbourg - Résultat du bac" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/graduation-995042_1920-1024x409-1024x409.jpg" alt="Strasbourg - Résultat du bac" width="1024" height="409" />\r\n\r\nCe mercredi 5 juillet 2017, à partir de 10h00, seront disponibles les résultats du bac pour les filières générales et technologiques de l’académie de Strasbourg sur le site du rectorat. Les résultats du bac professionnel seront disponibles ce même jour à partir de 11 heures.', 'Résultat du bac', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-11-27 10:09:58', '2017-11-27 09:09:58', '', 51, 'http://strasbourg.abdounikarim.com/2017/11/27/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-11-27 10:11:42', '2017-11-27 09:11:42', '<img class="aligncenter wp-image-16 size-large" title="Strasbourg - Un nouveau carburant pour les bus" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/fuel-1596622_1920-1024x681-1024x681.jpg" alt="Strasbourg - Un nouveau carburant pour les bus" width="1024" height="681" />\r\n\r\nLa Compagnie des transports Strasbourgeois (CTS) a décidé de passer à l’usage du Gas to liquids (GTL) en lieu et place du diesel. Cette dernière a expérimenté ce nouveau carburant sur dix de ses bus au diesel pendant six mois.\r\nL’objectif est de réduire l’impact environnemental grâce à ce nouveau carburant inodore, qui dégage peu de fumée et utilisable sur les moteurs actuels.', 'Un nouveau carburant pour les bus', '', 'publish', 'open', 'open', '', 'un-nouveau-carburant-pour-les-bus', '', '', '2017-11-27 10:11:42', '2017-11-27 09:11:42', '', 0, 'http://strasbourg.abdounikarim.com/?p=53', 0, 'post', '', 0),
(54, 1, '2017-11-27 10:11:42', '2017-11-27 09:11:42', '<img class="aligncenter wp-image-16 size-large" title="Strasbourg - Un nouveau carburant pour les bus" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/fuel-1596622_1920-1024x681-1024x681.jpg" alt="Strasbourg - Un nouveau carburant pour les bus" width="1024" height="681" />\r\n\r\nLa Compagnie des transports Strasbourgeois (CTS) a décidé de passer à l’usage du Gas to liquids (GTL) en lieu et place du diesel. Cette dernière a expérimenté ce nouveau carburant sur dix de ses bus au diesel pendant six mois.\r\nL’objectif est de réduire l’impact environnemental grâce à ce nouveau carburant inodore, qui dégage peu de fumée et utilisable sur les moteurs actuels.', 'Un nouveau carburant pour les bus', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-11-27 10:11:42', '2017-11-27 09:11:42', '', 53, 'http://strasbourg.abdounikarim.com/2017/11/27/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-11-27 10:12:40', '2017-11-27 09:12:40', '<img class="aligncenter wp-image-17 size-large" title="Strasbourg - Travaux sur le tunnel du tramway" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/6555688549_1de29ac10f_b-1024x768.jpg" alt="Strasbourg - Travaux sur le tunnel du tramway" width="1024" height="768" />La CTS va procéder au renouvellement de son réseau de tram cet été. Entre le 10 juillet et le 27 août, les lignes A et D ne circuleront pas entre les stations Rotonde et Homme de Fer.\r\n\r\nPour pallier à ce problème, des bus vont assurer le service :\r\n– entre Rotonde et Sébastopol du lundi au samedi : toutes les 4 à 8 minutes (le dimanche toutes les 8 minutes).\r\n– entre Rotonde et Gare Centrale du lundi au samedi : toutes les 7 à 12 minutes (le dimanche toutes les 12 minutes).\r\n\r\nIl est conseillé d’emprunter le tram de la ligne C pour aller à la Gare Centrale depuis le centre-ville.\r\n\r\nTrams venant du sud : terminus Station Homme de Fer\r\nTrams venant de Hautepierre ou Cronenbourg : terminus station Rotonde.', 'Travaux sur le tunnel du tramway', '', 'publish', 'open', 'open', '', 'travaux-sur-le-tunnel-du-tramway', '', '', '2017-11-27 10:12:40', '2017-11-27 09:12:40', '', 0, 'http://strasbourg.abdounikarim.com/?p=55', 0, 'post', '', 0),
(56, 1, '2017-11-27 10:12:40', '2017-11-27 09:12:40', '<img class="aligncenter wp-image-17 size-large" title="Strasbourg - Travaux sur le tunnel du tramway" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/6555688549_1de29ac10f_b-1024x768.jpg" alt="Strasbourg - Travaux sur le tunnel du tramway" width="1024" height="768" />La CTS va procéder au renouvellement de son réseau de tram cet été. Entre le 10 juillet et le 27 août, les lignes A et D ne circuleront pas entre les stations Rotonde et Homme de Fer.\r\n\r\nPour pallier à ce problème, des bus vont assurer le service :\r\n– entre Rotonde et Sébastopol du lundi au samedi : toutes les 4 à 8 minutes (le dimanche toutes les 8 minutes).\r\n– entre Rotonde et Gare Centrale du lundi au samedi : toutes les 7 à 12 minutes (le dimanche toutes les 12 minutes).\r\n\r\nIl est conseillé d’emprunter le tram de la ligne C pour aller à la Gare Centrale depuis le centre-ville.\r\n\r\nTrams venant du sud : terminus Station Homme de Fer\r\nTrams venant de Hautepierre ou Cronenbourg : terminus station Rotonde.', 'Travaux sur le tunnel du tramway', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-11-27 10:12:40', '2017-11-27 09:12:40', '', 55, 'http://strasbourg.abdounikarim.com/2017/11/27/55-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-11-27 10:23:08', '2017-11-27 09:23:08', '<img class="aligncenter wp-image-13 size-large" title="Strasbourg - La cathédrale Notre-Dame" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-909343_1920-1024x685-1024x685.jpg" alt="Strasbourg - La cathédrale Notre-Dame" width="1024" height="685" />\r\n\r\nFondée en 1015 sur les vestiges d’une précédente cathédrale, la cathédrale Notre-Dame de Strasbourg a été élevée à partir de 1220 par la ville , avec un style gothique.\r\n\r\nSituée dans le quartier de la Grande Île, elle a été jusqu’en 1647 l’un des édifices les plus élevés du monde avec une hauteur de 142,15 mètres.', 'La cathédrale Notre-Dame', '', 'publish', 'open', 'open', '', 'la-cathedrale-notre-dame', '', '', '2017-11-27 10:23:08', '2017-11-27 09:23:08', '', 0, 'http://strasbourg.abdounikarim.com/?p=58', 0, 'post', '', 0),
(59, 1, '2017-11-27 10:23:08', '2017-11-27 09:23:08', '<img class="aligncenter wp-image-13 size-large" title="Strasbourg - La cathédrale Notre-Dame" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-909343_1920-1024x685-1024x685.jpg" alt="Strasbourg - La cathédrale Notre-Dame" width="1024" height="685" />\r\n\r\nFondée en 1015 sur les vestiges d’une précédente cathédrale, la cathédrale Notre-Dame de Strasbourg a été élevée à partir de 1220 par la ville , avec un style gothique.\r\n\r\nSituée dans le quartier de la Grande Île, elle a été jusqu’en 1647 l’un des édifices les plus élevés du monde avec une hauteur de 142,15 mètres.', 'La cathédrale Notre-Dame', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-11-27 10:23:08', '2017-11-27 09:23:08', '', 58, 'http://strasbourg.abdounikarim.com/2017/11/27/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-11-27 10:24:23', '2017-11-27 09:24:23', '<img class="aligncenter wp-image-12 size-full" title="Strasbourg - Le parc de l\'orangerie" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/14836487185_2d2b4973d7_o.jpg" alt="Strasbourg - Le parc de l\'orangerie" width="640" height="640" />\r\n\r\nProche des institutions européennes, dans le quartier de l’Orangerie, le parc de l’Orangerie est un parc public avec une superficie de 26 hectares.\r\nCe parc est bordé par le canal de la Marne au Rhin au nord.', 'Le parc de l\'orangerie', '', 'publish', 'open', 'open', '', 'le-parc-de-lorangerie', '', '', '2017-11-27 10:24:23', '2017-11-27 09:24:23', '', 0, 'http://strasbourg.abdounikarim.com/?p=60', 0, 'post', '', 0),
(61, 1, '2017-11-27 10:24:23', '2017-11-27 09:24:23', '<img class="aligncenter wp-image-12 size-full" title="Strasbourg - Le parc de l\'orangerie" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/14836487185_2d2b4973d7_o.jpg" alt="Strasbourg - Le parc de l\'orangerie" width="640" height="640" />\r\n\r\nProche des institutions européennes, dans le quartier de l’Orangerie, le parc de l’Orangerie est un parc public avec une superficie de 26 hectares.\r\nCe parc est bordé par le canal de la Marne au Rhin au nord.', 'Le parc de l\'orangerie', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-11-27 10:24:23', '2017-11-27 09:24:23', '', 60, 'http://strasbourg.abdounikarim.com/2017/11/27/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-11-27 10:25:18', '2017-11-27 09:25:18', '<img class="aligncenter wp-image-11 size-large" title="Strasbourg - Le parlement européen" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/8340579891_894cf74bce_k-1024x683-1024x683.jpg" alt="Strasbourg - Le parlement européen" width="1024" height="683" />\r\n\r\nSiégeant à Strasbourg, le Parlement européen est élu au suffrage universel direct. Composé de 751 députés appelés députés européens, qui représentent les électeurs des États membres, est le second plus grand électorat au monde. Il a aussi pour responsabilité du contrôle des dépenses du budget européen.', 'Le parlement européen', '', 'publish', 'open', 'open', '', 'le-parlement-europeen', '', '', '2017-11-27 10:25:18', '2017-11-27 09:25:18', '', 0, 'http://strasbourg.abdounikarim.com/?p=62', 0, 'post', '', 0),
(63, 1, '2017-11-27 10:25:18', '2017-11-27 09:25:18', '<img class="aligncenter wp-image-11 size-large" title="Strasbourg - Le parlement européen" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/8340579891_894cf74bce_k-1024x683-1024x683.jpg" alt="Strasbourg - Le parlement européen" width="1024" height="683" />\r\n\r\nSiégeant à Strasbourg, le Parlement européen est élu au suffrage universel direct. Composé de 751 députés appelés députés européens, qui représentent les électeurs des États membres, est le second plus grand électorat au monde. Il a aussi pour responsabilité du contrôle des dépenses du budget européen.', 'Le parlement européen', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2017-11-27 10:25:18', '2017-11-27 09:25:18', '', 62, 'http://strasbourg.abdounikarim.com/2017/11/27/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-11-27 10:26:13', '2017-11-27 09:26:13', '<img class="aligncenter wp-image-10 size-large" title="Strasbourg - Le palais des Droits de l\'Homme" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/5669016502_896d49dec2_o-1024x694-1024x694.jpg" alt="Strasbourg - Le palais des Droits de l\'Homme" width="1024" height="694" />\r\n\r\nLe Palais des Droits de l’Homme, appelé aussi Cour européenne des droits de l’homme, est une juridiction internationale instituée en 1959 par le Conseil de l’Europe. Elle a pour mission d’assurer le respect des engagements souscrits par les États signataires de la Convention européenne des droits de l’homme.\r\n\r\nLe Palais a été construit par Richard Rogers.', 'Le palais des Droits de l\'Homme', '', 'publish', 'open', 'open', '', 'le-palais-des-droits-de-lhomme', '', '', '2017-11-27 10:26:13', '2017-11-27 09:26:13', '', 0, 'http://strasbourg.abdounikarim.com/?p=64', 0, 'post', '', 0),
(65, 1, '2017-11-27 10:26:13', '2017-11-27 09:26:13', '<img class="aligncenter wp-image-10 size-large" title="Strasbourg - Le palais des Droits de l\'Homme" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/5669016502_896d49dec2_o-1024x694-1024x694.jpg" alt="Strasbourg - Le palais des Droits de l\'Homme" width="1024" height="694" />\r\n\r\nLe Palais des Droits de l’Homme, appelé aussi Cour européenne des droits de l’homme, est une juridiction internationale instituée en 1959 par le Conseil de l’Europe. Elle a pour mission d’assurer le respect des engagements souscrits par les États signataires de la Convention européenne des droits de l’homme.\r\n\r\nLe Palais a été construit par Richard Rogers.', 'Le palais des Droits de l\'Homme', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2017-11-27 10:26:13', '2017-11-27 09:26:13', '', 64, 'http://strasbourg.abdounikarim.com/2017/11/27/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-11-27 10:26:58', '2017-11-27 09:26:58', '<img class="aligncenter wp-image-9 size-large" title="Strasbourg - Le conseil de l\'Europe" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/16265582622_bf6b85d6fe_k-1024x768-1024x768.jpg" alt="Strasbourg - Le conseil de l\'Europe" width="1024" height="768" />\r\n\r\nLe Conseil de l’Europe est composé de 47 États membres, et a été institué le 5 mai 1949 par le traité de Londres.\r\n\r\nIl est composé de la Convention européenne des droits de l’homme, ainsi que la Cour européenne des droits de l’homme. Les langues officielles sont le français et l’anglais.', 'Le conseil de l\'Europe', '', 'publish', 'open', 'open', '', 'le-conseil-de-leurope', '', '', '2017-11-27 10:26:58', '2017-11-27 09:26:58', '', 0, 'http://strasbourg.abdounikarim.com/?p=66', 0, 'post', '', 0),
(67, 1, '2017-11-27 10:26:58', '2017-11-27 09:26:58', '<img class="aligncenter wp-image-9 size-large" title="Strasbourg - Le conseil de l\'Europe" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/16265582622_bf6b85d6fe_k-1024x768-1024x768.jpg" alt="Strasbourg - Le conseil de l\'Europe" width="1024" height="768" />\r\n\r\nLe Conseil de l’Europe est composé de 47 États membres, et a été institué le 5 mai 1949 par le traité de Londres.\r\n\r\nIl est composé de la Convention européenne des droits de l’homme, ainsi que la Cour européenne des droits de l’homme. Les langues officielles sont le français et l’anglais.', 'Le conseil de l\'Europe', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-11-27 10:26:58', '2017-11-27 09:26:58', '', 66, 'http://strasbourg.abdounikarim.com/2017/11/27/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-11-27 10:27:47', '2017-11-27 09:27:47', '<img class="aligncenter wp-image-8 size-large" title="Grande île de Strasbourg" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-2218446_1920-1-1024x678-1024x678.jpg" alt="Grande île de Strasbourg" width="1024" height="678" />\r\n\r\nLa Grande Île de Strasbourg se trouve au centre de la ville, entourée par la rivière Ill au sud et le canal du Faux-Rempart au nord. Elle fait partie du patrimoine mondial de l’UNESCO depuis 1988.', 'Grande île de Strasbourg', '', 'publish', 'open', 'open', '', 'grande-ile-de-strasbourg', '', '', '2017-11-27 10:27:47', '2017-11-27 09:27:47', '', 0, 'http://strasbourg.abdounikarim.com/?p=68', 0, 'post', '', 0),
(69, 1, '2017-11-27 10:27:47', '2017-11-27 09:27:47', '<img class="aligncenter wp-image-8 size-large" title="Grande île de Strasbourg" src="http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-2218446_1920-1-1024x678-1024x678.jpg" alt="Grande île de Strasbourg" width="1024" height="678" />\r\n\r\nLa Grande Île de Strasbourg se trouve au centre de la ville, entourée par la rivière Ill au sud et le canal du Faux-Rempart au nord. Elle fait partie du patrimoine mondial de l’UNESCO depuis 1988.', 'Grande île de Strasbourg', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-11-27 10:27:47', '2017-11-27 09:27:47', '', 68, 'http://strasbourg.abdounikarim.com/2017/11/27/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-11-27 10:32:20', '2017-11-27 09:32:20', '[supsystic-tables id=1]', 'Activités du mois', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-11-27 10:32:20', '2017-11-27 09:32:20', '', 26, 'http://strasbourg.abdounikarim.com/2017/11/27/26-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-11-27 10:32:45', '2017-11-27 09:32:45', '[caldera_form id="CF5a1be4286d10e"]', 'Inscription', '', 'publish', 'closed', 'closed', '', 'inscription', '', '', '2017-11-27 11:12:38', '2017-11-27 10:12:38', '', 0, 'http://strasbourg.abdounikarim.com/?page_id=71', 0, 'page', '', 0),
(72, 1, '2017-11-27 10:32:45', '2017-11-27 09:32:45', '', 'Inscription', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2017-11-27 10:32:45', '2017-11-27 09:32:45', '', 71, 'http://strasbourg.abdounikarim.com/2017/11/27/71-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `str_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(73, 1, '2017-11-27 10:45:45', '2017-11-27 09:45:45', 'Ce site a été réalisé dans le cadre d’une formation.\r\nIl n’est aucunement lié à l’Office de tourisme de la ville de Strasbourg.\r\n\r\n&nbsp;\r\n<h2>Informations légales</h2>\r\n<h3>1. Présentation du site.</h3>\r\nEn vertu de l’article 6 de la loi n° 2004-575 du 21 juin 2004 pour la confiance dans l’économie numérique, il est précisé aux utilisateurs du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> l’identité des différents intervenants dans le cadre de sa réalisation et de son suivi :\r\n\r\n<strong>Propriétaire</strong> : Abdouni Abdelkarim – Auto Entrepreneur 813 346 905 000 25 – 60 impasse Jacques Demy 85000 La Roche sur Yon\r\n<strong>Créateur</strong> : <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">Abdouni Abdelkarim</a>\r\n<strong>Responsable publication</strong> : Abdouni Abdelkarim – abdounikarim@gmail.com\r\nLe responsable publication est une personne physique ou une personne morale.\r\n<strong>Webmaster</strong> : Abdouni Abdelkarim – abdounikarim@gmail.com\r\n<strong>Hébergeur</strong> : OVH – 2 rue Kellermann – 59100 Roubaix – France\r\nCrédits :\r\nLes mentions légales ont été générées et offertes par Subdelirium <a href="http://www.subdelirium.com/generateur-de-mentions-legales/" target="_blank" rel="noopener">Générateur de mentions légales</a>\r\n<h3>2. Conditions générales d’utilisation du site et des services proposés.</h3>\r\nL’utilisation du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> implique l’acceptation pleine et entière des conditions générales d’utilisation ci-après décrites. Ces conditions d’utilisation sont susceptibles d’être modifiées ou complétées à tout moment, les utilisateurs du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> sont donc invités à les consulter de manière régulière.\r\n\r\nCe site est normalement accessible à tout moment aux utilisateurs. Une interruption pour raison de maintenance technique peut être toutefois décidée par Abdouni Abdelkarim, qui s’efforcera alors de communiquer préalablement aux utilisateurs les dates et heures de l’intervention.\r\n\r\nLe site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> est mis à jour régulièrement par Abdouni Abdelkarim. De la même façon, les mentions légales peuvent être modifiées à tout moment : elles s’imposent néanmoins à l’utilisateur qui est invité à s’y référer le plus souvent possible afin d’en prendre connaissance.\r\n<h3>3. Description des services fournis.</h3>\r\nLe site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> a pour objet de fournir une information concernant l’ensemble des activités de la société.\r\n\r\nAbdouni Abdelkarim s’efforce de fournir sur le site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> des informations aussi précises que possible. Toutefois, il ne pourra être tenue responsable des omissions, des inexactitudes et des carences dans la mise à jour, qu’elles soient de son fait ou du fait des tiers partenaires qui lui fournissent ces informations.\r\n\r\nTous les informations indiquées sur le site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> sont données à titre indicatif, et sont susceptibles d’évoluer. Par ailleurs, les renseignements figurant sur le site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> ne sont pas exhaustifs. Ils sont donnés sous réserve de modifications ayant été apportées depuis leur mise en ligne.\r\n<h3>4. Limitations contractuelles sur les données techniques.</h3>\r\nLe site utilise la technologie JavaScript.\r\n\r\nLe site Internet ne pourra être tenu responsable de dommages matériels liés à l’utilisation du site. De plus, l’utilisateur du site s’engage à accéder au site en utilisant un matériel récent, ne contenant pas de virus et avec un navigateur de dernière génération mis-à-jour\r\n<h3>5. Propriété intellectuelle et contrefaçons.</h3>\r\nAbdouni Abdelkarim est propriétaire des droits de propriété intellectuelle ou détient les droits d’usage sur tous les éléments accessibles sur le site, notamment les textes, images, graphismes, logo, icônes, sons, logiciels.\r\n\r\nToute reproduction, représentation, modification, publication, adaptation de tout ou partie des éléments du site, quel que soit le moyen ou le procédé utilisé, est interdite, sauf autorisation écrite préalable de : Abdouni Abdelkarim.\r\n\r\nToute exploitation non autorisée du site ou de l’un quelconque des éléments qu’il contient sera considérée comme constitutive d’une contrefaçon et poursuivie conformément aux dispositions des articles L.335-2 et suivants du Code de Propriété Intellectuelle.\r\n<h3>6. Limitations de responsabilité.</h3>\r\nAbdouni Abdelkarim ne pourra être tenue responsable des dommages directs et indirects causés au matériel de l’utilisateur, lors de l’accès au site strasbourg.abdounikarim.com, et résultant soit de l’utilisation d’un matériel ne répondant pas aux spécifications indiquées au point 4, soit de l’apparition d’un bug ou d’une incompatibilité.\r\n\r\nAbdouni Abdelkarim ne pourra également être tenue responsable des dommages indirects (tels par exemple qu’une perte de marché ou perte d’une chance) consécutifs à l’utilisation du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a>.\r\n\r\nDes espaces interactifs (possibilité de poser des questions dans l’espace contact) sont à la disposition des utilisateurs. Abdouni Abdelkarim se réserve le droit de supprimer, sans mise en demeure préalable, tout contenu déposé dans cet espace qui contreviendrait à la législation applicable en France, en particulier aux dispositions relatives à la protection des données. Le cas échéant, Abdouni Abdelkarim se réserve également la possibilité de mettre en cause la responsabilité civile et/ou pénale de l’utilisateur, notamment en cas de message à caractère raciste, injurieux, diffamant, ou pornographique, quel que soit le support utilisé (texte, photographie…).\r\n<h3>7. Gestion des données personnelles.</h3>\r\nEn France, les données personnelles sont notamment protégées par la loi n° 78-87 du 6 janvier 1978, la loi n° 2004-801 du 6 août 2004, l’article L. 226-13 du Code pénal et la Directive Européenne du 24 octobre 1995.\r\n\r\nA l’occasion de l’utilisation du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a>, peuvent êtres recueillies : l’URL des liens par l’intermédiaire desquels l’utilisateur a accédé au site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a>, le fournisseur d’accès de l’utilisateur, l’adresse de protocole Internet (IP) de l’utilisateur.\r\n\r\nEn tout état de cause Abdouni Abdelkarim ne collecte des informations personnelles relatives à l’utilisateur que pour le besoin de certains services proposés par le site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a>. L’utilisateur fournit ces informations en toute connaissance de cause, notamment lorsqu’il procède par lui-même à leur saisie. Il est alors précisé à l’utilisateur du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> l’obligation ou non de fournir ces informations.\r\n\r\nConformément aux dispositions des articles 38 et suivants de la loi 78-17 du 6 janvier 1978 relative à l’informatique, aux fichiers et aux libertés, tout utilisateur dispose d’un droit d’accès, de rectification et d’opposition aux données personnelles le concernant, en effectuant sa demande écrite et signée, accompagnée d’une copie du titre d’identité avec signature du titulaire de la pièce, en précisant l’adresse à laquelle la réponse doit être envoyée.\r\n\r\nAucune information personnelle de l’utilisateur du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> n’est publiée à l’insu de l’utilisateur, échangée, transférée, cédée ou vendue sur un support quelconque à des tiers. Seule l’hypothèse du rachat de Abdouni Abdelkarim et de ses droits permettrait la transmission des dites informations à l’éventuel acquéreur qui serait à son tour tenu de la même obligation de conservation et de modification des données vis à vis de l’utilisateur du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a>.\r\n\r\nLe site n’est pas déclaré à la CNIL car il ne recueille pas d’informations personnelles. .\r\n\r\nLes bases de données sont protégées par les dispositions de la loi du 1er juillet 1998 transposant la directive 96/9 du 11 mars 1996 relative à la protection juridique des bases de données.\r\n<h3>8. Liens hypertextes et cookies.</h3>\r\nLe site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> contient un certain nombre de liens hypertextes vers d’autres sites, mis en place avec l’autorisation de Abdouni Abdelkarim. Cependant, Abdouni Abdelkarim n’a pas la possibilité de vérifier le contenu des sites ainsi visités, et n’assumera en conséquence aucune responsabilité de ce fait.\r\n\r\nLa navigation sur le site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> est susceptible de provoquer l’installation de cookie(s) sur l’ordinateur de l’utilisateur. Un cookie est un fichier de petite taille, qui ne permet pas l’identification de l’utilisateur, mais qui enregistre des informations relatives à la navigation d’un ordinateur sur un site. Les données ainsi obtenues visent à faciliter la navigation ultérieure sur le site, et ont également vocation à permettre diverses mesures de fréquentation.\r\n\r\nLe refus d’installation d’un cookie peut entraîner l’impossibilité d’accéder à certains services. L’utilisateur peut toutefois configurer son ordinateur de la manière suivante, pour refuser l’installation des cookies :\r\n\r\nSous Internet Explorer : onglet outil (pictogramme en forme de rouage en haut a droite) / options internet. Cliquez sur Confidentialité et choisissez Bloquer tous les cookies. Validez sur Ok.\r\n\r\nSous Firefox : en haut de la fenêtre du navigateur, cliquez sur le bouton Firefox, puis aller dans l’onglet Options. Cliquer sur l’onglet Vie privée.\r\nParamétrez les Règles de conservation sur : utiliser les paramètres personnalisés pour l’historique. Enfin décochez-la pour désactiver les cookies.\r\n\r\nSous Safari : Cliquez en haut à droite du navigateur sur le pictogramme de menu (symbolisé par un rouage). Sélectionnez Paramètres. Cliquez sur Afficher les paramètres avancés. Dans la section « Confidentialité », cliquez sur Paramètres de contenu. Dans la section « Cookies », vous pouvez bloquer les cookies.\r\n\r\nSous Chrome : Cliquez en haut à droite du navigateur sur le pictogramme de menu (symbolisé par trois lignes horizontales). Sélectionnez Paramètres. Cliquez sur Afficher les paramètres avancés. Dans la section « Confidentialité », cliquez sur préférences. Dans l’onglet « Confidentialité », vous pouvez bloquer les cookies.\r\n<h3>9. Droit applicable et attribution de juridiction.</h3>\r\nTout litige en relation avec l’utilisation du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> est soumis au droit français. Il est fait attribution exclusive de juridiction aux tribunaux compétents de Paris.\r\n<h3>10. Les principales lois concernées.</h3>\r\nLoi n° 78-17 du 6 janvier 1978, notamment modifiée par la loi n° 2004-801 du 6 août 2004 relative à l’informatique, aux fichiers et aux libertés.\r\n\r\nLoi n° 2004-575 du 21 juin 2004 pour la confiance dans l’économie numérique.\r\n<h3>11. Lexique.</h3>\r\nUtilisateur : Internaute se connectant, utilisant le site susnommé.\r\n\r\nInformations personnelles : « les informations qui permettent, sous quelque forme que ce soit, directement ou non, l’identification des personnes physiques auxquelles elles s’appliquent » (article 4 de la loi n° 78-17 du 6 janvier 1978).', 'Mentions légales', '', 'publish', 'closed', 'closed', '', 'mentions-legales', '', '', '2017-11-27 10:46:22', '2017-11-27 09:46:22', '', 0, 'http://strasbourg.abdounikarim.com/?page_id=73', 0, 'page', '', 0),
(74, 1, '2017-11-27 10:45:45', '2017-11-27 09:45:45', 'Ce site a été réalisé dans le cadre d’une formation.\r\nIl n’est aucunement lié à l’Office de tourisme de la ville de Strasbourg.\r\n\r\n&nbsp;\r\n<h2>Informations légales</h2>\r\n<h3>1. Présentation du site.</h3>\r\nEn vertu de l’article 6 de la loi n° 2004-575 du 21 juin 2004 pour la confiance dans l’économie numérique, il est précisé aux utilisateurs du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> l’identité des différents intervenants dans le cadre de sa réalisation et de son suivi :\r\n\r\n<strong>Propriétaire</strong> : Abdouni Abdelkarim – Auto Entrepreneur 813 346 905 000 25 – 60 impasse Jacques Demy 85000 La Roche sur Yon\r\n<strong>Créateur</strong> : <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">Abdouni Abdelkarim</a>\r\n<strong>Responsable publication</strong> : Abdouni Abdelkarim – abdounikarim@gmail.com\r\nLe responsable publication est une personne physique ou une personne morale.\r\n<strong>Webmaster</strong> : Abdouni Abdelkarim – abdounikarim@gmail.com\r\n<strong>Hébergeur</strong> : OVH – 2 rue Kellermann – 59100 Roubaix – France\r\nCrédits :\r\nLes mentions légales ont été générées et offertes par Subdelirium <a href="http://www.subdelirium.com/generateur-de-mentions-legales/" target="_blank" rel="noopener">Générateur de mentions légales</a>\r\n<h3>2. Conditions générales d’utilisation du site et des services proposés.</h3>\r\nL’utilisation du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> implique l’acceptation pleine et entière des conditions générales d’utilisation ci-après décrites. Ces conditions d’utilisation sont susceptibles d’être modifiées ou complétées à tout moment, les utilisateurs du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> sont donc invités à les consulter de manière régulière.\r\n\r\nCe site est normalement accessible à tout moment aux utilisateurs. Une interruption pour raison de maintenance technique peut être toutefois décidée par Abdouni Abdelkarim, qui s’efforcera alors de communiquer préalablement aux utilisateurs les dates et heures de l’intervention.\r\n\r\nLe site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> est mis à jour régulièrement par Abdouni Abdelkarim. De la même façon, les mentions légales peuvent être modifiées à tout moment : elles s’imposent néanmoins à l’utilisateur qui est invité à s’y référer le plus souvent possible afin d’en prendre connaissance.\r\n<h3>3. Description des services fournis.</h3>\r\nLe site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> a pour objet de fournir une information concernant l’ensemble des activités de la société.\r\n\r\nAbdouni Abdelkarim s’efforce de fournir sur le site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> des informations aussi précises que possible. Toutefois, il ne pourra être tenue responsable des omissions, des inexactitudes et des carences dans la mise à jour, qu’elles soient de son fait ou du fait des tiers partenaires qui lui fournissent ces informations.\r\n\r\nTous les informations indiquées sur le site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> sont données à titre indicatif, et sont susceptibles d’évoluer. Par ailleurs, les renseignements figurant sur le site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> ne sont pas exhaustifs. Ils sont donnés sous réserve de modifications ayant été apportées depuis leur mise en ligne.\r\n<h3>4. Limitations contractuelles sur les données techniques.</h3>\r\nLe site utilise la technologie JavaScript.\r\n\r\nLe site Internet ne pourra être tenu responsable de dommages matériels liés à l’utilisation du site. De plus, l’utilisateur du site s’engage à accéder au site en utilisant un matériel récent, ne contenant pas de virus et avec un navigateur de dernière génération mis-à-jour\r\n<h3>5. Propriété intellectuelle et contrefaçons.</h3>\r\nAbdouni Abdelkarim est propriétaire des droits de propriété intellectuelle ou détient les droits d’usage sur tous les éléments accessibles sur le site, notamment les textes, images, graphismes, logo, icônes, sons, logiciels.\r\n\r\nToute reproduction, représentation, modification, publication, adaptation de tout ou partie des éléments du site, quel que soit le moyen ou le procédé utilisé, est interdite, sauf autorisation écrite préalable de : Abdouni Abdelkarim.\r\n\r\nToute exploitation non autorisée du site ou de l’un quelconque des éléments qu’il contient sera considérée comme constitutive d’une contrefaçon et poursuivie conformément aux dispositions des articles L.335-2 et suivants du Code de Propriété Intellectuelle.\r\n<h3>6. Limitations de responsabilité.</h3>\r\nAbdouni Abdelkarim ne pourra être tenue responsable des dommages directs et indirects causés au matériel de l’utilisateur, lors de l’accès au site strasbourg.abdounikarim.com, et résultant soit de l’utilisation d’un matériel ne répondant pas aux spécifications indiquées au point 4, soit de l’apparition d’un bug ou d’une incompatibilité.\r\n\r\nAbdouni Abdelkarim ne pourra également être tenue responsable des dommages indirects (tels par exemple qu’une perte de marché ou perte d’une chance) consécutifs à l’utilisation du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a>.\r\n\r\nDes espaces interactifs (possibilité de poser des questions dans l’espace contact) sont à la disposition des utilisateurs. Abdouni Abdelkarim se réserve le droit de supprimer, sans mise en demeure préalable, tout contenu déposé dans cet espace qui contreviendrait à la législation applicable en France, en particulier aux dispositions relatives à la protection des données. Le cas échéant, Abdouni Abdelkarim se réserve également la possibilité de mettre en cause la responsabilité civile et/ou pénale de l’utilisateur, notamment en cas de message à caractère raciste, injurieux, diffamant, ou pornographique, quel que soit le support utilisé (texte, photographie…).\r\n<h3>7. Gestion des données personnelles.</h3>\r\nEn France, les données personnelles sont notamment protégées par la loi n° 78-87 du 6 janvier 1978, la loi n° 2004-801 du 6 août 2004, l’article L. 226-13 du Code pénal et la Directive Européenne du 24 octobre 1995.\r\n\r\nA l’occasion de l’utilisation du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a>, peuvent êtres recueillies : l’URL des liens par l’intermédiaire desquels l’utilisateur a accédé au site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a>, le fournisseur d’accès de l’utilisateur, l’adresse de protocole Internet (IP) de l’utilisateur.\r\n\r\nEn tout état de cause Abdouni Abdelkarim ne collecte des informations personnelles relatives à l’utilisateur que pour le besoin de certains services proposés par le site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a>. L’utilisateur fournit ces informations en toute connaissance de cause, notamment lorsqu’il procède par lui-même à leur saisie. Il est alors précisé à l’utilisateur du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> l’obligation ou non de fournir ces informations.\r\n\r\nConformément aux dispositions des articles 38 et suivants de la loi 78-17 du 6 janvier 1978 relative à l’informatique, aux fichiers et aux libertés, tout utilisateur dispose d’un droit d’accès, de rectification et d’opposition aux données personnelles le concernant, en effectuant sa demande écrite et signée, accompagnée d’une copie du titre d’identité avec signature du titulaire de la pièce, en précisant l’adresse à laquelle la réponse doit être envoyée.\r\n\r\nAucune information personnelle de l’utilisateur du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> n’est publiée à l’insu de l’utilisateur, échangée, transférée, cédée ou vendue sur un support quelconque à des tiers. Seule l’hypothèse du rachat de Abdouni Abdelkarim et de ses droits permettrait la transmission des dites informations à l’éventuel acquéreur qui serait à son tour tenu de la même obligation de conservation et de modification des données vis à vis de l’utilisateur du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a>.\r\n\r\nLe site n’est pas déclaré à la CNIL car il ne recueille pas d’informations personnelles. .\r\n\r\nLes bases de données sont protégées par les dispositions de la loi du 1er juillet 1998 transposant la directive 96/9 du 11 mars 1996 relative à la protection juridique des bases de données.\r\n<h3>8. Liens hypertextes et cookies.</h3>\r\nLe site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> contient un certain nombre de liens hypertextes vers d’autres sites, mis en place avec l’autorisation de Abdouni Abdelkarim. Cependant, Abdouni Abdelkarim n’a pas la possibilité de vérifier le contenu des sites ainsi visités, et n’assumera en conséquence aucune responsabilité de ce fait.\r\n\r\nLa navigation sur le site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> est susceptible de provoquer l’installation de cookie(s) sur l’ordinateur de l’utilisateur. Un cookie est un fichier de petite taille, qui ne permet pas l’identification de l’utilisateur, mais qui enregistre des informations relatives à la navigation d’un ordinateur sur un site. Les données ainsi obtenues visent à faciliter la navigation ultérieure sur le site, et ont également vocation à permettre diverses mesures de fréquentation.\r\n\r\nLe refus d’installation d’un cookie peut entraîner l’impossibilité d’accéder à certains services. L’utilisateur peut toutefois configurer son ordinateur de la manière suivante, pour refuser l’installation des cookies :\r\n\r\nSous Internet Explorer : onglet outil (pictogramme en forme de rouage en haut a droite) / options internet. Cliquez sur Confidentialité et choisissez Bloquer tous les cookies. Validez sur Ok.\r\n\r\nSous Firefox : en haut de la fenêtre du navigateur, cliquez sur le bouton Firefox, puis aller dans l’onglet Options. Cliquer sur l’onglet Vie privée.\r\nParamétrez les Règles de conservation sur : utiliser les paramètres personnalisés pour l’historique. Enfin décochez-la pour désactiver les cookies.\r\n\r\nSous Safari : Cliquez en haut à droite du navigateur sur le pictogramme de menu (symbolisé par un rouage). Sélectionnez Paramètres. Cliquez sur Afficher les paramètres avancés. Dans la section « Confidentialité », cliquez sur Paramètres de contenu. Dans la section « Cookies », vous pouvez bloquer les cookies.\r\n\r\nSous Chrome : Cliquez en haut à droite du navigateur sur le pictogramme de menu (symbolisé par trois lignes horizontales). Sélectionnez Paramètres. Cliquez sur Afficher les paramètres avancés. Dans la section « Confidentialité », cliquez sur préférences. Dans l’onglet « Confidentialité », vous pouvez bloquer les cookies.\r\n<h3>9. Droit applicable et attribution de juridiction.</h3>\r\nTout litige en relation avec l’utilisation du site <a href="http://strasbourg.abdounikarim.com.abdounikarim.com/">strasbourg.abdounikarim.com</a> est soumis au droit français. Il est fait attribution exclusive de juridiction aux tribunaux compétents de Paris.\r\n<h3>10. Les principales lois concernées.</h3>\r\nLoi n° 78-17 du 6 janvier 1978, notamment modifiée par la loi n° 2004-801 du 6 août 2004 relative à l’informatique, aux fichiers et aux libertés.\r\n\r\nLoi n° 2004-575 du 21 juin 2004 pour la confiance dans l’économie numérique.\r\n<h3>11. Lexique.</h3>\r\nUtilisateur : Internaute se connectant, utilisant le site susnommé.\r\n\r\nInformations personnelles : « les informations qui permettent, sous quelque forme que ce soit, directement ou non, l’identification des personnes physiques auxquelles elles s’appliquent » (article 4 de la loi n° 78-17 du 6 janvier 1978).', 'Mentions légales', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2017-11-27 10:45:45', '2017-11-27 09:45:45', '', 73, 'http://strasbourg.abdounikarim.com/2017/11/27/73-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-11-27 11:07:51', '2017-11-27 10:07:51', 'Les champs marqués d\'une astérisque * sont obligatoires\r\n\r\n[caldera_form id="CF5a1be3140606b"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2017-11-27 11:07:51', '2017-11-27 10:07:51', '', 28, 'http://strasbourg.abdounikarim.com/2017/11/27/28-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-11-27 11:12:38', '2017-11-27 10:12:38', '[caldera_form id="CF5a1be4286d10e"]', 'Inscription', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2017-11-27 11:12:38', '2017-11-27 10:12:38', '', 71, 'http://strasbourg.abdounikarim.com/2017/11/27/71-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-11-27 11:17:54', '2017-11-27 10:17:54', 'Les champs marqués d\'une astérisque * sont obligatoires\r\n\r\n[caldera_form id="CF5a1be3140606b"]\r\n\r\n[wpgmza id="1"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2017-11-27 11:17:54', '2017-11-27 10:17:54', '', 28, 'http://strasbourg.abdounikarim.com/2017/11/27/28-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-01-07 13:13:40', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-07 13:13:40', '0000-00-00 00:00:00', '', 0, 'http://strasbourg.abdounikarim.com/?p=80', 0, 'post', '', 0) ;

#
# End of data contents of table `str_posts`
# --------------------------------------------------------



#
# Delete any existing table `str_supsystic_tbl_columns`
#

DROP TABLE IF EXISTS `str_supsystic_tbl_columns`;


#
# Table structure of table `str_supsystic_tbl_columns`
#

CREATE TABLE `str_supsystic_tbl_columns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_id` int(10) unsigned DEFAULT NULL,
  `index` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `str_supsystic_tbl_columns`
#

#
# End of data contents of table `str_supsystic_tbl_columns`
# --------------------------------------------------------



#
# Delete any existing table `str_supsystic_tbl_diagrams`
#

DROP TABLE IF EXISTS `str_supsystic_tbl_diagrams`;


#
# Table structure of table `str_supsystic_tbl_diagrams`
#

CREATE TABLE `str_supsystic_tbl_diagrams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_id` int(10) unsigned DEFAULT NULL,
  `start_row` int(10) unsigned DEFAULT NULL,
  `start_col` int(10) unsigned DEFAULT NULL,
  `end_row` int(10) unsigned DEFAULT NULL,
  `end_col` int(10) unsigned DEFAULT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `str_supsystic_tbl_diagrams`
#

#
# End of data contents of table `str_supsystic_tbl_diagrams`
# --------------------------------------------------------



#
# Delete any existing table `str_supsystic_tbl_rows`
#

DROP TABLE IF EXISTS `str_supsystic_tbl_rows`;


#
# Table structure of table `str_supsystic_tbl_rows`
#

CREATE TABLE `str_supsystic_tbl_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_id` int(10) unsigned DEFAULT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;


#
# Data contents of table `str_supsystic_tbl_rows`
#
INSERT INTO `str_supsystic_tbl_rows` ( `id`, `table_id`, `data`) VALUES
(34, 1, 'a:2:{s:5:"cells";a:4:{i:0;a:7:{s:1:"d";s:4:"Date";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:1;a:7:{s:1:"d";s:5:"Titre";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:2;a:7:{s:1:"d";s:11:"Description";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:3;a:7:{s:1:"d";s:11:"Inscription";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}}s:6:"height";N;}'),
(35, 1, 'a:2:{s:5:"cells";a:4:{i:0;a:7:{s:1:"d";s:10:"31/07/2017";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:1;a:7:{s:1:"d";s:31:"Illuminations de la Cathédrale";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:2;a:7:{s:1:"d";s:16:"Son et lumières";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:3;a:7:{s:1:"d";s:120:"&lt;a href=&quot;http://strasbourg.abdounikarim.com/inscription/&quot; target=&quot;_self&quot;&gt;Inscription&lt;/a&gt;";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}}s:6:"height";N;}'),
(36, 1, 'a:2:{s:5:"cells";a:4:{i:0;a:7:{s:1:"d";s:10:"31/07/2017";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:1;a:7:{s:1:"d";s:36:"Arrested Development + DJ Stan Smith";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:2;a:7:{s:1:"d";s:7:"Concert";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:3;a:7:{s:1:"d";s:120:"&lt;a href=&quot;http://strasbourg.abdounikarim.com/inscription/&quot; target=&quot;_self&quot;&gt;Inscription&lt;/a&gt;";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}}s:6:"height";N;}'),
(37, 1, 'a:2:{s:5:"cells";a:4:{i:0;a:7:{s:1:"d";s:10:"01/08/2017";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:1;a:7:{s:1:"d";s:32:"Une forêt en bois... Construire";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:2;a:7:{s:1:"d";s:9:"Théâtre";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:3;a:7:{s:1:"d";s:120:"&lt;a href=&quot;http://strasbourg.abdounikarim.com/inscription/&quot; target=&quot;_self&quot;&gt;Inscription&lt;/a&gt;";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}}s:6:"height";N;}'),
(38, 1, 'a:2:{s:5:"cells";a:4:{i:0;a:7:{s:1:"d";s:10:"01/08/2017";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:1;a:7:{s:1:"d";s:35:"Le Vent de la Réforme. Luther 1517";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:2;a:7:{s:1:"d";s:10:"Exposition";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:3;a:7:{s:1:"d";s:120:"&lt;a href=&quot;http://strasbourg.abdounikarim.com/inscription/&quot; target=&quot;_self&quot;&gt;Inscription&lt;/a&gt;";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}}s:6:"height";N;}'),
(39, 1, 'a:2:{s:5:"cells";a:4:{i:0;a:7:{s:1:"d";s:10:"02/08/2017";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:1;a:7:{s:1:"d";s:23:"Brocante de l&#039;Etal";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:2;a:7:{s:1:"d";s:8:"Brocante";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:3;a:7:{s:1:"d";s:120:"&lt;a href=&quot;http://strasbourg.abdounikarim.com/inscription/&quot; target=&quot;_self&quot;&gt;Inscription&lt;/a&gt;";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}}s:6:"height";N;}'),
(40, 1, 'a:2:{s:5:"cells";a:4:{i:0;a:7:{s:1:"d";s:10:"03/08/2017";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:1;a:7:{s:1:"d";s:15:"La femme Oiseau";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:2;a:7:{s:1:"d";s:9:"Théâtre";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:3;a:7:{s:1:"d";s:120:"&lt;a href=&quot;http://strasbourg.abdounikarim.com/inscription/&quot; target=&quot;_self&quot;&gt;Inscription&lt;/a&gt;";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}}s:6:"height";N;}'),
(41, 1, 'a:2:{s:5:"cells";a:4:{i:0;a:7:{s:1:"d";s:10:"05/08/2017";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:1;a:7:{s:1:"d";s:14:"Surprise Party";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:2;a:7:{s:1:"d";s:10:"Animations";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:3;a:7:{s:1:"d";s:120:"&lt;a href=&quot;http://strasbourg.abdounikarim.com/inscription/&quot; target=&quot;_self&quot;&gt;Inscription&lt;/a&gt;";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}}s:6:"height";N;}'),
(42, 1, 'a:2:{s:5:"cells";a:4:{i:0;a:7:{s:1:"d";s:10:"05/08/2017";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:1;a:7:{s:1:"d";s:8:"Odrylane";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:2;a:7:{s:1:"d";s:7:"Concert";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:3;a:7:{s:1:"d";s:120:"&lt;a href=&quot;http://strasbourg.abdounikarim.com/inscription/&quot; target=&quot;_self&quot;&gt;Inscription&lt;/a&gt;";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}}s:6:"height";N;}'),
(43, 1, 'a:2:{s:5:"cells";a:4:{i:0;a:7:{s:1:"d";s:10:"06/08/2017";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:1;a:7:{s:1:"d";s:29:"Visites du quartier européen";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:2;a:7:{s:1:"d";s:7:"Culture";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:3;a:7:{s:1:"d";s:120:"&lt;a href=&quot;http://strasbourg.abdounikarim.com/inscription/&quot; target=&quot;_self&quot;&gt;Inscription&lt;/a&gt;";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}}s:6:"height";N;}'),
(44, 1, 'a:2:{s:5:"cells";a:4:{i:0;a:7:{s:1:"d";s:10:"06/08/2017";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:1;a:7:{s:1:"d";s:18:"Fête de la bière";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:2;a:7:{s:1:"d";s:12:"Dégustation";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}i:3;a:7:{s:1:"d";s:120:"&lt;a href=&quot;http://strasbourg.abdounikarim.com/inscription/&quot; target=&quot;_self&quot;&gt;Inscription&lt;/a&gt;";s:2:"cv";N;s:1:"h";b:0;s:2:"hc";s:0:"";s:1:"t";s:4:"text";s:2:"ft";s:0:"";s:1:"m";a:0:{}}}s:6:"height";N;}') ;

#
# End of data contents of table `str_supsystic_tbl_rows`
# --------------------------------------------------------



#
# Delete any existing table `str_supsystic_tbl_tables`
#

DROP TABLE IF EXISTS `str_supsystic_tbl_tables`;


#
# Table structure of table `str_supsystic_tbl_tables`
#

CREATE TABLE `str_supsystic_tbl_tables` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `meta` text,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `str_supsystic_tbl_tables`
#
INSERT INTO `str_supsystic_tbl_tables` ( `id`, `title`, `created_at`, `meta`, `settings`) VALUES
(1, 'Activités du mois', '2017-11-27 10:30:42', 'a:6:{s:11:&quot;mergedCells&quot;;a:0:{}s:12:&quot;columnsWidth&quot;;a:4:{i:0;i:101;i:1;i:288;i:2;i:136;i:3;i:90;}s:17:&quot;columnsFixedWidth&quot;;a:0:{}s:16:&quot;columnsSortOrder&quot;;a:0:{}s:21:&quot;columnsDisableSorting&quot;;a:0:{}s:3:&quot;css&quot;;s:340:&quot;/* Here you can add custom CSS for the current table */\n/* Lean more about CSS: https://en.wikipedia.org/wiki/Cascading_Style_Sheets */\n/*\nTo prevent the use of styles to other tables use &quot;#supsystic-table-5&quot; as a base selector\nfor example:\n#supsystic-table-5 { ... }\n#supsystic-table-5 tbody { ... }\n#supsystic-table-5 tbody tr { ... }\n*/\n&quot;;}', 'a:24:{s:8:&quot;elements&quot;;a:3:{s:15:&quot;descriptionText&quot;;s:0:&quot;&quot;;s:13:&quot;signatureText&quot;;s:0:&quot;&quot;;s:4:&quot;head&quot;;s:2:&quot;on&quot;;}s:15:&quot;headerRowsCount&quot;;s:1:&quot;1&quot;;s:15:&quot;footerRowsCount&quot;;s:1:&quot;1&quot;;s:11:&quot;fixedHeight&quot;;s:3:&quot;400&quot;;s:21:&quot;fixedLeftColumnsCount&quot;;s:1:&quot;1&quot;;s:22:&quot;fixedRightColumnsCount&quot;;s:1:&quot;0&quot;;s:9:&quot;autoIndex&quot;;s:3:&quot;off&quot;;s:12:&quot;numberFormat&quot;;s:8:&quot;1,000.00&quot;;s:14:&quot;currencyFormat&quot;;s:9:&quot;$1,000.00&quot;;s:13:&quot;percentFormat&quot;;s:6:&quot;10.00%&quot;;s:10:&quot;dateFormat&quot;;s:10:&quot;DD.MM.YYYY&quot;;s:18:&quot;timeDurationFormat&quot;;s:5:&quot;HH:mm&quot;;s:12:&quot;sortingOrder&quot;;s:3:&quot;asc&quot;;s:18:&quot;sortingOrderColumn&quot;;s:1:&quot;1&quot;;s:20:&quot;paginationMenuLength&quot;;s:10:&quot;50,100,All&quot;;s:14:&quot;paginationSize&quot;;s:16:&quot;pagination-large&quot;;s:9:&quot;searching&quot;;a:1:{s:8:&quot;minChars&quot;;s:1:&quot;0&quot;;}s:8:&quot;features&quot;;a:1:{s:25:&quot;after_table_loaded_script&quot;;s:0:&quot;&quot;;}s:10:&quot;tableWidth&quot;;s:3:&quot;100&quot;;s:14:&quot;tableWidthType&quot;;s:1:&quot;%&quot;;s:14:&quot;responsiveMode&quot;;s:1:&quot;0&quot;;s:7:&quot;styling&quot;;a:2:{s:6:&quot;border&quot;;s:11:&quot;cell-border&quot;;s:5:&quot;hover&quot;;s:2:&quot;on&quot;;}s:11:&quot;tableLoader&quot;;a:3:{s:8:&quot;iconName&quot;;s:7:&quot;default&quot;;s:9:&quot;iconItems&quot;;s:1:&quot;0&quot;;s:5:&quot;color&quot;;s:7:&quot;#000000&quot;;}s:8:&quot;language&quot;;a:8:{s:10:&quot;emptyTable&quot;;s:0:&quot;&quot;;s:4:&quot;info&quot;;s:0:&quot;&quot;;s:9:&quot;infoEmpty&quot;;s:0:&quot;&quot;;s:12:&quot;infoFiltered&quot;;s:0:&quot;&quot;;s:10:&quot;lengthMenu&quot;;s:0:&quot;&quot;;s:6:&quot;search&quot;;s:0:&quot;&quot;;s:11:&quot;zeroRecords&quot;;s:0:&quot;&quot;;s:4:&quot;file&quot;;s:7:&quot;default&quot;;}}') ;

#
# End of data contents of table `str_supsystic_tbl_tables`
# --------------------------------------------------------



#
# Delete any existing table `str_term_relationships`
#

DROP TABLE IF EXISTS `str_term_relationships`;


#
# Table structure of table `str_term_relationships`
#

CREATE TABLE `str_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_term_relationships`
#
INSERT INTO `str_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(32, 3, 0),
(33, 3, 0),
(34, 3, 0),
(35, 3, 0),
(36, 3, 0),
(49, 1, 0),
(51, 1, 0),
(53, 1, 0),
(55, 1, 0),
(58, 2, 0),
(60, 2, 0),
(62, 2, 0),
(64, 2, 0),
(66, 2, 0),
(68, 2, 0) ;

#
# End of data contents of table `str_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `str_term_taxonomy`
#

DROP TABLE IF EXISTS `str_term_taxonomy`;


#
# Table structure of table `str_term_taxonomy`
#

CREATE TABLE `str_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_term_taxonomy`
#
INSERT INTO `str_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'category', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 5) ;

#
# End of data contents of table `str_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `str_termmeta`
#

DROP TABLE IF EXISTS `str_termmeta`;


#
# Table structure of table `str_termmeta`
#

CREATE TABLE `str_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_termmeta`
#

#
# End of data contents of table `str_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `str_terms`
#

DROP TABLE IF EXISTS `str_terms`;


#
# Table structure of table `str_terms`
#

CREATE TABLE `str_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_terms`
#
INSERT INTO `str_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Actualités', 'actus', 0),
(2, 'Plus d\'infos', 'infos', 0),
(3, 'Menu', 'menu', 0) ;

#
# End of data contents of table `str_terms`
# --------------------------------------------------------



#
# Delete any existing table `str_usermeta`
#

DROP TABLE IF EXISTS `str_usermeta`;


#
# Table structure of table `str_usermeta`
#

CREATE TABLE `str_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_usermeta`
#
INSERT INTO `str_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Office de Tourisme de Strasbourg'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'str_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'str_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'existing-redirects'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"3bbd45e28e4f9d4b5e5400e8559431c5c4c1b5627bcdd782a1b6540a48e62953";a:4:{s:10:"expiration";i:1515500001;s:2:"ip";s:3:"::1";s:2:"ua";s:136:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36 FirePHP/4Chrome";s:5:"login";i:1515327201;}}'),
(17, 1, 'str_user-settings', 'editor=tinymce&libraryContent=browse&advImgDetails=show&imgsize=large&align=center'),
(18, 1, 'str_user-settings-time', '1511770752'),
(19, 1, 'str_dashboard_quick_press_last_post_id', '80'),
(20, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'closedpostboxes_page', 'a:1:{i:0;s:12:"edit-box-ppr";}'),
(25, 1, 'metaboxhidden_page', 'a:7:{i:0;s:12:"revisionsdiv";i:1;s:11:"postexcerpt";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(26, 1, 'meta-box-order_page', 'a:3:{s:4:"side";s:36:"submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:107:"revisionsdiv,postexcerpt,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv,wpmseo_meta,edit-box-ppr";s:8:"advanced";s:0:"";}'),
(27, 1, 'screen_layout_page', '2'),
(28, 1, 'metaseo_broken_link_per_page', '10'),
(29, 1, 'closedpostboxes_post', 'a:1:{i:0;s:12:"edit-box-ppr";}'),
(30, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(31, 1, 'meta-box-order_post', 'a:3:{s:4:"side";s:61:"submitdiv,formatdiv,categorydiv,tagsdiv-post_tag,postimagediv";s:6:"normal";s:108:"wpmseo_meta,edit-box-ppr,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(32, 1, 'screen_layout_post', '2'),
(33, 1, 'mtwitter', ''),
(34, 1, 'mfacebook', ''),
(35, 1, 'supsystic-tables-tutorial_was_showed', '1'),
(36, 1, 'cf_pointer_add_element', 'a:1:{i:0;N;}') ;

#
# End of data contents of table `str_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `str_users`
#

DROP TABLE IF EXISTS `str_users`;


#
# Table structure of table `str_users`
#

CREATE TABLE `str_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `str_users`
#
INSERT INTO `str_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'strasbourg_admin', '$P$BihRnAqoRh3itOFRhU6ojTLAVe9fl/.', 'strasbourg_admin', 'abdounikarim@gmail.com', '', '2017-11-27 08:19:07', '', 0, 'Office de Tourisme de Strasbourg') ;

#
# End of data contents of table `str_users`
# --------------------------------------------------------



#
# Delete any existing table `str_wpgmza`
#

DROP TABLE IF EXISTS `str_wpgmza`;


#
# Table structure of table `str_wpgmza`
#

CREATE TABLE `str_wpgmza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Data contents of table `str_wpgmza`
#
INSERT INTO `str_wpgmza` ( `id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`) VALUES
(2, 1, '48.581886,7.75003', '', '', '', '', '48.581886', '7.75003', '1', '', '0', '', 1, 0, 0, '', '') ;

#
# End of data contents of table `str_wpgmza`
# --------------------------------------------------------



#
# Delete any existing table `str_wpgmza_categories`
#

DROP TABLE IF EXISTS `str_wpgmza_categories`;


#
# Table structure of table `str_wpgmza_categories`
#

CREATE TABLE `str_wpgmza_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `str_wpgmza_categories`
#

#
# End of data contents of table `str_wpgmza_categories`
# --------------------------------------------------------



#
# Delete any existing table `str_wpgmza_category_maps`
#

DROP TABLE IF EXISTS `str_wpgmza_category_maps`;


#
# Table structure of table `str_wpgmza_category_maps`
#

CREATE TABLE `str_wpgmza_category_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `str_wpgmza_category_maps`
#

#
# End of data contents of table `str_wpgmza_category_maps`
# --------------------------------------------------------



#
# Delete any existing table `str_wpgmza_maps`
#

DROP TABLE IF EXISTS `str_wpgmza_maps`;


#
# Table structure of table `str_wpgmza_maps`
#

CREATE TABLE `str_wpgmza_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `str_wpgmza_maps`
#
INSERT INTO `str_wpgmza_maps` ( `id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'Carte Strasbourg', '100', '400', '48.581886', '7.750030', '48.581886,7.750030000000038', 15, '0', 1, 1, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:12:{s:21:"store_locator_enabled";i:2;s:22:"store_locator_distance";i:2;s:28:"store_locator_default_radius";s:2:"10";s:31:"store_locator_not_found_message";s:52:"No results found in this location. Please try again.";s:20:"store_locator_bounce";i:1;s:26:"store_locator_query_string";s:21:"Code Postal / Adresse";s:29:"store_locator_default_address";s:0:"";s:29:"wpgmza_store_locator_restrict";s:0:"";s:12:"map_max_zoom";s:1:"1";s:15:"transport_layer";i:2;s:17:"wpgmza_theme_data";s:0:"";s:30:"wpgmza_show_points_of_interest";i:1;}') ;

#
# End of data contents of table `str_wpgmza_maps`
# --------------------------------------------------------



#
# Delete any existing table `str_wpgmza_polygon`
#

DROP TABLE IF EXISTS `str_wpgmza_polygon`;


#
# Table structure of table `str_wpgmza_polygon`
#

CREATE TABLE `str_wpgmza_polygon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `str_wpgmza_polygon`
#

#
# End of data contents of table `str_wpgmza_polygon`
# --------------------------------------------------------



#
# Delete any existing table `str_wpgmza_polylines`
#

DROP TABLE IF EXISTS `str_wpgmza_polylines`;


#
# Table structure of table `str_wpgmza_polylines`
#

CREATE TABLE `str_wpgmza_polylines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `str_wpgmza_polylines`
#

#
# End of data contents of table `str_wpgmza_polylines`
# --------------------------------------------------------



#
# Delete any existing table `str_wpms_links`
#

DROP TABLE IF EXISTS `str_wpms_links`;


#
# Table structure of table `str_wpms_links`
#

CREATE TABLE `str_wpms_links` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `link_final_url` text CHARACTER SET latin1 COLLATE latin1_general_cs,
  `link_url_redirect` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `link_text` text NOT NULL,
  `source_id` int(20) DEFAULT '0',
  `type` varchar(100) DEFAULT '',
  `status_code` varchar(100) DEFAULT '',
  `status_text` varchar(250) DEFAULT '',
  `hit` int(20) NOT NULL DEFAULT '1',
  `redirect` tinyint(1) NOT NULL DEFAULT '0',
  `broken_indexed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `broken_internal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `warning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dismissed` tinyint(1) NOT NULL DEFAULT '0',
  `follow` tinyint(1) DEFAULT '1',
  `meta_title` varchar(250) DEFAULT '',
  `internal` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;


#
# Data contents of table `str_wpms_links`
#
INSERT INTO `str_wpms_links` ( `id`, `link_url`, `link_final_url`, `link_url_redirect`, `link_text`, `source_id`, `type`, `status_code`, `status_text`, `hit`, `redirect`, `broken_indexed`, `broken_internal`, `warning`, `dismissed`, `follow`, `meta_title`, `internal`) VALUES
(16, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/10/event-1255709_1920-1024x576.jpg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1),
(22, 'http://strasbourg.abdounikarim.com/category/actus/', 'http://strasbourg.abdounikarim.com/category/actus/', '', 'actualités', 22, 'url', 'HTTP/1.0 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(23, 'http://strasbourg.abdounikarim.com/category/infos/', 'http://strasbourg.abdounikarim.com/category/infos/', '', 'plus d\'infos', 22, 'url', 'HTTP/1.0 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(24, 'http://strasbourg.abdounikarim.com/activites-du-mois/', 'http://strasbourg.abdounikarim.com/activites-du-mois/', '', 'activités du mois', 22, 'url', 'HTTP/1.0 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(25, 'http://strasbourg.abdounikarim.com/contact/', 'http://strasbourg.abdounikarim.com/contact/', '', 'contacter', 22, 'url', 'HTTP/1.0 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(26, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-1634088_1920-1024x576.jpg', 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-1634088_1920-1024x576.jpg', '', '', 22, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(27, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/10/event-1255709_1920-1024x576-768x432.jpg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 11, 0, 1, 0, 0, 0, 1, '', 1),
(28, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/10/strasbourg2.jpg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 9, 0, 1, 0, 0, 0, 1, '', 1),
(29, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/10/strasbourg1.jpg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 9, 0, 1, 0, 0, 0, 1, '', 1),
(30, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/10/strasbourg3.jpg', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 9, 0, 1, 0, 0, 0, 1, '', 1),
(32, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/event-1255709_1920-1024x576-1024x576.jpg', 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/event-1255709_1920-1024x576-1024x576.jpg', '', '', 49, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(33, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/graduation-995042_1920-1024x409-1024x409.jpg', 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/graduation-995042_1920-1024x409-1024x409.jpg', '', '', 51, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(34, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/fuel-1596622_1920-1024x681-1024x681.jpg', 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/fuel-1596622_1920-1024x681-1024x681.jpg', '', '', 53, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(35, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/6555688549_1de29ac10f_b-1024x768.jpg', 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/6555688549_1de29ac10f_b-1024x768.jpg', '', '', 55, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(36, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-909343_1920-1024x685-1024x685.jpg', 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-909343_1920-1024x685-1024x685.jpg', '', '', 58, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(37, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/14836487185_2d2b4973d7_o.jpg', 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/14836487185_2d2b4973d7_o.jpg', '', '', 60, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(38, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/8340579891_894cf74bce_k-1024x683-1024x683.jpg', 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/8340579891_894cf74bce_k-1024x683-1024x683.jpg', '', '', 62, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(39, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/5669016502_896d49dec2_o-1024x694-1024x694.jpg', 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/5669016502_896d49dec2_o-1024x694-1024x694.jpg', '', '', 64, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(40, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/16265582622_bf6b85d6fe_k-1024x768-1024x768.jpg', 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/16265582622_bf6b85d6fe_k-1024x768-1024x768.jpg', '', '', 66, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(41, 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-2218446_1920-1-1024x678-1024x678.jpg', 'http://strasbourg.abdounikarim.com/wp-content/uploads/2017/11/strasbourg-2218446_1920-1-1024x678-1024x678.jpg', '', '', 68, 'image', 'HTTP/1.1 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 1),
(42, 'http://strasbourg.abdounikarim.com/inscription/', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 1, 0, 1, 0, 0, 0, 1, '', 1),
(45, 'http://strasbourg.abdounikarim.com.abdounikarim.com/', 'http://strasbourg.abdounikarim.com.abdounikarim.com/', '', 'strasbourg.abdounikarim.com', 73, 'url', 'HTTP/1.0 200 OK', '200 OK', 1, 0, 0, 0, 0, 0, 1, '', 0),
(46, 'http://www.subdelirium.com/generateur-de-mentions-legales/', 'http://www.subdelirium.com/generateur-de-mentions-legales/', '', 'Générateur de mentions légales', 73, 'url', 'HTTP/1.1 403 Forbidden', '403 Forbidden', 1, 0, 0, 0, 1, 0, 1, '', 0),
(47, 'strasbourgatmacbook-pro-de-casrime.local/apple-icon.png', NULL, '', '', 0, '404_automaticaly', '404 Not Found', '404 Not Found', 2, 0, 1, 0, 0, 0, 1, '', 1) ;

#
# End of data contents of table `str_wpms_links`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

