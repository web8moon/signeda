<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'signeda');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', '127.0.0.1');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '*x-{aV{s0Y0x.3 5Y;9jzt&.(TO/?&GFd2:e!R,U(tLZE:B* F Wmn<<YRQO)iUa');
define('SECURE_AUTH_KEY',  'zhScGzH+VX2[W|*,&KqM,@^mZ]lx+YM_p0`3oR7cD)xj_Ea&YgRQ{_=(R*Ih8z+k');
define('LOGGED_IN_KEY',    'GSQK-{}.X.C^tR?{[6;f=N?m@iCv3=gkm<[dbvC|lW$cag-:7K2C;H,+(5uFnV:z');
define('NONCE_KEY',        'BrJc8D75p:u5LianzD5$rD)Y.`u]VJA!^r~md(K|0C+x.+B:e 7Ft3U3^HOQXv4Y');
define('AUTH_SALT',        '4`>&(:)wTz?E`m_K]SY&|TYp.0q{7k,4Z# KOHmD|o*ZEXhOlf6Aoe/^fs:^va&K');
define('SECURE_AUTH_SALT', 'e=6v[X<1mZO1&VIWN,CAm(rLtwALF<{<%7p#LNst+%d3L_qA)$y0UTeQ<?3!aPsU');
define('LOGGED_IN_SALT',   'Gizx2+UOW%RhN|gFqI0yAn}s]VA,E@Y9po1*i.CPKdB9<J/}eKmcv=*+#is][55W');
define('NONCE_SALT',       ':YCky^h0frQ=6qQpHNmHW=W1M3FwvaYredmPiEHz%PL*|k&$yVpNbzC^_LD/+%)k');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp1_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
