-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Авг 26 2019 г., 14:03
-- Версия сервера: 5.7.27-cll-lve
-- Версия PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lrogiixt_simpla`
--

--
-- Структура таблицы `s_product_documents`
--
CREATE TABLE `s_product_documents` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

ALTER TABLE `s_product_documents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `s_product_documents`
--
ALTER TABLE `s_product_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;
-- --------------------------------------------------------

--
-- Структура таблицы `s_banners`
--

CREATE TABLE `s_banners` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `sub_text` varchar(1000) DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_banners`
--

INSERT INTO `s_banners` (`id`, `name`, `link`, `visible`, `image`, `type`, `sub_text`, `position`) VALUES
(13, 'Слайдер на главной 2', '', 1, 'slide-meb-4.jpg', 1, '', 9),
(15, 'Слайдер на главной с текстом', '', 1, 'slide-meb-1.jpg', 1, 'Отличная мебель для дома и сада по низким ценам', 3),
(5, 'Банер-1', '/catalog/sadovaya-mebel', 1, 'main-catalog-1.png', 2, 'Новинка в магазине', 10),
(6, 'Банер-2', '', 1, 'main-catalog-2.png', 2, 'Компьютеры', 11),
(7, 'Банер-категории-3', '', 1, 'main-catalog-3.png', 2, 'Банер-категории-3', 15),
(8, 'Банер-категории-4', '', 1, 'main-catalog-4.png', 2, 'Банер-категории-4', 12),
(9, 'Банер-категории-5', '', 1, 'main-catalog-5.png', 2, 'Банер-категории-5', 13),
(10, 'Банер-категории-6', '', 1, 'main-catalog-6.png', 2, 'Банер-категории-6', 14),
(14, 'Слайдер на главной 1', '', 1, 'slide-meb-5.jpg', 1, '', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `s_blog`
--

CREATE TABLE `s_blog` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `url` varchar(255) NOT NULL,
  `meta_title` varchar(500) NOT NULL,
  `meta_keywords` varchar(500) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `annotation` text NOT NULL,
  `text` longtext NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `image` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_blog`
--

INSERT INTO `s_blog` (`id`, `name`, `url`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `text`, `visible`, `date`, `image`) VALUES
(1, 'LIV — стильные эксклюзивные велосипеды для девушек', 'liv--stilnye-eksklyuzivnye-velosipedy-dlya-devushek', 'LIV — стильные эксклюзивные велосипеды для девушек', 'LIV — стильные эксклюзивные велосипеды для девушек', '', '', '<div class=\"text\"><p>Порой даже самые лучшие велозамки не могут обеспечить защиту велосипеда от кражи. Чилийские инженеры говорят, что нашли эффективный способ борьбы с велосипедными ворами. Они создали первый в мире &laquo;неугоняемый&raquo; велосипед.</p><p>Внешне Yerka выглядит как обычный велосипед, но имеет особую конструкцию рамы, которая позволяет разбирать нижнюю трубу на две части, чтобы пристегнуть велосипед к столбу или дереву. По словам авторов проекта, превращение рамы в замок занимает всего 10 секунд.</p><p>На прошлой неделе молодые ребята сообщили о размещении первого заказа на производство 300 Yerka. Большую часть средств на реализацию проекта обеспечило краудфандинговое сообщество Indiegogo.</p><p>Первые 100 велосипедов предлагаются по цене 400 долларов. Все последующие будут стоить на 100 долларов дороже.</p><p><img src=\"https://placeimg.com/800/400/any/2\" alt=\"\" /></p><p>Как сообщает Fox News, к созданию &laquo;неугоняемого&raquo; велосипеда ребят подтолкнула кража двух велосипедов у одного из них.</p><p>Кроме того, крепления колес Yerka оборудованы противоугонными гайками, которые откручиваются только специальным ключом. Сейчас инженеры работают над мобильным приложением, которое позволяет открывать замок велосипеда с помощью смартфона.</p></div>', 1, '2011-10-21 22:00:00', 'news-main-catalog-1.png');

-- --------------------------------------------------------

--
-- Структура таблицы `s_brands`
--

CREATE TABLE `s_brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `h1` varchar(255) DEFAULT NULL,
  `meta_title` varchar(500) NOT NULL,
  `meta_keywords` varchar(500) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `show_on_main` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_brands`
--

-- --------------------------------------------------------

--
-- Структура таблицы `s_categories`
--

CREATE TABLE `s_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `name_in_type` varchar(255) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `external_id` varchar(36) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_categories`
--

-- --------------------------------------------------------

--
-- Структура таблицы `s_categories_features`
--

CREATE TABLE `s_categories_features` (
  `category_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
    `in_select` tinyint(1) NOT NULL DEFAULT '0',
  `in_filter` tinyint(1) NOT NULL DEFAULT '0'

) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_categories_features`
--

-- --------------------------------------------------------

--
-- Структура таблицы `s_comments`
--

CREATE TABLE `s_comments` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(20) NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `type` enum('product','blog') NOT NULL,
  `approved` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `s_coupons`
--

CREATE TABLE `s_coupons` (
  `id` bigint(20) NOT NULL,
  `code` varchar(256) NOT NULL,
  `expire` timestamp NULL DEFAULT NULL,
  `type` enum('absolute','percentage') NOT NULL DEFAULT 'absolute',
  `value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `min_order_price` decimal(10,2) DEFAULT NULL,
  `single` int(1) NOT NULL DEFAULT '0',
  `usages` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_coupons`
--

INSERT INTO `s_coupons` (`id`, `code`, `expire`, `type`, `value`, `min_order_price`, `single`, `usages`) VALUES
(11, 'THANKYOU', '2015-05-31 19:00:00', 'absolute', 5.00, 50000.00, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `s_currencies`
--

CREATE TABLE `s_currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `sign` varchar(20) NOT NULL,
  `code` char(3) NOT NULL DEFAULT '',
  `rate_from` decimal(10,2) NOT NULL DEFAULT '1.00',
  `rate_to` decimal(10,2) NOT NULL DEFAULT '1.00',
  `cents` int(1) NOT NULL DEFAULT '2',
  `position` int(11) NOT NULL,
  `enabled` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_currencies`
--

INSERT INTO `s_currencies` (`id`, `name`, `sign`, `code`, `rate_from`, `rate_to`, `cents`, `position`, `enabled`) VALUES
(2, 'рубли', 'руб', 'BYN', 3.75, 3.75, 0, 1, 1),
(1, 'доллары', '$', 'USD', 1.00, 30.00, 0, 2, 0),
(10, 'руб.', 'руб.', 'RUR', 0.48, 0.48, 2, 9, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `s_delivery`
--

CREATE TABLE `s_delivery` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `free_from` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  `separate_payment` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_delivery`
--

