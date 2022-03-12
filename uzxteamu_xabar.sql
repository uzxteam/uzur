-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 09 2022 г., 11:43
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `uzxteamu_xabar`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cl_acc_validations`
--

CREATE TABLE `cl_acc_validations` (
  `id` int NOT NULL,
  `hash` varchar(120) NOT NULL DEFAULT '0',
  `json` text,
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cl_ads`
--

CREATE TABLE `cl_ads` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `cover` varchar(3000) NOT NULL DEFAULT '',
  `company` varchar(120) NOT NULL DEFAULT '',
  `target_url` varchar(1200) NOT NULL DEFAULT '',
  `status` enum('orphan','active','inactive') NOT NULL DEFAULT 'orphan',
  `approved` enum('Y','N') NOT NULL DEFAULT 'N',
  `audience` varchar(3000) NOT NULL DEFAULT '[]',
  `description` varchar(600) NOT NULL DEFAULT '',
  `cta` varchar(300) NOT NULL DEFAULT '',
  `budget` varchar(15) NOT NULL DEFAULT '0.00',
  `clicks` int NOT NULL DEFAULT '0',
  `views` int NOT NULL DEFAULT '0',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_ads`
--

INSERT INTO `cl_ads` (`id`, `user_id`, `cover`, `company`, `target_url`, `status`, `approved`, `audience`, `description`, `cta`, `budget`, `clicks`, `views`, `time`) VALUES
(2, 1, 'upload/covers/2021/11/TSZqMyruCT4KxgUWRFFT_10_178fa9e28213f4bd06a570225c2abb02_image_cover.png', 'Uzxteam', 'https://uzxteam.uz', 'active', 'Y', '[\n    \"1\",\n    \"2\",\n    \"3\",\n    \"4\",\n    \"5\",\n    \"6\",\n    \"7\",\n    \"8\",\n    \"9\",\n    \"10\",\n    \"11\",\n    \"12\",\n    \"13\",\n    \"14\",\n    \"15\",\n    \"16\",\n    \"17\",\n    \"18\",\n    \"19\",\n    \"20\",\n    \"21\",\n    \"22\",\n    \"23\",\n    \"24\",\n    \"25\",\n    \"26\",\n    \"27\",\n    \"28\",\n    \"29\",\n    \"30\",\n    \"31\",\n    \"32\",\n    \"34\",\n    \"35\",\n    \"36\",\n    \"37\",\n    \"38\",\n    \"39\",\n    \"40\",\n    \"41\",\n    \"42\",\n    \"43\",\n    \"44\",\n    \"45\",\n    \"46\",\n    \"47\",\n    \"48\",\n    \"49\",\n    \"50\",\n    \"51\",\n    \"52\",\n    \"53\",\n    \"54\",\n    \"55\",\n    \"56\",\n    \"57\",\n    \"58\",\n    \"59\",\n    \"60\",\n    \"61\",\n    \"62\",\n    \"63\",\n    \"64\",\n    \"65\",\n    \"66\",\n    \"67\",\n    \"68\",\n    \"69\",\n    \"70\",\n    \"71\",\n    \"72\",\n    \"73\",\n    \"74\",\n    \"75\",\n    \"76\",\n    \"77\",\n    \"78\",\n    \"79\",\n    \"80\",\n    \"81\",\n    \"82\",\n    \"83\",\n    \"84\",\n    \"85\",\n    \"86\",\n    \"87\",\n    \"88\",\n    \"89\",\n    \"90\",\n    \"91\",\n    \"92\",\n    \"93\",\n    \"94\",\n    \"95\",\n    \"96\",\n    \"97\",\n    \"98\",\n    \"99\",\n    \"100\",\n    \"101\",\n    \"102\",\n    \"103\",\n    \"104\",\n    \"105\",\n    \"106\",\n    \"107\",\n    \"108\",\n    \"109\",\n    \"110\",\n    \"111\",\n    \"112\",\n    \"113\",\n    \"114\",\n    \"115\",\n    \"116\",\n    \"117\",\n    \"118\",\n    \"119\",\n    \"120\",\n    \"121\",\n    \"122\",\n    \"123\",\n    \"124\",\n    \"125\",\n    \"126\",\n    \"127\",\n    \"128\",\n    \"129\",\n    \"130\",\n    \"131\",\n    \"132\",\n    \"133\",\n    \"134\",\n    \"135\",\n    \"136\",\n    \"137\",\n    \"138\",\n    \"139\",\n    \"140\",\n    \"141\",\n    \"142\",\n    \"143\",\n    \"144\",\n    \"145\",\n    \"146\",\n    \"147\",\n    \"148\",\n    \"149\",\n    \"150\",\n    \"151\",\n    \"152\",\n    \"153\",\n    \"154\",\n    \"155\",\n    \"156\",\n    \"157\",\n    \"158\",\n    \"159\",\n    \"160\",\n    \"161\",\n    \"162\",\n    \"163\",\n    \"164\",\n    \"165\",\n    \"166\",\n    \"167\",\n    \"168\",\n    \"169\",\n    \"170\",\n    \"171\",\n    \"172\",\n    \"173\",\n    \"174\",\n    \"175\",\n    \"176\",\n    \"177\",\n    \"178\",\n    \"179\",\n    \"180\",\n    \"181\",\n    \"182\",\n    \"183\",\n    \"184\",\n    \"185\",\n    \"186\",\n    \"187\",\n    \"188\",\n    \"189\",\n    \"190\",\n    \"191\",\n    \"192\",\n    \"193\",\n    \"194\",\n    \"195\",\n    \"196\",\n    \"197\",\n    \"198\",\n    \"199\",\n    \"200\",\n    \"201\",\n    \"202\",\n    \"203\",\n    \"204\",\n    \"205\",\n    \"206\",\n    \"207\",\n    \"208\",\n    \"209\",\n    \"210\",\n    \"211\",\n    \"212\",\n    \"213\",\n    \"214\",\n    \"215\",\n    \"216\",\n    \"217\",\n    \"218\",\n    \"219\",\n    \"220\",\n    \"221\",\n    \"222\",\n    \"223\",\n    \"224\",\n    \"225\",\n    \"226\",\n    \"227\",\n    \"228\",\n    \"229\",\n    \"230\",\n    \"231\",\n    \"232\",\n    \"233\",\n    \"238\",\n    \"239\",\n    \"241\",\n    \"242\"\n]', 'Salam', '200', '0.00', 0, 1, '1636365294');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_affiliate_payouts`
--

CREATE TABLE `cl_affiliate_payouts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `email` varchar(120) NOT NULL DEFAULT '',
  `amount` varchar(25) NOT NULL DEFAULT '0.00',
  `bonuses` int NOT NULL DEFAULT '0',
  `status` enum('pending','paid') NOT NULL DEFAULT 'pending',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_affiliate_payouts`
--

INSERT INTO `cl_affiliate_payouts` (`id`, `user_id`, `email`, `amount`, `bonuses`, `status`, `time`) VALUES
(1, 1, 'uzxtemurmalik@gmail.com', '50', 5000, 'paid', '1636522376');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_blocks`
--

CREATE TABLE `cl_blocks` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `profile_id` int NOT NULL DEFAULT '0',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cl_bookmarks`
--

