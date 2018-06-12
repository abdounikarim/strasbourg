<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'strasbourg');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'root');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '4ThVXyiL%x-@3Q![KQIIaIFd%F&%B}QHp <S4_N4z]&e8v.}qSUj}lF|Q=E,r{^!');
define('SECURE_AUTH_KEY',  '/EPljQ8h7gOu@bd2&~&;45:C(~RZ:eEw>3l6#,S9r8KWZ;cso:;gk]P8!o>I%9YD');
define('LOGGED_IN_KEY',    'U)k*]lu&<9~a4SSQSBr#DNE>+hzl_%oy=Oul3Rt2zZZ-{+?fmQ(D@oSnM*VT667J');
define('NONCE_KEY',        'Vw lM=lgV6,S_OOW1-Z|B-B#Bk>WwJ 39#W:9S|zJN^l:xs?OtG12;z<xD?^.<,w');
define('AUTH_SALT',        '_<i4K7vo=N)~TL&6UiV=JWrj26!},enNPq=8PbT^9a8SUT3SC Rk{>WI0D@P!I9;');
define('SECURE_AUTH_SALT', 'QC@Z,SptSSN3Zh;rc$aw|~Fu 9FO#N=NMzHwMfXp/`U_{:@>!oY1_0^;>aq?}M59');
define('LOGGED_IN_SALT',   '^hzJg+<a^tQqy#=+;.8jEo#be-9a}?gL9/~83=k!nT4+]zJ1,O6NY )iS_}1 Y#;');
define('NONCE_SALT',       '>bCF7Tn(m,:g]V6:VxpJ~~c3uw58I%5{Sp1=)Unj<8o0[L_6)L1$%J0A)Okz^__7');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'str_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');