INSERT INTO `s_delivery` (`id`, `name`, `description`, `free_from`, `price`, `enabled`, `position`, `separate_payment`) VALUES
(1, 'Курьерская доставка', '<p><span>Курьерская доставка осуществляется на следующий день после оформления заказа, если товар есть в наличии. Курьерская доставка осуществляется в пределах МКАД ежедневно с 10.00 до 21.00. Заказ на сумму свыше 50 рублей доставляется бесплатно.&nbsp;<br /><br />Стоимость бесплатной доставки раcсчитывается от суммы заказа с учтенной скидкой. В случае если сумма заказа после применения скидки менее 300р, осуществляется платная доставка.&nbsp;<br /><br />При сумме заказа менее 50 рублей стоимость доставки составляет от 5 рублей.</span></p>', 11111.00, 5.00, 1, 2, 1),
(4, 'Доставка курьером компании СДЭК', '', 99999999.99, 0.00, 1, 2, NULL),
(2, 'Самовывоз', '<p>Удобный, бесплатный и быстрый способ получения заказа.<br />Адрес офиса: Адрес офиса: Москва, ул. Арбат, 1/3, офис 419</p>', 0.00, 0.00, 1, 3, NULL),
(5, 'Доставка в пункт самовывоза компании СДЭК ', '<p><a href=\"https://www.cdek.ru/contacts/city-list.html\" target=\"_blank\">Список адресов</a></p>', 99999999.99, 0.00, 1, 5, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `s_delivery_payment`
--

CREATE TABLE `s_delivery_payment` (
  `delivery_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_delivery_payment`
--

INSERT INTO `s_delivery_payment` (`delivery_id`, `payment_method_id`) VALUES
(4, 15),
(4, 18),
(5, 15),
(5, 18);

-- --------------------------------------------------------

--
-- Структура таблицы `s_favorites`
--

CREATE TABLE `s_favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `s_features`
--

CREATE TABLE `s_features` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `in_filter` tinyint(1) DEFAULT NULL,
  `is_select` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_features`
--

INSERT INTO `s_features` (`id`, `name`, `position`, `in_filter`, `is_select`) VALUES
(156, 'хлопок 100%', 156, NULL, 0),
(153, 'год', 153, 0, 0),
(152, 'Сезон', 152, 0, 0),
(394, 'Размер', 394, 0, 0),
(395, 'Производитель', 395, 0, 0),
(392, 'Производитель', 392, 0, 0),
(391, 'Информация о производителе', 391, 0, 0),
(390, 'Страна', 390, 0, 0),
(384, 'Тип мебели', 384, 1, 0),
(385, 'Материал изделия', 385, 1, 0),
(386, 'Гарантийный срок', 386, 0, 0),
(387, 'Размер упаковки', 387, 1, 0),
(388, 'Вес товара', 388, 1, 0),
(155, 'тканный', 155, NULL, 0),
(154, 'Размер', 154, NULL, 0),
(389, 'Импортер', 389, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `s_feedbacks`
--

CREATE TABLE `s_feedbacks` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `s_groups`
--

CREATE TABLE `s_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `discount` decimal(5,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_groups`
--

INSERT INTO `s_groups` (`id`, `name`, `discount`) VALUES
(1, 'Постоянный покупатель', 2.00);

-- --------------------------------------------------------

--
-- Структура таблицы `s_images`
--

CREATE TABLE `s_images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_images`
--

INSERT INTO `s_images` (`id`, `name`, `product_id`, `filename`, `position`) VALUES
(2, '', 6, 'Sundays.jpeg', 0),
(3, '', 6, 'Sundays_inside.jpeg', 1),
(4, '', 7, 'SundaysPH.jpg', 4),
(5, '', 5, 'SundaysPH08.jpeg', 5),
(6, '', 13, 'Garden4you11758.jpeg', 6),
(7, '', 8, 'garden4you11758_1.jpeg', 0),
(8, '', 8, 'Garden4you.jpg', 1),
(11, '', 14, 'Garden4you11746.jpeg', 11),
(10, '', 4, 'Garden4youDREAM.jpeg', 10),
(12, '', 9, 'GARDEN4YOUMiniMuse.jpeg', 12),
(13, '', 3, '982bf12bc56912ddeb4ce15de01425c3.jpg', 13),
(14, '', 11, 'table.jpeg', 14),
(15, '', 12, 'sofa.jpeg', 15),
(16, '', 10, 'furniture.jpg', 16),
(17, '', 2, 'chair.jpg', 17);

-- --------------------------------------------------------

--
-- Структура таблицы `s_labels`
--

CREATE TABLE `s_labels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(6) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_labels`
--

INSERT INTO `s_labels` (`id`, `name`, `color`, `position`) VALUES
(4, 'перезвонить', 'ff00ff', 4),
(5, 'ожидается товар', '00d5fa', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `s_menu`
--

CREATE TABLE `s_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_menu`
--

INSERT INTO `s_menu` (`id`, `name`, `position`) VALUES
(1, 'Основное меню', 1),
(2, 'Другие страницы', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `s_options`
--

CREATE TABLE `s_options` (
  `product_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  `position` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_options`
--

INSERT INTO `s_options` (`product_id`, `feature_id`, `value`, `position`) VALUES
(4, 384, 'шезлонг', 0),
(4, 385, 'искусственный ротанг', 0),
(4, 385, 'алюминий', 1),
(4, 386, '6 месяцев', 0),
(4, 387, '73x196x99 см', 0),
(4, 388, '2 кг', 0),
(4, 389, 'ООО \"Сандэйз точка бай\"', 0),
(4, 390, 'Франция', 0),
(4, 391, 'Sundays LLC, Baznīcasiela 20/22-40, Rīga, LV-1010, Latvia', 0),
(2, 384, 'для кафе и ресторанов', 1),
(2, 385, 'алюминий', 0),
(2, 385, 'пластик', 1),
(2, 384, 'комплект для отдыха', 0),
(2, 391, 'Sundays LLC, Baznīcasiela 20/22-40, Rīga, LV-1010, Latvia', 0),
(2, 390, 'Китай', 0),
(2, 389, 'ООО \"Сандэйз точка бай\"', 0),
(2, 387, '138х76х71 см', 0),
(2, 388, '12 кг', 0),
(3, 384, 'диван', 0),
(3, 385, 'пластик', 0),
(3, 385, 'искусственный ротанг', 1),
(3, 386, '24 месяца', 0),
(3, 387, '140х115х80 см', 0),
(3, 388, '24 кг', 0),
(3, 389, 'ООО \"СтайлХаус\"', 0),
(3, 390, 'Германия', 0),
(3, 391, 'Sundays LLC, Baznīcasiela 20/22-40, Rīga, LV-1010, Latvia', 0),
(9, 384, 'диван', 0),
(9, 385, 'искусственный ротанг', 0),
(9, 385, 'алюминий', 1),
(9, 386, '24 месяца', 0),
(9, 387, '140х115х80 см', 0),
(9, 388, '24 кг', 0),
(9, 389, 'ООО \"СтайлХаус\"', 0),
(9, 390, 'Германия', 0),
(9, 391, 'Sundays LLC, Baznīcasiela 20/22-40, Rīga, LV-1010, Latvia', 0),
(10, 384, 'комплект для отдыха', 1),
(10, 384, 'для кафе и ресторанов', 0),
(10, 391, 'Sundays LLC, Baznīcasiela 20/22-40, Rīga, LV-1010, Latvia', 0),
(10, 390, 'Китай', 0),
(10, 386, '12 месяцев', 0),
(10, 387, '138х76х71 см', 0),
(10, 388, '12 кг', 0),
(10, 389, 'ООО \"Сандэйз точка бай\"', 0),
(10, 385, 'пластик', 0),
(10, 385, 'алюминий', 1),
(11, 384, 'комплект для отдыха', 1),
(11, 385, 'пластик', 0),
(11, 385, 'дерево', 1),
(11, 386, '12 месяцев', 0),
(11, 387, '138х76х71 см', 0),
(11, 388, '12 кг', 0),
(11, 389, 'ООО \"Сандэйз точка бай\"', 0),
(11, 390, 'Китай', 0),
(11, 384, 'для кафе и ресторанов', 0),
(11, 391, 'Sundays LLC, Baznīcasiela 20/22-40, Rīga, LV-1010, Latvia', 0),
(12, 384, 'комплект для отдыха', 1),
(12, 385, 'алюминий', 0),
(12, 385, 'пластик', 1),
(12, 386, '12 месяцев', 0),
(12, 387, '138х76х71 см', 0),
(12, 388, '12 кг', 0),
(12, 389, 'ООО \"Сандэйз точка бай\"', 0),
(12, 390, 'Китай', 0),
(12, 384, 'для кафе и ресторанов', 0),
(12, 391, 'Sundays LLC, Baznīcasiela 20/22-40, Rīga, LV-1010, Latvia', 0),
(13, 391, 'Sundays LLC, Baznīcasiela 20/22-40, Rīga, LV-1010, Latvia', 0),
(13, 390, 'Франция', 0),
(13, 387, '73x196x99 см', 0),
(13, 388, '2 кг', 0),
(13, 389, 'ООО \"Сандэйз точка бай\"', 0),
(13, 384, 'шезлонг', 0),
(13, 385, 'алюминий', 0),
(13, 385, 'искусственный ротанг', 1),
(14, 384, 'шезлонг', 0),
(14, 385, 'алюминий', 0),
(14, 385, 'искусственный ротанг', 1),
(14, 386, '6 месяцев', 0),
(14, 387, '73x196x99 см', 0),
(14, 388, '2 кг', 0),
(14, 389, 'ООО \"Сандэйз точка бай\"', 0),
(14, 390, 'Франция', 0),
(14, 391, 'Sundays LLC, Baznīcasiela 20/22-40, Rīga, LV-1010, Latvia', 0),
(7, 385, 'сталь', 0),
(7, 386, '12 месяцев', 0),
(7, 388, '26 кг', 0),
(7, 389, 'ООО \"Сандэйз точка бай\"', 0),
(7, 390, 'Китай', 0),
(7, 391, 'Sundays LLC, Baznīcasiela 20/22-40, Rīga, LV-1010, Latvia', 0),
(13, 386, '6 месяцев', 0),
(6, 385, 'сталь', 0),
(6, 386, '12 месяцев', 0),
(6, 388, '26 кг', 0),
(6, 389, 'ООО \"Сандэйз точка бай\"', 0),
(6, 390, 'Китай', 0),
(6, 391, 'Sundays LLC, Baznīcasiela 20/22-40, Rīga, LV-1010, Latvia', 0),
(2, 386, '12 месяцев', 0),
(5, 385, 'сталь', 0),
(5, 386, '12 месяцев', 0),
(5, 388, '26 кг', 0),
(5, 389, 'ООО \"Сандэйз точка бай\"', 0),
(5, 390, 'Китай', 0),
(5, 391, 'Sundays LLC, Baznīcasiela 20/22-40, Rīga, LV-1010, Latvia', 0),
(8, 384, 'шезлонг', 0),
(8, 385, 'алюминий', 0),
(8, 385, 'искусственный ротанг', 1),
(8, 386, '6 месяцев', 0),
(8, 387, '73x196x99 см', 0),
(8, 388, '2 кг', 0),
(8, 389, 'ООО \"Сандэйз точка бай\"', 0),
(8, 390, 'Франция', 0),
(8, 391, 'Sundays LLC, Baznīcasiela 20/22-40, Rīga, LV-1010, Latvia', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `s_orders`
--

CREATE TABLE `s_orders` (
  `id` bigint(20) NOT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `delivery_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_method_id` int(11) DEFAULT NULL,
  `paid` int(1) NOT NULL DEFAULT '0',
  `payment_date` datetime DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `comment` varchar(1024) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `payment_details` text,
  `ip` varchar(15) NOT NULL,
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` varchar(1024) DEFAULT NULL,
  `discount` decimal(5,2) NOT NULL DEFAULT '0.00',
  `coupon_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(255) NOT NULL,
  `separate_delivery` int(1) NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `s_orders_labels`
--

CREATE TABLE `s_orders_labels` (
  `order_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_orders_labels`
--

INSERT INTO `s_orders_labels` (`order_id`, `label_id`) VALUES
(1, 5),
(2, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `s_pages`
--

CREATE TABLE `s_pages` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(500) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `meta_keywords` varchar(500) NOT NULL,
  `body` longtext NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `header` varchar(1024) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_pages`
--

INSERT INTO `s_pages` (`id`, `url`, `name`, `meta_title`, `meta_description`, `meta_keywords`, `body`, `menu_id`, `position`, `visible`, `header`) VALUES
(3, 'dostavka', 'Доставка', 'Доставка', 'Доставка', 'Доставка', '<h2>Курьерская доставка по&nbsp;Москве</h2><p>Курьерская доставка осуществляется на следующий день после оформления заказа<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>если товар есть в&nbsp;наличии. Курьерская доставка осуществляется в&nbsp;пределах Томска и&nbsp;Северска ежедневно с&nbsp;10.00 до&nbsp;21.00. Заказ на&nbsp;сумму свыше 300 рублей доставляется бесплатно. <br /><br />Стоимость бесплатной доставки раcсчитывается от&nbsp;суммы заказа с&nbsp;учтенной скидкой. В&nbsp;случае если сумма заказа после применения скидки менее 300р<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>осуществляется платная доставка. <br /><br />При сумме заказа менее 300 рублей стоимость доставки составляет от 50 рублей.</p><h2>Самовывоз</h2><p>Удобный<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>бесплатный и быстрый способ получения заказа.<br />Адрес офиса: Москва<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>ул. Арбат<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>1/3<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>офис 419.</p><h2>Доставка с&nbsp;помощью предприятия<span style=\"margin-right: 0.44em;\"> </span><span style=\"margin-left: -0.44em;\">&laquo;</span>Автотрейдинг&raquo;</h2><p>Удобный и быстрый способ доставки в крупные города России. Посылка доставляется в офис<span style=\"margin-right: 0.44em;\"> </span><span style=\"margin-left: -0.44em;\">&laquo;</span>Автотрейдинг&raquo; в&nbsp;Вашем городе. Для получения необходимо предъявить паспорт и&nbsp;номер грузовой декларации<span style=\"margin-right: 0.3em;\"> </span><span style=\"margin-left: -0.3em;\">(</span>сообщит наш менеджер после отправки). Посылку желательно получить в&nbsp;течение 24 часов с&nbsp;момента прихода груза<span style=\"margin-right: -0.2em;\">,</span><span style=\"margin-left: 0.2em;\"> </span>иначе компания<span style=\"margin-right: 0.44em;\"> </span><span style=\"margin-left: -0.44em;\">&laquo;</span>Автотрейдинг&raquo; может взыскать с Вас дополнительную оплату за хранение. Срок доставки и стоимость Вы можете рассчитать на сайте компании.</p><h2>Наложенным платежом</h2><p>При доставке заказа наложенным платежом с помощью<span style=\"margin-right: 0.44em;\"> </span><span style=\"margin-left: -0.44em;\">&laquo;</span>Почты России&raquo;, вы&nbsp;сможете оплатить заказ непосредственно в&nbsp;момент получения товаров.</p>', 1, 4, 1, 'Способы доставки'),
(2, 'oplata', 'Оплата', 'Оплата', 'Оплата', 'Оплата', '<h2><span>Наличными курьеру</span></h2><p>Вы можете оплатить заказ курьеру в гривнах непосредственно в момент доставки. Курьерская доставка осуществляется по Москве на следующий день после принятия заказа.</p><h2>Яндекс.Деньги</h2><p><span>Яндекс</span><span>.</span><span>Деньги</span><span>&nbsp;&mdash; доступный и безопасный способ платить за товары и услуги через интернет</span>.</p><h2>Банковская карта</h2><p><span>Оплата банковской картой Visa или MasterCard через систему Яндекс.Деньги.</span></p><h2>Через терминал</h2><p><span>Оплатита наличными через многочисленные терминалы в любом городе России. Можно заплатить и с банковской карты через многие банкоматы. Для этого найдите в меню терминала или банкомата логотип Яндекса и укажите код платежа.</span></p><h2>Со счета мобильного телефона</h2><p><span>Оплата со&nbsp;счета мобильного телефона&nbsp;через систему Яндекс.Деньги.</span></p><h2>Webmoney</h2><p>После оформления заказа вы сможете перейти на сайт webmoney для оплаты заказа, где сможете оплатить заказ в автоматическом режиме, а так же проверить наш сертификат продавца.</p><h2>Квитанция</h2><p><span>Вы можете распечатать квитанцию и оплатить её в любом отделении банка.</span></p><h2>Робокасса</h2><p><span>ROBOKASSA &ndash; сервис для организации приема платежей на сайте, интернет магазине и социальных сетях. Прием платежей осуществляется при минимальных комиссиях.</span></p><h2>PayPal</h2><p><span>Совершайте покупки безопасно, без раскрытия информации о своей кредитной карте. PayPal защитит вас, если возникнут проблемы с покупкой.</span></p><h2>Оплата через Интеркассу</h2><p><span>Это удобный в использовании сервис, подключение к которому позволит Интернет-магазинам, веб-сайтам и прочим торговым площадкам принимать все возможные формы оплаты в максимально короткие сроки.</span></p><h2>Оплата картой через Liqpay.com</h2><p><span>Благодаря своей открытости и универсальности LiqPAY стремительно интегрируется со многими платежными системами и платформами и становится стандартом платежных операций.</span></p><h2>Оплата через Pay2Pay</h2><p><span>Универсальный платежный сервис Pay2Pay призван облегчить и максимально упростить процесс приема электронных платежей на Вашем сайте. Мы открыты для всего нового и сверхсовременного.</span></p><h2>Оплатить через QIWI</h2><p><span>QIWI &mdash; удобный сервис для оплаты повседневных услуг.</span></p><h2><span style=\"font-size: 20px;\">Наличными в офисе Автолюкса</span></h2><p>При доставке заказа системой Автолюкс, вы сможете оплатить заказ в их офисе непосредственно в момент получения товаров.</p>', 1, 6, 1, 'Способы оплаты'),
(12, 'politika-konfidentsialnosti', 'Политика конфиденциальности', 'Политика конфиденциальности', 'Текст политика конфиденциальности', 'Политика конфиденциальности', '<p>Текст политика конфиденциальности</p>', 2, 12, 1, 'Политика конфиденциальности'),
(4, 'blog', 'Новости', 'Новости', '', 'Новости', '', 1, 3, 1, 'Новости'),
(5, '404', '', 'Страница не найдена', 'Страница не найдена', 'Страница не найдена', '<p>Страница не найдена</p>', 2, 5, 1, 'Страница не найдена'),
(6, 'contact', 'Контакты', 'Контакты', 'Контакты', 'Контакты', '<p>Москва, шоссе Энтузиастов 45/31, офис 453.</p><p><a href=\"http://maps.yandex.ru/?text=%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D1%8F%2C%20%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0%2C%20%D0%AD%D0%BD%D1%82%D1%83%D0%B7%D0%B8%D0%B0%D1%81%D1%82%D0%BE%D0%B2%20%D1%88%D0%BE%D1%81%D1%81%D0%B5%2C%2051&amp;sll=37.823314%2C55.773034&amp;sspn=0.021955%2C0.009277&amp;ll=37.826161%2C55.77356&amp;spn=0.019637%2C0.006461&amp;l=map\">Посмотреть на&nbsp;Яндекс.Картах</a></p><p>Телефон 345-45-54</p>', 1, 8, 1, 'Контакты'),
(7, 'products', 'Все товары', 'Все товары', '', 'Все товары', '', 2, 7, 1, 'Все товары'),
(8, '', 'Главная', 'Продажа садовой мебели в Минске', 'Удобный и быстрый способ доставки в крупные города России. Посылка доставляется в офис &laquo; Автотрейдинг&raquo; в Вашем городе. Для получения необходимо предъявить паспорт и номер грузовой декларации ( сообщит наш менеджер после отправки). Посылку желательно получить в течение 24 часов с момента прихода груза , иначе компания &laquo; Автотрейдинг&raquo; может взыскать с Вас дополнительную оплату за хранение. Срок доставки и стоимость Вы можете рассчитать на сайте компании.', 'Продажа садовой мебели в Минске', '<p><span>Удобный и быстрый способ доставки в крупные города России. Посылка доставляется в офис</span><span>&nbsp;</span><span>&laquo;</span><span>Автотрейдинг&raquo; в&nbsp;Вашем городе. Для получения необходимо предъявить паспорт и&nbsp;номер грузовой декларации</span><span>&nbsp;</span><span>(</span><span>сообщит наш менеджер после отправки). Посылку желательно получить в&nbsp;течение 24 часов с&nbsp;момента прихода груза</span><span>,</span><span>&nbsp;</span><span>иначе компания</span><span>&nbsp;</span><span>&laquo;</span><span>Автотрейдинг&raquo; может взыскать с Вас дополнительную оплату за хранение. Срок доставки и стоимость Вы можете рассчитать на сайте компании.</span></p>', 1, 2, 1, 'Продажа садовой мебели в Минске'),
(9, 'actions', 'Акции', 'Акции', '', 'Акции', '', 2, 9, 1, 'Акции'),
(10, 'new', 'Новинки', 'Новинки', '', 'Новинки', '', 2, 10, 1, 'Новинки'),
(11, 'featured', 'Популярное', 'Популярное', '', 'Популярное', '', 2, 11, 1, 'Популярное');

-- --------------------------------------------------------

--
-- Структура таблицы `s_payment_methods`
--

CREATE TABLE `s_payment_methods` (
  `id` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `currency_id` float NOT NULL,
  `settings` text NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_payment_methods`
--

INSERT INTO `s_payment_methods` (`id`, `module`, `name`, `description`, `currency_id`, `settings`, `enabled`, `position`) VALUES
(13, 'null', 'Наличиными или картой курьеру', '', 2, 'N;', 1, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `s_products`
--

CREATE TABLE `s_products` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `brand_id` int(11) DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `annotation` text NOT NULL,
  `body` longtext NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `position` int(11) NOT NULL DEFAULT '0',
  `meta_title` varchar(500) NOT NULL,
  `meta_keywords` varchar(500) NOT NULL,
  `meta_description` varchar(500) NOT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `featured` tinyint(1) DEFAULT NULL,
  `youtube_link` varchar(500) DEFAULT NULL,
  `new` tinyint(1) NOT NULL DEFAULT '0',
  `discounted` tinyint(1) NOT NULL DEFAULT '0',
  `rating` float(3,2) NOT NULL DEFAULT '0.00',
  `votes` int(11) NOT NULL DEFAULT '0',
  `external_id` varchar(36) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_products`
--

-- --------------------------------------------------------

--
-- Структура таблицы `s_products_categories`
--

CREATE TABLE `s_products_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_products_categories`
--


-- --------------------------------------------------------

--
-- Структура таблицы `s_purchases`
--

CREATE TABLE `s_purchases` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `variant_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL DEFAULT '',
  `variant_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `amount` int(11) NOT NULL DEFAULT '0',
  `sku` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_purchases`
--

-- --------------------------------------------------------

--
-- Структура таблицы `s_rating`
--

CREATE TABLE `s_rating` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_rating`
--


-- --------------------------------------------------------

--
-- Структура таблицы `s_related_products`
--

CREATE TABLE `s_related_products` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_related_products`
--



-- --------------------------------------------------------

--
-- Структура таблицы `s_related_products2`
--

CREATE TABLE `s_related_products2` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_related_products2`
--


-- --------------------------------------------------------

--
-- Структура таблицы `s_settings`
--

CREATE TABLE `s_settings` (
  `setting_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_settings`
--

INSERT INTO `s_settings` (`setting_id`, `name`, `value`) VALUES
(8, 'site_name', 'Готовый интернет-магазин'),
(9, 'company_name', 'ООО \"Готовый интернет-магазин\"'),
(50, 'units', 'шт'),
(53, 'date_format', 'd.m.Y'),
(54, 'order_email', 'p.radionov@axora.by'),
(55, 'comment_email', 'p.radionov@axora.by'),
(56, 'notify_from_email', 'zakaz@example.com'),
(57, 'decimals_point', ','),
(58, 'thousands_separator', ' '),
(59, 'products_num', '24'),
(60, 'products_num_admin', '50'),
(30, 'theme', 'template'),
(33, 'products_num', '24'),
(34, 'products_num_admin', '50'),
(111, 'last_1c_orders_export_date', '2011-07-30 21:31:56'),
(113, 'max_order_amount', '50'),
(114, 'watermark_offset_x', '50'),
(115, 'watermark_offset_y', '50'),
(116, 'watermark_transparency', '50'),
(117, 'images_sharpen', '15'),
(119, 'admin_email', 'info@axora.by'),
(120, 'pz_server', ''),
(121, 'pz_password', ''),
(122, 'pz_phones', 'a:3:{s:5:\"axora\";s:0:\"\";s:7:\"kontent\";s:0:\"\";s:4:\"test\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `s_tags`
--

CREATE TABLE `s_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `url` varchar(400) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT '0',
  `meta_title` varchar(400) DEFAULT NULL,
  `meta_keywords` varchar(400) DEFAULT NULL,
  `meta_description` varchar(400) DEFAULT NULL,
  `description` text,
  `category_id` int(11) DEFAULT NULL,
  `features` text,
  `colors` text,
  `brands` text,
  `position` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `in_category` tinyint(1) NOT NULL DEFAULT '0',
  `in_category_name` varchar(255) DEFAULT NULL,
  `sort` varchar(100) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_tags`
--

-- --------------------------------------------------------

--
-- Структура таблицы `s_users`
--

CREATE TABLE `s_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_users`
--

INSERT INTO `s_users` (`id`, `email`, `password`, `name`, `group_id`, `enabled`, `last_ip`, `created`, `address`, `phone`) VALUES
(3, 'test@test.by', '46d1df02b2603d227cb0055ef374bf98', 'Axora', 0, 1, '46.53.206.179', '2019-05-14 12:08:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `s_variants`
--

CREATE TABLE `s_variants` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(14,2) NOT NULL DEFAULT '0.00',
  `compare_price` decimal(14,2) DEFAULT NULL,
  `stock` mediumint(9) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `external_id` varchar(36) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_variants`
--


--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `s_banners`
--
ALTER TABLE `s_banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `s_blog`
--
ALTER TABLE `s_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled` (`visible`),
  ADD KEY `url` (`url`);

--
-- Индексы таблицы `s_brands`
--
ALTER TABLE `s_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `url` (`url`);

--
-- Индексы таблицы `s_categories`
--
ALTER TABLE `s_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`url`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `position` (`position`),
  ADD KEY `visible` (`visible`),
  ADD KEY `external_id` (`external_id`);

--
-- Индексы таблицы `s_categories_features`
--
ALTER TABLE `s_categories_features`
  ADD PRIMARY KEY (`category_id`,`feature_id`);

--
-- Индексы таблицы `s_comments`
--
ALTER TABLE `s_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`object_id`),
  ADD KEY `type` (`type`);

--
-- Индексы таблицы `s_coupons`
--
ALTER TABLE `s_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `s_currencies`
--
ALTER TABLE `s_currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position` (`position`);

--
-- Индексы таблицы `s_delivery`
--
ALTER TABLE `s_delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position` (`position`);

--
-- Индексы таблицы `s_delivery_payment`
--
ALTER TABLE `s_delivery_payment`
  ADD PRIMARY KEY (`delivery_id`,`payment_method_id`);

--
-- Индексы таблицы `s_favorites`
--
ALTER TABLE `s_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `s_features`
--
ALTER TABLE `s_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position` (`position`),
  ADD KEY `in_filter` (`in_filter`);

--
-- Индексы таблицы `s_feedbacks`
--
ALTER TABLE `s_feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `s_groups`
--
ALTER TABLE `s_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `s_images`
--
ALTER TABLE `s_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filename` (`filename`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `position` (`position`);

--
-- Индексы таблицы `s_labels`
--
ALTER TABLE `s_labels`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `s_menu`
--
ALTER TABLE `s_menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `s_options`
--
ALTER TABLE `s_options`
  ADD PRIMARY KEY (`product_id`,`feature_id`,`value`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `feature_id` (`feature_id`),
  ADD KEY `value` (`value`);

--
-- Индексы таблицы `s_orders`
--
ALTER TABLE `s_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `closed` (`closed`),
  ADD KEY `date` (`date`),
  ADD KEY `status` (`status`),
  ADD KEY `url` (`url`),
  ADD KEY `paid` (`paid`);

--
-- Индексы таблицы `s_orders_labels`
--
ALTER TABLE `s_orders_labels`
  ADD PRIMARY KEY (`order_id`,`label_id`);

--
-- Индексы таблицы `s_pages`
--
ALTER TABLE `s_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_num` (`position`),
  ADD KEY `url` (`url`);

--
-- Индексы таблицы `s_payment_methods`
--
ALTER TABLE `s_payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position` (`position`);

--
-- Индексы таблицы `s_products`
--
ALTER TABLE `s_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`url`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `visible` (`visible`),
  ADD KEY `position` (`position`),
  ADD KEY `external_id` (`external_id`),
  ADD KEY `hit` (`featured`),
  ADD KEY `name` (`name`(333));

--
-- Индексы таблицы `s_products_categories`
--
ALTER TABLE `s_products_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `position` (`position`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `s_purchases`
--
ALTER TABLE `s_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `variant_id` (`variant_id`);

--
-- Индексы таблицы `s_rating`
--
ALTER TABLE `s_rating`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `s_related_products`
--
ALTER TABLE `s_related_products`
  ADD PRIMARY KEY (`product_id`,`related_id`),
  ADD KEY `position` (`position`);

--
-- Индексы таблицы `s_related_products2`
--
ALTER TABLE `s_related_products2`
  ADD PRIMARY KEY (`related_id`,`product_id`),
  ADD KEY `position` (`position`);

--
-- Индексы таблицы `s_settings`
--
ALTER TABLE `s_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `s_tags`
--
ALTER TABLE `s_tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `s_users`
--
ALTER TABLE `s_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `s_variants`
--
ALTER TABLE `s_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `sku` (`sku`),
  ADD KEY `price` (`price`),
  ADD KEY `stock` (`stock`),
  ADD KEY `position` (`position`),
  ADD KEY `external_id` (`external_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `s_banners`
--
ALTER TABLE `s_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `s_blog`
--
ALTER TABLE `s_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `s_brands`
--
ALTER TABLE `s_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT для таблицы `s_categories`
--
ALTER TABLE `s_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT для таблицы `s_comments`
--
ALTER TABLE `s_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;

--
-- AUTO_INCREMENT для таблицы `s_coupons`
--
ALTER TABLE `s_coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `s_currencies`
--
ALTER TABLE `s_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `s_delivery`
--
ALTER TABLE `s_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `s_favorites`
--
ALTER TABLE `s_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `s_features`
--
ALTER TABLE `s_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT для таблицы `s_feedbacks`
--
ALTER TABLE `s_feedbacks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `s_groups`
--
ALTER TABLE `s_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `s_images`
--
ALTER TABLE `s_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `s_labels`
--
ALTER TABLE `s_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `s_menu`
--
ALTER TABLE `s_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `s_orders`
--
ALTER TABLE `s_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `s_pages`
--
ALTER TABLE `s_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `s_payment_methods`
--
ALTER TABLE `s_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `s_products`
--
ALTER TABLE `s_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `s_purchases`
--
ALTER TABLE `s_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5970;

--
-- AUTO_INCREMENT для таблицы `s_rating`
--
ALTER TABLE `s_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `s_settings`
--
ALTER TABLE `s_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT для таблицы `s_tags`
--
ALTER TABLE `s_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `s_users`
--
ALTER TABLE `s_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `s_variants`
--
ALTER TABLE `s_variants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