CREATE TABLE `cl_bookmarks` (
  `id` int NOT NULL,
  `publication_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cl_chats`
--

CREATE TABLE `cl_chats` (
  `id` int NOT NULL,
  `user_one` int NOT NULL DEFAULT '0',
  `user_two` int NOT NULL DEFAULT '0',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_chats`
--

INSERT INTO `cl_chats` (`id`, `user_one`, `user_two`, `time`) VALUES
(1, 1, 3, '1636780089'),
(2, 3, 1, '1636780089'),
(3, 4, 3, '1636223078'),
(4, 3, 4, '1636223078'),
(5, 7, 3, '1636779886'),
(6, 3, 7, '1636779886'),
(7, 1, 8, '1636364123'),
(8, 8, 1, '1636364123'),
(9, 19, 1, '1637242844'),
(10, 1, 19, '1637242844');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_configs`
--

CREATE TABLE `cl_configs` (
  `id` int NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `name` varchar(120) NOT NULL DEFAULT '',
  `value` varchar(3000) NOT NULL DEFAULT '',
  `regex` varchar(120) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_configs`
--

INSERT INTO `cl_configs` (`id`, `title`, `name`, `value`, `regex`) VALUES
(1, 'Theme', 'theme', 'default', ''),
(2, 'Site name', 'name', 'Xabarchi', '/^(.){0,50}$/'),
(3, 'Site title', 'title', 'siz uchun yaratilgan foydali tarmoq', '/^(.){0,150}$/'),
(4, 'Site description', 'description', 'siz uchun yaratilgan foydali tarmoq', '/^(.){0,350}$/'),
(5, 'SEO keywords', 'keywords', '0314', ''),
(6, 'Site logo', 'site_logo', 'statics/img/logo.png', ''),
(7, 'Site favicon', 'site_favicon', 'statics/img/favicon.png', ''),
(8, 'Chat wallpaper', 'chat_wp', 'statics/img/chatwp/default.png', ''),
(9, 'Account activation', 'acc_validation', 'off', '/^(on|off)$/'),
(10, 'Default language', 'language', 'ukraine', ''),
(11, 'AS3 storage', 'as3_storage', 'off', '/^(on|off)$/'),
(12, 'E-mail address', 'email', 'uzxtemurmalik@gmail.com', ''),
(13, 'SMTP server', 'smtp_or_mail', 'smtp', '/^(smtp|mail)$/'),
(14, 'SMTP host', 'smtp_host', 'mail.uzxteam.uz', ''),
(15, 'SMTP password', 'smtp_password', 'temur0314', '/^(.){0,50}$/'),
(16, 'SMTP encryption', 'smtp_encryption', 'tls', '/^(ssl|tls)$/'),
(17, 'SMTP port', 'smtp_port', '587', '/^[0-9]{1,11}$/'),
(18, 'SMTP username', 'smtp_username', 'admin@uzxteam.uz', ''),
(19, 'FFMPEG binary', 'ffmpeg_binary', 'core/libs/ffmpeg/ffmpeg', '/^(.){0,550}$/'),
(20, 'Giphy api', 'giphy_api_key', 'EEoFiCosGuyEIWlXnRuw4McTLxfjCrl1', '/^(.){0,150}$/'),
(21, 'Google analytics', 'google_analytics', '', ''),
(22, 'Facebook API ID', 'facebook_api_id', '', '/^(.){0,150}$/'),
(23, 'Facebook API Key', 'facebook_api_key', '', '/^(.){0,150}$/'),
(24, 'Twitter API ID', 'twitter_api_id', '', '/^(.){0,150}$/'),
(25, 'Twitter API Key', 'twitter_api_key', '', '/^(.){0,150}$/'),
(26, 'Google API ID', 'google_api_id', '', '/^(.){0,150}$/'),
(27, 'Google API Key', 'google_api_key', '', '/^(.){0,150}$/'),
(28, 'Script version', 'version', '1.2.1', ''),
(29, 'Last backup', 'last_backup', '0', ''),
(30, 'Sitemap last update', 'sitemap_update', '', ''),
(31, 'Affiliate bonus rate', 'aff_bonus_rate', '0.05', '/^([0-9]{1,3}\\.[0-9]{1,3}|[0-9]{1,3})$/'),
(32, 'Affiliates System', 'affiliates_system', 'off', '/^(on|off)$/'),
(33, 'PayPal API Public key', 'paypal_api_key', '', ''),
(34, 'PayPal API Secret key', 'paypal_api_pass', '', ''),
(35, 'PayPal Payment Mode', 'paypal_mode', 'live', '/^(sandbox|live)$/'),
(36, 'Site currency', 'site_currency', 'usd', ' \r\n/^([a-zA-Z]){2,7}$/'),
(37, 'Advertising system', 'advertising_system', 'off', '/^(on|off)$/'),
(38, 'Ad conversion rate', 'ad_conversion_rate', '0.05', '/^([0-9]{1,3}\\.[0-9]{1,3}|[0-9]{1,3})$/'),
(39, 'Max post length', 'max_post_len', '600', '/^[0-9]{1,11}$/'),
(40, 'Google oAuth', 'google_oauth', 'off', '/^(on|off)$/'),
(41, 'Twitter oAuth', 'twitter_oauth', 'off', '/^(on|off)$/'),
(42, 'Facebook oAuth', 'facebook_oauth', 'off', '/^(on|off)$/'),
(43, 'Google ads (Horiz-banner)', 'google_ad_horiz', '', ''),
(44, 'Google ads (Vert-banner)', 'google_ad_vert', '', ''),
(45, 'Default country', 'country_id', '229', '/^[0-9]{1,11}$/'),
(46, 'Firebase API key', 'firebase_api_key', '', ''),
(47, 'Push notifications', 'push_notifs', 'on', '/^(on|off)$/'),
(48, 'Page update interval', 'page_update_interval', '30', '/^[0-9]{1,11}$/'),
(49, 'Chat update interval', 'chat_update_interval', '1', '/^[0-9]{1,11}$/'),
(50, 'Amazon S3 storage', 'as3_storage', 'off', '/^(on|off)$/'),
(51, 'AS3 bucket name', 'as3_bucket_name', '', ''),
(52, 'Amazon S3 API key', 'as3_api_key', '', ''),
(53, 'Amazon S3 API secret key', 'as3_api_secret_key', '', ''),
(54, 'AS3 bucket region', 'as3_bucket_region', 'us-east-1', ''),
(55, 'Max upload size', 'max_upload_size', '6291456', '/^[0-9]{1,11}$/'),
(56, 'Max post audio record length', 'post_arec_length', '30', '/^[0-9]{1,11}$/'),
(57, 'Wallet topup min amount', 'wallet_min_amount', '50', '/^([0-9]{1,3}\\.[0-9]{1,3}|[0-9]{1,3})$/'),
(58, '', '', '', ''),
(59, 'Currency symbol position', 'currency_symbol_pos', 'after', '/^(before|after)$/'),
(60, 'Aff payout min amount', 'aff_payout_min', '50', '/^([0-9]{1,3}\\\\.[0-9]{1,3}|[0-9]{1,3})$/'),
(61, 'Default color scheme', 'default_color_scheme', 'default', ''),
(62, 'Default BG color', 'default_bg_color', 'default', ''),
(63, 'Android app (Google play item URL)', 'android_app_url', '', ''),
(64, 'IOS app (App store item URL)', 'ios_app_url', '', ''),
(65, 'User registration system', 'user_signup', 'on', '/^(on|off)$/'),
(66, 'Cookie warning popup', 'cookie_warning_popup', 'on', '/^(on|off)$/');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_connections`
--

CREATE TABLE `cl_connections` (
  `id` int NOT NULL,
  `follower_id` int NOT NULL DEFAULT '0',
  `following_id` int NOT NULL DEFAULT '0',
  `status` enum('active','pending') NOT NULL DEFAULT 'active',
  `time` varchar(25) NOT NULL DEFAULT '25'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_connections`
--

INSERT INTO `cl_connections` (`id`, `follower_id`, `following_id`, `status`, `time`) VALUES
(1, 2, 1, 'active', '1636202608'),
(2, 3, 1, 'active', '1636208355'),
(3, 3, 2, 'active', '1636208355'),
(4, 1, 3, 'active', '1636208625'),
(5, 4, 1, 'active', '1636222689'),
(6, 4, 3, 'active', '1636222772'),
(7, 5, 3, 'active', '1636223449'),
(8, 5, 1, 'active', '1636223449'),
(9, 5, 4, 'active', '1636223449'),
(10, 5, 2, 'active', '1636223449'),
(11, 1, 4, 'active', '1636297559'),
(13, 3, 4, 'active', '1636342318'),
(14, 3, 5, 'active', '1636342321'),
(15, 6, 1, 'active', '1636347754'),
(16, 6, 3, 'active', '1636347754'),
(17, 6, 5, 'active', '1636347754'),
(18, 6, 4, 'active', '1636347754'),
(19, 6, 2, 'active', '1636347754'),
(20, 1, 6, 'active', '1636347791'),
(21, 7, 1, 'active', '1636348431'),
(22, 7, 6, 'active', '1636348431'),
(23, 7, 3, 'active', '1636348431'),
(24, 7, 5, 'active', '1636348431'),
(25, 7, 4, 'active', '1636348431'),
(26, 7, 2, 'active', '1636348431'),
(27, 1, 7, 'active', '1636350105'),
(28, 3, 7, 'active', '1636350144'),
(29, 8, 1, 'active', '1636360194'),
(30, 8, 3, 'active', '1636360194'),
(31, 8, 7, 'active', '1636360194'),
(32, 8, 6, 'active', '1636360194'),
(33, 8, 5, 'active', '1636360194'),
(34, 8, 4, 'active', '1636360194'),
(35, 8, 2, 'active', '1636360194'),
(36, 1, 8, 'active', '1636360244'),
(38, 1, 2, 'active', '1637237377'),
(39, 11, 10, 'active', '1637239821'),
(40, 11, 1, 'active', '1637239821'),
(41, 11, 3, 'active', '1637239821'),
(42, 11, 2, 'active', '1637239821'),
(43, 11, 7, 'active', '1637239821'),
(44, 11, 6, 'active', '1637239821'),
(45, 11, 9, 'active', '1637239821'),
(46, 11, 8, 'active', '1637239821'),
(47, 11, 4, 'active', '1637239821'),
(48, 11, 5, 'active', '1637239821'),
(49, 13, 12, 'active', '1637240002'),
(50, 13, 11, 'active', '1637240002'),
(51, 13, 10, 'active', '1637240002'),
(52, 13, 1, 'active', '1637240002'),
(53, 13, 3, 'active', '1637240002'),
(54, 13, 2, 'active', '1637240002'),
(55, 13, 7, 'active', '1637240002'),
(56, 13, 6, 'active', '1637240002'),
(57, 13, 9, 'active', '1637240002'),
(58, 13, 8, 'active', '1637240002'),
(59, 13, 4, 'active', '1637240002'),
(60, 13, 5, 'active', '1637240002'),
(61, 14, 13, 'active', '1637240177'),
(62, 14, 12, 'active', '1637240177'),
(63, 14, 11, 'active', '1637240177'),
(64, 14, 10, 'active', '1637240177'),
(65, 14, 1, 'active', '1637240177'),
(66, 14, 3, 'active', '1637240177'),
(67, 14, 2, 'active', '1637240177'),
(68, 14, 7, 'active', '1637240177'),
(69, 14, 6, 'active', '1637240177'),
(70, 14, 9, 'active', '1637240177'),
(71, 14, 8, 'active', '1637240177'),
(72, 14, 4, 'active', '1637240177'),
(73, 14, 5, 'active', '1637240177'),
(74, 15, 14, 'active', '1637240455'),
(75, 15, 13, 'active', '1637240455'),
(76, 15, 12, 'active', '1637240455'),
(77, 15, 11, 'active', '1637240455'),
(78, 15, 10, 'active', '1637240455'),
(79, 15, 1, 'active', '1637240455'),
(80, 15, 3, 'active', '1637240455'),
(81, 15, 2, 'active', '1637240455'),
(82, 15, 7, 'active', '1637240455'),
(83, 15, 6, 'active', '1637240455'),
(84, 15, 9, 'active', '1637240455'),
(85, 15, 8, 'active', '1637240455'),
(86, 15, 4, 'active', '1637240455'),
(87, 15, 5, 'active', '1637240455'),
(88, 16, 15, 'active', '1637240553'),
(89, 16, 14, 'active', '1637240553'),
(90, 16, 13, 'active', '1637240553'),
(91, 16, 12, 'active', '1637240553'),
(92, 16, 11, 'active', '1637240554'),
(93, 16, 10, 'active', '1637240554'),
(94, 16, 1, 'active', '1637240554'),
(95, 16, 3, 'active', '1637240554'),
(96, 16, 2, 'active', '1637240554'),
(97, 16, 7, 'active', '1637240554'),
(98, 16, 6, 'active', '1637240554'),
(99, 16, 9, 'active', '1637240554'),
(100, 16, 8, 'active', '1637240554'),
(101, 16, 4, 'active', '1637240554'),
(102, 16, 5, 'active', '1637240554'),
(103, 17, 1, 'active', '1637242335'),
(104, 17, 16, 'active', '1637242335'),
(105, 17, 15, 'active', '1637242335'),
(106, 17, 14, 'active', '1637242335'),
(107, 17, 13, 'active', '1637242335'),
(108, 17, 12, 'active', '1637242335'),
(109, 17, 11, 'active', '1637242335'),
(110, 17, 10, 'active', '1637242335'),
(111, 17, 3, 'active', '1637242335'),
(112, 17, 2, 'active', '1637242335'),
(113, 17, 7, 'active', '1637242335'),
(114, 17, 6, 'active', '1637242335'),
(115, 17, 9, 'active', '1637242335'),
(116, 17, 8, 'active', '1637242335'),
(117, 17, 4, 'active', '1637242335'),
(118, 17, 5, 'active', '1637242335'),
(119, 18, 17, 'active', '1637242427'),
(120, 18, 1, 'active', '1637242427'),
(121, 18, 16, 'active', '1637242427'),
(122, 18, 15, 'active', '1637242427'),
(123, 18, 14, 'active', '1637242427'),
(124, 18, 13, 'active', '1637242427'),
(125, 18, 12, 'active', '1637242427'),
(126, 18, 11, 'active', '1637242427'),
(127, 18, 10, 'active', '1637242427'),
(128, 18, 3, 'active', '1637242427'),
(129, 18, 2, 'active', '1637242427'),
(130, 18, 7, 'active', '1637242427'),
(131, 18, 6, 'active', '1637242427'),
(132, 18, 9, 'active', '1637242427'),
(133, 18, 8, 'active', '1637242427'),
(134, 18, 4, 'active', '1637242427'),
(135, 18, 5, 'active', '1637242427'),
(136, 19, 1, 'active', '1637242833'),
(137, 20, 1, 'active', '1637298405');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_hashtags`
--

CREATE TABLE `cl_hashtags` (
  `id` int NOT NULL,
  `posts` int NOT NULL DEFAULT '0',
  `tag` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cl_invite_links`
--

CREATE TABLE `cl_invite_links` (
  `id` int NOT NULL,
  `code` varchar(300) NOT NULL DEFAULT '',
  `role` set('user','admin') NOT NULL DEFAULT 'user',
  `mnu` varchar(11) NOT NULL DEFAULT '1',
  `expires_at` varchar(25) NOT NULL DEFAULT '0',
  `registered_users` int NOT NULL DEFAULT '0',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cl_messages`
--

CREATE TABLE `cl_messages` (
  `id` int NOT NULL,
  `sent_by` int NOT NULL DEFAULT '0',
  `sent_to` int NOT NULL DEFAULT '0',
  `owner` int NOT NULL DEFAULT '0',
  `message` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `media_file` varchar(1000) NOT NULL DEFAULT '',
  `media_type` varchar(25) NOT NULL DEFAULT 'none',
  `seen` varchar(25) NOT NULL DEFAULT '0',
  `deleted_fs1` enum('Y','N') NOT NULL DEFAULT 'N',
  `deleted_fs2` enum('Y','N') NOT NULL DEFAULT 'N',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_messages`
--

INSERT INTO `cl_messages` (`id`, `sent_by`, `sent_to`, `owner`, `message`, `media_file`, `media_type`, `seen`, `deleted_fs1`, `deleted_fs2`, `time`) VALUES
(1, 1, 3, 1, 'salom', '', 'none', '1636208958', 'N', 'N', '1636208647'),
(2, 3, 1, 3, 'Assalomu aleykum yaxshimisiz', '', 'none', '1636217642', 'N', 'N', '1636215712'),
(3, 1, 3, 1, 'Ajalaficu', '', 'none', '1636217740', 'N', 'N', '1636217653'),
(4, 3, 1, 3, 'santamario', '', 'none', '1636217959', 'N', 'N', '1636217748'),
(5, 1, 3, 1, 'kasmikario', '', 'none', '1636218090', 'N', 'N', '1636217967'),
(6, 3, 1, 3, 'lakalonka', '', 'none', '1636218110', 'N', 'N', '1636218106'),
(7, 1, 3, 1, 'Chubabi munyenyo', '', 'none', '1636222433', 'N', 'N', '1636221295'),
(8, 3, 1, 3, 'tugadi', '', 'none', '1636223097', 'N', 'N', '1636222444'),
(9, 4, 3, 4, 'Chi gap', '', 'none', '1636222972', 'N', 'N', '1636222786'),
(10, 3, 4, 3, 'tinchuha', '', 'none', '1636222995', 'N', 'N', '1636222984'),
(11, 4, 3, 4, 'Ha', '', 'none', '1636223061', 'N', 'N', '1636223006'),
(12, 3, 4, 3, 'nmalar qilyabsiz', '', 'none', '0', 'N', 'N', '1636223078'),
(13, 1, 3, 1, 'AUF ☝️☝️', '', 'none', '1636223794', 'N', 'N', '1636223125'),
(14, 1, 3, 1, 'Image', 'upload/images/2021/11/wqDGlWdOJd5d5qJOTHze_06_5ba72a55278a62ba48fe5f3c184a6efd_image_original.jpg', 'image', '1636223794', 'N', 'N', '1636223147'),
(15, 3, 1, 3, 'udarku aa joyla', '', 'none', '1636297015', 'N', 'N', '1636223845'),
(16, 3, 1, 3, 'Nma gap', '', 'none', '1636297015', 'N', 'N', '1636274949'),
(17, 1, 3, 1, 'tinchu', '', 'none', '1636342331', 'N', 'N', '1636297025'),
(18, 1, 3, 1, 'AJALAFICHU', '', 'none', '1636342331', 'N', 'N', '1636297412'),
(19, 3, 1, 3, 'nma gap', '', 'none', '1636347729', 'N', 'N', '1636342350'),
(20, 1, 3, 1, 'Tinchuxa', '', 'none', '1636347773', 'N', 'N', '1636347739'),
(21, 1, 3, 1, 'O\\&#039;zlaridachi', '', 'none', '1636347773', 'N', 'N', '1636347747'),
(22, 3, 1, 3, 'mincha korinmesz', '', 'none', '1636347798', 'N', 'N', '1636347773'),
(23, 1, 3, 1, 'Ishdamiz', '', 'none', '1636347807', 'N', 'N', '1636347804'),
(24, 7, 3, 7, 'hfg', '', 'none', '1636348589', 'N', 'N', '1636348580'),
(25, 1, 8, 1, 'TUZUMILARMI', '', 'none', '1636363228', 'N', 'N', '1636360257'),
(26, 8, 1, 8, 'Rahmat aka tuzuman', '', 'none', '1636363486', 'N', 'N', '1636363246'),
(27, 8, 1, 8, 'O\\&#039;zizchi?', '', 'none', '1636363486', 'N', 'N', '1636363253'),
(28, 1, 8, 1, 'Zor raxmat', '', 'none', '0', 'N', 'N', '1636363494'),
(29, 1, 3, 1, 'rasm qoyvoling dost proflga', '', 'none', '1636384524', 'N', 'N', '1636364100'),
(30, 1, 8, 1, 'rasm qoyvoling profilga', '', 'none', '0', 'N', 'N', '1636364123'),
(31, 3, 1, 3, 'ok', '', 'none', '1636431833', 'N', 'N', '1636384535'),
(32, 7, 3, 7, 'nima gap', '', 'none', '1636466807', 'N', 'N', '1636456967'),
(33, 3, 7, 3, 'Oʻta tinch', '', 'none', '0', 'N', 'N', '1636466820'),
(34, 3, 1, 3, 'nma gap', '', 'none', '1636607712', 'N', 'N', '1636602673'),
(35, 1, 3, 1, 'tinchuxa', '', 'none', '1636623166', 'N', 'N', '1636607719'),
(36, 3, 1, 3, 'Zerikishla yomi', '', 'none', '1636624177', 'N', 'N', '1636623179'),
(37, 1, 3, 1, 'Borde', '', 'none', '1636778875', 'N', 'N', '1636624190'),
(38, 3, 1, 3, 'nme', '', 'none', '1636780021', 'N', 'N', '1636778881'),
(39, 3, 1, 3, 'nma ozgarishla ketyabdi habarchida', '', 'none', '1636780021', 'N', 'N', '1636778901'),
(40, 3, 7, 3, 'nma gap', '', 'none', '0', 'N', 'N', '1636779886'),
(41, 1, 3, 1, 'Juda ham kop', '', 'none', '1636780070', 'N', 'N', '1636780057'),
(42, 3, 1, 3, 'masalan', '', 'none', '1636809107', 'N', 'N', '1636780089'),
(43, 19, 1, 19, 'salam', '', 'none', '1637297974', 'N', 'N', '1637242844');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_notifications`
--

CREATE TABLE `cl_notifications` (
  `id` int NOT NULL,
  `notifier_id` int NOT NULL DEFAULT '0',
  `recipient_id` int NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `subject` varchar(32) NOT NULL DEFAULT 'none',
  `entry_id` int NOT NULL DEFAULT '0',
  `json` varchar(1200) NOT NULL DEFAULT '[]',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_notifications`
--

INSERT INTO `cl_notifications` (`id`, `notifier_id`, `recipient_id`, `status`, `subject`, `entry_id`, `json`, `time`) VALUES
(5, 3, 2, '1', 'subscribe', 3, '[]', '1636208355'),
(8, 1, 3, '1', 'visit', 1, '[]', '1636813919'),
(9, 1, 3, '1', 'subscribe', 1, '[]', '1636208625'),
(19, 4, 3, '1', 'visit', 4, '[]', '1636223009'),
(20, 4, 3, '1', 'subscribe', 4, '[]', '1636222772'),
(21, 3, 4, '0', 'visit', 3, '[]', '1636348523'),
(22, 5, 3, '1', 'subscribe', 5, '[]', '1636223449'),
(24, 5, 4, '0', 'subscribe', 5, '[]', '1636223449'),
(25, 5, 2, '1', 'subscribe', 5, '[]', '1636223449'),
(26, 5, 3, '1', 'visit', 5, '[]', '1636223453'),
(28, 1, 4, '0', 'subscribe', 1, '[]', '1636297559'),
(29, 1, 4, '0', 'visit', 1, '[]', '1639991407'),
(30, 3, 5, '0', 'subscribe', 3, '[]', '1636342321'),
(31, 3, 4, '0', 'subscribe', 3, '[]', '1636342318'),
(33, 6, 3, '1', 'subscribe', 6, '[]', '1636347754'),
(34, 6, 5, '0', 'subscribe', 6, '[]', '1636347754'),
(35, 6, 4, '0', 'subscribe', 6, '[]', '1636347754'),
(36, 6, 2, '1', 'subscribe', 6, '[]', '1636347754'),
(37, 1, 6, '1', 'visit', 1, '[]', '1636347787'),
(38, 1, 6, '1', 'subscribe', 1, '[]', '1636347791'),
(41, 7, 6, '0', 'subscribe', 7, '[]', '1636348431'),
(42, 7, 3, '1', 'subscribe', 7, '[]', '1636348431'),
(43, 7, 5, '0', 'subscribe', 7, '[]', '1636348431'),
(44, 7, 4, '0', 'subscribe', 7, '[]', '1636348431'),
(45, 7, 2, '1', 'subscribe', 7, '[]', '1636348431'),
(46, 7, 3, '1', 'visit', 7, '[]', '1636438629'),
(47, 1, 7, '1', 'visit', 1, '[]', '1636353127'),
(48, 1, 7, '1', 'subscribe', 1, '[]', '1636350105'),
(49, 3, 7, '1', 'subscribe', 3, '[]', '1636350144'),
(51, 8, 3, '1', 'subscribe', 8, '[]', '1636360194'),
(52, 8, 7, '1', 'subscribe', 8, '[]', '1636360194'),
(53, 8, 6, '0', 'subscribe', 8, '[]', '1636360194'),
(54, 8, 5, '0', 'subscribe', 8, '[]', '1636360194'),
(55, 8, 4, '0', 'subscribe', 8, '[]', '1636360194'),
(56, 8, 2, '1', 'subscribe', 8, '[]', '1636360194'),
(57, 1, 8, '1', 'visit', 1, '[]', '1636360261'),
(58, 1, 8, '1', 'subscribe', 1, '[]', '1636360244'),
(60, 1, 5, '0', 'visit', 1, '[]', '1636364028'),
(70, 1, 5, '0', 'subscribe', 1, '[]', '1637237375'),
(71, 1, 2, '0', 'subscribe', 1, '[]', '1637237377'),
(72, 11, 10, '0', 'subscribe', 11, '[]', '1637239821'),
(74, 11, 3, '0', 'subscribe', 11, '[]', '1637239821'),
(75, 11, 2, '0', 'subscribe', 11, '[]', '1637239821'),
(76, 11, 7, '0', 'subscribe', 11, '[]', '1637239821'),
(77, 11, 6, '0', 'subscribe', 11, '[]', '1637239821'),
(78, 11, 9, '0', 'subscribe', 11, '[]', '1637239821'),
(79, 11, 8, '0', 'subscribe', 11, '[]', '1637239821'),
(80, 11, 4, '0', 'subscribe', 11, '[]', '1637239821'),
(81, 11, 5, '0', 'subscribe', 11, '[]', '1637239821'),
(82, 13, 12, '0', 'subscribe', 13, '[]', '1637240002'),
(83, 13, 11, '0', 'subscribe', 13, '[]', '1637240002'),
(84, 13, 10, '0', 'subscribe', 13, '[]', '1637240002'),
(86, 13, 3, '0', 'subscribe', 13, '[]', '1637240002'),
(87, 13, 2, '0', 'subscribe', 13, '[]', '1637240002'),
(88, 13, 7, '0', 'subscribe', 13, '[]', '1637240002'),
(89, 13, 6, '0', 'subscribe', 13, '[]', '1637240002'),
(90, 13, 9, '0', 'subscribe', 13, '[]', '1637240002'),
(91, 13, 8, '0', 'subscribe', 13, '[]', '1637240002'),
(92, 13, 4, '0', 'subscribe', 13, '[]', '1637240002'),
(93, 13, 5, '0', 'subscribe', 13, '[]', '1637240002'),
(94, 14, 13, '0', 'subscribe', 14, '[]', '1637240177'),
(95, 14, 12, '0', 'subscribe', 14, '[]', '1637240177'),
(96, 14, 11, '0', 'subscribe', 14, '[]', '1637240177'),
(97, 14, 10, '0', 'subscribe', 14, '[]', '1637240177'),
(99, 14, 3, '0', 'subscribe', 14, '[]', '1637240177'),
(100, 14, 2, '0', 'subscribe', 14, '[]', '1637240177'),
(101, 14, 7, '0', 'subscribe', 14, '[]', '1637240177'),
(102, 14, 6, '0', 'subscribe', 14, '[]', '1637240177'),
(103, 14, 9, '0', 'subscribe', 14, '[]', '1637240177'),
(104, 14, 8, '0', 'subscribe', 14, '[]', '1637240177'),
(105, 14, 4, '0', 'subscribe', 14, '[]', '1637240177'),
(106, 14, 5, '0', 'subscribe', 14, '[]', '1637240177'),
(107, 15, 14, '0', 'subscribe', 15, '[]', '1637240455'),
(108, 15, 13, '0', 'subscribe', 15, '[]', '1637240455'),
(109, 15, 12, '0', 'subscribe', 15, '[]', '1637240455'),
(110, 15, 11, '0', 'subscribe', 15, '[]', '1637240455'),
(111, 15, 10, '0', 'subscribe', 15, '[]', '1637240455'),
(113, 15, 3, '0', 'subscribe', 15, '[]', '1637240455'),
(114, 15, 2, '0', 'subscribe', 15, '[]', '1637240455'),
(115, 15, 7, '0', 'subscribe', 15, '[]', '1637240455'),
(116, 15, 6, '0', 'subscribe', 15, '[]', '1637240455'),
(117, 15, 9, '0', 'subscribe', 15, '[]', '1637240455'),
(118, 15, 8, '0', 'subscribe', 15, '[]', '1637240455'),
(119, 15, 4, '0', 'subscribe', 15, '[]', '1637240455'),
(120, 15, 5, '0', 'subscribe', 15, '[]', '1637240455'),
(121, 16, 15, '0', 'subscribe', 16, '[]', '1637240553'),
(122, 16, 14, '0', 'subscribe', 16, '[]', '1637240553'),
(123, 16, 13, '0', 'subscribe', 16, '[]', '1637240553'),
(124, 16, 12, '0', 'subscribe', 16, '[]', '1637240554'),
(125, 16, 11, '0', 'subscribe', 16, '[]', '1637240554'),
(126, 16, 10, '0', 'subscribe', 16, '[]', '1637240554'),
(128, 16, 3, '0', 'subscribe', 16, '[]', '1637240554'),
(129, 16, 2, '0', 'subscribe', 16, '[]', '1637240554'),
(130, 16, 7, '0', 'subscribe', 16, '[]', '1637240554'),
(131, 16, 6, '0', 'subscribe', 16, '[]', '1637240554'),
(132, 16, 9, '0', 'subscribe', 16, '[]', '1637240554'),
(133, 16, 8, '0', 'subscribe', 16, '[]', '1637240554'),
(134, 16, 4, '0', 'subscribe', 16, '[]', '1637240554'),
(135, 16, 5, '0', 'subscribe', 16, '[]', '1637240554'),
(137, 17, 16, '0', 'subscribe', 17, '[]', '1637242335'),
(138, 17, 15, '0', 'subscribe', 17, '[]', '1637242335'),
(139, 17, 14, '0', 'subscribe', 17, '[]', '1637242335'),
(140, 17, 13, '0', 'subscribe', 17, '[]', '1637242335'),
(141, 17, 12, '0', 'subscribe', 17, '[]', '1637242335'),
(142, 17, 11, '0', 'subscribe', 17, '[]', '1637242335'),
(143, 17, 10, '0', 'subscribe', 17, '[]', '1637242335'),
(144, 17, 3, '0', 'subscribe', 17, '[]', '1637242335'),
(145, 17, 2, '0', 'subscribe', 17, '[]', '1637242335'),
(146, 17, 7, '0', 'subscribe', 17, '[]', '1637242335'),
(147, 17, 6, '0', 'subscribe', 17, '[]', '1637242335'),
(148, 17, 9, '0', 'subscribe', 17, '[]', '1637242335'),
(149, 17, 8, '0', 'subscribe', 17, '[]', '1637242335'),
(150, 17, 4, '0', 'subscribe', 17, '[]', '1637242335'),
(151, 17, 5, '0', 'subscribe', 17, '[]', '1637242335'),
(152, 18, 17, '0', 'subscribe', 18, '[]', '1637242427'),
(154, 18, 16, '0', 'subscribe', 18, '[]', '1637242427'),
(155, 18, 15, '0', 'subscribe', 18, '[]', '1637242427'),
(156, 18, 14, '0', 'subscribe', 18, '[]', '1637242427'),
(157, 18, 13, '0', 'subscribe', 18, '[]', '1637242427'),
(158, 18, 12, '0', 'subscribe', 18, '[]', '1637242427'),
(159, 18, 11, '0', 'subscribe', 18, '[]', '1637242427'),
(160, 18, 10, '0', 'subscribe', 18, '[]', '1637242427'),
(161, 18, 3, '0', 'subscribe', 18, '[]', '1637242427'),
(162, 18, 2, '0', 'subscribe', 18, '[]', '1637242427'),
(163, 18, 7, '0', 'subscribe', 18, '[]', '1637242427'),
(164, 18, 6, '0', 'subscribe', 18, '[]', '1637242427'),
(165, 18, 9, '0', 'subscribe', 18, '[]', '1637242427'),
(166, 18, 8, '0', 'subscribe', 18, '[]', '1637242427'),
(167, 18, 4, '0', 'subscribe', 18, '[]', '1637242427'),
(168, 18, 5, '0', 'subscribe', 18, '[]', '1637242427'),
(171, 19, 14, '0', 'visit', 19, '[]', '1637260911'),
(172, 19, 18, '0', 'visit', 19, '[]', '1637261149'),
(173, 19, 15, '0', 'visit', 19, '[]', '1637261734'),
(176, 20, 1, '1', 'visit', 20, '[]', '1637396875'),
(177, 1, 19, '0', 'visit', 1, '[]', '1639991345'),
(178, 1, 20, '0', 'visit', 1, '[]', '1639991296'),
(179, 1, 16, '0', 'visit', 1, '[]', '1639991052');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_posts`
--

CREATE TABLE `cl_posts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `publication_id` int NOT NULL DEFAULT '0',
  `type` enum('post','repost') NOT NULL DEFAULT 'post',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_posts`
--

INSERT INTO `cl_posts` (`id`, `user_id`, `publication_id`, `type`, `time`) VALUES
(1, 1, 2, 'post', '1636200630'),
(15, 1, 17, 'post', '1636349409'),
(23, 1, 27, 'post', '1637061995'),
(25, 19, 29, 'post', '1637259608');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_profile_reports`
--

CREATE TABLE `cl_profile_reports` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `profile_id` int NOT NULL DEFAULT '0',
  `reason` int NOT NULL DEFAULT '0',
  `comment` varchar(3000) NOT NULL DEFAULT '',
  `seen` enum('0','1') NOT NULL DEFAULT '0',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cl_publications`
--

CREATE TABLE `cl_publications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `type` enum('text','video','image','gif','poll','audio') NOT NULL DEFAULT 'text',
  `replys_count` int NOT NULL DEFAULT '0',
  `reposts_count` int NOT NULL DEFAULT '0',
  `likes_count` int NOT NULL DEFAULT '0',
  `status` enum('active','inactive','deleted','orphan') NOT NULL DEFAULT 'active',
  `thread_id` int NOT NULL DEFAULT '0',
  `target` enum('publication','pub_reply') NOT NULL DEFAULT 'publication',
  `og_data` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `poll_data` text,
  `priv_wcs` enum('everyone','followers') NOT NULL DEFAULT 'everyone',
  `priv_wcr` enum('everyone','followers','mentioned') NOT NULL DEFAULT 'everyone',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_publications`
--

INSERT INTO `cl_publications` (`id`, `user_id`, `text`, `type`, `replys_count`, `reposts_count`, `likes_count`, `status`, `thread_id`, `target`, `og_data`, `poll_data`, `priv_wcs`, `priv_wcr`, `time`) VALUES
(2, 1, '', 'audio', 1, 0, 3, 'active', 0, 'publication', '', NULL, 'everyone', 'everyone', '1636200630'),
(7, 2, 'zoru', 'text', 0, 0, 0, 'active', 2, 'pub_reply', '', NULL, 'everyone', 'everyone', '1636202700'),
(17, 1, 'Oʻzbekiston (rasman: Oʻzbekiston Respublikasi) — Markaziy Osiyoning markaziy qismida joylashgan mamlakat. Oʻzbekistonning poytaxti — Toshkent shahri boʻlib, davlat tili — oʻzbek tili hisoblanadi. Maydoni — 448,978[5] km2. Aholi soni (2020) — 34,011,621[6]. Pul birligi — soʻm. Oʻzbekiston Respublikasi 12 ta viloyat, Toshkent shahri va Qoraqalpogʻiston Respublikasidan iboratdir, shuningdek, davlat mustaqil, demokratik, dunyoviy va konstitutsiyaviy davlat ham hisoblanadi. Oʻzbekiston MDH, BMT, YXHT va SHHT aʼzosidir. Oʻzbekiston qirgʻoqqa ega boʻlmagan besh mamlakat bilan, yaʼni: shimoldan Qozogʻ', 'text', 0, 0, 2, 'active', 0, 'publication', '', NULL, 'everyone', 'everyone', '1636349409'),
(27, 1, 'Dasturlash — kompyuterlar va boshqa mikroprotsessorli elektron mashinalar uchun dasturlar tuzish, sinash va oʻzgartirish jarayonidan iborat. Odatda dasturlash yuqori saviyali dasturlash tillari (PHP, Java, C++, Python ) vositasida amalga oshiriladi. Bu dasturlash tillarining semantikasi odam tiliga yaqinligi tufayli dastur tuzish jarayoni ancha oson kechadi.', 'text', 0, 0, 1, 'active', 0, 'publication', '', NULL, 'everyone', 'everyone', '1637061995'),
(29, 19, 'SALOM', 'text', 0, 0, 0, 'active', 0, 'publication', '', NULL, 'everyone', 'everyone', '1637259608');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_publikes`
--

CREATE TABLE `cl_publikes` (
  `id` int NOT NULL,
  `pub_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_publikes`
--

INSERT INTO `cl_publikes` (`id`, `pub_id`, `user_id`, `time`) VALUES
(4, 2, 1, '1636204097'),
(7, 2, 3, '1636208847'),
(13, 2, 4, '1636222712'),
(16, 17, 1, '1636349420'),
(20, 17, 3, '1636387423'),
(29, 27, 1, '1637080025');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_pubmedia`
--

CREATE TABLE `cl_pubmedia` (
  `id` int NOT NULL,
  `pub_id` int NOT NULL DEFAULT '0',
  `type` enum('image','video','gif','audio') NOT NULL,
  `src` varchar(1200) NOT NULL DEFAULT '',
  `json_data` varchar(3000) NOT NULL DEFAULT '[]',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_pubmedia`
--

INSERT INTO `cl_pubmedia` (`id`, `pub_id`, `type`, `src`, `json_data`, `time`) VALUES
(2, 2, 'audio', 'upload/audios/2021/11/IbcOhXflF9tX23LcaAvg_06_4e5dc89756c79225c16b92ce0e190d07_audio_original.mp3', '[]', '1636200626');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_pub_reports`
--

CREATE TABLE `cl_pub_reports` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `post_id` int NOT NULL DEFAULT '0',
  `reason` varchar(3) NOT NULL DEFAULT '0',
  `seen` enum('0','1') NOT NULL DEFAULT '0',
  `comment` varchar(1210) NOT NULL DEFAULT '',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cl_sessions`
--

CREATE TABLE `cl_sessions` (
  `id` int NOT NULL,
  `session_id` varchar(120) NOT NULL DEFAULT '',
  `user_id` varchar(11) NOT NULL DEFAULT '0',
  `platform` varchar(15) NOT NULL DEFAULT 'web',
  `time` varchar(25) NOT NULL DEFAULT '0',
  `lifespan` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_sessions`
--

INSERT INTO `cl_sessions` (`id`, `session_id`, `user_id`, `platform`, `time`, `lifespan`) VALUES
(3, '9cd6bf2022dec2cc38be3d52c47942697b9c4d32163620273701ca9d6224189e1f9c9f75c578c2ae6f', '1', 'web', '1636202737', '1667738737'),
(4, 'be509297bae1d115ba3c845d7c242bb18d4222c11636203906fef9c8cc971287ad255df483c6894b48', '1', 'web', '1636203906', '1667739906'),
(6, '903ae4ebe0d0be32453fc8f9bd845c271ad069bf16362082527f017ee0d2f07b49141b7c3645db644d', '3', 'web', '1636208252', '1667744252'),
(13, 'de7dffce1bb66a5aeef5955d7fabbab8e7572ec81636248346ecff593e2c3eba3e06cd0da8e6dc7324', '3', 'web', '1636248346', '1667784346'),
(15, '24e9c64e656d010b1bc59e87dd4cc0a78549b9901636296976236e1d2748cfcd032edcef3cc4edfc7d', '1', 'web', '1636296976', '1667832976'),
(16, '9371565a59e4c2330ef443604b5e5b30f890e7ec16362973908423638d02e6fae788ef2d1ce28f6904', '1', 'web', '1636297390', '1667833390'),
(17, 'd23d9814e051bed122369f0751f122f662989a9616363477215c2d17fbf6626977c958f6f4ad596ad5', '6', 'web', '1636347721', '1667883721'),
(18, '6fa99d4e883272fb1609f3c059873af86e12a6381636348327490ead21c235da96eaa78a0e7ce2ae78', '7', 'web', '1636348327', '1667884327'),
(19, '689c7e021de08bde1b40eb23eba4a8de6c2963251636348495f742b9166306627357968c9e68192c0f', '1', 'web', '1636348495', '1667884495'),
(20, 'ecebe74db473135977bba61d1b3ab14cb8f353551636348953fd433183907b7db588fb92a0e85fe464', '7', 'web', '1636348953', '1667884953'),
(21, '20d77a981aa7846598c00f913d8538593bd4a5dd1636360059a6039c1544f404f34d5b92a1e93f773a', '8', 'web', '1636360059', '1667896059'),
(25, 'c7d83db9b8ad306a34232e9e6666136f88226fc6163636450090e254949f5122aa994f6c0a8407e373', '9', 'web', '1636364500', '1667900500'),
(29, '916d92afda7597f1d78536c6ec6eee8170b83cc51636384927d78e4c788f9dcf3b0a5870be76b930a7', '3', 'web', '1636384927', '1667920927'),
(30, 'a32381c1d46dd8b1206d8082e3d1a7cdca97288916364383420012b4a60766eb2aa857ddd2b25d4c11', '7', 'web', '1636438342', '1667974342'),
(31, '5c286717fd814ca2a725f3f9601ac3f1901995e91636438959fd147d7e87491b1a6d5ea1257a8a45cd', '1', 'web', '1636438959', '1667974959'),
(32, 'b57c8448877cb367d34d3d0616797e83df5e34fd1636439057351ca552cb7e8d41351bf90b46634f49', '7', 'web', '1636439057', '1667975057'),
(38, '2aa1f62a82920b2f6a2cb2c7f0263f6197cd77801636466790ad893b7d58ed6f02ddb210c01ef9f256', '3', 'web', '1636466790', '1668002790'),
(39, '0883361fa0cad10698b326339b42df64d349cf561636534451e9e0b762d00cf3c2871cf0d08f3e7c99', '1', 'web', '1636534451', '1668070451'),
(40, '47cdcf5bd08259a364f1e7b0c8d896681220460516365410127c304719d31e8320c98293d321d7f95d', '1', 'web', '1636541012', '1668077012'),
(41, '18e0b6f0fbd350c2b3b5fd0f167cc800871d51ad1636623134707df8a09d4f67f2c17705432020c3fb', '3', 'web', '1636623134', '1668159134'),
(42, '00c61e60550599d5604fe41f225c84b03c55f1f8163678041137fdfacfe1442e9763a5ff2d0dd83ea7', '1', 'web', '1636780411', '1668316411'),
(43, '86668cde6a49614db52fe8ed9ae3367d06fd896b163690934890bb09c60cdfff6bc73eab3b8d6b12f8', '3', 'web', '1636909348', '1668445348'),
(45, '917b5f93d180b97cc2da05e95f53b899a49c8eba1636950165f83b7ce1e8785ed223696256485480af', '1', 'web', '1636950165', '1668486165'),
(63, '6cc82969e627072aab751ce6b80ac71f4fc357af16372983847b29ac55db07f75db0ffedd7660b7cce', '20', 'web', '1637298384', '1668834384'),
(64, 'dfd41f5e4f197362daeef8dfe43c24c9ebe4b37d1638283579f82b3c5aefe7ca157ab679fa06e369ca', '1', 'web', '1638283579', '1669819579'),
(65, '50235b5f1f61c1b2f1ebc87c8cecd92302d277f116396470954ece9a0f464f46d7bdd8fb884bc219ba', '1', 'web', '1639647095', '1671183095'),
(66, 'd3e44be348232ffb10feac9deacbd7ed70aa34df16396532161219f692f20fd46a2cfa2f565ff176b3', '1', 'web', '1639653216', '1671189216'),
(67, '1b37f0b56972ecfbacc7b889ef5ce9878a67fab016397149470f8ca70d74823718cb32eed508158e5a', '1', 'web', '1639714947', '1671250947'),
(68, '704d832bcd0648aab2893f5b5298ad988fd948ad1646660177eed36d6a0d983ffd0e1e01cfe0fb8f7f', '1', 'web', '1646660177', '1678196177');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_ui_langs`
--

CREATE TABLE `cl_ui_langs` (
  `id` int NOT NULL,
  `name` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `slug` varchar(25) NOT NULL DEFAULT '',
  `status` set('1','0') NOT NULL DEFAULT '1',
  `is_rtl` set('Y','N') NOT NULL DEFAULT 'N',
  `is_native` set('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_ui_langs`
--

INSERT INTO `cl_ui_langs` (`id`, `name`, `slug`, `status`, `is_rtl`, `is_native`) VALUES
(1, 'English', 'english', '1', 'N', '1'),
(2, 'French', 'french', '1', 'N', '1'),
(3, 'German', 'german', '1', 'N', '1'),
(4, 'Italian', 'italian', '1', 'N', '1'),
(5, 'Russian', 'russian', '1', 'N', '1'),
(6, 'Portuguese', 'portuguese', '1', 'N', '1'),
(7, 'Spanish', 'spanish', '1', 'N', '1'),
(8, 'Turkish', 'turkish', '1', 'N', '1'),
(9, 'Dutch', 'dutch', '1', 'N', '1'),
(10, 'Uzbek', 'ukraine', '1', 'N', '1'),
(11, 'Arabic', 'arabic', '1', 'Y', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_users`
--

CREATE TABLE `cl_users` (
  `id` int NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `lname` varchar(30) NOT NULL DEFAULT '',
  `about` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `gender` enum('M','F') NOT NULL DEFAULT 'M',
  `email` varchar(60) NOT NULL DEFAULT '',
  `em_code` varchar(100) NOT NULL DEFAULT '',
  `email_conf_code` varchar(120) NOT NULL DEFAULT '0',
  `password` varchar(140) NOT NULL DEFAULT '',
  `joined` varchar(20) NOT NULL DEFAULT '0',
  `start_up` varchar(600) NOT NULL DEFAULT 'done',
  `last_active` varchar(20) NOT NULL DEFAULT '0',
  `ip_address` varchar(140) NOT NULL DEFAULT '0.0.0.0',
  `language` varchar(32) NOT NULL DEFAULT 'default',
  `avatar` varchar(300) NOT NULL DEFAULT 'upload/default/avatar.png',
  `cover` varchar(300) NOT NULL DEFAULT 'upload/default/cover.png',
  `cover_orig` varchar(300) NOT NULL DEFAULT 'upload/default/cover.png',
  `active` enum('0','1','2') NOT NULL DEFAULT '0',
  `verified` enum('0','1','2') NOT NULL DEFAULT '0',
  `admin` enum('0','1') NOT NULL DEFAULT '0',
  `posts` int NOT NULL DEFAULT '0',
  `followers` int NOT NULL DEFAULT '0',
  `following` int NOT NULL DEFAULT '0',
  `website` varchar(120) NOT NULL DEFAULT '',
  `country_id` int NOT NULL DEFAULT '1',
  `last_post` int NOT NULL DEFAULT '0',
  `last_swift` varchar(135) NOT NULL DEFAULT '',
  `last_ad` int NOT NULL DEFAULT '0',
  `profile_privacy` enum('everyone','followers') NOT NULL DEFAULT 'everyone',
  `follow_privacy` enum('everyone','approved') NOT NULL DEFAULT 'everyone',
  `contact_privacy` enum('everyone','followed') NOT NULL DEFAULT 'everyone',
  `index_privacy` enum('Y','N') NOT NULL DEFAULT 'Y',
  `aff_bonuses` int NOT NULL DEFAULT '0',
  `wallet` varchar(25) NOT NULL DEFAULT '0.00',
  `pnotif_token` varchar(600) NOT NULL DEFAULT '{"token": "","type": "android"}',
  `refresh_token` varchar(220) NOT NULL DEFAULT '0',
  `settings` varchar(3000) NOT NULL DEFAULT '{"notifs":{"like":1,"subscribe":1,"subscribe_request":1,"subscribe_accept":1,"reply":1,"repost":1,"mention":1,"visit":1}}',
  `display_settings` varchar(1200) NOT NULL DEFAULT '{"color_scheme": "default","background": "default"}',
  `swift` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `swift_update` varchar(25) NOT NULL DEFAULT '0',
  `info_file` varchar(300) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cl_users`
--

INSERT INTO `cl_users` (`id`, `username`, `fname`, `lname`, `about`, `gender`, `email`, `em_code`, `email_conf_code`, `password`, `joined`, `start_up`, `last_active`, `ip_address`, `language`, `avatar`, `cover`, `cover_orig`, `active`, `verified`, `admin`, `posts`, `followers`, `following`, `website`, `country_id`, `last_post`, `last_swift`, `last_ad`, `profile_privacy`, `follow_privacy`, `contact_privacy`, `index_privacy`, `aff_bonuses`, `wallet`, `pnotif_token`, `refresh_token`, `settings`, `display_settings`, `swift`, `swift_update`, `info_file`) VALUES
(1, 'admin', 'Temurmalik', 'Mamurov', 'Admin UzX team', 'M', 'uzxtemurmalik@gmail.com', 'fa570dd6394a062769aaa809cc01fe76a296b7f3', '0', '$2y$10$eHVC75zhJHLiyAhwyFOIfu977lgllc/oczl748LTfNyugBq5e3reW', '1636200042', 'done', '1646660226', '127.0.0.1', 'ukraine', 'upload/avatars/2021/11/OYVbPUJxnUF3AUzhu7MW_06_342ba19030764c0eb716dcf530169dd0_thumbnail_512x512.jpg', 'upload/covers/2021/11/XzHe7bmTl1hSRldMNCPH_06_3b5947778d711acbc79e9477858bde31_image_cover.png', 'upload/covers/2021/11/xcLaCcsxWRh9ShHL53BS_06_29ada36690678d8bcf9ce21eb2283192_image_cover.png', '1', '0', '1', 3, 16, 6, 'Https://uzxteam.uz', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 5000, '1000.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\n    \"notifs\": {\n        \"like\": 1,\n        \"subscribe\": 1,\n        \"subscribe_request\": 1,\n        \"subscribe_accept\": 1,\n        \"reply\": 1,\n        \"repost\": 1,\n        \"mention\": 1,\n        \"visit\": 1\n    }\n}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"dark\"\n}', '{\"yo7eAHQt3iciPqhu\": {\"views\": [],\"time\": 1636200663,\"type\": \"image\",\"status\": \"active\",\"media\": {\"src\": \"upload\\/images\\/2021\\/11\\/L4pTekf4xQL5ATYibmpK_06_e62f047b2a4c67f7f3838e3842f76f2b_image_swift.png\"},\"exp_time\": 1636287063,\"text\": \"\"},\"m8GtHxBCDUIeW5Dc\": {\"views\": {\"8\": 1636360197},\"time\": 1636297753,\"type\": \"image\",\"status\": \"active\",\"media\": {\"src\": \"upload\\/images\\/2021\\/11\\/IVIaOjTJDUOHDEI2CfDB_07_5ec857173ecef1e5e2ce60da09c858db_image_swift.jpg\"},\"exp_time\": 1636384153,\"text\": \"\"},\"xmgdNlEOXOz18Had\": {\"views\": [],\"time\": 1637126446,\"type\": \"image\",\"status\": \"active\",\"media\": {\"src\": \"upload\\/images\\/2021\\/11\\/mLIIEJnFTUfBMDQsOkOe_17_90cbe1b38631c27bb43857fd860fd8cc_image_swift.png\"},\"exp_time\": 1637212846,\"text\": \"salam\"}}', '1637212846', ''),
(2, 'uzxteam', 'Kim', 'Eding', 'Birbalolarde', 'M', 'temurmalikuzx@gmail.com', '7132e59b0544682e4f68051cf5c60950f52ae22f', '{\n    \"email\": \"zulayhopolatova75@gmail.com\",\n    \"code\": 272185\n}', '$2y$10$LO.mhK.reuj0MN6O6oo2XeN0vo6waYoDiivil29LwnSk/1zDgVjMm', '1636202548', 'done', '1636534434', '37.110.210.184', 'ukraine', 'upload/avatars/2021/11/4HZubRZJEgmw71aah4Pf_08_f25ed2f765a0df0a72feda67d1cd932e_thumbnail_512x512.jpg', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '1', 0, 13, 1, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(3, 'AbuOken', 'Abduvohid', 'Nematullayev', 'Shunchaki Mexribon', 'M', 'abduvohidnematullayev@gmail.com', '06ca2c23200482af749064f4a08f3526042bfdd4', '0', '$2y$10$BbMlJC2WQUKG9kwvJ69HXulCC7n0FzP/hz1Im5aphzTMAgGcWubP6', '1636208252', 'done', '1636945081', '37.110.210.114', 'english', 'upload/avatars/2021/11/kYMsbRtoJoer3SEjyFD2_08_c4fcfe15b83b8a454b6bebb86e8d338c_thumbnail_512x512.jpg', 'upload/covers/2021/11/jSLskIXabyh3jUiQoOiV_13_d76787ceffb039d3bad052c2993ffc1e_image_cover.png', 'upload/default/cover.png', '1', '1', '1', 0, 13, 5, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\n    \"notifs\": {\n        \"like\": 1,\n        \"subscribe\": 1,\n        \"subscribe_request\": 1,\n        \"subscribe_accept\": 1,\n        \"reply\": 1,\n        \"repost\": 1,\n        \"mention\": 1,\n        \"visit\": 1\n    }\n}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(4, 'Temurmalik', 'Temurmalik', 'Mamurov', 'AUF', 'M', 'zaminmobile4@gmail.com', 'de96030aeab9f20a9699218069065b0385a93394', '0', '$2y$10$dE4Z0G4Sv0x6vBrpv92AAe1a3Lx3HL4H/CkhoIcRWcrHj2qlwtijK', '1636222640', '{\n    \"source\": \"system\",\n    \"avatar\": 1,\n    \"info\": 1,\n    \"follow\": 0\n}', '1636363341', '37.110.210.235', 'ukraine', 'upload/avatars/2021/11/7UPbHLBsNwHtyBc6xS5C_08_2a20a09de5662512701b10bedaf462f6_thumbnail_512x512.jpg', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 13, 2, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(5, 'test', 'Test', 'Test', 'Test', 'M', 'test@test.uz', 'd20ecb721f47125525bebe47054804eafcb633ba', '0', '$2y$10$.Uyhj2AWEqOThqt0iNSoPegmmJJTr9Kd4XCedZCX/oYpLIgLn4x5a', '1636223430', 'done', '1636223478', '37.110.214.1', 'ukraine', 'upload/default/avatar.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 11, 4, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(6, 'Ixtiyor', 'ixtiyor', 'Erkinboyev', 'HEMIS axborot tizimi', 'M', 'ihtiylor.dj33@gmail.com', '2398c38386398468bf279735dfedad8bbb2db6cd', '0', '$2y$10$JnHyQCGrI6bEjOS.mwK4dOdOFdZ9pPRFWWK7Sv12L0WCyukwZKpkS', '1636347721', 'done', '1636368550', '213.230.96.54', 'ukraine', 'upload/default/avatar.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 10, 5, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"purple\",\n    \"background\": \"black\"\n}', NULL, '0', ''),
(7, 'Azamjon', 'Azamjon', 'Raxmatullayev', '', 'M', 'raxmatullayevazamjon025@gmail.com', 'dc305ef930d2cae02558d18c4e61cf1d3d87576d', '0', '$2y$10$u6w11TR7VTkr9iN0eks0h.Tg3PVDX6s77LgZTVB5WHBZ..e4n/jHO', '1636348327', 'done', '1636457023', '37.110.211.61', 'ukraine', 'upload/default/avatar.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 10, 6, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(8, 'Inforte', 'Oyatillo', 'Anvarov', 'Web Developer from Andizhan Team member UzX Team', 'M', 'anonymrose16@gmail.com', '4b746836b1dfa66e5df6459896add743c0617bdd', '0', '$2y$10$cE7mTPDeuNo8zIsAQdE8p.ZYejZgPiPRUet2TLYiPj7SLfJcegmlm', '1636360059', 'done', '1636363366', '188.113.209.20', 'ukraine', 'upload/default/avatar.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 8, 7, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(9, 'Jumavoy', 'Jumavoy', '', '', 'M', 'jumavoy@gmail.com', '5e7e7888d3ac6f6c8455ce652aa5d5cce5cce466', '0', '$2y$10$alsVGNAkwliWGTC.UGlZhuN.Bdu.56fEW5x.gik90IJkKtbbtk5PC', '1636364500', '{\n    \"source\": \"system\",\n    \"avatar\": 0,\n    \"info\": 0,\n    \"follow\": 0\n}', '1636364793', '37.110.210.235', 'ukraine', 'upload/default/avatar.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 7, 0, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(10, 'Jumavoy2', 'Abduqayumov', 'Muxammadillo', '', 'M', 'jumavoy@email.ru', 'd4136bc84d0e9e82cacd67ef2c78aaf9c1b3274d', '0', '$2y$10$nPoVrhgk/z6IkRE/wwyhe.3rYDcVvmTRgH183us6Eq7s61rxmtB.O', '1637238703', '{\n    \"source\": \"system\",\n    \"avatar\": 1,\n    \"info\": 1,\n    \"follow\": 0\n}', '1637239656', '127.0.0.1', 'ukraine', 'upload/avatars/2021/11/29jz45WcEq9yZhlfB2pb_18_b2cc72759828403e956b55fe45a2c3a7_thumbnail_512x512.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 7, 0, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(11, 'jumavoy3', 'Abduqayumov', 'Muxammadillo', '', 'M', 'jumavoy1@email.ru', '90b3452ba0a1f36a93371625166171291c7c42fd', '0', '$2y$10$a.AMwt0zmZ4ORB2stZf0HObUJlNR2DuB3NgamgjgmkrN3oOQmc1OK', '1637239696', 'done', '1637239850', '127.0.0.1', 'ukraine', 'upload/avatars/2021/11/qG64fmVeuxrgWF6oMuLs_18_481887c39a961611c27ed28c7ab82fc1_thumbnail_512x512.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 6, 10, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(12, 'jumavoy4', 'Abduqayumov', 'Muxammadillo', '', 'M', 'jumavoy11@email.ru', '531e09b0a5dc3b3c3581ff5ced8bce3a8af065ae', '0', '$2y$10$DMc15/T8uR.mRyJvn5y5D.GItqjWnxgiYxTfghMM0vSFtyuF1PRGS', '1637239882', '{\n    \"source\": \"system\",\n    \"avatar\": 1,\n    \"info\": 1,\n    \"follow\": 0\n}', '1637239947', '127.0.0.1', 'ukraine', 'upload/avatars/2021/11/QVffg6fOf7QdRwjUIFZ7_18_c016f01bd75316c043d89d3720f4958d_thumbnail_512x512.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 6, 0, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(13, 'jumavo5', 'jumavo5', '', '', 'M', 'jumavoy111@email.ru', '299415b9fab1c57beaa3f46272feb0326bff8854', '0', '$2y$10$Z4b3bZQoLnPkAZaa.Y/TpuVczF9kopzsRQELOA7HlvvCiLpeafROS', '1637239974', 'done', '1637240092', '127.0.0.1', 'ukraine', 'upload/avatars/2021/11/kHxYc2VREiTll8FL74pS_18_17799db1aaa1c1656830aa6d0ae3d95e_thumbnail_512x512.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 5, 12, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(14, 'jumavooo', 'jumavooo', '', '', 'M', 'jumavoy1111@email.ru', 'a06f8b795d906c6b77a0b783e28981bf8a87b07d', '0', '$2y$10$eI2EJ3Jta2hpktYxX9BM8uV9S6J9x7TN8KBzWYn1I1R96q4MCOMva', '1637240161', 'done', '1637240313', '127.0.0.1', 'ukraine', 'upload/avatars/2021/11/15TUmqZytjXHfaqXLXNk_18_646aa921940a818986d5adf4b8ec0332_thumbnail_512x512.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 4, 13, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(15, 'Asmast', 'Asmast', '', '', 'M', 'jumavwsoy@email.ru', 'ca7e9d775f06833c900fc019498ee300d844f63e', '0', '$2y$10$j1jE5FngceU.V6U0ewRZm.dkm8PYPazAMazQp0qxsVNc.48Pmgph6', '1637240338', 'done', '1637240474', '127.0.0.1', 'ukraine', 'upload/avatars/2021/11/zrMPYCqbymqgdnBvs5Wt_18_ff2ee1c7f97e63d81acde60695f52449_thumbnail_512x512.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 3, 14, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(16, 'qaren', 'qaren', '', '', 'M', 'qaren@gmail.ru', 'aaa9c26912e79570d7badd29abf08138813e2c6b', '0', '$2y$10$j52WoxRLLyePX4VuO.kdBuQBXtzy0E8QB1m0n3cvhFVBQnD/SW.3m', '1637240545', 'done', '1637240630', '127.0.0.1', 'ukraine', 'upload/avatars/2021/11/tl5cO2FApmOlxRKiB5e9_18_1e198ecb508a1cd9956291a79aa48368_thumbnail_512x512.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 2, 15, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', '{\"9dQoNl9UfVAiCr2O\": {\"views\": [],\"time\": 1637240574,\"type\": \"image\",\"status\": \"active\",\"media\": {\"src\": \"upload\\/images\\/2021\\/11\\/OuVtia42dATuGu5pepvC_18_ef236f44191aac9a62a7d7850f9029db_image_swift.png\"},\"exp_time\": 1637326974,\"text\": \"\"}}', '1637326974', ''),
(17, 'salama', 'salama', '', '', 'M', 'jumavoy131@email.ru', 'b721f994ceb174afd30d5704598db9adee7a51ba', '0', '$2y$10$ZCQdxIMjPR.f4joZ.hDaS.85y7hqyCHGm607oTjKUsQPMSMzhRAje', '1637242132', 'done', '1637242363', '127.0.0.1', 'ukraine', 'upload/avatars/2021/11/gTwfcDczAGADiJKZDGt7_18_23786f9d6289ed083e6d5583ad9521b8_thumbnail_512x512.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 1, 16, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(18, 'dafdasfa', 'dafdasfa', '', '', 'M', 'jumavoeeey11@email.ru', 'f20e3359793f4a90bfea2ef330bc27615ae34350', '0', '$2y$10$V81dYXJkv2CMEMjFXtlEG.Kg7Te1uvi6ycnvJB20ap0gZIFGmZZe6', '1637242389', 'done', '1637242517', '127.0.0.1', 'ukraine', 'upload/avatars/2021/11/eizykLisjLreWBjQDyFI_18_a6cd3a3c55c386422081443048de3c9e_thumbnail_512x512.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 0, 17, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', ''),
(19, 'temur0q', 'temur0q', '', '', 'M', 'juwwmavoy111@email.ru', '5bda2838cd4dcf2dd65e08015b3bddc024d62e9d', '0', '$2y$10$mbZ/CShLt2NUaEvT9DI7MOPIm50y40pEAC7N/jEEgIN2RY5LRLGLW', '1637242557', 'done', '1637298290', '127.0.0.1', 'ukraine', 'upload/avatars/2021/11/BqXkScUPcnxpy4Fuxfqa_18_bd9570db69158eaf58bd6b998fb7793b_thumbnail_512x512.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 1, 0, 1, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"black\"\n}', NULL, '0', ''),
(20, 'Qutradtilllo', 'Qutradtilllo', '', '', 'M', 'qudratillllo@gmail.com', '650a2b3b9f56ff7c832a5668c418bd0912d16ce5', '0', '$2y$10$cSurL9hIF79N.LOBk47cGu1pOJblson0b0OKNsDjl9ryKyYd7VA8W', '1637298384', 'done', '1638272192', '127.0.0.1', 'ukraine', 'upload/avatars/2021/11/dDq3peqVBXm5qSdZjHlY_19_52f0b20f32c18caef0b121e2ffac55ba_thumbnail_512x512.png', 'upload/default/cover.png', 'upload/default/cover.png', '1', '0', '0', 0, 0, 1, '', 229, 0, '', 0, 'everyone', 'everyone', 'everyone', 'Y', 0, '0.00', '{\"token\": \"\",\"type\": \"android\"}', '0', '{\"notifs\":{\"like\":1,\"subscribe\":1,\"subscribe_request\":1,\"subscribe_accept\":1,\"reply\":1,\"repost\":1,\"mention\":1,\"visit\":1}}', '{\n    \"color_scheme\": \"default\",\n    \"background\": \"default\"\n}', NULL, '0', '');

-- --------------------------------------------------------

--
-- Структура таблицы `cl_verifications`
--

CREATE TABLE `cl_verifications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `full_name` varchar(120) NOT NULL DEFAULT '',
  `text_message` varchar(1200) NOT NULL DEFAULT '',
  `video_message` varchar(300) NOT NULL DEFAULT '',
  `time` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cl_wallet_history`
--

CREATE TABLE `cl_wallet_history` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `operation` varchar(60) NOT NULL DEFAULT '',
  `amount` varchar(25) NOT NULL DEFAULT '0.00',
  `json_data` varchar(3000) NOT NULL DEFAULT '[]',
  `time` varchar(25) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cl_acc_validations`
--
ALTER TABLE `cl_acc_validations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_ads`
--
ALTER TABLE `cl_ads`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_affiliate_payouts`
--
ALTER TABLE `cl_affiliate_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_blocks`
--
ALTER TABLE `cl_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_bookmarks`
--
ALTER TABLE `cl_bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_chats`
--
ALTER TABLE `cl_chats`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_configs`
--
ALTER TABLE `cl_configs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_connections`
--
ALTER TABLE `cl_connections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_hashtags`
--
ALTER TABLE `cl_hashtags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_invite_links`
--
ALTER TABLE `cl_invite_links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_messages`
--
ALTER TABLE `cl_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_notifications`
--
ALTER TABLE `cl_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_posts`
--
ALTER TABLE `cl_posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_profile_reports`
--
ALTER TABLE `cl_profile_reports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_publications`
--
ALTER TABLE `cl_publications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_publikes`
--
ALTER TABLE `cl_publikes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_pubmedia`
--
ALTER TABLE `cl_pubmedia`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_pub_reports`
--
ALTER TABLE `cl_pub_reports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_sessions`
--
ALTER TABLE `cl_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_ui_langs`
--
ALTER TABLE `cl_ui_langs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_users`
--
ALTER TABLE `cl_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts` (`posts`);

--
-- Индексы таблицы `cl_verifications`
--
ALTER TABLE `cl_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cl_wallet_history`
--
ALTER TABLE `cl_wallet_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cl_acc_validations`
--
ALTER TABLE `cl_acc_validations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cl_ads`
--
ALTER TABLE `cl_ads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `cl_affiliate_payouts`
--
ALTER TABLE `cl_affiliate_payouts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cl_blocks`
--
ALTER TABLE `cl_blocks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cl_bookmarks`
--
ALTER TABLE `cl_bookmarks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `cl_chats`
--
ALTER TABLE `cl_chats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `cl_configs`
--
ALTER TABLE `cl_configs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `cl_connections`
--
ALTER TABLE `cl_connections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT для таблицы `cl_hashtags`
--
ALTER TABLE `cl_hashtags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `cl_invite_links`
--
ALTER TABLE `cl_invite_links`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cl_messages`
--
ALTER TABLE `cl_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `cl_notifications`
--
ALTER TABLE `cl_notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT для таблицы `cl_posts`
--
ALTER TABLE `cl_posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `cl_profile_reports`
--
ALTER TABLE `cl_profile_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cl_publications`
--
ALTER TABLE `cl_publications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `cl_publikes`
--
ALTER TABLE `cl_publikes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `cl_pubmedia`
--
ALTER TABLE `cl_pubmedia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `cl_pub_reports`
--
ALTER TABLE `cl_pub_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cl_sessions`
--
ALTER TABLE `cl_sessions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `cl_ui_langs`
--
ALTER TABLE `cl_ui_langs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `cl_users`
--
ALTER TABLE `cl_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `cl_verifications`
--
ALTER TABLE `cl_verifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cl_wallet_history`
--
ALTER TABLE `cl_wallet_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
