-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Апр 03 2023 г., 16:09
-- Версия сервера: 8.0.32
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `napa500_vatandoshlar`
--

-- --------------------------------------------------------

--
-- Структура таблицы `abouts`
--

CREATE TABLE `abouts` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_uz` longtext COLLATE utf8mb4_unicode_ci,
  `text_oz` longtext COLLATE utf8mb4_unicode_ci,
  `text_ru` longtext COLLATE utf8mb4_unicode_ci,
  `text_en` longtext COLLATE utf8mb4_unicode_ci,
  `videofile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `history_uz` text COLLATE utf8mb4_unicode_ci,
  `history_oz` text COLLATE utf8mb4_unicode_ci,
  `history_ru` text COLLATE utf8mb4_unicode_ci,
  `history_en` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abouts`
--

INSERT INTO `abouts` (`id`, `image`, `text_uz`, `text_oz`, `text_ru`, `text_en`, `videofile`, `history_uz`, `history_oz`, `history_ru`, `history_en`, `created_at`, `updated_at`) VALUES
(1, 'abouts/March2023/WGLaZ3fd9kIXDstUb4pR.jpg', NULL, NULL, NULL, NULL, '[]', NULL, NULL, NULL, NULL, '2023-03-29 12:21:35', '2023-03-29 12:21:35');

-- --------------------------------------------------------

--
-- Структура таблицы `assosiations`
--

CREATE TABLE `assosiations` (
  `id` int UNSIGNED NOT NULL,
  `country_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_flags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `assosiations`
--

INSERT INTO `assosiations` (`id`, `country_uz`, `country_oz`, `country_ru`, `country_en`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `info_uz`, `info_oz`, `info_ru`, `info_en`, `background_flags`, `created_at`, `updated_at`) VALUES
(2, 'Chexiya', 'Чехия', 'Чехия', 'Czech Republic', 'Chehiya-Oʼzbekiston doʼstlik jamiyati', 'Чеҳия-Ўзбекистон дўстлик жамияти', 'Чешско-узбекское общество дружбы', 'Chec-Uzbekistan friendship society', 'Xorijda istiqomat qilayotgan vatandoshlarni tarixiy Vatani atrofida yanada jipslashtirish, ularning qalbi va ongida yurt bilan faxrlanish tuyg‘usini yuksaltirish, milliy o‘zlikni saqlab qolish,', 'Хорижда истиқомат қилаётган ватандошларни тарихий Ватани атрофида янада жипслаштириш, уларнинг қалби ва онгида юрт билан фахрланиш туйғусини юксалтириш, миллий ўзликни сақлаб қолиш,', 'Дальнейшее объединение соотечественников, проживающих за рубежом, вокруг своей исторической родины, повышение чувства гордости за Родину в их сердцах и умах, сохранение национального самосознания,', 'Further embalming compatriots living abroad around their historical homeland, exalting in their hearts and minds a sense of pride in the land, maintaining a national identity,', 'assosiations/March2023/afWcGBbFLEOXiOeufYz8.png', '2023-03-25 05:20:08', '2023-04-03 07:30:55'),
(3, 'Amerika qo\'shma shtatlari', 'Америкa қўшма штатлари', 'Соединенные Штаты Америки', 'United States of America', 'Qirgʼiziston-Oʼzbekiston doʼstlik jamiyati', 'Қирғизистон-Ўзбекистон дўстлик жамияти', 'Общество дружбы Кыргызстан-Узбекистан', 'Kyrgyzstan-Uzbekistan friendship society', 'Xorijda istiqomat qilayotgan vatandoshlarni tarixiy Vatani atrofida yanada jipslashtirish, ularning qalbi va ongida yurt bilan faxrlanish tuyg‘usini yuksaltirish, milliy o‘zlikni saqlab qolish,', 'Хорижда истиқомат қилаётган ватандошларни тарихий Ватани атрофида янада жипслаштириш, уларнинг қалби ва онгида юрт билан фахрланиш туйғусини юксалтириш, миллий ўзликни сақлаб қолиш,', 'Дальнейшее объединение соотечественников, проживающих за рубежом, вокруг своей исторической родины, повышение чувства гордости за Родину в их сердцах и умах, сохранение национального самосознания,', 'Further embalming compatriots living abroad around their historical homeland, exalting in their hearts and minds a sense of pride in the land, maintaining a national identity,', 'assosiations/March2023/nXjAvHMFxIfP7pAq1Bfk.png', '2023-03-25 06:53:28', '2023-04-03 07:29:30');

-- --------------------------------------------------------

--
-- Структура таблицы `assosiation_categories`
--

CREATE TABLE `assosiation_categories` (
  `id` int UNSIGNED NOT NULL,
  `country_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_name_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_name_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_name_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_start_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_start_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_uz` longtext COLLATE utf8mb4_unicode_ci,
  `info_oz` longtext COLLATE utf8mb4_unicode_ci,
  `info_ru` longtext COLLATE utf8mb4_unicode_ci,
  `info_en` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_workers` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `assosiation_categories`
--

INSERT INTO `assosiation_categories` (`id`, `country_uz`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `logo`, `director_name_uz`, `director_name_oz`, `director_name_ru`, `director_name_en`, `director_image`, `company_start_data`, `director_start_data`, `company_photo`, `info_title_uz`, `info_title_oz`, `info_title_ru`, `info_title_en`, `info_uz`, `info_oz`, `info_ru`, `info_en`, `created_at`, `updated_at`, `company_workers`) VALUES
(4, '2', 'Pittsburgdagi uzbeklar jamiyati', 'Питцбургдаги узбеклар жамияти', 'Общество узбеков в Питтсбурге', 'Pittsburgh Uzbek society', 'assosiation-categories/March2023/L46PeHRkK9x9bu4lWBvc.jpg', 'Sadikov Baxodir Talibjonovich', 'Садиков Баходир Талибжонович', 'Садиков Баходир Талибжонович', 'Sadikov Baxodir Talibjonovich', 'assosiation-categories/March2023/h5wqPuUJz9yGubkgPf2F.jpg', '2019 yil', '2019 yil', 'assosiation-categories/March2023/JjE6nSYRYOgsDTT0mZm5.jpg', 'Tashkilotning asosiy maqsad va vazifalari', 'Ташкилотнинг асосий мақсад ва вазифалари', 'Основные цели и задачи организации', 'The main goals and objectives of the organization', '<p>АQShdagi vatandoshlarni birlashtirish, ular oʼrtasida hamjixatlikni mustahkamlash, oʼzbek urf-odatlari, qadriyatlari va ona-tilini asrab qolish</p>', '<p>Ақшдаги ватандошларни бирлаштириш, улар ўртасида ҳамжихатликни мустаҳкамлаш, ўзбек урф-одатлари, қадриятлари ва она-тилини асраб қолиш</p>', '<p>Объединение соотечественников в США, укрепление солидарности между ними, сохранение узбекских традиций, ценностей и родного языка</p>', '<p>Unification of compatriots in the United States, strengthening solidarity between them, preserving Uzbek traditions, values and native language</p>', '2023-03-27 10:15:34', '2023-04-03 07:43:14', 40),
(5, '3', 'Turkiston - Amerika uyushmasi', 'Туркистон - Amerika уюшмаси', 'Туркестано - Американская ассоциация', 'Turkestan-American Association', 'assosiation-categories/March2023/NsAasQECtm4aNwjZhEmw.png', 'Аbdulla Xojda (Kvaja)', 'Абдулла Хўжда (Кважа)', 'Абдулла Хўжда (Кважа)', 'Аbdulla Xojda (Kvaja)', 'assosiation-categories/March2023/l9llOzyvjtURKpfcO7l9.jpg', '2003 yil may', '1956 yil iyun', 'assosiation-categories/March2023/t06UQpY2UChLNs57XFQe.jpg', 'Turkiston - Amerika uyushmasi 1958 yilda AQSHning Nyu-Jersi shtatida tashkil topgan.', 'Туркистон - Amerika уюшмаси 1958 йилда Ақшнинг Ню-Жерси штатида ташкил топган.', 'Туркестано-Американская ассоциация была основана в 1958 году в Нью-Джерси, США.', 'The Turkestan-American Association was founded in 1958 in New Jersey, United States.', '<p>&nbsp;</p>\r\n<p>Turkiston - Amerika uyushmasining asosiy maqsadlaridan biri AQSHdagi vatandoshlarni birlashtirish, ular o&lsquo;rtasida hamjixatlikni mustahkamlash, o&lsquo;zbek urf-odatlari, qadriyatlari va ona-tilini asrab qolishga qaratilgan faoliyat hisoblanadi.</p>', '<p>Туркистон - Amerika уюшмасининг асосий мақсадларидан бири Ақшдаги ватандошларни бирлаштириш, улар ўртасида ҳамжихатликни мустаҳкамлаш, ўзбек урф-одатлари, қадриятлари ва она-тилини асраб қолишга қаратилган фаолият ҳисобланади.</p>', '<p>Одной из основных целей Туркестано - Американской ассоциации является деятельность, направленная на объединение соотечественников в США, укрепление солидарности между ними, сохранение узбекских традиций, ценностей и родного языка.</p>', '<p>One of the main goals of the Turkestan - American Association is an activity aimed at uniting compatriots in the United States, strengthening solidarity between them, preserving Uzbek traditions, values and native language.</p>', '2023-03-27 10:16:13', '2023-04-03 07:41:07', 56),
(6, '3', 'San-Fransisko koʻrfazi hududidagi oʻzbeklar jamiyati markazi', 'Сан-Франсиско кўрфази ҳудудидаги ўзбеклар жамияти маркази', 'Центр узбекской общины в районе залива Сан-Франциско', 'Center for the Society of Uzbeks in the San Francisco Bay Area', 'assosiation-categories/March2023/pkdLwpy25fEgBBlaDnT0.jpg', 'Raximxodjaev Kudrat Gayratovich', 'Рахимходжаев Кудрат Гайратович', 'Рахимходжаев Кудрат Гайратович', 'Raximxodjaev Kudrat Gayratovich', 'assosiation-categories/March2023/Cg937TnZVcQY5LzqNWIr.png', '2019 yil', '2019 yil', 'assosiation-categories/March2023/8ukL5yBrZ3pkutofrNsE.jpg', 'San-Fransisko koʻrfazi hududidagi oʻzbeklar jamiyati markazi', 'Сан-Франсиско кўрфази ҳудудидаги ўзбеклар жамияти маркази', 'Центр узбекской общины в районе залива Сан-Франциско', 'Center for the Society of Uzbeks in the San Francisco Bay Area', '<p>АQShdagi vatandoshlarni birlashtirish, ular oʼrtasida hamjixatlikni mustahkamlash, oʼzbek urf-odatlari, qadriyatlari va ona-tilini asrab qolish</p>', '<p>Ақшдаги ватандошларни бирлаштириш, улар ўртасида ҳамжихатликни мустаҳкамлаш, ўзбек урф-одатлари, қадриятлари ва она-тилини асраб қолиш</p>', '<p>Объединение соотечественников в США, укрепление солидарности между ними, сохранение узбекских традиций, ценностей и родного языка</p>', '<p>Unification of compatriots in the United States, strengthening solidarity between them, preserving Uzbek traditions, values and native language</p>', '2023-03-27 17:46:32', '2023-04-03 07:32:40', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(2, NULL, 1, 'Category 2', 'category-2', '2023-03-04 06:10:13', '2023-03-04 06:10:13');

-- --------------------------------------------------------

--
-- Структура таблицы `categoryshows`
--

CREATE TABLE `categoryshows` (
  `id` int UNSIGNED NOT NULL,
  `data` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_uz` longtext COLLATE utf8mb4_unicode_ci,
  `text_oz` longtext COLLATE utf8mb4_unicode_ci,
  `text_ru` longtext COLLATE utf8mb4_unicode_ci,
  `text_en` longtext COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `viewers` int DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categoryshows`
--

INSERT INTO `categoryshows` (`id`, `data`, `image`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `text_uz`, `text_oz`, `text_ru`, `text_en`, `tags`, `viewers`, `images`, `created_at`, `updated_at`) VALUES
(1, '2023-03-27', 'categoryshows/March2023/ICSKy5WOSFyZbGRopeG8.jpg', 'Test lotin', 'Test krill', 'Test', 'Test', '<p>Test&nbsp;</p>', '<p>Test&nbsp;</p>', 'Test', 'Test', 'Test', 2, '[\"categoryshows\\/March2023\\/qmmLnsItOcdXAuahjBgC.png\",\"categoryshows\\/March2023\\/vzRFOlyGu1N44JscgNIh.png\"]', '2023-03-27 10:07:09', '2023-03-28 08:30:23'),
(2, '2023-03-27', 'categoryshows/March2023/QR2FxcbNoqScBxzmOK1A.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-03-27 11:01:36', '2023-03-27 11:02:23'),
(3, '2023-03-17', 'categoryshows/March2023/rblsk35vjXw857JdhNAi.jpg', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', 'cacsa', NULL, '[\"categoryshows\\/March2023\\/hwIW0cwAXtl9llWS7yNS.jpg\"]', '2023-03-29 00:16:10', '2023-03-29 00:16:10'),
(4, '2023-03-10', 'categoryshows/March2023/l8znWb3D4bDdDcE6wE1Z.webp', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', 'caascas', NULL, '[\"categoryshows\\/March2023\\/3ETf5raT0bXijcbVym3q.jpg\"]', '2023-03-29 00:16:58', '2023-03-29 00:16:58'),
(5, '2023-03-09', 'categoryshows/March2023/9anmwaLL3wVlP3tCgkbz.jpg', 'Italiyadagi WESTPORT FUEL', 'Italiyadagi WESTPORT FUEL', 'Italiyadagi WESTPORT FUEL', 'Italiyadagi WESTPORT FUEL', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', 'caascas', NULL, '[\"categoryshows\\/March2023\\/TKLm0yBt4NYvekw1s35P.jpg\"]', '2023-03-29 00:18:04', '2023-03-29 00:18:04'),
(6, '2023-03-15', 'categoryshows/March2023/8xqgRlsR1X3msITdlU7f.jpg', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Хитой Халқ Республикасида истиқомат қилаётган Хўжамовлар оиласи', 'Семья Ходжамовых, проживающая в Китайской Народной Республике', 'Hojamov family living in the people\'s Republic of China', '<p>Xitoy Xalq Respublikasida yashovchi Xujamovlar oilasi</p>', '<p>Хитой Халқ Республикасида яшовчи Худжамовлар оиласи</p>', '<p>Семья Худжамовых, проживающая в Китайской Народной Республике</p>', '<p>The Khudjamov family living in the people\'s Republic of China</p>', 'caascas', NULL, '[\"categoryshows\\/March2023\\/yJUKLRve37IuJqJ7YYcE.jpg\"]', '2023-03-29 00:18:52', '2023-04-03 07:51:37'),
(7, '2023-03-14', 'categoryshows/March2023/BholwkUDlbfMlRA6Wmoc.jpg', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Хитой Халқ Республикасида истиқомат қилаётган Хўжамовлар оиласи', 'Семья Ходжамовых, проживающая в Китайской Народной Республике', 'Hojamov family living in the people\'s Republic of China', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Ташриф давомида Қозоғистон Республикасининг \"Отандастар\" нотижорат аксиядорлик фонди билан учрашув ташкил...</p>', '<p>В ходе визита состоится встреча с некоммерческим акционерным фондом&rdquo; Отандастар \" Республики Казахстан...</p>', '<p>During the visit organized a meeting with the non-profit Joint-Stock Fund \"Otandastar&rdquo; of the Republic of Kazakhstan...</p>', 'dasdasd,asdew', NULL, '[\"categoryshows\\/March2023\\/9ayheM7lziCwXWYDK7NG.jpg\"]', '2023-03-29 00:19:54', '2023-04-03 07:50:31'),
(8, '2023-03-15', 'categoryshows/March2023/q0xJC3TuAvkEeAScRxjA.jpg', 'Janubiy Koreyaning Pochon va unga yaqin hududlari', 'Жанубий Кореянинг Почон ва унга яқин ҳудудлари', 'Почон и близлежащие районы Южной Кореи', 'Pochon and nearby areas of South Korea', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Ташриф давомида Қозоғистон Республикасининг \"Отандастар\" нотижорат аксиядорлик фонди билан учрашув ташкил...</p>', '<p>В ходе визита состоится встреча с некоммерческим акционерным фондом&rdquo; Отандастар \" Республики Казахстан...</p>', '<p>During the visit organized a meeting with the non-profit Joint-Stock Fund \"Otandastar&rdquo; of the Republic of Kazakhstan...</p>', 'italia, samuray, rembo', NULL, '[\"categoryshows\\/March2023\\/8Uf6G92YL9VmUex73xiJ.jpg\"]', '2023-03-29 00:20:52', '2023-04-03 08:55:23'),
(9, '2023-03-15', 'categoryshows/March2023/4NMycioxsAXncGSsm1JM.jpg', 'Qirg‘iziston Respublikasi o‘zbek milliy madaniyat markazi bilan birgalikda otkazilgan tadbir ajoyib ruhiyatda o‘tdi', 'Қирғизистон Республикаси ўзбек миллий маданият маркази билан биргаликда отказилган тадбир ажойиб руҳиятда ўтди', 'Мероприятие, проведенное совместно с центром узбекской национальной культуры Кыргызской Республики, прошло в отличном настроении', 'Together with the Uzbek national cultural center of the Kyrgyz Republic, the event was held in a wonderful spirit', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Ташриф давомида Қозоғистон Республикасининг \"Отандастар\" нотижорат аксиядорлик фонди билан учрашув ташкил...</p>', '<p>В ходе визита состоится встреча с некоммерческим акционерным фондом&rdquo; Отандастар \" Республики Казахстан...</p>', '<p>During the visit organized a meeting with the non-profit Joint-Stock Fund \"Otandastar&rdquo; of the Republic of Kazakhstan...</p>', 'italia, samuray, rembo', NULL, '[\"categoryshows\\/March2023\\/xSaueqh8kShWAuwySFh5.jpg\"]', '2023-03-29 00:21:47', '2023-04-03 07:48:41');

-- --------------------------------------------------------

--
-- Структура таблицы `columns`
--

CREATE TABLE `columns` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_uz` longtext COLLATE utf8mb4_unicode_ci,
  `text_oz` longtext COLLATE utf8mb4_unicode_ci,
  `text_ru` longtext COLLATE utf8mb4_unicode_ci,
  `text_en` longtext COLLATE utf8mb4_unicode_ci,
  `data` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `viewers` int DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `menu_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `columns`
--

INSERT INTO `columns` (`id`, `image`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `text_uz`, `text_oz`, `text_ru`, `text_en`, `data`, `created_at`, `updated_at`, `viewers`, `images`, `menu_uz`, `tags`) VALUES
(28, 'columns/March2023/PNxIdx9ZTh0oxRJxcKWw.png', 'Italiyaning Sapiyensa universiteti magistranti yosh vatandoshimiz Ibrohim Jo‘raboyev bilan suhbat', 'Италиянинг Сапиенса университети магистранти ёш ватандошимиз Иброҳим Жўрабоев билан суҳбат', 'Интервью с молодым соотечественником Ибрагимом джурабоевым, магистрантом итальянского университета Сапиенца', 'Interview with our young compatriot Ibrahim Zhuraboyev, a graduate student of the University of Sapienza, Italy', '<p>Italiyaning Sapiyensa universiteti magistranti yosh vatandoshimiz Ibrohim Jo&lsquo;raboyev bilan suhbat</p>', '<p>Италиянинг Сапиенса университети магистранти ёш ватандошимиз Иброҳим Жўрабоев билан суҳбат</p>', '<p>Интервью с молодым соотечественником Ибрагимом джурабоевым, магистрантом итальянского университета Сапиенца</p>', '<p>Interview with our young compatriot Ibrahim Zhuraboyev, a graduate student of the University of Sapienza, Italy</p>', '2023-03-15', '2023-03-24 11:34:10', '2023-04-03 06:57:54', 4, NULL, '7', 'ddssdsdsds'),
(29, 'columns/March2023/xOCXuVq0sTaYPXQ5tPqg.png', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '2023-03-13', '2023-03-24 11:34:47', '2023-03-29 04:33:31', 3, NULL, '5', 'qwdqwd'),
(30, 'columns/March2023/UcCr5cOPos3PHNXGu7u5.png', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Ақшнинг Florida университетида илмий-тадқиқот ишларини олиб бораётган Рустамжон Мурадов', 'Рустам Мурадов, ведущий научно-исследовательскую работу в университете Флориды, США', 'Rustamjon Muradov, who is conducting research at the University of Florida in the United States', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>Ақшнинг Florida университетида илмий-тадқиқот ишларини олиб бораётган Рустамжон Мурадов</p>', '<p>Рустам Мурадов, ведущий научно-исследовательскую работу в университете Флориды, США</p>', '<p>Rustamjon Muradov, who is conducting research at the University of Florida in the United States</p>', '2023-03-16', '2023-03-24 11:35:15', '2023-04-03 06:59:07', 7, NULL, '4', 'ddssdsdsds'),
(31, 'columns/March2023/4hkkmlB3TwVwo8hGlGPv.png', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', '<p>Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi</p>', '<p>Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi</p>', '<p>Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi</p>', '<p>Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi</p>', '2023-03-15', '2023-03-24 18:35:23', '2023-03-25 07:17:19', NULL, NULL, '5', NULL),
(32, 'columns/March2023/7BPu9QaX5GSeCnTLWe5M.png', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', '<p>Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi</p>', '<p>Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi</p>', '<p>Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi</p>', '<p>Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi</p>', '2023-03-10', '2023-03-24 18:36:01', '2023-04-03 04:20:15', 2, NULL, '2', 'Xitoy'),
(33, 'columns/March2023/1FFrukJLkX2pSW3y7kXA.png', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', '<p>Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi</p>', '<p>Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi</p>', '<p>Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi</p>', '<p>Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi</p>', '2023-03-23', '2023-03-24 18:36:34', '2023-03-25 07:16:47', NULL, NULL, '2', 'caascas'),
(34, 'columns/March2023/LAhX17JpyGl0De4zI8Hv.png', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '2023-03-09', '2023-03-24 18:37:21', '2023-03-25 07:16:28', NULL, NULL, '4', 'dasdasd'),
(35, 'columns/March2023/RwUolMX8CMSWzgynoGwy.png', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '2023-03-16', '2023-03-24 18:37:58', '2023-03-25 07:16:02', NULL, NULL, '2', 'cacsa'),
(36, 'columns/March2023/yP7p5hDdeYnV34Pp0knH.png', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Ақшнинг Florida университетида илмий-тадқиқот ишларини олиб бораётган Рустамжон Мурадов', 'Рустам Мурадов, ведущий научно-исследовательскую работу в университете Флориды, США', 'Rustamjon Muradov, who is conducting research at the University of Florida in the United States', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>Ақшнинг Florida университетида илмий-тадқиқот ишларини олиб бораётган Рустамжон Мурадов</p>', '<p>Рустам Мурадов, ведущий научно-исследовательскую работу в университете Флориды, США</p>', '<p>Rustamjon Muradov, who is conducting research at the University of Florida in the United States</p>', '2023-03-09', '2023-03-24 18:38:43', '2023-04-03 06:56:38', NULL, NULL, '5', 'addasdas'),
(37, 'columns/March2023/UWihuv4jnTvXiQq3ftJp.png', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Ақшнинг Florida университетида илмий-тадқиқот ишларини олиб бораётган Рустамжон Мурадов', 'Рустам Мурадов, ведущий научно-исследовательскую работу в университете Флориды, США', 'Rustamjon Muradov, who is conducting research at the University of Florida in the United States', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>Ақшнинг Florida университетида илмий-тадқиқот ишларини олиб бораётган Рустамжон Мурадов</p>', '<p>Рустам Мурадов, ведущий научно-исследовательскую работу в университете Флориды, США</p>', '<p>Rustamjon Muradov, who is conducting research at the University of Florida in the United States</p>', '2023-03-16', '2023-03-24 18:39:17', '2023-04-03 06:55:31', NULL, NULL, '5', 'daasdas'),
(38, 'columns/March2023/gOZ8sIVxxmDaDrVnrtMb.png', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '2023-03-17', '2023-03-27 05:44:01', '2023-03-27 09:43:23', 22, NULL, '2', 'dqwdqw'),
(39, 'columns/March2023/am8cH6ooESZ9JTLAipsM.png', 'Qirg‘iziston Respublikasi o‘zbek milliy madaniyat markazi bilan birgalikda otkazilgan tadbir ajoyib ruhiyatda o‘tdi', 'Қирғизистон Республикаси ўзбек миллий маданият маркази билан биргаликда отказилган тадбир ажойиб руҳиятда ўтди', 'Мероприятие, проведенное совместно с центром узбекской национальной культуры Кыргызской Республики, прошло в отличном настроении', 'Together with the Uzbek national cultural center of the Kyrgyz Republic, the event was held in a wonderful spirit', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Ташриф давомида Қозоғистон Республикасининг \"Отандастар\" нотижорат аксиядорлик фонди билан учрашув ташкил...</p>', '<p>В ходе визита состоится встреча с некоммерческим акционерным фондом&rdquo; Отандастар \" Республики Казахстан...</p>', '<p>During the visit organized a meeting with the non-profit Joint-Stock Fund \"Otandastar&rdquo; of the Republic of Kazakhstan...</p>', '2023-03-09', '2023-03-28 05:31:15', '2023-04-03 06:54:28', NULL, '[\"columns\\/March2023\\/ihFLwe7u8Y4CqA9iCJd7.png\"]', '2', 'qwdqwd'),
(40, 'columns/March2023/lBnJKeUeOng53EZLEpRz.png', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Ташриф давомида Қозоғистон Республикасининг \"Отандастар\" нотижорат аксиядорлик фонди билан учрашув ташкил...', 'В ходе визита состоится встреча с некоммерческим акционерным фондом” Отандастар \" Республики Казахстан...', 'During the visit organized a meeting with the non-profit Joint-Stock Fund \"Otandastar” of the Republic of Kazakhstan...', '<p>Tashrif davomida Qozog\'iston Respublikasining \"Otandastar&rdquo; notijorat aksiyadorlik fondi bilan uchrashuv tashkil...</p>', '<p>Ташриф давомида Қозоғистон Республикасининг \"Отандастар\" нотижорат аксиядорлик фонди билан учрашув ташкил...</p>', '<p>В ходе визита состоится встреча с некоммерческим акционерным фондом&rdquo; Отандастар \" Республики Казахстан...</p>', '<p>During the visit organized a meeting with the non-profit Joint-Stock Fund \"Otandastar&rdquo; of the Republic of Kazakhstan...</p>', '2023-03-10', '2023-03-28 05:32:12', '2023-04-03 06:52:48', 10, NULL, '2', 'ddssdsdsds'),
(41, 'columns/March2023/PsOINJM6Y8jsrrWAegUR.png', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Ақшнинг Florida университетида илмий-тадқиқот ишларини олиб бораётган Рустамжон Мурадов', 'Рустам Мурадов, ведущий научно-исследовательскую работу в университете Флориды, США', 'Rustamjon Muradov, who is conducting research at the University of Florida in the United States', '<p>Mamlakatimizning Vladivostokdagi Bosh konsulxonasi Rossiyada qiyin moddiy ahvolda tushib qolgan ikki nafar yurtdoshimizning&nbsp;</p>', '<p>Мамлакатимизнинг Владивостокдаги Бош консулхонаси Россияда қийин моддий аҳволда тушиб қолган икки нафар юртдошимизнинг</p>', '<p>Генеральное консульство нашей страны во Владивостоке задержало двух наших соотечественников, оказавшихся в России в тяжелом материальном положении.</p>', '<p>The Consulate General of our country in Vladivostok of two of our compatriots who are in a difficult financial situation in Russia</p>', '2023-03-15', '2023-03-28 05:48:59', '2023-04-03 06:51:18', NULL, NULL, '2', 'ddssdsdsds'),
(42, 'columns/March2023/9MlrCJh8sya2pebQHDmb.png', 'Janubiy Koreyaning Pochon va unga yaqin hududlarida bo‘lib...', 'Жанубий Кореянинг Почон ва унга яқин ҳудудларида бўлиб...', 'Находясь в Почоне и прилегающих районах Южной Кореи...', 'Held in Pochon and nearby areas of South Korea...', '<p>Mamlakatimizning Vladivostokdagi Bosh konsulxonasi Rossiyada qiyin moddiy ahvolda tushib qolgan ikki nafar yurtdoshimizning&nbsp;</p>', '<p>Мамлакатимизнинг Владивостокдаги Бош консулхонаси Россияда қийин моддий аҳволда тушиб қолган икки нафар юртдошимизнинг</p>', '<p>Генеральное консульство нашей страны во Владивостоке задержало двух наших соотечественников, оказавшихся в России в тяжелом материальном положении.</p>', '<p>The Consulate General of our country in Vladivostok of two of our compatriots who are in a difficult financial situation in Russia</p>', '2023-03-17', '2023-03-28 05:50:05', '2023-04-03 08:59:31', NULL, NULL, '2', 'italia, samuray, rembo'),
(43, 'columns/March2023/7ks4GJYEV5BUicmzy0GH.png', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Хитой Халқ Республикасида истиқомат қилаётган Хўжамовлар оиласи', 'Семья Ходжамовых, проживающая в Китайской Народной Республике', 'Hojamov family living in the people\'s Republic of China', '<p>Janubiy Koreyaning Pochon va unga yaqin hududlarida bo&lsquo;lib turgan vatandoshlarimiz bilan sayyor qabul va uchrashuv&nbsp;</p>', '<p>Жанубий Кореянинг Почон ва унга яқин ҳудудларида бўлиб турган ватандошларимиз билан сайёр қабул ва учрашув</p>', '<p>Выездной прием и встреча с нашими соотечественниками в Почоне и близлежащих районах Южной Кореи</p>', '<p>Itinerant reception and meeting with our compatriots in Pochon and nearby regions of South Korea</p>', '2023-03-10', '2023-03-28 05:50:53', '2023-04-03 06:46:08', NULL, NULL, '2', 'italia, samuray, rembo'),
(44, 'columns/March2023/fJA2Edc4CR0UNuQGsPXD.png', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Хитой Халқ Республикасида истиқомат қилаётган Хўжамовлар оиласи', 'Семья Ходжамовых, проживающая в Китайской Народной Республике', 'Hojamov family living in the people\'s Republic of China', '<p>Janubiy Koreyaning Pochon va unga yaqin hududlarida bo&lsquo;lib turgan vatandoshlarimiz bilan sayyor qabul va uchrashuv&nbsp;</p>', '<p>Жанубий Кореянинг Почон ва унга яқин ҳудудларида бўлиб турган ватандошларимиз билан сайёр қабул ва учрашув</p>', '<p>Выездной прием и встреча с нашими соотечественниками в Почоне и близлежащих районах Южной Кореи</p>', '<p>Itinerant reception and meeting with our compatriots in Pochon and nearby regions of South Korea</p>', '2023-02-27', '2023-03-28 05:52:01', '2023-04-03 06:44:36', NULL, NULL, '2', 'italia, camasutra, memo'),
(45, 'columns/March2023/3izvmchOYUADJV7buXkW.png', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Хитой Халқ Республикасида истиқомат қилаётган Хўжамовлар оиласи', 'Семья Ходжамовых, проживающая в Китайской Народной Республике', 'Hojamov family living in the people\'s Republic of China', '<p>Janubiy Koreyaning Pochon va unga yaqin hududlarida bo&lsquo;lib turgan vatandoshlarimiz bilan sayyor qabul va uchrashuv&nbsp;</p>', '<p>Жанубий Кореянинг Почон ва унга яқин ҳудудларида бўлиб турган ватандошларимиз билан сайёр қабул ва учрашув</p>', '<p>Выездной прием и встреча с нашими соотечественниками в Почоне и близлежащих районах Южной Кореи</p>', '<p>Itinerant reception and meeting with our compatriots in Pochon and nearby regions of South Korea</p>', NULL, '2023-03-28 05:52:41', '2023-04-03 06:40:16', 4, NULL, '2', 'italia, samuray, rembo');

-- --------------------------------------------------------

--
-- Структура таблицы `column_menus`
--

CREATE TABLE `column_menus` (
  `id` int UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `column_menus`
--

INSERT INTO `column_menus` (`id`, `logo`, `menu_uz`, `menu_oz`, `menu_ru`, `menu_en`, `info_uz`, `info_oz`, `info_ru`, `info_en`, `background_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'column-menus/March2023/Y4qo8K1fHjdTIIQDoVBV.png', '\"Kun oilasi\" rukni', '“Kun oilasi” rukni', '\"Kun oilasi\" rukni', '\"Kun oilasi\" rukni', 'Xorijda istiqomat qilayotgan vatandoshlarni tarixiy Vatani atrofida yanada jipslashtirish, ularning qalbi va ongida yurt bilan faxrlanish tuyg‘usini yuksaltirish, milliy o‘zlikni saqlab qolish,', 'Xorijda istiqomat qilayotgan vatandoshlarni tarixiy Vatani atrofida yanada jipslashtirish, ularning qalbi va ongida yurt bilan faxrlanish tuyg‘usini yuksaltirish, milliy o‘zlikni saqlab qolish,', 'Xorijda istiqomat qilayotgan vatandoshlarni tarixiy Vatani atrofida yanada jipslashtirish, ularning qalbi va ongida yurt bilan faxrlanish tuyg‘usini yuksaltirish, milliy o‘zlikni saqlab qolish,', 'Xorijda istiqomat qilayotgan vatandoshlarni tarixiy Vatani atrofida yanada jipslashtirish, ularning qalbi va ongida yurt bilan faxrlanish tuyg‘usini yuksaltirish, milliy o‘zlikni saqlab qolish,', 'column-menus/March2023/3dc9iXciqWSCQvh0ZDv9.png', '2023-03-24 09:06:41', '2023-03-24 09:36:29', NULL),
(4, 'column-menus/March2023/0q0F8ESKumCF3VDaLIAO.png', '“Sportchi vatandsohlar” rukni', '“Спортчи ватандсоҳлар” рукни', 'Колонка \"спортсмены-соотечественники\"', '\"Athlete compatriots\" column', 'O\'zingiz yoki minglab boshqa ishlab chiquvchilar bilan ishlaysizmi, React-dan foydalanish xuddi shunday his qiladi. Bu sizga mustaqil odamlar, jamoalar va tashkilotlar.', 'Ўзингиз ёки минглаб бошқа ишлаб чиқувчилар билан ишлайсизми, Реаcт-дан фойдаланиш худди шундай ҳис қилади. Бу сизга мустақил одамлар, жамоалар ва ташкилотлар.', 'Независимо от того, работаете ли вы самостоятельно или с тысячами других разработчиков, использование React кажется одинаковым. Это дает вам независимых людей, сообщества и организации.', 'Whether you\'re working with yourself or thousands of other developers, using React feels the same way. These are independent people, communities and organizations for you.', 'column-menus/March2023/vnYWcQa9b5qak7enq6au.png', '2023-03-24 09:38:12', '2023-03-24 09:51:20', NULL),
(5, 'column-menus/March2023/lGBuhyj3gRK6mpkcay5z.png', '“Yosh vatandoshlar” rukni', '“Ёш ватандошлар” рукни', 'Колонка \"юные соотечественники\"', '”Young compatriots\" column', 'O\'zingiz yoki minglab boshqa ishlab chiquvchilar bilan ishlaysizmi, React-dan foydalanish xuddi shunday his qiladi. Bu sizga mustaqil odamlar, jamoalar va tashkilotlar.', 'Ўзингиз ёки минглаб бошқа ишлаб чиқувчилар билан ишлайсизми, Реаcт-дан фойдаланиш худди шундай ҳис қилади. Бу сизга мустақил одамлар, жамоалар ва ташкилотлар.', 'Независимо от того, работаете ли вы самостоятельно или с тысячами других разработчиков. Он разработан таким образом, чтобы вы могли легко комбинировать компоненты, написанные независимыми людьми, командами и организациями.', 'Whether you\'re working with yourself or thousands of other developers, using React feels the same way. These are independent people, communities and organizations for you.', 'column-menus/March2023/06wUPbwGDjucapNJWuwu.png', '2023-03-24 09:58:07', '2023-03-24 09:58:07', NULL),
(6, 'column-menus/March2023/8c10NUt1FtSYdRKGU1Fw.png', 'Sara durdona', 'Сара дурдона', 'Сара шедевр', 'Special items', 'O\'zingiz yoki minglab boshqa ishlab chiquvchilar bilan ishlaysizmi, React-dan foydalanish xuddi shunday his qiladi. Bu sizga mustaqil odamlar, jamoalar va tashkilotlar.', 'Ўзингиз ёки минглаб бошқа ишлаб чиқувчилар билан ишлайсизми, Реаcт-дан фойдаланиш худди шундай ҳис қилади. Бу сизга мустақил одамлар, жамоалар ва ташкилотлар.', 'Независимо от того, работаете ли вы самостоятельно или с тысячами других разработчиков. Он разработан таким образом, чтобы вы могли легко комбинировать компоненты, написанные независимыми людьми, командами и организациями.', 'Whether you\'re working with yourself or thousands of other developers, using React feels the same way. These are independent people, communities and organizations for you.', 'column-menus/March2023/aZdQiSjBZE5eRKyzJtL8.png', '2023-03-24 10:01:03', '2023-03-24 10:01:03', NULL),
(7, 'column-menus/March2023/YVGkz46DTUkbacNvRqGN.png', '“Xorijdagi milliy oshxona” loyihasi', '“Хориждаги миллий ошхона” лойиҳаси', 'Проект \"Национальная кухня за рубежом\"', 'Project \"national cuisine abroad\"', 'O\'zingiz yoki minglab boshqa ishlab chiquvchilar bilan ishlaysizmi, React-dan foydalanish xuddi shunday his qiladi. Bu sizga mustaqil odamlar, jamoalar va tashkilotlar.', 'Ўзингиз ёки минглаб бошқа ишлаб чиқувчилар билан ишлайсизми, Реаcт-дан фойдаланиш худди шундай ҳис қилади. Бу сизга мустақил одамлар, жамоалар ва ташкилотлар.', 'Независимо от того, работаете ли вы самостоятельно или с тысячами других разработчиков, использование React кажется одинаковым. Это дает вам независимых людей, сообщества и организации.', 'Whether you\'re working with yourself or thousands of other developers, using React feels the same way. These are independent people, communities and organizations for you.', 'column-menus/March2023/Twx4YznPdTpQF07IHVnS.png', '2023-03-24 10:03:45', '2023-03-24 10:03:45', NULL),
(8, 'column-menus/March2023/EgLVpY8XfSC63pQrhcaF.png', '“Xorijdagi vatandosh tashkilot” loyihasi', '“Хориждаги ватандош ташкилот” лойиҳаси', 'Проект \"соотечественник за рубежом\"', 'Project ”overseas compatriot organization\"', 'O\'zingiz yoki minglab boshqa ishlab chiquvchilar bilan ishlaysizmi, React-dan foydalanish xuddi shunday his qiladi. Bu sizga mustaqil odamlar, jamoalar va tashkilotlar.', 'Ўзингиз ёки минглаб бошқа ишлаб чиқувчилар билан ишлайсизми, Реаcт-дан фойдаланиш худди шундай ҳис қилади. Бу сизга мустақил одамлар, жамоалар ва ташкилотлар.', 'Независимо от того, работаете ли вы самостоятельно или с тысячами других разработчиков. Он разработан таким образом, чтобы вы могли легко комбинировать компоненты, написанные независимыми людьми, командами и организациями.', 'Whether you\'re working with yourself or thousands of other developers, using React feels the same way. These are independent people, communities and organizations for you.', 'column-menus/March2023/CK1ypBfBVI595ZKURPTh.png', '2023-03-24 10:05:24', '2023-03-24 10:05:24', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int UNSIGNED NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openinghours_uz` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openinghours_oz` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openinghours_ru` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openinghours_en` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maps` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `phone`, `email`, `telegram`, `instagram`, `twitter`, `facebook`, `created_at`, `updated_at`, `address_uz`, `address_oz`, `address_ru`, `address_en`, `openinghours_uz`, `openinghours_oz`, `openinghours_ru`, `openinghours_en`, `maps`) VALUES
(1, '+998(55)502-22-99', 'info@vatandoshlarfondi.uz', 'Telegram link', 'Instagram  link', 'Twitter link', 'Facebook Link', '2023-03-05 05:40:01', '2023-04-03 07:13:31', '100096. Toshkent sh. Muqimiy ko`chasi 166', '100096. Тошкент ш. Муқимий кўчаси 166', '100096. Г. Ташкент Улица Мукими 166', '100096. Tashkent City Muqimi Street 166', 'Dushanba - Juma 09:00-18:00', 'Душанба - Жума 09:00 - 18:00', 'Понедельник - Пятница 09:00 - 18:00', 'Monday - Friday 09:00 - 18:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int UNSIGNED NOT NULL,
  `country_name_uz` text COLLATE utf8mb4_unicode_ci,
  `country_name_ru` text COLLATE utf8mb4_unicode_ci,
  `country_name_en` text COLLATE utf8mb4_unicode_ci,
  `country_flag_code` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `country_name_uz`, `country_name_ru`, `country_name_en`, `country_flag_code`, `created_at`, `updated_at`) VALUES
(254, 'Afg\'oniston', 'Афганистан', 'Afghanistan', 'AF', '2023-03-13 09:55:30', '2023-03-13 09:55:30'),
(255, 'Aland orollari', 'Аландские острова', 'Aland Islands', 'AX', '2023-03-13 09:55:30', '2023-03-13 09:55:30'),
(256, 'Albaniya', 'Албания', 'Albania', 'AL', '2023-03-13 09:55:30', '2023-03-13 09:55:30'),
(257, 'Fazilat', 'Алжир', 'Algeria', 'DZ', '2023-03-13 09:55:30', '2023-03-13 09:55:30'),
(258, 'Amerikalik Samoa', 'Американское Самоа', 'American Samoa', 'AS', '2023-03-13 09:55:30', '2023-03-13 11:38:58'),
(259, 'Antarora', 'Андорра', 'Andorra', 'AD', '2023-03-13 09:55:30', '2023-03-13 09:55:30'),
(260, 'Angol', 'Ангола', 'Angola', 'AO', '2023-03-13 09:55:30', '2023-03-13 09:55:30'),
(261, 'Angliya', 'Ангилья', 'Anguilla', 'AI', '2023-03-13 09:55:30', '2023-03-13 09:55:30'),
(262, 'Antarktika', 'Антарктида', 'Antarctica', 'AQ', '2023-03-13 09:55:30', '2023-03-13 09:55:30'),
(263, 'Antigua va barbuda', 'Антигуа и Барбуда', 'Antigua and Barbuda', 'AG', '2023-03-13 09:55:30', '2023-03-13 09:55:30'),
(264, 'Argentina', 'Аргентина', 'Argentina', 'AR', '2023-03-13 09:55:30', '2023-03-13 09:55:30'),
(265, 'Armeniya', 'Армения', 'Armenia', 'AM', '2023-03-13 09:55:30', '2023-03-13 09:55:30'),
(266, 'Aruba', 'Аруба', 'Aruba', 'AW', '2023-03-13 09:55:30', '2023-03-13 09:55:30'),
(267, 'Avstraliya', 'Австралия', 'Australia', 'AU', '2023-03-13 09:55:30', '2023-03-13 09:55:30'),
(268, 'Avstriya', 'Австрия', 'Austria', 'AT', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(269, 'Ozarbayjon', 'Азербайджан', 'Azerbaijan', 'AZ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(270, 'Baxamalar', 'Багамские острова', 'Bahamas', 'BS', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(271, 'Bahrayn', 'Бахрейн', 'Bahrain', 'BH', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(272, 'Bangladesh', 'Бангладеш', 'Bangladesh', 'BD', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(273, 'Barbados', 'Барбадос', 'Barbados', 'BB', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(274, 'Belarus', 'Беларусь', 'Belarus', 'BY', '2023-03-13 09:55:00', '2023-03-13 09:56:16'),
(275, 'Belgiya', 'Бельгия', 'Belgium', 'BE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(276, 'Belize', 'Белиз', 'Belize', 'BZ', '2023-03-13 09:55:31', '2023-03-13 11:34:28'),
(277, 'Benin', 'Бенин', 'Benin', 'BJ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(278, 'Bermuda', 'Бермудские острова', 'Bermuda', 'BM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(279, 'Bxutan', 'Бутан', 'Bhutan', 'BT', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(280, 'Bolijon', 'Боливия', 'Bolivia', 'BO', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(281, 'Bonire, Sinint Eustatius va Saba', 'Bonaire, Sint Eustatius и Saba', 'Bonaire, Sint Eustatius and Saba', 'BQ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(282, 'Bosniya va Gertsegovina', 'Босния и Герцеговина', 'Bosnia and Herzegovina', 'BA', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(283, 'Botsvana', 'Ботсвана', 'Botswana', 'BW', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(284, 'Bouvet oroli', 'Остров Буве', 'Bouvet Island', 'BV', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(285, 'Braziliya', 'Бразилия', 'Brazil', 'BR', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(286, 'Britaniyaning Hind okeani hududi', 'Британская территория Индийского океана', 'British Indian Ocean Territory', 'IO', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(287, 'Bruni Darussalam', 'Бруней-Даруссалам', 'Brunei Darussalam', 'BN', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(288, 'Bolgariya', 'Болгария', 'Bulgaria', 'BG', '2023-03-13 09:55:31', '2023-03-13 11:36:43'),
(289, 'Burkina Faso', 'Буркина-Фасо', 'Burkina Faso', 'BF', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(290, 'Burundi', 'Бурунди', 'Burundi', 'BI', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(291, 'Kambodja', 'Камбоджа', 'Cambodia', 'KH', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(292, 'Kamerun', 'Камерун', 'Cameroon', 'CM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(293, 'Kanada', 'Канада', 'Canada', 'CA', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(294, 'Kaptar', 'Кабо-Верде', 'Cape Verde', 'CV', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(295, 'Cayman orollari', 'Каймановы острова', 'Cayman Islands', 'KY', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(296, 'Markaziy Afrika Respublikasi', 'Центрально-Африканская Республика', 'Central African Republic', 'CF', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(297, 'Chad', 'Чад', 'Chad', 'TD', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(298, 'Xiyobon', 'Чили', 'Chile', 'CL', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(299, 'Xitoy', 'Китай', 'China', 'CN', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(300, 'Rojdestvo oroli', 'Остров Рождества', 'Christmas Island', 'CX', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(301, 'CocoS (kemi) orollar', 'Кокосовые (Килинг) Острова', 'Cocos (Keeling) Islands', 'CC', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(302, 'Kolumbiya', 'Колумбия', 'Colombia', 'CO', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(303, 'Kommunos', 'Коморос', 'Comoros', 'KM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(304, 'Kongo', 'Конго', 'Congo', 'CG', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(305, 'Kongo, demokratik respublika', 'Конго, Демократическая Республика', 'Congo, The Democratic Republic of ', 'CD', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(306, 'Oshpaz orollari', 'Острова Кука', 'Cook Islands', 'CK', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(307, 'Kosta-Rika', 'Коста -Рика', 'Costa Rica', 'CR', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(308, 'Cot d\'Ivuare', 'Берег Слоновой Кости', 'Cote d\'Ivoire', 'CI', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(309, 'Xorvatiya', 'Хорватия', 'Croatia', 'HR', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(310, 'Kubalik', 'Куба', 'Cuba', 'CU', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(311, 'Kriaqao', 'Кюрасао', 'Curaçao', 'CW', '2023-03-13 09:55:31', '2023-03-13 11:38:06'),
(312, 'Kipr', 'Кипр', 'Cyprus', 'CY', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(313, 'Chexia', 'Чехия', 'Czechia', 'CZ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(314, 'Denmark', 'Дания', 'Denmark', 'DK', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(315, 'Djibuti', 'Джибути', 'Djibouti', 'DJ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(316, 'Domini', 'Доминика', 'Dominica', 'DM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(317, 'Dominika Respublikasi', 'Доминиканская Республика', 'Dominican Republic', 'DO', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(318, 'Ekvador', 'Эквадор', 'Ecuador', 'EC', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(319, 'Misr', 'Египет', 'Egypt', 'EG', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(320, 'Salvador', 'Сальвадор', 'El Salvador', 'SV', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(321, 'Ekvator Gvineya', 'Экваториальная Гвинея', 'Equatorial Guinea', 'GQ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(322, 'Eritreya', 'Эритрея', 'Eritrea', 'ER', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(323, 'Estoniya', 'Эстония', 'Estonia', 'EE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(324, 'Efiopiya', 'Эфиопия', 'Ethiopia', 'ET', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(325, 'Falklend orollari (Malvinas)', 'Фолклендские острова (Мальвинс)', 'Falkland Islands (Malvinas)', 'FK', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(326, 'Farer orollari', 'Фарерские острова', 'Faroe Islands', 'FO', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(327, 'Fiji', 'Фиджи', 'Fiji', 'FJ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(328, 'Finlyandiya', 'Финляндия', 'Finland', 'FI', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(329, 'Frantsiya', 'Франция', 'France', 'FR', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(330, 'Frantsuz Giana', 'Французская Гвиана', 'French Guiana', 'GF', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(331, 'Fransuz Polinesia', 'Французская Полинезия', 'French Polynesia', 'PF', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(332, 'Frantsuz janubi hududlari', 'Южные Французские Территории', 'French Southern Territories', 'TF', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(333, 'Gabon', 'Габон', 'Gabon', 'GA', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(334, 'Gambiya', 'Гамбия', 'Gambia', 'GM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(335, 'Gruziya', 'Грузия', 'Georgia', 'GE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(336, 'Germaniya', 'Германия', 'Germany', 'DE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(337, 'Gana', 'Гана', 'Ghana', 'GH', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(338, 'Gibraltar', 'Гибралтар', 'Gibraltar', 'GI', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(339, 'Gretsiya', 'Греция', 'Greece', 'GR', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(340, 'Yashil rang', 'Гренландия', 'Greenland', 'GL', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(341, 'Grenada', 'Гренада', 'Grenada', 'GD', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(342, 'Guadeluce', 'Гваделупа', 'Guadeloupe', 'GP', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(343, 'Guman', 'Гуам', 'Guam', 'GU', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(344, 'Gvatemala', 'Гватемала', 'Guatemala', 'GT', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(345, 'Gernersy', 'Гернси', 'Guernsey', 'GG', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(346, 'Gvineya', 'Гвинея', 'Guinea', 'GN', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(347, 'Gvineya-Bisau', 'Гвинея-Бисау', 'Guinea-Bissau', 'GW', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(348, 'Geana', 'Гайана', 'Guyana', 'GY', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(349, 'Gayt', 'Гаити', 'Haiti', 'HT', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(350, 'Eshitish va MC Donald orollari', 'Херд и острова Мак Дональд', 'Heard and Mc Donald Islands', 'HM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(351, 'Muqaddas qarang (Vatikan shahar shtat)', 'Святое Престол (штат Ватикан)', 'Holy See (Vatican City State)', 'VA', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(352, 'Gonduras', 'Гондурас', 'Honduras', 'HN', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(353, 'Gon tong', 'Гонконг', 'Hong Kong', 'HK', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(354, 'Osma', 'Венгрия', 'Hungary', 'HU', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(355, 'Mohir', 'Исландия', 'Iceland', 'IS', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(356, 'Hindiston', 'Индия', 'India', 'IN', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(357, 'Indoneziya', 'Индонезия', 'Indonesia', 'ID', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(358, 'Eron, Islom Respublikasi', 'Иран, Исламская Республика', 'Iran, Islamic Republic of', 'IR', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(359, 'Iroqlik', 'Ирак', 'Iraq', 'IQ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(360, 'Irlandiyalik', 'Ирландия', 'Ireland', 'IE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(361, 'Erkakning oroli', 'Остров Мэн', 'Isle of Man', 'IM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(362, 'Isroillik', 'Израиль', 'Israel', 'IL', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(363, 'Italiya', 'Италия', 'Italy', 'IT', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(364, 'Yamayka', 'Ямайка', 'Jamaica', 'JM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(365, 'Yapon', 'Япония', 'Japan', 'JP', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(366, 'Jersi', 'Джерси', 'Jersey', 'JE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(367, 'Iordaniya', 'Иордания', 'Jordan', 'JO', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(368, 'Qozog\'iston', 'Казакстан', 'Kazakstan', 'KZ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(369, 'Keniya', 'Кения', 'Kenya', 'KE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(370, 'Kirajati', 'Кирибати', 'Kiribati', 'KI', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(371, 'Koreya, demokratik xalq respublikasi', 'Корея, Демократическая народная Республика', 'Korea, Democratic People\'s Republic of', 'KP', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(372, 'Koreya, Respublika respublikasi', 'Корея, Республика', 'Korea, Republic of', 'KR', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(373, 'Kosovo (vaqtinchalik kod)', 'Косово (временный код)', 'Kosovo (temporary code)', 'XK', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(374, 'Kuvayt', 'Кувейт', 'Kuwait', 'KW', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(375, 'Qirg\'iziston', 'Кыргизстан', 'Kyrgyzstan', 'KG', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(376, 'Laos, Xalq Demokratik Respublikasi', 'Лаосская Народно-Демократическая Республика', 'Lao, People\'s Democratic Republic', 'LA', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(377, 'Latviya', 'Латвия', 'Latvia', 'LV', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(378, 'Lebanon', 'Ливан', 'Lebanon', 'LB', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(379, 'Lesoto', 'Лесото', 'Lesotho', 'LS', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(380, 'Liberiya', 'Либерия', 'Liberia', 'LR', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(381, 'Liviya arabamhiriya', 'Ливийская арабская джамахирия', 'Libyan Arab Jamahiriya', 'LY', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(382, 'Lichenshteyn', 'Лихтенштейн', 'Liechtenstein', 'LI', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(383, 'Litva', 'Литва', 'Lithuania', 'LT', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(384, 'Lyuksemburg', 'Люксембург', 'Luxembourg', 'LU', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(385, 'Makkao', 'Макао', 'Macao', 'MO', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(386, 'Sobiq Yugoslaviya Respublikasi Makedoniya', 'Македония, бывшая Югославская Республика', 'Macedonia, The Former Yugoslav Republic Of', 'MK', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(387, 'Maqtanchoqlik', 'Мадагаскар', 'Madagascar', 'MG', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(388, 'Madaviy', 'Малави', 'Malawi', 'MW', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(389, 'Malayziya', 'Малайзия', 'Malaysia', 'MY', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(390, 'Maldiv orollari', 'Мальдивы', 'Maldives', 'MV', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(391, 'Masi', 'Мали', 'Mali', 'ML', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(392, 'Malta', 'Мальта', 'Malta', 'MT', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(393, 'Marshall orollari', 'Маршалловы острова', 'Marshall Islands', 'MH', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(394, 'Martinika', 'Мартиника', 'Martinique', 'MQ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(395, 'Mauritaniya', 'Мавритания', 'Mauritania', 'MR', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(396, 'Mauritius', 'Маврикий', 'Mauritius', 'MU', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(397, 'Maymoq', 'Mayotte', 'Mayotte', 'YT', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(398, 'Meksika', 'Мексика', 'Mexico', 'MX', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(399, 'Mikroneziya, federatsiyalangan davlatlar', 'Микронезия, федеративные состояния', 'Micronesia, Federated States of', 'FM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(400, 'Moldova, Respublika respublikasi', 'Молдова, Республика', 'Moldova, Republic of', 'MD', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(401, 'Monaco', 'Монако', 'Monaco', 'MC', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(402, 'Mo\'g\'ul', 'Монголия', 'Mongolia', 'MN', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(403, 'Cherkov', 'Черногория', 'Montenegro', 'ME', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(404, 'Montserrrat', 'Монтсеррат', 'Montserrat', 'MS', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(405, 'Marokash', 'Марокко', 'Morocco', 'MA', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(406, 'Mozambik', 'Мозамбик', 'Mozambique', 'MZ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(407, 'Mianmar', 'Мьянма', 'Myanmar', 'MM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(408, 'Namibiya', 'Намибия', 'Namibia', 'NA', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(409, 'Nobuk', 'Науру', 'Nauru', 'NR', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(410, 'Nepal', 'Непал', 'Nepal', 'NP', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(411, 'Gollandiya', 'Нидерланды', 'Netherlands', 'NL', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(412, 'Gollandiya anjirlari', 'Нидерландские Антильские острова', 'Netherlands Antilles', 'AN', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(413, 'Yangi Kaledoniya', 'Новая Каледония', 'New Caledonia', 'NC', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(414, 'Yangi Zelandiya', 'Новая Зеландия', 'New Zealand', 'NZ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(415, 'Nikaragua', 'Никарагуа', 'Nicaragua', 'NI', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(416, 'Niger', 'Нигер', 'Niger', 'NE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(417, 'Nigeriya', 'Нигерия', 'Nigeria', 'NG', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(418, 'Nuue', 'Niue', 'Niue', 'NU', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(419, 'Norfolk oroli', 'Остров Норфолк', 'Norfolk Island', 'NF', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(420, 'Shimoliy Mariana orollari', 'Северные Марианские острова', 'Northern Mariana Islands', 'MP', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(421, 'Norveg', 'Норвегия', 'Norway', 'NO', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(422, 'Omil', 'Оман', 'Oman', 'OM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(423, 'Pokiston', 'Пакистан', 'Pakistan', 'PK', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(424, 'Palau', 'Палау', 'Palau', 'PW', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(425, 'Falastin hududiga ishg\'ol qilindi', 'Палестинская территория, занятая', 'Palestinian Territory, Occupied', 'PS', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(426, 'Panama', 'Панама', 'Panama', 'PA', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(427, 'Papua yangi Gvineya', 'Папуа - Новая Гвинея', 'Papua New Guinea', 'PG', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(428, 'Paragvay', 'Парагвай', 'Paraguay', 'PY', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(429, 'Peru', 'Перу', 'Peru', 'PE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(430, 'Filippin', 'Филиппины', 'Philippines', 'PH', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(431, 'Xom ashyo', 'Питкэрн', 'Pitcairn', 'PN', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(432, 'Polsha', 'Польша', 'Poland', 'PL', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(433, 'Portugalcha', 'Португалия', 'Portugal', 'PT', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(434, 'Puerto riko', 'Пуэрто-Рико', 'Puerto Rico', 'PR', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(435, 'Qatar', 'Катар', 'Qatar', 'QA', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(436, 'Serbiya Respublikasi', 'Республика Сербия', 'Republic of Serbia', 'RS', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(437, 'Qaytadan yig\'lamoq', 'Воссоединение', 'Reunion', 'RE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(438, 'Ruminiya', 'Румыния', 'Romania', 'RO', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(439, 'Rossiya Federatsiyasi', 'Федерация России', 'Russia Federation', 'RU', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(440, 'Ruanda', 'Руанда', 'Rwanda', 'RW', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(441, 'San\'ti Barhélemy', 'Святой Бартеем', 'Saint Barthélemy', 'BL', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(442, 'Sent-Helena', 'Святая Елена', 'Saint Helena', 'SH', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(443, 'Sent Kits va Nevis', 'Saint Kitts & Nevis', 'Saint Kitts & Nevis', 'KN', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(444, 'Avliyo Lusiya', 'Санкт-Люсия', 'Saint Lucia', 'LC', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(445, 'Sankt Martin', 'Святой Мартин', 'Saint Martin', 'MF', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(446, 'Sent Per va Mixelon', 'Сент -Пьер и Микелон', 'Saint Pierre and Miquelon', 'PM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(447, 'Sent Vinsent va granadinlar', 'Святой Винсент и Гренадины', 'Saint Vincent and the Grenadines', 'VC', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(448, 'Samoda', 'Самоа', 'Samoa', 'WS', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(449, 'San-Marino', 'Сан -Марино', 'San Marino', 'SM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(450, 'Sao Tome va Printsip', 'Sao Tome и Principe', 'Sao Tome and Principe', 'ST', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(451, 'Saudiya Arabistoni', 'Саудовская Аравия', 'Saudi Arabia', 'SA', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(452, 'Senegal', 'Сенегал', 'Senegal', 'SN', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(453, 'Serbiya va Chernogoriya', 'Сербия и Черногория', 'Serbia and Montenegro', 'CS', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(454, 'Soyarlar', 'Сейшельские острова', 'Seychelles', 'SC', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(455, 'Syerra-Leone', 'Сьерра-Леоне', 'Sierra Leone', 'SL', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(456, 'Singapore', 'Сингапур', 'Singapore', 'SG', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(457, 'Tint matanten', 'Синт Мартен', 'Sint Maarten', 'SX', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(458, 'Slovakiya', 'Словакия', 'Slovakia', 'SK', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(459, 'Sloveniya', 'Словения', 'Slovenia', 'SI', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(460, 'Sulaymon orollari', 'Соломоновы острова', 'Solomon Islands', 'SB', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(461, 'Soma', 'Сомали', 'Somalia', 'SO', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(462, 'Janubiy Afrika', 'Южная Африка', 'South Africa', 'ZA', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(463, 'Janubiy Gruziya va Janubiy sendvich orollari', 'Южная Джорджия и Южные Сэндвич Острова', 'South Georgia & The South Sandwich Islands', 'GS', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(464, 'Janubiy Sudan', 'южный Судан', 'South Sudan', 'SS', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(465, 'Ispaniya', 'Испания', 'Spain', 'ES', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(466, 'Sri-lika', 'Шри -Ланка', 'Sri Lanka', 'LK', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(467, 'Sudan', 'Судан', 'Sudan', 'SD', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(468, 'Surma', 'Суринам', 'Suriname', 'SR', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(469, 'Svalbard va Jan Mayen', 'Svalbard и Jan Mayen', 'Svalbard and Jan Mayen', 'SJ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(470, 'Schayg\'iyun', 'Свазиленд', 'Swaziland', 'SZ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(471, 'Shvetsiya', 'Швеция', 'Sweden', 'SE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(472, 'Shvitserland', 'Швейцария', 'Switzerland', 'CH', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(473, 'Suriya Arab Respublikasi', 'Сирийская Арабская Республика', 'Syrian Arab Republic', 'SY', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(474, 'Tayvan, Xitoy Viloyat', 'Тайвань, провинция Китая', 'Taiwan, Province of China', 'TW', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(475, 'Tojikiston', 'Таджикистан', 'Tajikistan', 'TJ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(476, 'Tanzaniya, United Respublikasi', 'Танзания, Объединенная Республика', 'Tanzania, United Republic of', 'TZ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(477, 'Tirnoq', 'Таиланд', 'Thailand', 'TH', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(478, 'Timor-lste', 'Тимор-Лешт', 'Timor-Leste', 'TL', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(479, 'Bormoq', 'Идти', 'Togo', 'TG', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(480, 'Toksala', 'Токелау', 'Tokelau', 'TK', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(481, 'Tong', 'Тонга', 'Tonga', 'TO', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(482, 'Trinidad va Tobago', 'Тринидад и Тобаго', 'Trinidad and Tobago', 'TT', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(483, 'Tungi', 'Тунис', 'Tunisia', 'TN', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(484, 'kurka', 'Турция', 'Turkey', 'TR', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(485, 'Turk rep n Kipr (vaqtinchalik kod)', 'Турецкий представитель N Cyprus (временный код)', 'Turkish Rep N Cyprus (temporary code)', 'XT', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(486, 'Turkmaniston', 'Туркменистан', 'Turkmenistan', 'TM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(487, 'Turk va KaICos orollari', 'Турки и острова Кайкос', 'Turks and Caicos Islands', 'TC', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(488, 'Qiz bolasi', 'Тувалу', 'Tuvalu', 'TV', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(489, 'Uganda', 'Уганда', 'Uganda', 'UG', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(490, 'Ukrainalik', 'Украина', 'Ukraine', 'UA', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(491, 'Birlashgan Arab Amirliklari', 'Объединенные Арабские Эмираты', 'United Arab Emirates', 'AE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(492, 'Birlashgan Qirollik', 'Великобритания', 'United Kingdom', 'GB', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(493, 'Qo\'shma Shtatlar', 'Соединенные Штаты', 'United States', 'US', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(494, 'AQShning kichik tashqi orollari', 'Малые отдаленные острова Соединенных Штатов', 'United States Minor Outlying Islands', 'UM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(495, 'Urugvay', 'Уругвай', 'Uruguay', 'UY', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(496, 'O\'zbekiston', 'Узбекистан', 'Uzbekistan', 'UZ', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(497, 'VuNuatu', 'Вануату', 'Vanuatu', 'VU', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(498, 'Venesuela', 'Венесуэла', 'Venezuela', 'VE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(499, 'Vetnam', 'Вьетнам', 'Vietnam', 'VN', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(500, 'Virjiniya orollari, Britaniya', 'Виргинские острова, британские', 'Virgin Islands, British', 'VG', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(501, 'Virjiniya orollari, AQSh.', 'Виргинские острова, США', 'Virgin Islands, U.S.', 'VI', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(502, 'Wallis va Futuna', 'Уоллис и Футуна', 'Wallis and Futuna', 'WF', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(503, 'G\'arbiy Sahara', 'Западная Сахара', 'Western Sahara', 'EH', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(504, 'Yaman', 'Йемен', 'Yemen', 'YE', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(505, 'Zambiya', 'Замбия', 'Zambia', 'ZM', '2023-03-13 09:55:31', '2023-03-13 09:55:31'),
(506, 'Zimbabve', 'Зимбабве', 'Zimbabwe', 'ZW', '2023-03-13 09:55:31', '2023-03-13 09:55:31');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 7, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 6),
(59, 7, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 7),
(60, 7, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 8),
(61, 7, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 9),
(62, 7, 'text_uz', 'rich_text_box', 'Text lotin', 0, 0, 1, 1, 1, 1, '{}', 10),
(63, 7, 'text_oz', 'rich_text_box', 'Text krill', 0, 0, 1, 1, 1, 1, '{}', 11),
(64, 7, 'text_ru', 'rich_text_box', 'Text Ru', 0, 0, 1, 1, 1, 1, '{}', 12),
(65, 7, 'text_en', 'rich_text_box', 'Text En', 0, 0, 1, 1, 1, 1, '{}', 13),
(69, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 16),
(70, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(71, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 8, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 2),
(73, 8, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(74, 8, 'telegram', 'text', 'Telegram', 0, 1, 1, 1, 1, 1, '{}', 4),
(75, 8, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 5),
(76, 8, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 6),
(77, 8, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 7),
(78, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(79, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(80, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 9, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 2),
(82, 9, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 4),
(83, 9, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 5),
(84, 9, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 6),
(85, 9, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 7),
(86, 9, 'text_uz', 'rich_text_box', 'Text lotin', 0, 1, 1, 1, 1, 1, '{}', 8),
(87, 9, 'text_oz', 'rich_text_box', 'Text krill', 0, 0, 1, 1, 1, 1, '{}', 9),
(88, 9, 'text_ru', 'rich_text_box', 'Text Ru', 0, 0, 1, 1, 1, 1, '{}', 10),
(89, 9, 'text_en', 'rich_text_box', 'Text En', 0, 0, 1, 1, 1, 1, '{}', 11),
(90, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(91, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(110, 9, 'logoImg', 'image', 'Logo Img', 0, 1, 1, 1, 1, 1, '{}', 3),
(111, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 12, 'country_name_uz', 'text', 'Country Name Uz', 0, 1, 1, 1, 1, 1, '{}', 2),
(113, 12, 'country_name_ru', 'text', 'Country Name Ru', 0, 1, 1, 1, 1, 1, '{}', 3),
(114, 12, 'country_name_en', 'text', 'Country Name En', 0, 1, 1, 1, 1, 1, '{}', 4),
(115, 12, 'country_flag_code', 'text', 'Country Flag Code', 0, 1, 1, 1, 1, 1, '{}', 5),
(116, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 6),
(117, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(118, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(119, 13, 'country_flag_code', 'text', 'Country Flag Code', 0, 1, 1, 1, 1, 1, '{}', 3),
(121, 13, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 8),
(122, 13, 'date_tame', 'date', 'Date Tame', 0, 1, 1, 1, 1, 1, '{}', 9),
(123, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 10),
(124, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(125, 13, 'relationship_belongsto_country_relationship', 'relationship', 'countries', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Country\",\"table\":\"countries\",\"type\":\"belongsTo\",\"column\":\"country_flag_code\",\"key\":\"country_flag_code\",\"label\":\"country_name_uz\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(126, 13, 'title_uz', 'text', 'Title Uz', 0, 1, 1, 1, 1, 1, '{}', 5),
(127, 13, 'title_ru', 'text', 'Title Ru', 0, 1, 1, 1, 1, 1, '{}', 6),
(128, 13, 'title_en', 'text', 'Title En', 0, 1, 1, 1, 1, 1, '{}', 7),
(129, 13, 'country_flag', 'image', 'Country Flag', 0, 1, 1, 1, 1, 1, '{}', 4),
(134, 7, 'viewers', 'text', 'Viewers', 0, 1, 1, 0, 0, 0, '{}', 14),
(138, 7, 'status', 'text', 'Status', 0, 0, 0, 0, 0, 0, '{}', 21),
(189, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(190, 21, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 3),
(191, 21, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 4),
(192, 21, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 5),
(193, 21, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 6),
(194, 21, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 7),
(195, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 8),
(196, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(197, 22, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(198, 22, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(199, 22, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(200, 22, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(201, 22, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(202, 22, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(203, 22, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(204, 22, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(205, 22, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(206, 22, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(207, 22, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(208, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(209, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(210, 22, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(211, 22, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(212, 21, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 2),
(213, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(214, 23, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 2),
(215, 23, 'name_uz', 'text', 'Ismi (lotin)', 0, 1, 1, 1, 1, 1, '{}', 3),
(216, 23, 'name_oz', 'text', 'Ismi (krill)', 0, 0, 1, 1, 1, 1, '{}', 4),
(217, 23, 'name_ru', 'text', 'Name Ru', 0, 0, 1, 1, 1, 1, '{}', 5),
(218, 23, 'name_en', 'text', 'Name En', 0, 0, 1, 1, 1, 1, '{}', 6),
(219, 23, 'position_uz', 'text', 'Lavozimi (lotin)', 0, 1, 1, 1, 1, 1, '{}', 7),
(220, 23, 'position_oz', 'text', 'Lavozimi (krill)', 0, 0, 1, 1, 1, 1, '{}', 8),
(221, 23, 'position_ru', 'text', 'Position Ru', 0, 0, 1, 1, 1, 1, '{}', 9),
(222, 23, 'position_en', 'text', 'Position En', 0, 0, 1, 1, 1, 1, '{}', 10),
(223, 23, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 11),
(224, 23, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 12),
(225, 23, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 13),
(226, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(227, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(228, 24, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(229, 24, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 3),
(230, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 6),
(231, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(232, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(233, 25, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 2),
(234, 25, 'video', 'file', 'Video', 0, 1, 1, 1, 1, 1, '{}', 3),
(235, 25, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 4),
(236, 25, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 5),
(237, 25, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 6),
(238, 25, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 7),
(239, 25, 'text_uz', 'rich_text_box', 'Text lotin', 0, 0, 1, 1, 1, 1, '{}', 8),
(240, 25, 'text_oz', 'rich_text_box', 'Text krill', 0, 0, 1, 1, 1, 1, '{}', 9),
(241, 25, 'text_ru', 'rich_text_box', 'Text Ru', 0, 0, 1, 1, 1, 1, '{}', 10),
(242, 25, 'text_en', 'rich_text_box', 'Text En', 0, 0, 1, 1, 1, 1, '{}', 11),
(243, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 12),
(244, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(245, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(247, 26, 'menu_uz', 'text', 'Menu Lotin', 0, 1, 1, 1, 1, 1, '{}', 3),
(248, 26, 'menu_oz', 'text', 'Menu Krill', 0, 0, 1, 1, 1, 1, '{}', 4),
(249, 26, 'menu_ru', 'text', 'Menu Ru', 0, 0, 1, 1, 1, 1, '{}', 5),
(250, 26, 'menu_en', 'text', 'Menu En', 0, 0, 1, 1, 1, 1, '{}', 6),
(251, 26, 'info_uz', 'text', 'Info lotin', 0, 1, 1, 1, 1, 1, '{}', 7),
(252, 26, 'info_oz', 'text', 'Info krill', 0, 0, 1, 1, 1, 1, '{}', 8),
(253, 26, 'info_ru', 'text', 'Info Ru', 0, 0, 1, 1, 1, 1, '{}', 9),
(254, 26, 'info_en', 'text', 'Info En', 0, 0, 1, 1, 1, 1, '{}', 10),
(255, 26, 'background_image', 'image', 'Background Image', 0, 1, 1, 1, 1, 1, '{}', 11),
(256, 26, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(257, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(258, 26, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(259, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(262, 27, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 5),
(263, 27, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 6),
(264, 27, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 7),
(265, 27, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 8),
(266, 27, 'text_uz', 'rich_text_box', 'Text lotin', 0, 0, 1, 1, 1, 1, '{}', 9),
(267, 27, 'text_oz', 'rich_text_box', 'Text krill', 0, 0, 1, 1, 1, 1, '{}', 10),
(268, 27, 'text_ru', 'rich_text_box', 'Text Ru', 0, 0, 1, 1, 1, 1, '{}', 11),
(269, 27, 'text_en', 'rich_text_box', 'Text En', 0, 0, 1, 1, 1, 1, '{}', 12),
(271, 27, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 14),
(272, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(277, 27, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(278, 27, 'data', 'date', 'Data', 0, 1, 1, 1, 1, 1, '{}', 3),
(279, 27, 'viewers', 'number', 'Viewers', 0, 0, 0, 0, 0, 0, '{}', 13),
(280, 27, 'images', 'multiple_images', 'Images', 0, 0, 1, 1, 1, 1, '{}', 18),
(282, 27, 'tags', 'text', 'Tags', 0, 1, 1, 1, 1, 1, '[]', 17),
(283, 26, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 2),
(287, 27, 'column_belongsto_column_menu_relationship', 'relationship', 'Menu', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ColumnMenu\",\"table\":\"column_menus\",\"type\":\"belongsTo\",\"column\":\"menu_uz\",\"key\":\"id\",\"label\":\"menu_uz\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(288, 27, 'menu_uz', 'text', 'Menu Uz', 0, 1, 1, 1, 1, 1, '{}', 15),
(289, 24, 'text', 'text', 'Text', 0, 1, 1, 1, 1, 1, '{}', 5),
(290, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(291, 28, 'country_uz', 'text', 'Country lotin', 0, 1, 1, 1, 1, 1, '{}', 2),
(292, 28, 'country_oz', 'text', 'Country krill', 0, 0, 1, 1, 1, 1, '{}', 3),
(293, 28, 'country_ru', 'text', 'Country Ru', 0, 0, 1, 1, 1, 1, '{}', 4),
(294, 28, 'country_en', 'text', 'Country En', 0, 0, 1, 1, 1, 1, '{}', 5),
(295, 28, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 6),
(296, 28, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 7),
(297, 28, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 8),
(298, 28, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 9),
(299, 28, 'info_uz', 'text', 'Info lotin', 0, 1, 1, 1, 1, 1, '{}', 10),
(300, 28, 'info_oz', 'text', 'Info krill', 0, 0, 1, 1, 1, 1, '{}', 11),
(301, 28, 'info_ru', 'text', 'Info Ru', 0, 0, 1, 1, 1, 1, '{}', 12),
(302, 28, 'info_en', 'text', 'Info En', 0, 0, 1, 1, 1, 1, '{}', 13),
(303, 28, 'background_flags', 'image', 'Background Flags', 0, 1, 1, 1, 1, 1, '{}', 14),
(304, 28, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 15),
(305, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(306, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(307, 29, 'country_uz', 'text', 'Country Uz', 0, 1, 1, 1, 1, 1, '{}', 3),
(308, 29, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 4),
(309, 29, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 5),
(310, 29, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 6),
(311, 29, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 7),
(312, 29, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 8),
(313, 29, 'director_name_uz', 'text', 'Director Name lotin', 0, 1, 1, 1, 1, 1, '{}', 9),
(314, 29, 'director_name_oz', 'text', 'Director Name krill', 0, 0, 1, 1, 1, 1, '{}', 10),
(315, 29, 'director_name_ru', 'text', 'Director Name Ru', 0, 0, 1, 1, 1, 1, '{}', 11),
(316, 29, 'director_name_en', 'text', 'Director Name En', 0, 0, 1, 1, 1, 1, '{}', 12),
(317, 29, 'director_image', 'image', 'Director Image', 0, 1, 1, 1, 1, 1, '{}', 13),
(318, 29, 'company_start_data', 'text', 'Company Start Data', 0, 0, 1, 1, 1, 1, '{}', 14),
(319, 29, 'director_start_data', 'text', 'Director Start Data', 0, 0, 1, 1, 1, 1, '{}', 15),
(320, 29, 'company_photo', 'image', 'Company Photo', 0, 1, 1, 1, 1, 1, '{}', 16),
(321, 29, 'info_title_uz', 'text', 'Info Title lotin', 0, 1, 1, 1, 1, 1, '{}', 17),
(322, 29, 'info_title_oz', 'text', 'Info Title krill', 0, 0, 1, 1, 1, 1, '{}', 18),
(323, 29, 'info_title_ru', 'text', 'Info Title Ru', 0, 0, 1, 1, 1, 1, '{}', 19),
(324, 29, 'info_title_en', 'text', 'Info Title En', 0, 0, 1, 1, 1, 1, '{}', 20),
(325, 29, 'info_uz', 'rich_text_box', 'Info lotin', 0, 0, 1, 1, 1, 1, '{}', 21),
(326, 29, 'info_oz', 'rich_text_box', 'Info krill', 0, 0, 1, 1, 1, 1, '{}', 22),
(327, 29, 'info_ru', 'rich_text_box', 'Info Ru', 0, 0, 1, 1, 1, 1, '{}', 23),
(328, 29, 'info_en', 'rich_text_box', 'Info En', 0, 0, 1, 1, 1, 1, '{}', 24),
(329, 29, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 26),
(330, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 27),
(331, 29, 'assosiation_category_belongsto_assosiation_relationship', 'relationship', 'Birlashma', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Assosiation\",\"table\":\"assosiations\",\"type\":\"belongsTo\",\"column\":\"country_uz\",\"key\":\"id\",\"label\":\"country_uz\",\"pivot_table\":\"assosiation_categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(332, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(333, 30, 'menu_uz', 'text', 'Menu Lotin', 0, 1, 1, 1, 1, 1, '{}', 2),
(334, 30, 'menu_oz', 'text', 'Menu Krill', 0, 0, 1, 1, 1, 1, '{}', 3),
(335, 30, 'menu_ru', 'text', 'Menu Ru', 0, 0, 1, 1, 1, 1, '{}', 4),
(336, 30, 'menu_en', 'text', 'Menu En', 0, 0, 1, 1, 1, 1, '{}', 5),
(337, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 6),
(338, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(339, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(340, 31, 'menu_uz', 'text', 'Menu Uz', 0, 1, 1, 1, 1, 1, '{}', 3),
(341, 31, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 4),
(342, 31, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 5),
(343, 31, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 6),
(344, 31, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 7),
(345, 31, 'video_url', 'text', 'Video Url', 0, 1, 1, 1, 1, 1, '{}', 8),
(346, 31, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 9),
(347, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(348, 31, 'mediateka_video_belongsto_mediateka_video_menu_relationship', 'relationship', 'Menu', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\MediatekaVideoMenu\",\"table\":\"mediateka_video_menus\",\"type\":\"belongsTo\",\"column\":\"menu_uz\",\"key\":\"id\",\"label\":\"menu_uz\",\"pivot_table\":\"assosiation_categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(349, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(350, 32, 'menu_uz', 'text', 'Menu Lotin', 0, 1, 1, 1, 1, 1, '{}', 2),
(351, 32, 'menu_oz', 'text', 'Menu Krill', 0, 0, 1, 1, 1, 1, '{}', 3),
(352, 32, 'menu_ru', 'text', 'Menu Ru', 0, 0, 1, 1, 1, 1, '{}', 4),
(353, 32, 'menu_en', 'text', 'Menu En', 0, 0, 1, 1, 1, 1, '{}', 5),
(354, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 6),
(355, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(356, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(357, 33, 'menu_uz', 'text', 'Menu Uz', 0, 1, 1, 1, 1, 1, '{}', 3),
(358, 33, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(359, 33, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 5),
(360, 33, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 6),
(361, 33, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 7),
(362, 33, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 8),
(363, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 9),
(364, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(365, 33, 'mediateka_image_belongsto_mediateka_image_menu_relationship', 'relationship', 'Menu', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\MediatekaImageMenu\",\"table\":\"mediateka_image_menus\",\"type\":\"belongsTo\",\"column\":\"menu_uz\",\"key\":\"id\",\"label\":\"menu_uz\",\"pivot_table\":\"assosiation_categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(366, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(367, 34, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(368, 34, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 4),
(369, 34, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 5),
(370, 34, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 6),
(371, 34, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 7),
(372, 34, 'data', 'date', 'Data', 0, 1, 1, 1, 1, 1, '{}', 2),
(373, 34, 'viewers', 'number', 'Viewers', 0, 0, 0, 0, 0, 0, '{}', 8),
(374, 34, 'tags', 'text', 'Tags', 0, 1, 1, 1, 1, 1, '{}', 13),
(375, 34, 'text_uz', 'rich_text_box', 'Text lotin', 0, 0, 1, 1, 1, 1, '{}', 9),
(376, 34, 'text_oz', 'rich_text_box', 'Text krill', 0, 0, 1, 1, 1, 1, '{}', 10),
(377, 34, 'text_ru', 'rich_text_box', 'Text Ru', 0, 0, 1, 1, 1, 1, '{}', 11),
(378, 34, 'text_en', 'rich_text_box', 'Text En', 0, 0, 1, 1, 1, 1, '{}', 12),
(379, 34, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 14),
(380, 34, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 15),
(381, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(382, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(383, 35, 'country_uz', 'text', 'Country Uz', 0, 1, 1, 1, 1, 1, '{}', 2),
(384, 35, 'data', 'date', 'Data', 0, 1, 1, 1, 1, 1, '{}', 4),
(385, 35, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(386, 35, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 6),
(387, 35, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 7),
(388, 35, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 8),
(389, 35, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 9),
(390, 35, 'text_uz', 'rich_text_box', 'Text lotin', 0, 0, 1, 1, 1, 1, '{}', 10),
(391, 35, 'text_oz', 'rich_text_box', 'Text krill', 0, 0, 1, 1, 1, 1, '{}', 11),
(392, 35, 'text_ru', 'rich_text_box', 'Text Ru', 0, 0, 1, 1, 1, 1, '{}', 12),
(393, 35, 'text_en', 'rich_text_box', 'Text En', 0, 0, 1, 1, 1, 1, '{}', 13),
(394, 35, 'tags', 'text', 'Tags', 0, 1, 1, 1, 1, 1, '{}', 14),
(395, 35, 'viewers', 'text', 'Viewers', 0, 0, 0, 0, 0, 0, '{\"value\":0}', 15),
(396, 35, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 16),
(397, 35, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 17),
(398, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(399, 35, 'event_belongsto_assosiation_relationship', 'relationship', 'Assosiation', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Assosiation\",\"table\":\"assosiations\",\"type\":\"belongsTo\",\"column\":\"country_uz\",\"key\":\"id\",\"label\":\"country_uz\",\"pivot_table\":\"assosiation_categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(400, 29, 'company_workers', 'number', 'Number of workers', 0, 0, 1, 1, 1, 1, '{}', 25),
(401, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(402, 7, 'data', 'date', 'Data', 0, 1, 1, 1, 1, 1, '{}', 11),
(403, 7, 'tags', 'text', 'Tags', 0, 1, 1, 1, 1, 1, '{}', 16),
(404, 8, 'address_uz', 'text', 'Address lotin', 0, 1, 1, 1, 1, 1, '{}', 10),
(405, 8, 'address_oz', 'text', 'Address krill', 0, 0, 1, 1, 1, 1, '{}', 11),
(406, 8, 'address_ru', 'text', 'Address Ru', 0, 0, 1, 1, 1, 1, '{}', 12),
(407, 8, 'address_en', 'text', 'Address En', 0, 0, 1, 1, 1, 1, '{}', 13),
(408, 8, 'openinghours_uz', 'text', 'Ish vaqti lotin', 0, 1, 1, 1, 1, 1, '{}', 14),
(409, 8, 'openinghours_oz', 'text', 'Ish vaqti krill', 0, 0, 1, 1, 1, 1, '{}', 15),
(410, 8, 'openinghours_ru', 'text', 'Ish vaqti Ru', 0, 0, 1, 1, 1, 1, '{}', 16),
(411, 8, 'openinghours_en', 'text', 'Ish vaqti En', 0, 0, 1, 1, 1, 1, '{}', 17),
(412, 8, 'maps', 'text', 'Maps', 0, 0, 0, 0, 0, 0, '{}', 18),
(413, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(414, 36, 'name', 'text', 'FISH', 0, 1, 1, 1, 1, 1, '{}', 2),
(415, 36, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(416, 36, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(417, 36, 'columnName', 'text', 'ColumnName', 0, 1, 1, 1, 1, 1, '{}', 5),
(418, 36, 'about', 'text', 'About', 0, 0, 1, 1, 1, 1, '{}', 6),
(419, 36, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 7),
(420, 36, 'socials', 'text', 'Socials', 0, 0, 1, 1, 1, 1, '{}', 8),
(421, 36, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 9),
(422, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(423, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(424, 37, 'data', 'date', 'Data', 0, 1, 1, 1, 1, 1, '{}', 2),
(425, 37, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(426, 37, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 4),
(427, 37, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 5),
(428, 37, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 6),
(429, 37, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 7),
(430, 37, 'text_uz', 'rich_text_box', 'Text', 0, 1, 1, 1, 1, 1, '{}', 8),
(431, 37, 'text_oz', 'rich_text_box', 'Text krill', 0, 0, 1, 1, 1, 1, '{}', 9),
(432, 37, 'text_ru', 'rich_text_box', 'Text Ru', 0, 0, 1, 1, 1, 1, '{}', 10),
(433, 37, 'text_en', 'rich_text_box', 'Text En', 0, 0, 1, 1, 1, 1, '{}', 11),
(434, 37, 'tags', 'text', 'Tags', 0, 1, 1, 1, 1, 1, '{}', 12),
(435, 37, 'viewers', 'text', 'Viewers', 0, 0, 0, 0, 0, 0, '{}', 13),
(436, 37, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 14),
(437, 37, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 15),
(438, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(439, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(440, 38, 'data', 'date', 'Data', 0, 1, 1, 1, 1, 1, '{}', 2),
(441, 38, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(442, 38, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 4),
(443, 38, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 5),
(444, 38, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 6),
(445, 38, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 7),
(446, 38, 'text_uz', 'rich_text_box', 'Text lotin', 0, 1, 1, 1, 1, 1, '{}', 8),
(447, 38, 'text_oz', 'rich_text_box', 'Text krill', 0, 0, 1, 1, 1, 1, '{}', 9),
(448, 38, 'text_ru', 'rich_text_box', 'Text Ru', 0, 0, 1, 1, 1, 1, '{}', 10),
(449, 38, 'text_en', 'rich_text_box', 'Text En', 0, 0, 1, 1, 1, 1, '{}', 11),
(450, 38, 'tags', 'text', 'Tags', 0, 1, 1, 1, 1, 1, '{}', 12),
(451, 38, 'viewers', 'text', 'Viewers', 0, 0, 0, 0, 0, 0, '{}', 13),
(452, 38, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 14),
(453, 38, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 15),
(454, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(455, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(456, 39, 'menu_uz', 'text', 'Menu Lotin', 0, 1, 1, 1, 1, 1, '{}', 2),
(457, 39, 'menu_oz', 'text', 'Menu Krill', 0, 0, 1, 1, 1, 1, '{}', 3),
(458, 39, 'menu_ru', 'text', 'Menu Ru', 0, 0, 1, 1, 1, 1, '{}', 4),
(459, 39, 'menu_en', 'text', 'Menu En', 0, 0, 1, 1, 1, 1, '{}', 5),
(460, 39, 'info_uz', 'text', 'Info lotin', 0, 1, 1, 1, 1, 1, '{}', 6),
(461, 39, 'info_oz', 'text', 'Info krill', 0, 0, 1, 1, 1, 1, '{}', 7),
(462, 39, 'info_ru', 'text', 'Info Ru', 0, 0, 1, 1, 1, 1, '{}', 8),
(463, 39, 'info_en', 'text', 'Info En', 0, 0, 1, 1, 1, 1, '{}', 9),
(464, 39, 'background_image', 'image', 'Background Image', 0, 1, 1, 1, 1, 1, '{}', 10),
(465, 39, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 11),
(466, 39, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(467, 40, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(468, 40, 'menu_uz', 'text', 'Menu Lotin', 0, 1, 1, 1, 1, 1, '{}', 2),
(469, 40, 'menu_oz', 'text', 'Menu Krill', 0, 0, 1, 1, 1, 1, '{}', 3),
(470, 40, 'menu_ru', 'text', 'Menu Ru', 0, 0, 1, 1, 1, 1, '{}', 4),
(471, 40, 'menu_en', 'text', 'Menu En', 0, 0, 1, 1, 1, 1, '{}', 5),
(472, 40, 'info_uz', 'text', 'Info lotin', 0, 1, 1, 1, 1, 1, '{}', 6),
(473, 40, 'info_oz', 'text', 'Info krill', 0, 0, 1, 1, 1, 1, '{}', 7),
(474, 40, 'info_ru', 'text', 'Info Ru', 0, 0, 1, 1, 1, 1, '{}', 8),
(475, 40, 'info_en', 'text', 'Info En', 0, 0, 1, 1, 1, 1, '{}', 9),
(476, 40, 'background_image', 'image', 'Background Image', 0, 1, 1, 1, 1, 1, '{}', 10),
(477, 40, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 11),
(478, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(479, 43, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(480, 43, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 2),
(481, 43, 'name_uz', 'text', 'Ismi (lotin)', 0, 1, 1, 1, 1, 1, '{}', 3),
(482, 43, 'name_oz', 'text', 'Ismi (krill)', 0, 0, 1, 1, 1, 1, '{}', 4),
(483, 43, 'name_ru', 'text', 'Name Ru', 0, 0, 1, 1, 1, 1, '{}', 5),
(484, 43, 'name_en', 'text', 'Name En', 0, 0, 1, 1, 1, 1, '{}', 6),
(485, 43, 'position_uz', 'text', 'Lavozimi (lotin)', 0, 1, 1, 1, 1, 1, '{}', 7),
(486, 43, 'position_oz', 'text', 'Lavozimi (krill)', 0, 0, 1, 1, 1, 1, '{}', 8),
(487, 43, 'position_ru', 'text', 'Position Ru', 0, 0, 1, 1, 1, 1, '{}', 9),
(488, 43, 'position_en', 'text', 'Position En', 0, 0, 1, 1, 1, 1, '{}', 10),
(489, 43, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 11),
(490, 43, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 12),
(491, 43, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 13),
(492, 43, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(493, 44, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(494, 44, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 2),
(495, 44, 'name_uz', 'text', 'Name lotin', 0, 1, 1, 1, 1, 1, '{}', 3),
(496, 44, 'name_oz', 'text', 'Name  krill', 0, 0, 1, 1, 1, 1, '{}', 4),
(497, 44, 'name_ru', 'text', 'Name Ru', 0, 0, 1, 1, 1, 1, '{}', 5),
(498, 44, 'name_en', 'text', 'Name En', 0, 0, 1, 1, 1, 1, '{}', 6),
(499, 44, 'bgimg', 'image', 'Bgimg', 0, 1, 1, 1, 1, 1, '{}', 7),
(500, 44, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 8),
(501, 44, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(502, 45, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(503, 45, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(504, 45, 'text_uz', 'rich_text_box', 'Text lotin', 0, 1, 1, 1, 1, 1, '{}', 3),
(505, 45, 'text_oz', 'rich_text_box', 'Text krill', 0, 0, 1, 1, 1, 1, '{}', 4),
(506, 45, 'text_ru', 'rich_text_box', 'Text Ru', 0, 0, 1, 1, 1, 1, '{}', 5),
(507, 45, 'text_en', 'rich_text_box', 'Text En', 0, 0, 1, 1, 1, 1, '{}', 6),
(508, 45, 'videofile', 'file', 'Videofile', 0, 1, 1, 1, 1, 1, '{}', 7),
(509, 45, 'history_uz', 'rich_text_box', 'History lotin', 0, 0, 1, 1, 1, 1, '{}', 8),
(510, 45, 'history_oz', 'rich_text_box', 'History krill', 0, 0, 1, 1, 1, 1, '{}', 9),
(511, 45, 'history_ru', 'rich_text_box', 'History Ru', 0, 0, 1, 1, 1, 1, '{}', 10),
(512, 45, 'history_en', 'rich_text_box', 'History En', 0, 0, 1, 1, 1, 1, '{}', 11),
(513, 45, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(514, 45, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(515, 7, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(7, 'news', 'news', 'News', 'Yangiliklar', 'voyager-world', 'App\\Models\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-04 11:46:55', '2023-04-03 08:07:36'),
(8, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-phone', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-05 05:39:11', '2023-03-27 08:50:53'),
(9, 'sponsrs', 'sponsrs', 'Sponsr', 'Bizning hamkorlar', 'voyager-group', 'App\\Models\\Sponsr', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-05 05:48:38', '2023-03-06 09:08:22'),
(12, 'countries', 'countries', 'Country', 'Countries', NULL, 'App\\Models\\Country', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-09 16:32:11', '2023-03-13 10:01:17'),
(13, 'relationships', 'relationships', 'Relationship', 'Relationships', NULL, 'App\\Models\\Relationship', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-09 16:34:09', '2023-03-13 10:00:52'),
(14, 'newsMenu', 'newsmenu', 'Newsmenu', 'Newsmenus', 'voyager-pen', 'App\\Models\\NewsMenu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-13 08:36:49', '2023-03-13 08:36:49'),
(21, 'interactive_services', 'interactive-services', 'Interactive Service', 'Interaktiv xizmatlar', 'voyager-group', 'App\\Models\\InteractiveService', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-15 05:58:55', '2023-03-15 06:42:47'),
(22, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2023-03-15 06:34:08', '2023-03-15 06:34:08'),
(23, 'trusts', 'trusts', 'Trust', 'Vasiylik kengashi', 'voyager-group', 'App\\Models\\Trust', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-15 07:37:52', '2023-03-15 07:37:52'),
(24, 'sendcontacts', 'sendcontacts', 'Sendcontact', 'Biz bilan bog‘lanish', 'voyager-chat', 'App\\Models\\Sendcontact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-17 07:00:59', '2023-03-24 10:23:02'),
(25, 'sliders', 'sliders', 'Slider', 'Header Slider', 'voyager-images', 'App\\Models\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-17 09:33:15', '2023-03-17 09:33:15'),
(26, 'column_menus', 'column-menus', 'Column Menu', 'Biznig loyihalar', 'voyager-group', 'App\\Models\\ColumnMenu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-17 10:31:03', '2023-03-24 09:02:17'),
(27, 'columns', 'columns', 'Column', 'Loyihalar', 'voyager-plus', 'App\\Models\\Column', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-22 05:54:33', '2023-03-24 09:58:07'),
(28, 'assosiations', 'assosiations', 'Assosiation', 'Birlashmalar', 'voyager-list', 'App\\Models\\Assosiation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-24 12:12:27', '2023-03-24 12:13:32'),
(29, 'assosiation_categories', 'assosiation-categories', 'Assosiation Category', 'Birlashma kategoriyasi', 'voyager-plus', 'App\\Models\\AssosiationCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-24 12:27:27', '2023-03-24 19:02:23'),
(30, 'mediateka_video_menus', 'mediateka-video-menus', 'Mediateka Video Menu', 'Mediateka Video Menus', 'voyager-video', 'App\\Models\\MediatekaVideoMenu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-24 16:55:55', '2023-03-24 16:55:55'),
(31, 'mediateka_videos', 'mediateka-videos', 'Mediateka Video', 'Mediateka Videos', 'voyager-plus', 'App\\Models\\MediatekaVideo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-24 17:00:04', '2023-03-24 17:05:00'),
(32, 'mediateka_image_menus', 'mediateka-image-menus', 'Mediateka Image Menu', 'Mediateka Image Menus', 'voyager-images', 'App\\Models\\MediatekaImageMenu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-24 17:19:53', '2023-03-24 17:19:53'),
(33, 'mediateka_images', 'mediateka-images', 'Mediateka Image', 'Mediateka Images', 'voyager-plus', 'App\\Models\\MediatekaImage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-24 17:22:41', '2023-03-24 17:25:45'),
(34, 'infographics', 'infographics', 'Infographic', 'Infographics', 'voyager-pen', 'App\\Models\\Infographic', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-24 18:09:01', '2023-03-24 18:09:01'),
(35, 'events', 'events', 'Event', 'Tadbirlar', 'voyager-plus', 'App\\Models\\Event', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-24 18:18:00', '2023-03-27 10:14:38'),
(36, 'sendprojects', 'sendprojects', 'Sendproject', 'Kelgan loyihalar', 'voyager-home', 'App\\Models\\Sendproject', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-27 09:02:57', '2023-03-27 09:02:57'),
(37, 'categoryshows', 'categoryshows', 'Categoryshow', 'Turkum ko\'rsatuvlar', 'voyager-pen', 'App\\Models\\Categoryshow', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-27 10:06:21', '2023-03-27 11:03:09'),
(38, 'publicevents', 'publicevents', 'Publicevent', 'Jamoat birlashmalar tadbirlari', 'voyager-pen', 'App\\Models\\Publicevent', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-27 10:13:10', '2023-03-27 10:13:58'),
(39, 'infopublicevents', 'infopublicevents', 'Infopublicevent', 'Menu Jamoat', 'voyager-home', 'App\\Models\\Infopublicevent', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-29 10:46:45', '2023-03-29 10:47:52'),
(40, 'infocategorysshows', 'infocategorysshows', 'Infocategorysshow', 'Menu Turkum korsatuv', NULL, 'App\\Models\\Infocategorysshow', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-29 10:53:43', '2023-03-29 10:54:39'),
(43, 'managements', 'managements', 'Management', 'Rahbariyat tarkibi', 'voyager-group', 'App\\Models\\Management', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-29 11:31:45', '2023-03-29 11:32:58'),
(44, 'directions', 'directions', 'Direction', 'Asosiy yo‘nalishlari', 'voyager-menu', 'App\\Models\\Direction', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-29 11:41:16', '2023-03-29 11:42:42'),
(45, 'abouts', 'abouts', 'About', 'Biz haqimizda', 'voyager-home', 'App\\Models\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-29 12:19:34', '2023-03-29 12:21:06');

-- --------------------------------------------------------

--
-- Структура таблицы `directions`
--

CREATE TABLE `directions` (
  `id` int UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bgimg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `directions`
--

INSERT INTO `directions` (`id`, `img`, `name_uz`, `name_oz`, `name_ru`, `name_en`, `bgimg`, `created_at`, `updated_at`) VALUES
(2, 'directions/March2023/qAtd5BhJg9ZRbhs3Q720.png', 'Jamoat birlashmalari bilan hamkorlik aloqalarini yo‘lga qo‘yish va rivojlantirish', 'Жамоат бирлашмалари билан ҳамкорлик алоқаларини йўлга қўйиш ва ривожлантириш', 'Налаживание и развитие партнерских отношений с общественными объединениями', 'Establishment and development of cooperation with public associations', 'directions/March2023/tqOAmJYuSZHGukZp3vJz.png', '2023-03-30 05:57:38', '2023-03-30 05:57:38'),
(3, 'directions/March2023/3M8zkZTOxFp8AA6aAlyo.png', 'Vatandoshlarning huquq va erkinliklarini himoya qilishga ko‘maklashish Vatandoshlarning huquq va erkinliklarini himoya qilishga ko‘maklashish', 'Ватандошларнинг ҳуқуқ ва еркинликларини ҳимоя қилишга кўмаклашиш Ватандошларнинг ҳуқуқ ва еркинликларини ҳимоя қилишга кўмаклашиш', 'Содействие защите прав и свобод соотечественников содействие защите прав и свобод соотечественников', 'Assistance in the protection of the rights and freedoms of compatriots assistance in the protection of the rights and freedoms of compatriots', 'directions/March2023/fRCqAvquocWhfTr96mSL.png', '2023-03-30 06:02:34', '2023-03-30 06:02:34');

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `id` int UNSIGNED NOT NULL,
  `country_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_uz` longtext COLLATE utf8mb4_unicode_ci,
  `text_oz` longtext COLLATE utf8mb4_unicode_ci,
  `text_ru` longtext COLLATE utf8mb4_unicode_ci,
  `text_en` longtext COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `viewers` int DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`id`, `country_uz`, `data`, `image`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `text_uz`, `text_oz`, `text_ru`, `text_en`, `tags`, `viewers`, `images`, `created_at`, `updated_at`) VALUES
(2, '3', '2023-03-09', 'events/March2023/gyXZt3RdioyFeufcQelU.png', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Xitoy, vatandoshlar, Janubiy Korea, yosh oila', 22, '[\"events\\/March2023\\/qu6NMoBeir3gqYMpoHx7.png\"]', '2023-03-25 08:03:29', '2023-03-30 07:51:44'),
(3, '3', '2023-03-21', 'events/March2023/cyEgOgNqus9I6FesLL41.png', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Xitoy, vatandoshlar, Janubiy Korea, yosh oila', 7, NULL, '2023-03-25 08:04:13', '2023-04-01 11:24:21'),
(4, '3', '2023-03-11', 'events/March2023/PRsJHtcAFbOCleOlq5hh.png', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Xitoy, uchrashuv, Janubiy Korea, yosh oila', 2, NULL, '2023-03-25 08:04:45', '2023-03-30 16:40:25'),
(5, '3', '2023-03-30', 'events/March2023/cBjlnAoi1fZWgVONdAxx.png', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', 'Italiyaning Sapiyensa universiteti magistranti yosh vatandoshimiz Ibrohim Jo‘raboyev bilan suhbat', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Xitoy, Janubiy Korea, yosh oila', 2, NULL, '2023-03-25 08:05:18', '2023-03-27 06:26:37'),
(6, '3', '2023-03-17', 'events/March2023/crQihp0V4vfx0iBsYg6a.png', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Xitoy, vatandoshlar, Janubiy Korea, yosh oila', NULL, NULL, '2023-03-25 08:08:02', '2023-03-26 04:14:42'),
(7, '3', '2023-03-11', 'events/March2023/Hapt0C6brcoFaOQaDg9D.png', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Janubiy Koreyaning Pochon va unga yaqin hududlarida bo‘lib turgan vatandoshlarimiz bilan sayyor qabul va uchrashuv o‘tkazildi', 'Xitoy, uchrashuv, Janubiy Korea, yosh oila', NULL, NULL, '2023-03-25 08:08:40', '2023-03-26 04:14:20'),
(8, '2', '2023-03-05', 'events/March2023/uMRYH5GO8c2mHVAccr6k.png', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Xitoy, vatandoshlar, Janubiy Korea, yosh oila', NULL, NULL, '2023-03-25 08:12:35', '2023-03-26 04:13:07'),
(9, '3', '2023-03-13', 'events/March2023/ttdbBOJUnk1uhNnDgVYt.png', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Ақшнинг Florida университетида илмий-тадқиқот ишларини олиб бораётган Рустамжон Мурадов', 'Рустам Мурадов, ведущий научно-исследовательскую работу в университете Флориды, США', 'Rustamjon Muradov, who is conducting research at the University of Florida in the United States', '<p>AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov</p>', '<p>Ақшнинг Florida университетида илмий-тадқиқот ишларини олиб бораётган Рустамжон Мурадов</p>', '<p>Рустам Мурадов, ведущий научно-исследовательскую работу в университете Флориды, США</p>', '<p>Rustamjon Muradov, who is conducting research at the University of Florida in the United States</p>', 'Xitoy, vatandoshlar, Janubiy Korea, yosh oila', NULL, NULL, '2023-03-25 08:13:11', '2023-04-02 06:29:44'),
(11, '3', '2023-03-17', 'events/March2023/jMnMr78aNbBWeSqSHUpo.png', 'Xorijdagi vatandoshlar ishtirokida “Navroʼz” bayrami tantanalari boshlandi', 'Хориждаги ватандошлар иштирокида “Наврўз” байрами тантаналари бошланди', 'Начались торжества по случаю праздника Навруз с участием соотечественников за рубежом', 'Quality Control Engineer Tolibjon Olimzhonov at Westport FUEL SYSTEMS ITALIA SRL in Italy', 'Xorijdagi vatandoshlar ishtirokida “Navroʼz” bayrami tantanalari boshlandi. Xorijdagi vatandoshlar ishtirokida “Navroʼz” bayrami tantanalari boshlandi. Xorijdagi vatandoshlar ishtirokida “Navroʼz” bayrami tantanalari boshlandi', 'Хориждаги ватандошлар иштирокида “Наврўз” байрами тантаналари бошланди. Хориждаги ватандошлар иштирокида “Наврўз” байрами тантаналари бошланди. Хориждаги ватандошлар иштирокида “Наврўз” байрами тантаналари бошланди', 'Начались торжества по случаю праздника Навруз с участием соотечественников за рубежом. Начались торжества по случаю праздника Навруз с участием соотечественников за рубежом', 'Quality Control Engineer Tolibjon Olimzhonov at Westport FUEL SYSTEMS ITALIA SRL in Italy. Quality Control Engineer Tolibjon Olimzhonov at Westport FUEL SYSTEMS ITALIA SRL in Italy', 'Xitoy, uchrashuv, Janubiy Korea, yosh oila', NULL, NULL, '2023-03-26 12:34:12', '2023-03-26 12:34:12'),
(12, '3', '2000-12-15', 'events/March2023/zD5MfPH6rzoCniCRK8c5.jpg', 'Test', 'Test', 'Test', 'Test', '<p>Test</p>', '<p>Test</p>', '<p>Test</p>', '<p>Test</p>', 'italia, samuray, rembo', 3, '[\"events\\/March2023\\/DJjmHGZBmLBCVG8CHvRH.jpg\",\"events\\/March2023\\/jFAcbfp2qbweeBbPCp4H.jpg\"]', '2023-03-26 13:39:38', '2023-04-03 07:02:07');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `infocategorysshows`
--

CREATE TABLE `infocategorysshows` (
  `id` int UNSIGNED NOT NULL,
  `menu_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `infocategorysshows`
--

INSERT INTO `infocategorysshows` (`id`, `menu_uz`, `menu_oz`, `menu_ru`, `menu_en`, `info_uz`, `info_oz`, `info_ru`, `info_en`, `background_image`, `created_at`, `updated_at`) VALUES
(1, 'Turkum ko\'rsatuvlar', 'Туркум кўрсатувлар', 'Жизнь соотечественников в Узбекистане', 'Life of compatriots in Uzbekistan', 'Xorijda istiqomat qilayotgan vatandoshlarni tarixiy Vatani atrofida yanada jipslashtirish, ularning qalbi va ongida yurt bilan faxrlanish tuyg‘usini yuksaltirish, milliy o‘zlikni saqlab qolish,', 'Хорижда истиқомат қилаётган ватандошларни тарихий Ватани атрофида янада жипслаштириш, уларнинг қалби ва онгида юрт билан фахрланиш туйғусини юксалтириш, миллий ўзликни сақлаб қолиш,', 'Дальнейшее объединение соотечественников, проживающих за рубежом, вокруг своей исторической родины, повышение чувства гордости за Родину в их сердцах и умах, сохранение национального самосознания,', 'Further embalming compatriots living abroad around their historical homeland, exalting in their hearts and minds a sense of pride in the land, maintaining a national identity,', 'infocategorysshows/March2023/pieRKXTXvXrlj2dDsZci.png', '2023-03-29 10:54:52', '2023-03-29 16:42:49');

-- --------------------------------------------------------

--
-- Структура таблицы `infographics`
--

CREATE TABLE `infographics` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `viewers` int DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `text_uz` longtext COLLATE utf8mb4_unicode_ci,
  `text_oz` longtext COLLATE utf8mb4_unicode_ci,
  `text_ru` longtext COLLATE utf8mb4_unicode_ci,
  `text_en` longtext COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `infographics`
--

INSERT INTO `infographics` (`id`, `image`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `data`, `viewers`, `tags`, `text_uz`, `text_oz`, `text_ru`, `text_en`, `images`, `created_at`, `updated_at`) VALUES
(1, 'infographics/March2023/ishE3U8S2vP6QDjNRU5S.jpg', 'Test', 'Test', 'Test', 'Test', '2023-03-24', 6, 'italia, samuray, rembo', '<p>Test</p>', '<p>Test</p>', '<p>Test</p>', '<p>Test</p>', '[\"infographics\\/March2023\\/WnYLHjGtGa2bFTRTKA1a.png\",\"infographics\\/March2023\\/cufw1ktZpFmPqQDi1CIl.webp\"]', '2023-03-24 18:09:42', '2023-04-03 06:47:01');

-- --------------------------------------------------------

--
-- Структура таблицы `infopublicevents`
--

CREATE TABLE `infopublicevents` (
  `id` int UNSIGNED NOT NULL,
  `menu_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `infopublicevents`
--

INSERT INTO `infopublicevents` (`id`, `menu_uz`, `menu_oz`, `menu_ru`, `menu_en`, `info_uz`, `info_oz`, `info_ru`, `info_en`, `background_image`, `created_at`, `updated_at`) VALUES
(2, 'Jamoat birlashmalar tadbirlari', 'Жамоат бирлашмалар тадбирлари', 'Мероприятия общественных объединений', 'Events of public associations', 'Xorijda istiqomat qilayotgan vatandoshlarni tarixiy Vatani atrofida yanada jipslashtirish, ularning qalbi va ongida yurt bilan faxrlanish tuyg‘usini yuksaltirish, milliy o‘zlikni saqlab qolish,', 'Хорижда истиқомат қилаётган ватандошларни тарихий Ватани атрофида янада жипслаштириш, уларнинг қалби ва онгида юрт билан фахрланиш туйғусини юксалтириш, миллий ўзликни сақлаб қолиш,', 'Дальнейшее объединение соотечественников, проживающих за рубежом, вокруг своей исторической родины, повышение чувства гордости за Родину в их сердцах и умах, сохранение национального самосознания,', 'Further embalming compatriots living abroad around their historical homeland, exalting in their hearts and minds a sense of pride in the land, maintaining a national identity,', 'infopublicevents/March2023/jxcTJKmgFRquQrruzV95.png', '2023-03-29 10:53:16', '2023-04-03 07:44:55');

-- --------------------------------------------------------

--
-- Структура таблицы `interactive_services`
--

CREATE TABLE `interactive_services` (
  `id` int UNSIGNED NOT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `interactive_services`
--

INSERT INTO `interactive_services` (`id`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `link`, `created_at`, `updated_at`, `img`) VALUES
(1, 'Avtotransport vositalari haqida ma’lumot', 'Avtotransport vositalari haqida ma’lumot', 'Информация о транспортных средствах', 'Information about vehicles', 'https://napaavtomotive.netlify.app/', '2023-03-15 05:59:52', '2023-03-15 11:58:37', 'interactive-services/March2023/QtQNQstCHFlbc9D4hWon.png'),
(2, 'Virtual murojaat', 'Виртуал мурожаат', 'Виртуальное обращение', 'Virtual appeal', 'https://napaavtomotive.netlify.app/', '2023-03-15 12:00:50', '2023-03-27 09:48:31', 'interactive-services/March2023/c8MIsODLAB5AVFs9ytVu.png'),
(3, 'Bo‘sh ish o‘rinlari', 'Бўш иш ўринлари', 'Вакансии', 'Vacancies', 'https://napaavtomotive.netlify.app/', '2023-03-15 12:02:58', '2023-03-27 09:48:04', 'interactive-services/March2023/9sX2FiQ9kqHn0BRT66XN.png'),
(4, 'Statistik ma’lumotlar', 'Статистик маълумотлар', 'Статистика', 'Statistics', 'https://napaavtomotive.netlify.app/', '2023-03-15 12:04:38', '2023-03-27 09:47:35', 'interactive-services/March2023/jHTjVrOHk7jCwrtGmsxN.png'),
(5, 'Tadbirlar jadvali', 'Тадбирлар жадвали', 'Расписание мероприятий', 'Event schedule', 'https://napaavtomotive.netlify.app/', '2023-03-15 12:05:48', '2023-03-27 09:47:23', 'interactive-services/March2023/yU0bm7PuJZDNYpHYXwbG.png'),
(6, 'Eng ko‘p beriladigan savollar', 'Енг кўп бериладиган саволлар', 'Наиболее часто задаваемые вопросы', 'Most frequently asked questions', 'https://napaavtomotive.netlify.app/', '2023-03-15 12:07:18', '2023-03-27 09:47:01', 'interactive-services/March2023/Qb9ubp7CqmWXavthmeAn.png'),
(7, 'Elektron xizmatlar', 'Електрон хизматлар', 'Электронные услуги', 'Electronic services', 'https://napaavtomotive.netlify.app/', '2023-03-15 12:08:51', '2023-03-27 09:46:30', 'interactive-services/March2023/jmG2XGqmrASs1JikZlby.png');

-- --------------------------------------------------------

--
-- Структура таблицы `managements`
--

CREATE TABLE `managements` (
  `id` int UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `managements`
--

INSERT INTO `managements` (`id`, `img`, `name_uz`, `name_oz`, `name_ru`, `name_en`, `position_uz`, `position_oz`, `position_ru`, `position_en`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'managements/March2023/iQ29jI2s2MrIef1KHU9E.png', 'Admin', 'Admin', 'Admin', 'Admin', 'Bosh Admin', 'Bosh Admin', 'Bosh Admin', 'Bosh Admin', '+998995888898', 'admin@admin.com', '2023-03-29 11:33:32', '2023-03-29 11:33:32');

-- --------------------------------------------------------

--
-- Структура таблицы `mediateka_images`
--

CREATE TABLE `mediateka_images` (
  `id` int UNSIGNED NOT NULL,
  `menu_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mediateka_images`
--

INSERT INTO `mediateka_images` (`id`, `menu_uz`, `image`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `created_at`, `updated_at`) VALUES
(1, '1', 'mediateka-images/March2023/rz8YnmvbeCOVjqKV9Hez.png', 'Test', 'Test', 'Test', 'Test', '2023-03-24 17:26:36', '2023-03-27 09:55:07'),
(2, '2', 'mediateka-images/March2023/579rbdyMH5KUrlmzjUTJ.png', 'Toshkentga sayohat', 'Чет елдаги юртдошларимиз', 'Наши соотечественники за рубежом', 'Our countrymen abroad', '2023-03-27 09:55:41', '2023-03-27 09:55:41'),
(3, '1', 'mediateka-images/March2023/uVs6qPCBaX6pQfzjJTXr.png', 'Toshkentga sayohat', 'Чет елдаги юртдошларимиз', 'Наши соотечественники за рубежом', 'Trip to Tashkent', '2023-03-27 09:56:08', '2023-03-27 09:56:08'),
(4, '2', 'mediateka-images/March2023/wJVhOIPJjMXb53LsSYzH.png', 'Chet eldagi yurtdoshlarimiz', 'Чет елдаги юртдошларимиз', 'Наши соотечественники за рубежом', 'Our countrymen abroad', '2023-03-27 09:56:36', '2023-03-27 09:56:36'),
(5, '3', 'mediateka-images/March2023/Rdne2DHB1ZOgwjA3SnJ3.png', 'Toshkentga sayohat', 'Тошкентга саёҳат', 'Наши соотечественники за рубежом', 'Trip to Tashkent', '2023-03-27 09:58:27', '2023-03-27 09:58:27'),
(6, '1', 'mediateka-images/March2023/fvCs97XqxccKHh4DwxZi.png', 'Chet eldagi yurtdoshlarimiz', 'Чет елдаги юртдошларимиз', 'Наши соотечественники за рубежом', 'Our countrymen abroad', '2023-03-27 09:58:55', '2023-03-27 09:58:55'),
(7, '1', 'mediateka-images/March2023/8tTfRD7CclN9WmISdgRV.png', 'Toshkentga sayohat', 'Чет елдаги юртдошларимиз', 'Наши соотечественники за рубежом', 'Trip to Tashkent', '2023-03-27 09:59:28', '2023-03-27 10:00:03'),
(8, '3', 'mediateka-images/March2023/gwhVcYpOQgyrPAg8SKo8.png', 'Toshkentga sayohat', 'Чет елдаги юртдошларимиз', 'Наши соотечественники за рубежом', 'Trip to Tashkent', '2023-03-27 09:59:28', '2023-03-27 09:59:28'),
(9, '2', 'mediateka-images/March2023/bm596akuPr35188aQgPK.png', 'Toshkentga sayohat', 'Чет елдаги юртдошларимиз', 'Наши соотечественники за рубежом', 'Our countrymen abroad', '2023-03-27 10:00:28', '2023-03-27 10:00:28'),
(10, '3', 'mediateka-images/March2023/gRYjgSpBblTukGia0wfp.png', 'Italiyaning Milan shahrida yashovchi Nodirbek Yusufov oilasi', 'Хориждаги ватандошлар иштирокида “Наврўз” байрами тантаналари бошланди', 'Начались торжества по случаю праздника Навруз с участием соотечественников за рубежом', 'Quality Control Engineer Tolibjon Olimzhonov at Westport FUEL SYSTEMS ITALIA SRL in Italy', '2023-03-27 10:00:54', '2023-03-27 10:00:54'),
(11, '1', 'mediateka-images/March2023/PSrUfLnfZCRvnJqNG1Yk.png', 'Italiyaning Milan shahrida yashovchi Nodirbek Yusufov oilasi', 'Италиядаги \"WЕСТПОРТ ФУЕЛ СЙСТЕМС ИТАЛИА СРЛ\" компаниясида сифат назорати бўйича муҳандис Толибжон Олимжонов', 'Начались торжества по случаю праздника Навруз с участием соотечественников за рубежом', 'The Consulate General of our country in Vladivostok provided assistance in the return of two of our compatriots to Uzbekistan, who were in a difficult financial situation in Russia', '2023-03-27 10:01:19', '2023-03-27 10:01:19'),
(12, '2', 'mediateka-images/March2023/TCC59edht4GgnCqZLvU0.png', 'Toshkentga sayohat', 'Тошкентга саёҳат', 'Наши соотечественники за рубежом', 'Our countrymen abroad', '2023-03-27 10:01:40', '2023-03-27 10:01:40'),
(13, '2', 'mediateka-images/March2023/sVatOg7OeOFtoGdhxxXr.png', 'Toshkentga sayohat', 'Хориждаги ватандошлар иштирокида “Наврўз” байрами тантаналари бошланди', 'Начались торжества по случаю праздника Навруз с участием соотечественников за рубежом', 'The Consulate General of our country in Vladivostok provided assistance in the return of two of our compatriots to Uzbekistan, who were in a difficult financial situation in Russia', '2023-03-27 10:02:00', '2023-03-27 10:02:00'),
(14, '3', 'mediateka-images/March2023/OfI4gjaROS8QkQx1TxEW.png', 'Xorijdagi vatandoshlar ishtirokida “Navroʼz” bayrami tantanalari boshlandi', 'Италиядаги \"WЕСТПОРТ ФУЕЛ СЙСТЕМС ИТАЛИА СРЛ\" компаниясида сифат назорати бўйича муҳандис Толибжон Олимжонов', 'Был проведен выездной прием и встреча с нашими соотечественниками, находящимися в Почоне и близлежащих районах Южной Кореи', 'The Consulate General of our country in Vladivostok provided assistance in the return of two of our compatriots to Uzbekistan, who were in a difficult financial situation in Russia', '2023-03-27 10:02:22', '2023-03-27 10:02:22'),
(15, '1', 'mediateka-images/March2023/W0BPext5ccUttXzNoa6i.png', 'Chet eldagi yurtdoshlarimiz', 'Хориждаги ватандошлар иштирокида “Наврўз” байрами тантаналари бошланди', 'Интервью с молодым соотечественником Ибрагимом джурабоевым, магистрантом итальянского университета Сапиенца', 'The Consulate General of our country in Vladivostok provided assistance in the return of two of our compatriots to Uzbekistan, who were in a difficult financial situation in Russia', '2023-03-27 10:02:46', '2023-03-27 10:02:46'),
(16, '1', 'mediateka-images/March2023/7qByw4tdeOcmSdAqzSVp.png', 'Italiyaning Milan shahrida yashovchi Nodirbek Yusufov oilasi', 'Италиянинг Милан шаҳрида яшовчи Нодирбек Юсуфов оиласи', 'Был проведен выездной прием и встреча с нашими соотечественниками, находящимися в Почоне и близлежащих районах Южной Кореи', 'An itinerant reception and meeting was held with our compatriots in Pochon and nearby regions of South Korea', '2023-03-27 10:03:10', '2023-03-27 10:03:10'),
(17, '3', 'mediateka-images/March2023/fJv3qxHXRM68aQoGbkcv.png', 'Toshkentga sayohat', 'Чет елдаги юртдошларимиз', 'Наши соотечественники за рубежом', 'Our countrymen abroad', '2023-03-30 08:23:25', '2023-03-30 08:23:25'),
(18, '3', 'mediateka-images/March2023/8rwnltssZrSrIK4vOctR.png', 'Chet eldagi yurtdoshlarimiz', 'Чет елдаги юртдошларимиз', 'Наши соотечественники за рубежом', 'Our countrymen abroad', '2023-03-30 08:24:02', '2023-03-30 08:24:02');

-- --------------------------------------------------------

--
-- Структура таблицы `mediateka_image_menus`
--

CREATE TABLE `mediateka_image_menus` (
  `id` int UNSIGNED NOT NULL,
  `menu_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mediateka_image_menus`
--

INSERT INTO `mediateka_image_menus` (`id`, `menu_uz`, `menu_oz`, `menu_ru`, `menu_en`, `created_at`, `updated_at`) VALUES
(1, 'Mustaqillik', 'Мустақиллик', 'Независимость', 'Independence', '2023-03-24 17:20:13', '2023-04-03 07:12:01'),
(2, 'Navroz', 'Навроз', 'Навроз', 'Navrose', '2023-03-27 09:54:05', '2023-04-03 07:11:34'),
(3, 'Yangi yil', 'Янги йил', 'Новый год', 'New Year', '2023-03-27 09:54:22', '2023-04-03 07:11:07');

-- --------------------------------------------------------

--
-- Структура таблицы `mediateka_videos`
--

CREATE TABLE `mediateka_videos` (
  `id` int UNSIGNED NOT NULL,
  `menu_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mediateka_videos`
--

INSERT INTO `mediateka_videos` (`id`, `menu_uz`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `video_url`, `created_at`, `updated_at`) VALUES
(1, '1', 'Italiyaning Milan shahrida yashovchi Nodirbek Yusufov oilasi', 'Италиянинг Милан шаҳрида яшовчи Нодирбек Юсуфов оиласи', 'Начались торжества по случаю праздника Навруз с участием соотечественников за рубежом', 'Quality Control Engineer Tolibjon Olimzhonov at Westport FUEL SYSTEMS ITALIA SRL in Italy', 'kWnttT2A7Is', '2023-03-24 17:04:22', '2023-03-27 09:41:34'),
(2, '1', 'Xorijdagi vatandoshlar ishtirokida “Navroʼz” bayrami tantanalari boshlandi', 'Хориждаги ватандошлар иштирокида “Наврўз” байрами тантаналари бошланди', 'Начались торжества по случаю праздника Навруз с участием соотечественников за рубежом', 'An itinerant reception and meeting was held with our compatriots in Pochon and nearby regions of South Korea', 'GqX37tZQ3iU', '2023-03-24 17:12:03', '2023-03-27 10:42:26'),
(3, '2', 'Oʻzbekiston diplomatlari Janubiy Koreyaning Kvanju', 'Oʻzbekiston diplomatlari Janubiy Koreyaning Kvanju', 'Oʻzbekiston diplomatlari Janubiy Koreyaning Kvanju', 'Oʻzbekiston diplomatlari Janubiy Koreyaning Kvanju', 'MFTq17ytHmU', '2023-03-24 17:12:22', '2023-03-27 10:43:21'),
(4, '2', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', 'Италиядаги \"WЕСТПОРТ ФУЕЛ СЙСТЕМС ИТАЛИА СРЛ\" компаниясида сифат назорати бўйича муҳандис Толибжон Олимжонов', 'Интервью с молодым соотечественником Ибрагимом джурабоевым, магистрантом итальянского университета Сапиенца', 'Interview with our young compatriot Ibrahim Zhuraboyev, a graduate student of the University of Sapienza, Italy', '4zTmdiFTHsY', '2023-03-27 09:42:15', '2023-03-27 09:42:15'),
(5, '1', 'Janubiy Koreyadagi vatandoshlarimiz. Janubiy Koreyadagi vatandoshlarimiz', 'Жанубий Кореядаги ватандошларимиз. Жанубий Кореядаги ватандошларимиз', 'Наши соотечественники в Южной Корее. Наши соотечественники в Южной Корее', 'An itinerant reception and meeting was held with our compatriots in Pochon and nearby regions of South Korea', 'uazxsBmqXMk', '2023-03-27 09:43:24', '2023-03-27 09:43:24'),
(6, '1', 'Xorijdagi vatandoshlar ishtirokida “Navroʼz” bayrami tantanalari boshlandi', 'Хориждаги ватандошлар иштирокида “Наврўз” байрами тантаналари бошланди', 'Начались торжества по случаю праздника Навруз с участием соотечественников за рубежом', 'Interview with our young compatriot Ibrahim Zhuraboyev, a graduate student of the University of Sapienza', 'CWuJGmpk-pE', '2023-03-27 09:51:58', '2023-03-27 09:51:58'),
(7, '1', 'Italiyaning Milan shahrida yashovchi Nodirbek Yusufov oilasi', 'Италиянинг Милан шаҳрида яшовчи Нодирбек Юсуфов оиласи', 'Начались торжества по случаю праздника Навруз с участием соотечественников за рубежом', 'Quality Control Engineer Tolibjon Olimzhonov at Westport FUEL SYSTEMS ITALIA SRL in Italy', 'QrVcTQFIi_Q', '2023-03-30 05:00:38', '2023-03-30 05:00:38');

-- --------------------------------------------------------

--
-- Структура таблицы `mediateka_video_menus`
--

CREATE TABLE `mediateka_video_menus` (
  `id` int UNSIGNED NOT NULL,
  `menu_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mediateka_video_menus`
--

INSERT INTO `mediateka_video_menus` (`id`, `menu_uz`, `menu_oz`, `menu_ru`, `menu_en`, `created_at`, `updated_at`) VALUES
(1, 'Toshkent', 'Ташкент', 'Ташкент', 'Tashkent', '2023-03-24 16:56:16', '2023-04-03 07:09:54'),
(2, 'Amerika', 'Америка', 'Америка', 'America', '2023-03-24 16:56:32', '2023-04-03 07:09:30');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-03-04 06:10:13', '2023-03-04 06:10:13');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-03-04 06:10:13', '2023-03-04 06:10:13', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2023-03-04 06:10:13', '2023-03-13 11:07:42', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-03-04 06:10:13', '2023-03-04 06:10:13', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-03-04 06:10:13', '2023-03-04 06:10:13', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2023-03-04 06:10:13', '2023-03-22 05:36:16', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-03-04 06:10:13', '2023-03-13 11:07:42', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-03-04 06:10:13', '2023-03-13 11:07:42', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-03-04 06:10:13', '2023-03-13 11:07:42', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-03-04 06:10:13', '2023-03-13 11:07:42', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2023-03-04 06:10:13', '2023-03-22 05:36:16', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 6, '2023-03-04 06:10:13', '2023-03-22 05:36:16', 'voyager.categories.index', NULL),
(14, 1, 'News', '', '_self', 'voyager-world', '#000000', 26, 2, '2023-03-04 11:46:55', '2023-03-22 05:36:16', 'voyager.news.index', 'null'),
(15, 1, 'Contacts', '', '_self', 'voyager-phone', NULL, NULL, 17, '2023-03-05 05:39:11', '2023-03-24 17:59:52', 'voyager.contacts.index', NULL),
(16, 1, 'Bizning hamkorlar', '', '_self', 'voyager-group', NULL, NULL, 14, '2023-03-05 05:48:38', '2023-03-22 06:05:00', 'voyager.sponsrs.index', NULL),
(19, 1, 'Countries', '', '_self', 'voyager-pen', '#000000', 27, 1, '2023-03-09 16:32:11', '2023-03-13 11:08:55', 'voyager.countries.index', 'null'),
(20, 1, 'Relationships', '', '_self', 'voyager-pen', '#000000', 27, 2, '2023-03-09 16:34:09', '2023-03-13 11:08:57', 'voyager.relationships.index', 'null'),
(27, 1, 'Countries', '', '_self', 'voyager-list', '#000000', NULL, 13, '2023-03-13 11:08:41', '2023-03-22 06:05:00', NULL, ''),
(30, 1, 'Interaktiv xizmatlar', '', '_self', 'voyager-group', NULL, NULL, 12, '2023-03-15 05:58:55', '2023-03-24 10:11:15', 'voyager.interactive-services.index', NULL),
(31, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2023-03-15 06:34:09', '2023-03-22 05:36:16', 'voyager.posts.index', NULL),
(32, 1, 'Vasiylik kengashi', '', '_self', 'voyager-group', NULL, NULL, 18, '2023-03-15 07:37:52', '2023-03-24 17:59:52', 'voyager.trusts.index', NULL),
(33, 1, 'Biz bilan bog‘lanish', '', '_self', 'voyager-chat', NULL, NULL, 15, '2023-03-17 07:00:59', '2023-03-22 06:05:00', 'voyager.sendcontacts.index', NULL),
(34, 1, 'Header Slider', '', '_self', 'voyager-images', NULL, NULL, 9, '2023-03-17 09:33:15', '2023-03-24 10:11:21', 'voyager.sliders.index', NULL),
(35, 1, 'Loyihalar menu', '', '_self', 'voyager-group', '#000000', 37, 1, '2023-03-17 10:31:03', '2023-03-22 06:04:51', 'voyager.column-menus.index', 'null'),
(36, 1, 'Loyihalar', '', '_self', 'voyager-plus', NULL, 37, 2, '2023-03-22 05:54:33', '2023-03-22 06:05:00', 'voyager.columns.index', NULL),
(37, 1, 'Bizning loyihalar', '', '_self', 'voyager-list', '#000000', NULL, 11, '2023-03-22 06:04:34', '2023-03-24 10:11:15', NULL, ''),
(38, 1, 'News', 'admin/news', '_self', 'voyager-plus', '#000000', NULL, 10, '2023-03-24 10:10:22', '2023-03-24 10:11:21', NULL, ''),
(39, 1, 'Birlashmalar', '', '_self', 'voyager-list', NULL, NULL, 19, '2023-03-24 12:12:27', '2023-03-24 17:59:52', 'voyager.assosiations.index', NULL),
(40, 1, 'Birlashma kategoriyasi', '', '_self', 'voyager-plus', NULL, NULL, 20, '2023-03-24 12:27:27', '2023-03-24 17:59:52', 'voyager.assosiation-categories.index', NULL),
(41, 1, 'Mediateka Video Menus', '', '_self', 'voyager-video', NULL, 43, 1, '2023-03-24 16:55:55', '2023-03-24 17:16:49', 'voyager.mediateka-video-menus.index', NULL),
(42, 1, 'Mediateka Videos', '', '_self', 'voyager-plus', NULL, 43, 2, '2023-03-24 17:00:04', '2023-03-24 17:16:53', 'voyager.mediateka-videos.index', NULL),
(43, 1, 'Mediateka', '', '_self', 'voyager-list', '#000000', NULL, 16, '2023-03-24 17:16:36', '2023-03-24 17:59:52', NULL, ''),
(44, 1, 'Mediateka Image Menus', '', '_self', 'voyager-images', NULL, 43, 3, '2023-03-24 17:19:53', '2023-03-24 17:59:36', 'voyager.mediateka-image-menus.index', NULL),
(45, 1, 'Mediateka Images', '', '_self', 'voyager-plus', NULL, 43, 4, '2023-03-24 17:22:41', '2023-03-24 17:59:37', 'voyager.mediateka-images.index', NULL),
(46, 1, 'Infographics', '', '_self', 'voyager-pen', NULL, NULL, 21, '2023-03-24 18:09:01', '2023-03-24 18:09:01', 'voyager.infographics.index', NULL),
(47, 1, 'Tadbirlar', '', '_self', 'voyager-plus', NULL, NULL, 22, '2023-03-24 18:18:00', '2023-03-24 18:18:00', 'voyager.events.index', NULL),
(48, 1, 'Kelgan loyihalar', '', '_self', 'voyager-home', NULL, NULL, 23, '2023-03-27 09:02:57', '2023-03-27 09:02:57', 'voyager.sendprojects.index', NULL),
(49, 1, 'Turkum ko\'rsatuvlar', '', '_self', 'voyager-pen', NULL, NULL, 25, '2023-03-27 10:06:21', '2023-03-29 10:59:54', 'voyager.categoryshows.index', NULL),
(50, 1, 'Jamoat birlashmalar tadbirlari', '', '_self', 'voyager-pen', NULL, NULL, 27, '2023-03-27 10:13:10', '2023-03-29 10:59:56', 'voyager.publicevents.index', NULL),
(51, 1, 'Menu Jamoat birlashmalari', '', '_self', 'voyager-home', '#000000', NULL, 26, '2023-03-29 10:46:45', '2023-03-29 11:00:08', 'voyager.infopublicevents.index', 'null'),
(52, 1, 'Menu Turkum', '', '_self', 'voyager-home', '#000000', NULL, 24, '2023-03-29 10:53:43', '2023-03-29 10:59:54', 'voyager.infocategorysshows.index', 'null'),
(55, 1, 'Rahbariyat tarkibi', '', '_self', 'voyager-group', NULL, NULL, 28, '2023-03-29 11:31:46', '2023-03-29 11:31:46', 'voyager.managements.index', NULL),
(56, 1, 'Asosiy yo‘nalishlari', '', '_self', 'voyager-list', '#000000', NULL, 29, '2023-03-29 11:41:16', '2023-03-29 11:41:49', 'voyager.directions.index', 'null'),
(57, 1, 'Biz haqimizda', '', '_self', 'voyager-home', NULL, NULL, 30, '2023-03-29 12:19:34', '2023-03-29 12:19:34', 'voyager.abouts.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_uz` text COLLATE utf8mb4_unicode_ci,
  `text_oz` text COLLATE utf8mb4_unicode_ci,
  `text_ru` text COLLATE utf8mb4_unicode_ci,
  `text_en` text COLLATE utf8mb4_unicode_ci,
  `data` date DEFAULT NULL,
  `viewers` int DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tags` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `image`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `text_uz`, `text_oz`, `text_ru`, `text_en`, `data`, `viewers`, `images`, `created_at`, `updated_at`, `tags`, `status`) VALUES
(3, 'news/March2023/bjnWwSrb1XA0HQb0CWg1.jpg', 'Italiyaning Sapiyensa universiteti magistranti yosh vatandoshimiz Ibrohim Jo‘raboyev bilan suhbat', 'Italiyaning Sapiyensa universiteti magistranti yosh vatandoshimiz Ibrohim Jo‘raboyev bilan suhbat', 'Интервью с молодым соотечественником Ибрагимом джурабоевым, магистрантом итальянского университета Сапиенца', 'Interview with our young compatriot Ibrahim Zhuraboyev, a graduate student of the University of Sapienza, Italy', '<p>- Yoshligimda boshqa bolalar kabi sho&lsquo;h bo&lsquo;lmaganman. Ulg&lsquo;ayganim sari kishilar o&lsquo;rtasidagi munosabatlarning yaxshi-yomon taraflariga e&rsquo;tibor berar, nega bu vaziyatda unaqa, bunaqa? &ndash; degan savollarni ota-onamga ko&lsquo;p berardim. Bolaligimdan tarix kitoblarini o&lsquo;qish va sayohat qilishni yaxshi ko&lsquo;rar edim. Bundan tashqari, siyosatga va ijtimoiy psixologiyaga juda katta qiziqishim bo&lsquo;lgan.</p>', '<p>- Ёшлигимда бошқа болалар каби шўҳ бўлмаганман. Улғайганим сари кишилар ўртасидаги муносабатларнинг яхши-ёмон тарафларига еътибор берар, нега бу вазиятда унақа, бунақа? &ndash; деган саволларни ота-онамга кўп берардим. Болалигимдан тарих китобларини ўқиш ва саёҳат қилишни яхши кўрар едим. Бундан ташқари, сиёсатга ва ижтимоий психологияга жуда катта қизиқишим бўлган.</p>', '<p>- Когда я был моложе, я не был таким царственным, как другие дети. По мере того, как я становлюсь старше, я обращаю внимание на хорошие и плохие стороны отношений между людьми, так почему бы и нет в этой ситуации? -часто задавал родителям вопросы. С детства я любил читать книги по истории и путешествовать. Кроме того, у меня был большой интерес к политике и социальной психологии.</p>', '<p>- When I was young, I was not as cheerful as other children. As I grow up, I pay attention to the good-bad side of the relationship between people, why is it so, so much in this situation? -I would ask my parents a lot. Since childhood, I loved reading history books and traveling. In addition, I had a huge interest in politics and Social Psychology.</p>', '2023-03-09', 1708, '[\"news\\/March2023\\/TajGoHz3BnKf7DstDRCX.jpg\"]', '2023-03-06 08:48:22', '2023-04-03 07:02:33', 'Turin, Italiya, vatandosh', NULL),
(5, 'news/March2023/dFQEBOlMLwtMyaCowEUJ.jpg', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', 'Инженер по контролю качества компании \"Westport Fuel Systems Italia SRL\" в Италии Талибжон олимжонов', 'Quality Control Engineer Tolibjon Olimzhonov at Westport FUEL SYSTEMS ITALIA SRL in Italy', '<p>- 2015 yil Toshkent shahridagi Turin Politexnika univesitetini energetika va mexanika fakultetiga o&lsquo;qishga kirganman.&nbsp;Oradan 2 yil o\'tib 2017 yili Italiyaning Turin shahridagi&nbsp;<strong>Politecnico di Torino universitetiga</strong>&nbsp;bakalavrni davom ettirish uchun&nbsp;<strong>International Students Exchange</strong>&nbsp;dasturi bilan kelganman.</p>', '<p>- 2015 йил Тошкент шаҳридаги Turin Политехника унивеситетини енергетика ва механика факултетига ўқишга кирганман. Орадан 2 йил ўтиб 2017 йили Италиянинг Turin шаҳридаги Политеcниcо ди Torino университетига бакалаврни давом еттириш учун International Students Exchange дастури билан келганман.</p>', '<p>- В 2015 году поступила в Туринский политехнический университет в Ташкенте на факультет энергетики и механики. 2 года спустя, в 2017 году, я поступил в <strong>университет политехнического института в Турине</strong>, Италия, по программе <strong>International Students Exchange</strong>, чтобы получить степень бакалавра.</p>', '<p>- 2015 I entered the Faculty of energy and mechanics of the Turin Polytechnic unit in Tashkent. 2 years later in 2017 I came to <strong>the Politecnico di Torino University</strong> in Turin, Italy with <strong>the International Students Exchange Program</strong> to continue my bachelor\'s degree.</p>', '2023-03-09', 1192, '[\"news\\/March2023\\/EnqaSi6v9JTedTEelvP3.jpg\"]', '2023-03-06 08:51:20', '2023-04-03 06:36:49', 'Italiya, Westport, muhandis', NULL),
(6, 'news/March2023/wMN7OMGB1ZguDGjspOL8.jpg', 'Janubiy Koreyaning Pochon va unga yaqin hududlarida bo‘lib turgan vatandoshlarimiz bilan sayyor qabul va uchrashuv o‘tkazildi', 'Janubiy Koreyaning Pochon va unga yaqin hududlarida bo‘lib turgan vatandoshlarimiz bilan sayyor qabul va uchrashuv o‘tkazildi', 'Был проведен выездной прием и встреча с нашими соотечественниками, находящимися в Почоне и близлежащих районах Южной Кореи', 'An itinerant reception and meeting was held with our compatriots in Pochon and nearby regions of South Korea', '<p>SЕUL, 6 fevral. /&laquo;Dunyo&raquo; AA/. Mamlakatimizning Seuldagi elchixonasi, Tashqi mehnat migratsiyasi agentligi vakolatxonasi va Janubiy Koreyadagi o&lsquo;zbekistonliklar uyushmasi xodimlari tomonidan Pochon va unga yaqin hududlarda istiqomat qilayotgan vatandoshlarimiz bilan sayyor qabul va uchrashuv tashkil etildi, deb xabar bermoqda, deb xabar bermoqda &laquo;Dunyo&raquo; AA muxbiri.</p>', '<p>СЕУЛ, 6 феврал. /\"Дунё\" АА/. Мамлакатимизнинг Сеулдаги елчихонаси, Ташқи меҳнат миграцияси агентлиги ваколатхонаси ва Жанубий Кореядаги ўзбекистонликлар уюшмаси ходимлари томонидан Почон ва унга яқин ҳудудларда истиқомат қилаётган ватандошларимиз билан сайёр қабул ва учрашув ташкил етилди, деб хабар бермоқда, деб хабар бермоқда \"Дунё\" АА мухбири.</p>', '<p>Сеул, 6 февраля. /&raquo; Мир \" АА/. Сотрудники посольства нашей страны в Сеуле, представительства Агентства внешней трудовой миграции и ассоциации узбекистанцев в Южной Корее организовали выездной прием и встречу с нашими соотечественниками, проживающими в Почоне и прилегающих районах, сообщает корреспондент АА &laquo;мир&raquo;.</p>', '<p>Seoul, February 6. / \"World\" AA/. The embassy of our country in Seoul, the representative office of the foreign labor migration agency and the Union of Uzbeks in South Korea have organized an itinerant reception and meeting with compatriots living in Pochon and nearby regions, reports the AA correspondent of the \"world\".</p>', '2023-03-08', 957, '[\"news\\/March2023\\/slImx2g6NVgWZvglI1Rx.jpg\"]', '2023-03-06 08:53:49', '2023-04-03 06:35:53', 'Janubiy Korea, vatandoshimiz, yig\'ilish', NULL),
(9, 'news/March2023/vpKHKjCXvXfExaTH34jB.jpg', 'Xorijdagi vatandoshlar ishtirokida “Navroʼz” bayrami tantanalari boshlandi', 'Хориждаги ватандошлар иштирокида “Наврўз” байрами тантаналари бошланди', 'Начались торжества по случаю праздника Навруз с участием соотечественников за рубежом', 'With the participation of compatriots abroad, the celebrations of the holiday “Navruz” began', '<p>&ldquo;Vatandoshlar&rdquo; jamoat fondi boshchiligida Chexiya Respublikasidagi vatandoshlar bilan &ldquo;Navroʼz&rdquo; bayrami koʼtarinki kayfiyatda oʼtkazildi. Bayram tadbirlari doirasida Chexiya Respublikasida tahsil olayotgan talabalar bilan uchrashuv oʼtkazilib, uchrashuvlar yakunida faol vatandoshlar Fond tomonidan esdalik sovgʼalar bilan taqdirlanishdi.</p>', '<p>&ldquo;Ватандошлар&rdquo; жамоат фонди бошчилигида Чехия Республикасидаги ватандошлар билан &ldquo;Навроʼз&rdquo; байрами коʼтаринки кайфиятда оʼтказилди. Байрам тадбирлари доирасида Чехия Республикасида таҳсил олаётган талабалар билан учрашув оʼтказилиб, учрашувлар якунида фаол ватандошлар Фонд томонидан есдалик совгʼалар билан тақдирланишди.</p>', '<p>Под руководством общественного фонда&rdquo; соотечественники &ldquo;с соотечественниками из Чешской Республики был проведен праздник Навруз. В рамках праздничных мероприятий была проведена встреча со студентами, обучающимися в Чешской Республике, по итогам встреч активные соотечественники были награждены Фондом памятными подарками.</p>', '<p>Headed by the public fund&rdquo; compatriots&ldquo;, the holiday&rdquo; Navruz \" with compatriots in the Czech Republic was held in a high spirits. As part of the festive events, a meeting was held with students studying in the Czech Republic, and at the end of the meetings, active compatriots were presented with souvenirs by the foundation.</p>', '2023-03-18', 830, NULL, '2023-03-18 09:20:44', '2023-04-03 08:59:58', 'italia, samuray, rembo', NULL),
(10, 'news/March2023/SuTcnRGPJq68eUt3lveF.jpg', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', 'Италиядаги \"WЕСТПОРТ ФУЕЛ СЙСТЕМС ИТАЛИА СРЛ\" компаниясида сифат назорати бўйича муҳандис Толибжон Олимжонов', 'Инженер по контролю качества компании Westport Fuel Systems Italia SRL в Италии Талибжон олимжонов', 'Quality Control Engineer Tolibjon Olimzhonov at Westport FUEL SYSTEMS ITALIA SRL in Italy', '<p>- Xorijdagi eng katta qiyinchilik avvalambor uy va oila sog\'inchi bo\'lgan. Albatta o\'z o\'rnida Italiyada umuman begona odamlar va boshqa til ichida yashab, yangi muhitda yashash qiyin bo\'lgan.&nbsp;- Lekin bu ham shaxsiy kamolot uchun bir zarur hayot maktabi edi. Italiyan tili va&nbsp;madaniyatni o\'rganish, mehnat faoliyatini olib borish eng zarur afzallik va tajriba bo\'lmoqda.&nbsp;Maqsadlarimga erishish uchun qat\'iy tartib, doim yaqin va uzoq kelajakni rejalashtirib, butun hayotim shu rejalar asosida ketmoqdami doimiy monitoring qilib boraman. Shiorim ham&nbsp;<strong>&ldquo;Qat\'iy maqsadlar bilan tartibli va mazmunli&nbsp;</strong><strong>yashash&rdquo;</strong>dir.</p>', '<p>- Хориждаги енг катта қийинчилик авваламбор уй ва оила соғинчи бўлган. Албатта ўз ўрнида Италияда умуман бегона одамлар ва бошқа тил ичида яшаб, янги муҳитда яшаш қийин бўлган.&nbsp;- Лекин бу ҳам шахсий камолот учун бир зарур ҳаёт мактаби еди. Италиян тили ва маданиятни ўрганиш, меҳнат фаолиятини олиб бориш енг зарур афзаллик ва тажриба бўлмоқда. Мақсадларимга еришиш учун қатъий тартиб, доим яқин ва узоқ келажакни режалаштириб, бутун ҳаётим шу режалар асосида кетмоқдами доимий мониторинг қилиб бораман. Шиорим ҳам &ldquo;Қатъий мақсадлар билан тартибли ва мазмунли яшаш&rdquo;дир.</p>', '<p>- Самой большой проблемой за границей была прежде всего тоска по дому и семье. Конечно, вместо этого в Италии были совершенно незнакомые люди, и было трудно жить в новой среде, живя внутри другого языка.&nbsp;- Но это также была необходимая школа жизни для личного созревания. Изучение итальянского языка и культуры, ведение трудовой деятельности становится необходимым преимуществом и опытом. Я придерживаюсь строгого распорядка для достижения своих целей, всегда планирую на ближайшее и далекое будущее и постоянно наблюдаю, идет ли вся моя жизнь в соответствии с этими планами. Мой девиз также - &rdquo;жить упорядоченно и осмысленно с твердыми целями\".</p>', '<p>- The biggest challenge abroad was primarily homesickness and family longing. In its place, of course, it was difficult to live in a new environment, living in Italy completely strangers and in another language.&nbsp;- But it was also a necessary life School for personal maturation. Learning the Italian language and culture, carrying out labor activities are the most necessary advantages and experiences. A strict procedure for achieving my goals, always planning a near and far future, I constantly monitor whether my whole life is going according to these plans. My motto is also \"to live orderly and meaningful with strict goals\".</p>', '2023-03-08', 189, NULL, '2023-03-18 09:25:21', '2023-04-01 11:23:56', 'Italiya, Westport, muhandis, sifat nazorati', NULL),
(11, 'news/March2023/RuMufPmLVSmJqg56Zgrz.jpeg', 'Italiyaning Milan shahrida yashovchi Nodirbek Yusufov oilasi. Italiyaning Milan shahrida yashovchi Nodirbek Yusufov oilasi', 'Италиянинг Милан шаҳрида яшовчи Нодирбек Юсуфов оиласи', 'Семья Нодирбека Юсуфова, проживающая в Милане, Италия', 'Nodirbek Yusufov family of Milan, Italy. Nodirbek Yusufov family of Milan, Italy', '<p>Nodirbek 1995-yilda Toshkent shahrida tug&lsquo;ilgan. Nodirbek Yusufov 2014-2018 yillarda Turin politexnika universitetida tahsil olgan. Qishda u 2018 yilgi Global UGRAD dasturida g&lsquo;olib chiqdi va AQShning G&lsquo;arbiy Virjiniya universitetida tahsil oldi.&nbsp;Hozirda Italiyaning Turin politexnika universitetida muhandislik menejmenti magistratura bosqichida tahsil olmoqda.&nbsp;Nodirbek o&lsquo;qishdan tashqari sanoat va ta&rsquo;limda qo&lsquo;llaniladigan chiplar ishlab chiqaruvchi yetakchi Arduino kompaniyasida ishlaydi.</p>', '<p>Нодирбек 1995-йилда Тошкент шаҳрида туг&lsquo;илган. Нодирбек Юсуфов 2014-2018 йилларда Турин политехника университетида таҳсил олган. Қишда у 2018 йилги Глобал УГРАД дастурида г&lsquo;олиб чиқди ва АҚШнинг Г&lsquo;арбий Виржиния университетида таҳсил олди. Ҳозирда Италиянинг Турин политехника университетида муҳандислик менежменти магистратура босқичида таҳсил олмоқда. Нодирбек о&lsquo;қишдан ташқари саноат ва та&rsquo;лимда қо&lsquo;лланиладиган чиплар ишлаб чиқарувчи етакчи Ардуино компаниясида ишлайди.</p>', '<p>Нодирбек родился в 1995 году в Ташкенте. Нодирбек Юсуфов учился в Туринском политехническом университете с 2014 по 2018 год. Зимой она выиграла глобальную программу UGRAD 2018 года и училась в Университете Западной Вирджинии в США. В настоящее время он изучает инженерный менеджмент в Туринском политехническом университете в Италии. Помимо обучения, Нодирбек работает в ведущей компании Arduino, производящей микросхемы, используемые в промышленности и образовании.</p>', '<p>Nodirbek was born in 1995 in Tashkent. Nodirbek Yusufov studied at the Polytechnic University of Turin from 2014-2018. In the winter, she won the 2018 Global UGRAD program and attended West Virginia University in the United States. He is currently studying engineering management at the Polytechnic University of Turin in Italy at the graduate level. In addition to his studies, Nodirbek works for Arduino, a leading manufacturer of chips used in industry and education.</p>', '2023-03-14', 299, '[\"news\\/March2023\\/lkdTW7zysECxiZXIZUgr.png\",\"news\\/March2023\\/xeQjqfH6zId0vxYYMfJf.jpg\",\"news\\/March2023\\/O2FWOvJbi1AnHchdSurA.jpg\",\"news\\/March2023\\/0EnHF5ol4n92GwKJWPP6.jpeg\"]', '2023-03-18 09:28:59', '2023-04-03 03:39:50', 'italia, samuray, rembo', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(2, 'browse_bread', NULL, '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(3, 'browse_database', NULL, '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(4, 'browse_media', NULL, '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(5, 'browse_compass', NULL, '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(6, 'browse_menus', 'menus', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(7, 'read_menus', 'menus', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(8, 'edit_menus', 'menus', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(9, 'add_menus', 'menus', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(10, 'delete_menus', 'menus', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(11, 'browse_roles', 'roles', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(12, 'read_roles', 'roles', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(13, 'edit_roles', 'roles', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(14, 'add_roles', 'roles', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(15, 'delete_roles', 'roles', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(16, 'browse_users', 'users', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(17, 'read_users', 'users', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(18, 'edit_users', 'users', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(19, 'add_users', 'users', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(20, 'delete_users', 'users', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(21, 'browse_settings', 'settings', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(22, 'read_settings', 'settings', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(23, 'edit_settings', 'settings', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(24, 'add_settings', 'settings', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(25, 'delete_settings', 'settings', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(26, 'browse_categories', 'categories', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(27, 'read_categories', 'categories', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(28, 'edit_categories', 'categories', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(29, 'add_categories', 'categories', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(30, 'delete_categories', 'categories', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(41, 'browse_news', 'news', '2023-03-04 11:46:55', '2023-03-04 11:46:55'),
(42, 'read_news', 'news', '2023-03-04 11:46:55', '2023-03-04 11:46:55'),
(43, 'edit_news', 'news', '2023-03-04 11:46:55', '2023-03-04 11:46:55'),
(44, 'add_news', 'news', '2023-03-04 11:46:55', '2023-03-04 11:46:55'),
(45, 'delete_news', 'news', '2023-03-04 11:46:55', '2023-03-04 11:46:55'),
(46, 'browse_contacts', 'contacts', '2023-03-05 05:39:11', '2023-03-05 05:39:11'),
(47, 'read_contacts', 'contacts', '2023-03-05 05:39:11', '2023-03-05 05:39:11'),
(48, 'edit_contacts', 'contacts', '2023-03-05 05:39:11', '2023-03-05 05:39:11'),
(49, 'add_contacts', 'contacts', '2023-03-05 05:39:11', '2023-03-05 05:39:11'),
(50, 'delete_contacts', 'contacts', '2023-03-05 05:39:11', '2023-03-05 05:39:11'),
(51, 'browse_sponsrs', 'sponsrs', '2023-03-05 05:48:38', '2023-03-05 05:48:38'),
(52, 'read_sponsrs', 'sponsrs', '2023-03-05 05:48:38', '2023-03-05 05:48:38'),
(53, 'edit_sponsrs', 'sponsrs', '2023-03-05 05:48:38', '2023-03-05 05:48:38'),
(54, 'add_sponsrs', 'sponsrs', '2023-03-05 05:48:38', '2023-03-05 05:48:38'),
(55, 'delete_sponsrs', 'sponsrs', '2023-03-05 05:48:38', '2023-03-05 05:48:38'),
(66, 'browse_countries', 'countries', '2023-03-09 16:32:11', '2023-03-09 16:32:11'),
(67, 'read_countries', 'countries', '2023-03-09 16:32:11', '2023-03-09 16:32:11'),
(68, 'edit_countries', 'countries', '2023-03-09 16:32:11', '2023-03-09 16:32:11'),
(69, 'add_countries', 'countries', '2023-03-09 16:32:11', '2023-03-09 16:32:11'),
(70, 'delete_countries', 'countries', '2023-03-09 16:32:11', '2023-03-09 16:32:11'),
(71, 'browse_relationships', 'relationships', '2023-03-09 16:34:09', '2023-03-09 16:34:09'),
(72, 'read_relationships', 'relationships', '2023-03-09 16:34:09', '2023-03-09 16:34:09'),
(73, 'edit_relationships', 'relationships', '2023-03-09 16:34:09', '2023-03-09 16:34:09'),
(74, 'add_relationships', 'relationships', '2023-03-09 16:34:09', '2023-03-09 16:34:09'),
(75, 'delete_relationships', 'relationships', '2023-03-09 16:34:09', '2023-03-09 16:34:09'),
(76, 'browse_newsMenu', 'newsMenu', '2023-03-13 08:36:49', '2023-03-13 08:36:49'),
(77, 'read_newsMenu', 'newsMenu', '2023-03-13 08:36:49', '2023-03-13 08:36:49'),
(78, 'edit_newsMenu', 'newsMenu', '2023-03-13 08:36:49', '2023-03-13 08:36:49'),
(79, 'add_newsMenu', 'newsMenu', '2023-03-13 08:36:49', '2023-03-13 08:36:49'),
(80, 'delete_newsMenu', 'newsMenu', '2023-03-13 08:36:49', '2023-03-13 08:36:49'),
(111, 'browse_interactive_services', 'interactive_services', '2023-03-15 05:58:55', '2023-03-15 05:58:55'),
(112, 'read_interactive_services', 'interactive_services', '2023-03-15 05:58:55', '2023-03-15 05:58:55'),
(113, 'edit_interactive_services', 'interactive_services', '2023-03-15 05:58:55', '2023-03-15 05:58:55'),
(114, 'add_interactive_services', 'interactive_services', '2023-03-15 05:58:55', '2023-03-15 05:58:55'),
(115, 'delete_interactive_services', 'interactive_services', '2023-03-15 05:58:55', '2023-03-15 05:58:55'),
(116, 'browse_posts', 'posts', '2023-03-15 06:34:09', '2023-03-15 06:34:09'),
(117, 'read_posts', 'posts', '2023-03-15 06:34:09', '2023-03-15 06:34:09'),
(118, 'edit_posts', 'posts', '2023-03-15 06:34:09', '2023-03-15 06:34:09'),
(119, 'add_posts', 'posts', '2023-03-15 06:34:09', '2023-03-15 06:34:09'),
(120, 'delete_posts', 'posts', '2023-03-15 06:34:09', '2023-03-15 06:34:09'),
(121, 'browse_trusts', 'trusts', '2023-03-15 07:37:52', '2023-03-15 07:37:52'),
(122, 'read_trusts', 'trusts', '2023-03-15 07:37:52', '2023-03-15 07:37:52'),
(123, 'edit_trusts', 'trusts', '2023-03-15 07:37:52', '2023-03-15 07:37:52'),
(124, 'add_trusts', 'trusts', '2023-03-15 07:37:52', '2023-03-15 07:37:52'),
(125, 'delete_trusts', 'trusts', '2023-03-15 07:37:52', '2023-03-15 07:37:52'),
(126, 'browse_sendcontacts', 'sendcontacts', '2023-03-17 07:00:59', '2023-03-17 07:00:59'),
(127, 'read_sendcontacts', 'sendcontacts', '2023-03-17 07:00:59', '2023-03-17 07:00:59'),
(128, 'edit_sendcontacts', 'sendcontacts', '2023-03-17 07:00:59', '2023-03-17 07:00:59'),
(129, 'add_sendcontacts', 'sendcontacts', '2023-03-17 07:00:59', '2023-03-17 07:00:59'),
(130, 'delete_sendcontacts', 'sendcontacts', '2023-03-17 07:00:59', '2023-03-17 07:00:59'),
(131, 'browse_sliders', 'sliders', '2023-03-17 09:33:15', '2023-03-17 09:33:15'),
(132, 'read_sliders', 'sliders', '2023-03-17 09:33:15', '2023-03-17 09:33:15'),
(133, 'edit_sliders', 'sliders', '2023-03-17 09:33:15', '2023-03-17 09:33:15'),
(134, 'add_sliders', 'sliders', '2023-03-17 09:33:15', '2023-03-17 09:33:15'),
(135, 'delete_sliders', 'sliders', '2023-03-17 09:33:15', '2023-03-17 09:33:15'),
(136, 'browse_column_menus', 'column_menus', '2023-03-17 10:31:03', '2023-03-17 10:31:03'),
(137, 'read_column_menus', 'column_menus', '2023-03-17 10:31:03', '2023-03-17 10:31:03'),
(138, 'edit_column_menus', 'column_menus', '2023-03-17 10:31:03', '2023-03-17 10:31:03'),
(139, 'add_column_menus', 'column_menus', '2023-03-17 10:31:03', '2023-03-17 10:31:03'),
(140, 'delete_column_menus', 'column_menus', '2023-03-17 10:31:03', '2023-03-17 10:31:03'),
(141, 'browse_columns', 'columns', '2023-03-22 05:54:33', '2023-03-22 05:54:33'),
(142, 'read_columns', 'columns', '2023-03-22 05:54:33', '2023-03-22 05:54:33'),
(143, 'edit_columns', 'columns', '2023-03-22 05:54:33', '2023-03-22 05:54:33'),
(144, 'add_columns', 'columns', '2023-03-22 05:54:33', '2023-03-22 05:54:33'),
(145, 'delete_columns', 'columns', '2023-03-22 05:54:33', '2023-03-22 05:54:33'),
(146, 'browse_assosiations', 'assosiations', '2023-03-24 12:12:27', '2023-03-24 12:12:27'),
(147, 'read_assosiations', 'assosiations', '2023-03-24 12:12:27', '2023-03-24 12:12:27'),
(148, 'edit_assosiations', 'assosiations', '2023-03-24 12:12:27', '2023-03-24 12:12:27'),
(149, 'add_assosiations', 'assosiations', '2023-03-24 12:12:27', '2023-03-24 12:12:27'),
(150, 'delete_assosiations', 'assosiations', '2023-03-24 12:12:27', '2023-03-24 12:12:27'),
(151, 'browse_assosiation_categories', 'assosiation_categories', '2023-03-24 12:27:27', '2023-03-24 12:27:27'),
(152, 'read_assosiation_categories', 'assosiation_categories', '2023-03-24 12:27:27', '2023-03-24 12:27:27'),
(153, 'edit_assosiation_categories', 'assosiation_categories', '2023-03-24 12:27:27', '2023-03-24 12:27:27'),
(154, 'add_assosiation_categories', 'assosiation_categories', '2023-03-24 12:27:27', '2023-03-24 12:27:27'),
(155, 'delete_assosiation_categories', 'assosiation_categories', '2023-03-24 12:27:27', '2023-03-24 12:27:27'),
(156, 'browse_mediateka_video_menus', 'mediateka_video_menus', '2023-03-24 16:55:55', '2023-03-24 16:55:55'),
(157, 'read_mediateka_video_menus', 'mediateka_video_menus', '2023-03-24 16:55:55', '2023-03-24 16:55:55'),
(158, 'edit_mediateka_video_menus', 'mediateka_video_menus', '2023-03-24 16:55:55', '2023-03-24 16:55:55'),
(159, 'add_mediateka_video_menus', 'mediateka_video_menus', '2023-03-24 16:55:55', '2023-03-24 16:55:55'),
(160, 'delete_mediateka_video_menus', 'mediateka_video_menus', '2023-03-24 16:55:55', '2023-03-24 16:55:55'),
(161, 'browse_mediateka_videos', 'mediateka_videos', '2023-03-24 17:00:04', '2023-03-24 17:00:04'),
(162, 'read_mediateka_videos', 'mediateka_videos', '2023-03-24 17:00:04', '2023-03-24 17:00:04'),
(163, 'edit_mediateka_videos', 'mediateka_videos', '2023-03-24 17:00:04', '2023-03-24 17:00:04'),
(164, 'add_mediateka_videos', 'mediateka_videos', '2023-03-24 17:00:04', '2023-03-24 17:00:04'),
(165, 'delete_mediateka_videos', 'mediateka_videos', '2023-03-24 17:00:04', '2023-03-24 17:00:04'),
(166, 'browse_mediateka_image_menus', 'mediateka_image_menus', '2023-03-24 17:19:53', '2023-03-24 17:19:53'),
(167, 'read_mediateka_image_menus', 'mediateka_image_menus', '2023-03-24 17:19:53', '2023-03-24 17:19:53'),
(168, 'edit_mediateka_image_menus', 'mediateka_image_menus', '2023-03-24 17:19:53', '2023-03-24 17:19:53'),
(169, 'add_mediateka_image_menus', 'mediateka_image_menus', '2023-03-24 17:19:53', '2023-03-24 17:19:53'),
(170, 'delete_mediateka_image_menus', 'mediateka_image_menus', '2023-03-24 17:19:53', '2023-03-24 17:19:53'),
(171, 'browse_mediateka_images', 'mediateka_images', '2023-03-24 17:22:41', '2023-03-24 17:22:41'),
(172, 'read_mediateka_images', 'mediateka_images', '2023-03-24 17:22:41', '2023-03-24 17:22:41'),
(173, 'edit_mediateka_images', 'mediateka_images', '2023-03-24 17:22:41', '2023-03-24 17:22:41'),
(174, 'add_mediateka_images', 'mediateka_images', '2023-03-24 17:22:41', '2023-03-24 17:22:41'),
(175, 'delete_mediateka_images', 'mediateka_images', '2023-03-24 17:22:41', '2023-03-24 17:22:41'),
(176, 'browse_infographics', 'infographics', '2023-03-24 18:09:01', '2023-03-24 18:09:01'),
(177, 'read_infographics', 'infographics', '2023-03-24 18:09:01', '2023-03-24 18:09:01'),
(178, 'edit_infographics', 'infographics', '2023-03-24 18:09:01', '2023-03-24 18:09:01'),
(179, 'add_infographics', 'infographics', '2023-03-24 18:09:01', '2023-03-24 18:09:01'),
(180, 'delete_infographics', 'infographics', '2023-03-24 18:09:01', '2023-03-24 18:09:01'),
(181, 'browse_events', 'events', '2023-03-24 18:18:00', '2023-03-24 18:18:00'),
(182, 'read_events', 'events', '2023-03-24 18:18:00', '2023-03-24 18:18:00'),
(183, 'edit_events', 'events', '2023-03-24 18:18:00', '2023-03-24 18:18:00'),
(184, 'add_events', 'events', '2023-03-24 18:18:00', '2023-03-24 18:18:00'),
(185, 'delete_events', 'events', '2023-03-24 18:18:00', '2023-03-24 18:18:00'),
(186, 'browse_sendprojects', 'sendprojects', '2023-03-27 09:02:57', '2023-03-27 09:02:57'),
(187, 'read_sendprojects', 'sendprojects', '2023-03-27 09:02:57', '2023-03-27 09:02:57'),
(188, 'edit_sendprojects', 'sendprojects', '2023-03-27 09:02:57', '2023-03-27 09:02:57'),
(189, 'add_sendprojects', 'sendprojects', '2023-03-27 09:02:57', '2023-03-27 09:02:57'),
(190, 'delete_sendprojects', 'sendprojects', '2023-03-27 09:02:57', '2023-03-27 09:02:57'),
(191, 'browse_categoryshows', 'categoryshows', '2023-03-27 10:06:21', '2023-03-27 10:06:21'),
(192, 'read_categoryshows', 'categoryshows', '2023-03-27 10:06:21', '2023-03-27 10:06:21'),
(193, 'edit_categoryshows', 'categoryshows', '2023-03-27 10:06:21', '2023-03-27 10:06:21'),
(194, 'add_categoryshows', 'categoryshows', '2023-03-27 10:06:21', '2023-03-27 10:06:21'),
(195, 'delete_categoryshows', 'categoryshows', '2023-03-27 10:06:21', '2023-03-27 10:06:21'),
(196, 'browse_publicevents', 'publicevents', '2023-03-27 10:13:10', '2023-03-27 10:13:10'),
(197, 'read_publicevents', 'publicevents', '2023-03-27 10:13:10', '2023-03-27 10:13:10'),
(198, 'edit_publicevents', 'publicevents', '2023-03-27 10:13:10', '2023-03-27 10:13:10'),
(199, 'add_publicevents', 'publicevents', '2023-03-27 10:13:10', '2023-03-27 10:13:10'),
(200, 'delete_publicevents', 'publicevents', '2023-03-27 10:13:10', '2023-03-27 10:13:10'),
(201, 'browse_infopublicevents', 'infopublicevents', '2023-03-29 10:46:45', '2023-03-29 10:46:45'),
(202, 'read_infopublicevents', 'infopublicevents', '2023-03-29 10:46:45', '2023-03-29 10:46:45'),
(203, 'edit_infopublicevents', 'infopublicevents', '2023-03-29 10:46:45', '2023-03-29 10:46:45'),
(204, 'add_infopublicevents', 'infopublicevents', '2023-03-29 10:46:45', '2023-03-29 10:46:45'),
(205, 'delete_infopublicevents', 'infopublicevents', '2023-03-29 10:46:45', '2023-03-29 10:46:45'),
(206, 'browse_infocategorysshows', 'infocategorysshows', '2023-03-29 10:53:43', '2023-03-29 10:53:43'),
(207, 'read_infocategorysshows', 'infocategorysshows', '2023-03-29 10:53:43', '2023-03-29 10:53:43'),
(208, 'edit_infocategorysshows', 'infocategorysshows', '2023-03-29 10:53:43', '2023-03-29 10:53:43'),
(209, 'add_infocategorysshows', 'infocategorysshows', '2023-03-29 10:53:43', '2023-03-29 10:53:43'),
(210, 'delete_infocategorysshows', 'infocategorysshows', '2023-03-29 10:53:43', '2023-03-29 10:53:43'),
(221, 'browse_managements', 'managements', '2023-03-29 11:31:45', '2023-03-29 11:31:45'),
(222, 'read_managements', 'managements', '2023-03-29 11:31:45', '2023-03-29 11:31:45'),
(223, 'edit_managements', 'managements', '2023-03-29 11:31:45', '2023-03-29 11:31:45'),
(224, 'add_managements', 'managements', '2023-03-29 11:31:45', '2023-03-29 11:31:45'),
(225, 'delete_managements', 'managements', '2023-03-29 11:31:45', '2023-03-29 11:31:45'),
(226, 'browse_directions', 'directions', '2023-03-29 11:41:16', '2023-03-29 11:41:16'),
(227, 'read_directions', 'directions', '2023-03-29 11:41:16', '2023-03-29 11:41:16'),
(228, 'edit_directions', 'directions', '2023-03-29 11:41:16', '2023-03-29 11:41:16'),
(229, 'add_directions', 'directions', '2023-03-29 11:41:16', '2023-03-29 11:41:16'),
(230, 'delete_directions', 'directions', '2023-03-29 11:41:16', '2023-03-29 11:41:16'),
(231, 'browse_abouts', 'abouts', '2023-03-29 12:19:34', '2023-03-29 12:19:34'),
(232, 'read_abouts', 'abouts', '2023-03-29 12:19:34', '2023-03-29 12:19:34'),
(233, 'edit_abouts', 'abouts', '2023-03-29 12:19:34', '2023-03-29 12:19:34'),
(234, 'add_abouts', 'abouts', '2023-03-29 12:19:34', '2023-03-29 12:19:34'),
(235, 'delete_abouts', 'abouts', '2023-03-29 12:19:34', '2023-03-29 12:19:34');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(50, 1),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(111, 1),
(111, 3),
(112, 1),
(112, 3),
(113, 1),
(113, 3),
(114, 1),
(114, 3),
(115, 1),
(115, 3),
(121, 1),
(121, 3),
(122, 1),
(122, 3),
(123, 1),
(123, 3),
(124, 1),
(124, 3),
(125, 1),
(125, 3),
(126, 1),
(126, 3),
(127, 1),
(127, 3),
(128, 1),
(128, 3),
(129, 1),
(129, 3),
(130, 1),
(130, 3),
(131, 1),
(131, 3),
(132, 1),
(132, 3),
(133, 1),
(133, 3),
(134, 1),
(134, 3),
(135, 1),
(135, 3),
(136, 1),
(136, 3),
(137, 1),
(137, 3),
(138, 1),
(138, 3),
(139, 1),
(139, 3),
(140, 1),
(140, 3),
(141, 1),
(141, 3),
(142, 1),
(142, 3),
(143, 1),
(143, 3),
(144, 1),
(144, 3),
(145, 1),
(145, 3),
(146, 1),
(146, 3),
(147, 1),
(147, 3),
(148, 1),
(148, 3),
(149, 1),
(149, 3),
(150, 1),
(150, 3),
(151, 1),
(151, 3),
(152, 1),
(152, 3),
(153, 1),
(153, 3),
(154, 1),
(154, 3),
(155, 1),
(155, 3),
(156, 1),
(156, 3),
(157, 1),
(157, 3),
(158, 1),
(158, 3),
(159, 1),
(159, 3),
(160, 1),
(160, 3),
(161, 1),
(161, 3),
(162, 1),
(162, 3),
(163, 1),
(163, 3),
(164, 1),
(164, 3),
(165, 1),
(165, 3),
(166, 1),
(166, 3),
(167, 1),
(167, 3),
(168, 1),
(168, 3),
(169, 1),
(169, 3),
(170, 1),
(170, 3),
(171, 1),
(171, 3),
(172, 1),
(172, 3),
(173, 1),
(173, 3),
(174, 1),
(174, 3),
(175, 1),
(175, 3),
(176, 1),
(176, 3),
(177, 1),
(177, 3),
(178, 1),
(178, 3),
(179, 1),
(179, 3),
(180, 1),
(180, 3),
(181, 1),
(181, 3),
(182, 1),
(182, 3),
(183, 1),
(183, 3),
(184, 1),
(184, 3),
(185, 1),
(185, 3),
(186, 1),
(186, 3),
(187, 1),
(187, 3),
(188, 1),
(188, 3),
(189, 1),
(189, 3),
(190, 1),
(190, 3),
(191, 1),
(191, 3),
(192, 1),
(192, 3),
(193, 1),
(193, 3),
(194, 1),
(194, 3),
(195, 1),
(195, 3),
(196, 1),
(196, 3),
(197, 1),
(197, 3),
(198, 1),
(198, 3),
(199, 1),
(199, 3),
(200, 1),
(200, 3),
(201, 1),
(201, 3),
(202, 1),
(202, 3),
(203, 1),
(203, 3),
(204, 1),
(205, 1),
(206, 1),
(206, 3),
(207, 1),
(207, 3),
(208, 1),
(208, 3),
(209, 1),
(210, 1),
(221, 1),
(221, 3),
(222, 1),
(222, 3),
(223, 1),
(223, 3),
(224, 1),
(224, 3),
(225, 1),
(225, 3),
(226, 1),
(226, 3),
(227, 1),
(227, 3),
(228, 1),
(228, 3),
(229, 1),
(229, 3),
(230, 1),
(230, 3),
(231, 1),
(231, 3),
(232, 1),
(232, 3),
(233, 1),
(233, 3),
(234, 1),
(235, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `publicevents`
--

CREATE TABLE `publicevents` (
  `id` int UNSIGNED NOT NULL,
  `data` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_uz` longtext COLLATE utf8mb4_unicode_ci,
  `text_oz` longtext COLLATE utf8mb4_unicode_ci,
  `text_ru` longtext COLLATE utf8mb4_unicode_ci,
  `text_en` longtext COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `viewers` int DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `publicevents`
--

INSERT INTO `publicevents` (`id`, `data`, `image`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `text_uz`, `text_oz`, `text_ru`, `text_en`, `tags`, `viewers`, `images`, `created_at`, `updated_at`) VALUES
(1, '2000-12-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'italia, samuray, rembo', 5, NULL, '2023-03-27 10:50:24', '2023-04-03 07:16:21');

-- --------------------------------------------------------

--
-- Структура таблицы `relationships`
--

CREATE TABLE `relationships` (
  `id` int UNSIGNED NOT NULL,
  `country_flag_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` text COLLATE utf8mb4_unicode_ci,
  `title_ru` text COLLATE utf8mb4_unicode_ci,
  `title_en` text COLLATE utf8mb4_unicode_ci,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `date_tame` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `relationships`
--

INSERT INTO `relationships` (`id`, `country_flag_code`, `title_uz`, `title_ru`, `title_en`, `photo`, `date_tame`, `created_at`, `updated_at`, `country_flag`) VALUES
(1, 'AS', 'Amerika', 'Аме́рика', 'United States', 'relationships/March2023/2A4qn1iw7RH3x7Xw6sDF.jpg', '2023-03-01', '2023-03-09 16:41:00', '2023-03-13 11:39:53', 'relationships/March2023/Pc0rqJC7GFsV1a2QFHNn.png'),
(2, 'CN', 'Xitoy', 'Китай', 'China', 'relationships/March2023/kRto1V0SbH56ntQQ2mCz.jpg', '2023-03-24', '2023-03-10 06:35:00', '2023-03-13 05:43:54', 'relationships/March2023/Qhr3L18kPNfQAiTbms4d.png'),
(3, 'RU', 'Rossiya', 'Россия', 'Russia', 'relationships/March2023/Ie51OrX8MdCGCXrn0Ugo.jpg', '2023-03-24', '2023-03-10 10:57:00', '2023-03-13 05:36:51', 'relationships/March2023/2yKxBV00o3afMMZ3L0mU.jpg'),
(4, 'KZ', 'Qozog\'izton', 'Казахстан', 'Kazakhstan', 'relationships/March2023/rXthaBSi84dRfzYp2Uwo.jpg', '2023-03-16', '2023-03-13 05:51:50', '2023-03-13 05:51:50', 'relationships/March2023/mBOvURq4e8A5AMFY9FLW.png'),
(5, 'AR', 'Argentina', 'Аргентина', 'Argentina', 'relationships/March2023/eIh3a0ym0i88IwtB4LFr.jpg', '2023-03-23', '2023-03-13 05:54:47', '2023-03-13 05:54:47', 'relationships/March2023/lmHQr53CVGVnDVxuVJid.png'),
(6, 'UZ', 'O\'zbekiston', 'Узбекистан', 'Uzbekistan', 'relationships/March2023/vWPX8jdgEEsa09XFN8Sv.jpg', '2023-03-10', '2023-03-13 05:56:20', '2023-03-13 05:56:20', 'relationships/March2023/cw3doPx6yJ6G1kcnU9nW.png'),
(7, 'BY', 'Belarussia', 'Белоруссия', 'Belarus', 'relationships/March2023/I3Wl1HbSObxSTH3l8rwS.jpg', '2023-03-24', '2023-03-13 06:02:23', '2023-03-13 06:02:23', 'relationships/March2023/7XWDpgoo3GJxk7tCuNzJ.png'),
(8, 'CA', 'KanadaКанада', NULL, 'Canada', 'relationships/March2023/ScC2GXzhgrHwK4nE5pZu.jpg', '2023-03-16', '2023-03-13 06:03:49', '2023-03-13 06:03:49', 'relationships/March2023/BGNuvZpNZrxLlyavVzDN.png'),
(9, 'KG', 'Qirg\'iziston', 'Киргизия', 'Kyrgyzstan', 'relationships/March2023/BR1lGX2yo3MS4W6Gseq9.jpg', '2023-02-28', '2023-03-13 06:10:00', '2023-03-13 06:10:43', 'relationships/March2023/ZDGdYGiPcqgyUSYFtvZ1.png'),
(10, 'MN', 'Mongoliya', 'Монголия', 'Mongolia', 'relationships/March2023/bEZvwjpsqUIcgF0WjXWm.jpg', '2023-03-10', '2023-03-13 06:16:04', '2023-03-13 06:16:04', 'relationships/March2023/tRP1ji1ak4g4P7QocaZ5.png');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(2, 'user', 'Normal User', '2023-03-04 06:10:13', '2023-03-04 06:10:13'),
(3, 'Vatanparvar Admin', 'Vatanparvar Admin', '2023-03-05 08:23:50', '2023-03-05 08:23:50');

-- --------------------------------------------------------

--
-- Структура таблицы `sendcontacts`
--

CREATE TABLE `sendcontacts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sendcontacts`
--

INSERT INTO `sendcontacts` (`id`, `name`, `phone`, `created_at`, `updated_at`, `text`) VALUES
(55, 'argaer', '4930497492', '2023-03-25 07:41:17', '2023-03-25 07:41:17', 'aregjaetg'),
(56, 'string', 'string', '2023-03-29 08:04:32', '2023-03-29 08:04:32', 'string'),
(57, 'string', 'string', '2023-03-29 08:12:46', '2023-03-29 08:12:46', 'string'),
(58, 'strategic', 'synthesize', '2023-03-30 06:52:19', '2023-03-30 06:52:19', NULL),
(59, 'Checking Account', 'Chips', '2023-03-30 07:00:42', '2023-03-30 07:00:42', NULL),
(60, 'string', 'string', '2023-03-31 06:51:18', '2023-03-31 06:51:18', 'string');

-- --------------------------------------------------------

--
-- Структура таблицы `sendprojects`
--

CREATE TABLE `sendprojects` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `columnName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `images` longtext COLLATE utf8mb4_unicode_ci,
  `socials` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sendprojects`
--

INSERT INTO `sendprojects` (`id`, `name`, `email`, `phone`, `columnName`, `about`, `images`, `socials`, `created_at`, `updated_at`) VALUES
(1, 'Baxromov Islomjon Rustam o\'g\'li', 'admin@admin.com', '+998995888898', '“Sportchi vatandsohlar” rukni', 'Web Developer, Front End Developer', '[\"sendprojects\\/March2023\\/ya6cybKF2ahTpnUqZDqI.jpeg\",\"sendprojects\\/March2023\\/gkLBKTX6TNfqTPQDDVV8.png\",\"sendprojects\\/March2023\\/tcy4Goy26kHxzbi7dvPH.png\"]', 'https://t.me/islombek1512 https://www.instagram.com/islomjon_bahromov', '2023-03-27 09:04:56', '2023-03-27 09:04:56'),
(2, 'string', NULL, 'string', NULL, NULL, NULL, NULL, '2023-03-31 06:52:07', '2023-03-31 06:52:07'),
(3, 'string', 'string', 'string', 'string', 'string', 'string', 'string', '2023-03-31 06:59:50', '2023-03-31 06:59:50'),
(4, 'Islom', 'a@a.com', '+998995888898', '“Sportchi vatandsohlar” rukni', 'Mening ismim Islom Baxromov, bu habarni test uchun yozdim', '/tmp/php9sdKzD', 'https://t.me/mislombek1512', '2023-03-31 07:03:57', '2023-03-31 07:03:57');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/March2023/eP8bM1pefaMY3lKaMtNL.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Admin panel', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Admin.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/March2023/pkwNmgvnVDCtvg2kZztz.gif', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/March2023/qYIxURWzjdKtSb9RUgBI.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.tegs', 'News` tags', '', NULL, 'select_dropdown', 6, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` int UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_uz` text COLLATE utf8mb4_unicode_ci,
  `text_oz` text COLLATE utf8mb4_unicode_ci,
  `text_ru` text COLLATE utf8mb4_unicode_ci,
  `text_en` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `img`, `video`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `text_uz`, `text_oz`, `text_ru`, `text_en`, `created_at`, `updated_at`) VALUES
(1, 'sliders/March2023/K0E0IS5DLSOB94afh7ov.png', '[]', 'Janubiy Koreyadagi vatandoshlarimiz', 'Жанубий Кореядаги ватандошларимиз', 'Наши соотечественники в Южной Корее', 'Our compatriots in South Korea', '<div>\r\n<div>Janubiy Koreyadagi vatandoshlarimiz bilan muloqot</div>\r\n</div>', '<p>Жанубий Кореядаги ватандошларимиз билан мулоқот</p>', '<p>Диалог с нашими соотечественниками в Южной Корее</p>', '<p>Dialogue with our compatriots in South Korea</p>', '2023-03-17 09:34:30', '2023-03-18 07:17:39'),
(2, NULL, '[{\"download_link\":\"sliders\\/March2023\\/aPTh8Cip6s6VbmEx5Ffm.mp4\",\"original_name\":\"slider_video.mp4\"}]', 'Toshkentga sayohat', 'Тошкентга саёҳат', 'Поездка в Ташкент', 'Trip to Tashkent', '<p>Toshkent bo\'ylab sayohat qiling</p>', '<p>Тошкент бўйлаб саёҳат қилинг</p>', '<p>Путешествие по Ташкенту</p>', '<p>Travel through Tashkent</p>', '2023-03-17 09:35:03', '2023-03-18 11:45:42'),
(3, 'sliders/March2023/PUAUISuLtc7X6aTOxc05.png', '[]', 'Chet eldagi yurtdoshlarimiz', 'Чет елдаги юртдошларимиз', 'Наши соотечественники за рубежом', 'Our countrymen abroad', '<p>Chet eldagi yurtdoshlarimizning kunlik hayoti&nbsp;</p>', '<p>Чет елдаги юртдошларимизнинг кунлик ҳаёти&nbsp;</p>', '<p>Повседневная жизнь наших соотечественников за рубежом</p>', '<p>The daily life of our compatriots abroad</p>', '2023-03-18 05:24:12', '2023-03-18 07:21:10');

-- --------------------------------------------------------

--
-- Структура таблицы `sponsrs`
--

CREATE TABLE `sponsrs` (
  `id` int UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_uz` text COLLATE utf8mb4_unicode_ci,
  `text_oz` text COLLATE utf8mb4_unicode_ci,
  `text_ru` text COLLATE utf8mb4_unicode_ci,
  `text_en` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logoImg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sponsrs`
--

INSERT INTO `sponsrs` (`id`, `img`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `text_uz`, `text_oz`, `text_ru`, `text_en`, `created_at`, `updated_at`, `logoImg`) VALUES
(1, 'sponsrs/March2023/fOscUoACODhCtsBb6Cer.jpeg', '40 ta yirik korxona va banklardagi davlat ulushi “xalqchil IPO” orqali sotiladi', '40 та йирик корхона ва банклардаги давлат улуши \"халқчил ИПО\" орқали сотилади', 'Государственная доля в 40 крупных предприятиях и банках будет продана через публичное IPO', 'The state share in 40 large enterprises and banks is sold through “khalqchil IPO', '<p>Xususiylashgan mulklar samaradorligi ham oshmoqda. Misol uchun, uzoq yillar ishlamagan Andijon tajriba sinov zavodi negizida 18 million dollar investitsiya hisobiga to&lsquo;qimachilik korxonasi tashkil etilib, mingta ish o&lsquo;rni yaratilgan, 40 million dollarlik mahsulot eksport qilingan.</p>', '<p>Хусусийлашган мулклар самарадорлиги ҳам ошмоқда. Мисол учун, узоқ йиллар ишламаган Андижон тажриба синов заводи негизида 18 million dollar инвестиция ҳисобига тўқимачилик корхонаси ташкил етилиб, мингта иш ўрни яратилган, 40 million долларлик маҳсулот експорт қилинган.</p>', '<p>Эффективность приватизированной собственности также повышается. Например, на базе Андижанского опытно-испытательного завода, который не работал много лет, было создано текстильное предприятие с инвестициями в размере 18 миллионов долларов, создана тысяча рабочих мест, экспортирована продукция на сумму 40 миллионов долларов.</p>', '<p>The efficiency of privatized properties is also increasing. For example, on the basis of the Andijan experimental test plant, which has not worked for many years, a textile enterprise was created with an investment of $ 18 million, a thousand jobs were created, and products worth $ 40 million were exported.</p>', '2023-03-05 05:51:01', '2023-04-03 07:08:22', 'sponsrs/March2023/6V1xu4G9CvEolNhTM9AZ.png'),
(3, 'sponsrs/March2023/mpZ3SQilFPfxru3xHgeH.jpg', 'O\'zbekiston yozuvchilar uyishmasi', 'Ўзбекистон ёзувчилар уйишмаси', 'Союз писателей Узбекистана', 'Union of Writers of Uzbekistan', '<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div class=\"news-item__description\">Poytaxtimizdagi Yashnobod tumanidagi \"mumtoz\" mahallasida O\'zbekiston Yozuvchilar uyushmasi tomonidan chop etilgan yangi kitoblar aktsiyasi o\'tkazildi.&nbsp;<br>&nbsp; &nbsp;Tadbirda mahalla xotin-qizlari, yoshlar, \"oqila ayollar\" harakati a\'zolari, ijodkorlar, taniqli san\'atkorlar qatnashdi. Unda kitob mutolaasi va kitobxonlik madaniyati haqida so\'z bordi. &nbsp;Shoira Farog\'at Xudoyqulova Vatanni, ayollarni ulug\'lovchi she\'rlaridan o\'qib berdi.</div>\r\n</div>\r\n</div>\r\n<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div class=\"news-meta\">&nbsp;</div>\r\n</div>\r\n</div>', '<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div class=\"news-item__description\">Пойтахтимиздаги Яшнобод туманидаги \"Мумтоз\" маҳалласида Ўзбекистон Ёзувчилар уюшмаси томонидан чоп этилган янги китоблар акцияси ўтказилди.&nbsp;<br>&nbsp; &nbsp;Тадбирда маҳалла хотин-қизлари, ёшлар, \"Оқила аёллар\" ҳаракати аъзолари, ижодкорлар, таниқли санъаткорлар қатнашди. Унда китоб мутолааси ва китобхонлик маданияти ҳақида сўз борди.&nbsp; Шоира Фароғат Худойқулова Ватанни, аёлларни улуғловчи шеърларидан ўқиб берди.</div>\r\n</div>\r\n</div>\r\n<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div class=\"news-meta\">&nbsp;</div>\r\n</div>\r\n</div>', '<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div class=\"news-item__description\">В микрорайоне \"Классик\" Яшнабадского района столицы прошла акция по продаже новой книги, которая была издана Союзом писателей Узбекистана.&nbsp;<br>&nbsp; &nbsp;В мероприятии приняли участие соседские женщины, молодежь, участницы движения белых женщин, артисты, известные артистки. На нем обсуждалось чтение книги и культура чтения. &nbsp;Поэтесса Фарогат Худойкулова прочитала из своих стихотворений, прославляющих родину, женщин.</div>\r\n</div>\r\n</div>', '<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div class=\"news-item__description\">In the \"Klassik\" neighborhood of the Yashnabad district in the capital, a new book campaign was held, which was published by the Union of writers of Uzbekistan.&nbsp;<br>&nbsp; &nbsp;The event was attended by neighborhood women, young people, members of the white women movement, artists, well-known artists. It discussed the reading of the book and the culture of reading. &nbsp;The poet Farogat Khudoykulova read from his poems glorifying the motherland, women.</div>\r\n</div>\r\n</div>\r\n<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div class=\"news-meta\">&nbsp;</div>\r\n</div>\r\n</div>', '2023-03-07 10:20:23', '2023-04-03 07:06:56', 'sponsrs/March2023/VXt213VxNLaDts13hgbC.png'),
(4, 'sponsrs/March2023/f5siOuSy3z0jGlJcIqqR.jpg', 'shoir, yozuvchi, pedagog, teatr arbobi Hamza Hakimzoda Niyoziy tavallud topgan kun', 'шоир, ёзувчи, педагог, театр арбоби Hamza Ҳакимзода Ниёзий таваллуд топган кун', 'день рождения поэта, писателя, педагога, театрального деятеля Хамзы Хакимзаде Ниязи', 'the day of the birth of the poet, writer, educator, theater figure Hamza Hakimzadeh Niyazi', '<p>Ma&rsquo;lumot uchun, mazkur dastur&nbsp;<strong>O&lsquo;zbekiston Respublikasi Prezidenti Shavkat Mirziyoyev&nbsp;</strong>tomonidan 2022-yil sentabr oyida Samarqand shahrida bo&lsquo;lib o&lsquo;tgan SHHT sammitida ilgari surilgan 2023-yilni&nbsp;<strong>&ldquo;ShHT davlatlarida turizmni rivojlantirish yili&rdquo;&nbsp;</strong>deb e&rsquo;lon qilish to&lsquo;g&lsquo;risidagi tashabbusini amalga oshirish maqsadida ishlab chiqilgan.</p>', '<p>Маълумот учун, мазкур дастур Ўзбекистон Республикаси Президенти Шавкат Мирзиёев томонидан 2022-йил сентабр ойида Самарқанд шаҳрида бўлиб ўтган ШҲТ саммитида илгари сурилган 2023-йилни \"Шҳт давлатларида туризмни ривожлантириш йили\" деб еълон қилиш тўғрисидаги ташаббусини амалга ошириш мақсадида ишлаб чиқилган.</p>', '<p>Для информации, данная программа разработана в целях реализации инициативы Президента Республики Узбекистан Шавката Мирзиеева об объявлении 2023 года &ldquo;Годом развития туризма в государствах ШОС&rdquo;, выдвинутой на саммите ШОС в городе Самарканд в сентябре 2022 года.</p>', '<p>For information, this program was developed in order to implement the initiative of the president of the Republic of Uzbekistan Shavkat Mirziyoyev to declare 2023 as the &ldquo;year of Tourism Development in the SCO states&rdquo;, which was put forward at the SCO summit in Samarkand in September 2022.</p>', '2023-03-07 10:22:59', '2023-04-03 07:04:48', 'sponsrs/March2023/1xfWMErCUHdmYjA5sNWy.png'),
(5, 'sponsrs/March2023/Ox3XXgTIEKzX9TwDKeHB.jpg', 'O‘ZBEKISTON RESPUBLIKASI MADANIYAT VA TURIZM VAZIRLIGI', 'ЎЗБЕКИСТОН РЕСПУБЛИКАСИ МАДАНИЯТ ВА ТУРИЗМ ВАЗИРЛИГИ', 'МИНИСТЕРСТВО КУЛЬТУРЫ И ТУРИЗМА РЕСПУБЛИКИ УЗБЕКИСТАН', 'MINISTRY OF CULTURE AND TOURISM OF THE REPUBLIC OF UZBEKISTAN', '<p>O&lsquo;zbekiston Respublikasi Prezidenti Shavkat Mirziyoyev 16-mart kuni Anqara shahridagi Turkiy davlatlar tashkiloti favqulodda sammiti doirasida Turkman xalqining milliy yetakchisi, Turkmaniston Xalq Maslahati Raisi Gurbanguli Berdimuhamedov bilan uchrashuv o&lsquo;tkazdi.</p>\r\n<p>O&lsquo;tgan yilgi tarixiy ahamiyatga ega oliy darajadagi tashriflar davomida erishilgan kelishuvlarni amalga oshirish masalalari ko&lsquo;rib chiqildi.</p>', '<p>Ўзбекистон Республикаси Президенти Шавкат Мирзиёев 16-март куни Анқара шаҳридаги Туркий давлатлар ташкилоти фавқулодда саммити доирасида Туркман халқининг миллий етакчиси, Туркманистон Халқ Маслаҳати Раиси Гурбангули Бердимуҳамедов билан учрашув ўтказди.</p>\r\n<p>Ўтган йилги тарихий аҳамиятга ега олий даражадаги ташрифлар давомида еришилган келишувларни амалга ошириш масалалари кўриб чиқилди.</p>', '<p>Президент Республики Узбекистан Шавкат Мирзиеев 16 марта в рамках чрезвычайного саммита Организации тюркских государств в Анкаре провел встречу с национальным лидером туркменского народа, председателем Народного совета Туркменистана Гурбангулы Бердымухамедовым.</p>\r\n<p>Были рассмотрены вопросы реализации договоренностей, достигнутых в ходе исторически значимых визитов на высшем уровне в прошлом году.</p>', '<p>President of the Republic of Uzbekistan Shavkat Mirziyoyev held a meeting with the National Leader of the Turkmen people, chairman of the Turkmen people\'s advice Gurbanguli Berdimuhamedov on March 16 as part of the emergency summit of the Organization of Turkic states in Ankara.</p>\r\n<p>Issues of the implementation of agreements reached during the last year\'s high-level visits of historical significance were considered.</p>', '2023-03-07 10:24:48', '2023-04-03 07:03:45', 'sponsrs/March2023/QDzOg9GHK2nb3dJaJuFr.png'),
(6, 'sponsrs/March2023/MAXkPcjlWGqFOARRFBqX.jpg', 'O\'zbekiston Respublikasi Tashqi ishlar vazirligi', 'Ўзбекистон Республикаси Ташқи ишлар вазирлиги', 'Министерство иностранных дел Республики Узбекистан', 'Ministry of foreign affairs of the Republic of Uzbekistan', '<p>O&lsquo;zbekiston Respublikasi Prezidenti Shavkat Mirziyoyev 16-mart kuni Anqara shahridagi Turkiy davlatlar tashkiloti favqulodda sammiti doirasida Turkman xalqining milliy yetakchisi, Turkmaniston Xalq Maslahati Raisi Gurbanguli Berdimuhamedov bilan uchrashuv o&lsquo;tkazdi.</p>\r\n<p>O&lsquo;tgan yilgi tarixiy ahamiyatga ega oliy darajadagi tashriflar davomida erishilgan kelishuvlarni amalga oshirish masalalari ko&lsquo;rib chiqildi.</p>', '<p>Ўзбекистон Республикаси Президенти Шавкат Мирзиёев 16-март куни Анқара шаҳридаги Туркий давлатлар ташкилоти фавқулодда саммити доирасида Туркман халқининг миллий етакчиси, Туркманистон Халқ Маслаҳати Раиси Гурбангули Бердимуҳамедов билан учрашув ўтказди.</p>\r\n<p>Ўтган йилги тарихий аҳамиятга ега олий даражадаги ташрифлар давомида еришилган келишувларни амалга ошириш масалалари кўриб чиқилди.</p>', '<p>Президент Республики Узбекистан Шавкат Мирзиеев 16 марта в рамках чрезвычайного саммита Организации тюркских государств в Анкаре провел встречу с национальным лидером туркменского народа, председателем Народного совета Туркменистана Гурбангулы Бердымухамедовым.</p>\r\n<p>Были рассмотрены вопросы реализации договоренностей, достигнутых в ходе исторически значимых визитов на высшем уровне в прошлом году.</p>', '<p>President of the Republic of Uzbekistan Shavkat Mirziyoyev held a meeting with the National Leader of the Turkmen people, chairman of the Turkmen people\'s advice Gurbanguli Berdimuhamedov on March 16 as part of the emergency summit of the Organization of Turkic states in Ankara.</p>\r\n<p>Issues of the implementation of agreements reached during the last year\'s high-level visits of historical significance were considered.</p>', '2023-03-07 11:53:28', '2023-04-03 07:01:59', 'sponsrs/March2023/t06FiTiskNwBEUzceLVm.png');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-03-04 06:10:14', '2023-03-04 06:10:14');

-- --------------------------------------------------------

--
-- Структура таблицы `trusts`
--

CREATE TABLE `trusts` (
  `id` int UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_oz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `trusts`
--

INSERT INTO `trusts` (`id`, `img`, `name_uz`, `name_oz`, `name_ru`, `name_en`, `position_uz`, `position_oz`, `position_ru`, `position_en`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'trusts/March2023/ihkj4zYFo384wdHmhkIc.png', 'Sherali Jo‘raev', 'Жураев Шерали', 'Жураев Шерали', 'Sherali Jo‘raev', 'Vasiylik kengashi raisi', 'Васийлик кенгаши раиси', 'Председатель попечительского совета', 'Chairman of the Popechitelskogo Council', '+998(55) 502-22-99', 'sattarov@vatandoshlarfondi.uz', '2023-03-15 07:40:22', '2023-04-03 07:27:39'),
(2, 'trusts/March2023/Vg4YMgSNupRBN5xMB7cE.jpg', 'Xurshid Do\'stmuhammad', 'Дустмухаммад Хуршид', 'Дустмухаммад Хуршид', 'Xurshid Do\'stmuhammad', 'Vasiylik kengashi a\'zosi', 'Vasiylik kengashi a\'zosi', 'Председатель Комитета по межнациональным', 'Member of the Board of Trustees', '+998(55) 502-22-99', 'sattarov@vatandoshlarfondi.uz', '2023-03-23 07:17:22', '2023-04-03 07:27:12'),
(3, 'trusts/March2023/OgTJzwX9tqURRcGZKcUv.jpg', 'Rustam Qurbanov', 'Курбанов Рустам', 'Курбанов Рустам', 'Rustam Qurbanov', 'Vasiylik kengashi a\'zosi', 'Vasiylik kengashi a\'zosi', 'Председатель Комитета по межнациональным', 'Member of the Board of Trustees', '+998(55) 502-22-99', 'sattarov@vatandoshlarfondi.uz', '2023-03-23 07:21:37', '2023-04-03 07:26:58'),
(4, 'trusts/March2023/8doj5h2qI00LyTZM4JZU.jpg', 'Naim Karimov', 'Наим Каримов', 'Наим Каримов', 'Naim Karimov', 'Каримов Наим', 'Vasiylik kengashi a\'zosi', 'Ученый-литературовед, заслуженный деятель', 'Member of the Board of Trustees', '+998(55) 502-22-99', 'sattarov@vatandoshlarfondi.uz', '2023-03-23 07:24:03', '2023-04-03 07:26:42'),
(5, 'trusts/March2023/ztlFg0585CROcFgJSVvY.jpg', 'Erkin Komilov', 'Комилов Эркин', 'Комилов Эркин', 'Erkin Komilov', 'Vasiylik kengashi a\'zosi', 'Vasiylik kengashi a\'zosi', 'Народный артист Узбекистана', 'Member of the Board of Trustees', 'Vasiylik kengashi a\'zosi', 'sattarov@vatandoshlarfondi.uz', '2023-03-23 07:27:27', '2023-04-03 07:26:13'),
(6, 'trusts/March2023/ydooZcp23qM5mJWLLN98.jpg', 'Ozodbek Nazarbekov', 'Назарбеков Озодбек', 'Назарбеков Озодбек', 'Ozodbek Nazarbekov', 'Vasiylik kengashi a\'zosi', 'Народный артист Узбекистана, министр культуры', NULL, 'Member of the Board of Trustees', '+998(55) 502-22-99', 'sattarov@vatandoshlarfondi.uz', '2023-03-23 07:30:23', '2023-04-03 07:25:56'),
(7, 'trusts/March2023/A9GEFDCSnysj0HOpcYx0.jpg', 'Zanaxov Timur Farxidovich', 'Занахов Timur Фархидович', 'Занахов Timur Фархидович', 'Zanaxov Timur Farxidovich', 'Yurist', 'Юрист', 'Юрист', 'Jurist', '+998(55) 502-22-99', 'sattarov@vatandoshlarfondi.uz', '2023-03-31 10:41:37', '2023-04-03 07:25:30'),
(8, 'trusts/March2023/42ITUJyFDskeObTrBfIb.jpg', 'Xatamov Akbarjon O‘tkir o‘g‘li', 'Хатамов Акбаржон Ўткир ўғли', 'Хатамов Акбаржон Ўткир ўғли', 'Xatamov Akbarjon O‘tkir o‘g‘li', 'quruvchi', 'қурувчи', 'строитель', 'the builder', '+998(55) 502-22-99', 'sattarov@vatandoshlarfondi.uz', '2023-03-31 10:43:29', '2023-04-03 07:24:49'),
(9, 'trusts/March2023/vd7yNbcq5KDJtA3QcDgN.jpg', 'Shukurov Ikromjon Karimkulovich', 'Шукуров Икромжон Каримкулович', 'Шукуров Икромжон Каримкулович', 'Shukurov Ikromjon Karimkulovich', 'Advokat', 'Адвокат', 'Адвокат', 'Lawyer', '+46546546548', NULL, '2023-03-31 10:44:28', '2023-04-03 07:23:55'),
(10, 'trusts/March2023/308oNJ6JHS0kW66YDOPS.jpg', 'Kadirov Elbek Rustamovich', 'Кадиров Елбек Рустамович', 'Кадиров Елбек Рустамович', 'Kadirov Elbek Rustamovich', 'Buxgalteriya', 'Бухгалтерия', 'Бухгалтерия', 'Accounting', NULL, NULL, '2023-03-31 10:45:04', '2023-04-03 07:23:10'),
(11, 'trusts/March2023/parmPd4YCTdfCLrvNddK.jpg', 'Kadirov Elbek Rustamovich', 'Кадиров Елбек Рустамович', 'Кадиров Елбек Рустамович', 'Kadirov Elbek Rustamovich', 'sotuvchi', 'сотувчи', 'продавец', 'seller', '+895', 'sattarov@vatandoshlarfondi.uz', '2023-03-31 10:45:04', '2023-04-03 07:22:35'),
(12, 'trusts/March2023/dtCGsBmLrOJ6Bi8mTvVc.jpg', 'Kadirov Elbek Rustamovich', 'Кадиров Елбек Рустамович', 'Кадиров Елбек Рустамович', 'Kadirov Elbek Rustamovich', 'qassob', 'қассоб', 'мясник', 'Butcher', '+89557', 'sattarov@vatandoshlarfondi.uz', '2023-03-31 10:45:05', '2023-04-03 07:21:52'),
(13, 'trusts/March2023/3FUNCaZRFh8Oqr0xg1bi.jpg', 'Kadirov Elbek Rustamovich', 'Кадиров Елбек Рустамович', 'Кадиров Елбек Рустамович', 'Kadirov Elbek Rustamovich', 'Sartarosh', 'Сартарош', 'Парикмахерская', 'Barber', '+895578', 'sattarov@vatandoshlarfondi.uz', '2023-03-31 10:45:05', '2023-04-03 07:20:54'),
(14, 'trusts/March2023/DdIvuhbnfYGlX3tpuZcn.jpg', 'Xamidov Nuriddin Shukurullayevich', 'Хамидов Нуриддин Шукуруллаевич', 'Хамидов Нуриддин Шукуруллаевич', 'Xamidov Nuriddin Shukurullayevich', 'Shifokor', 'Шифокор', 'Доктор', 'Doctor', NULL, NULL, '2023-03-31 10:46:51', '2023-04-03 07:19:52'),
(15, 'trusts/March2023/0f80szhj2CGqwB0Wfukn.jpg', 'Nadjimitdinov Elyor Rustamovich', 'Наджимитдинов Елёр Рустамович', 'Наджимитдинов Елёр Рустамович', 'Nadjimitdinov Elyor Rustamovich', 'Tuproqshunoslik', 'Тупроқшунослик', 'Почвоведение', 'Soil science', NULL, NULL, '2023-03-31 10:47:47', '2023-04-03 07:19:14'),
(16, 'trusts/March2023/PDjGfpibcfZvgwpbUWRp.jpg', 'Akramov Sherzod Salimovich', 'Акрамов Шерзод Салимович', 'Акрамов Шерзод Салимович', 'Akramov Sherzod Salimovich', 'Transport muhandisligi', 'Transport муҳандислиги', 'Транспортное машиностроение', 'Transport engineering', NULL, NULL, '2023-03-31 10:48:41', '2023-04-03 07:18:27'),
(17, 'trusts/March2023/jwqu3EFJaNbZUSOlhMGF.jpg', 'Nosirov Shoodil Nosirovich', 'Насыров Шудиль Насырович', 'Насыров Шудиль Насырович', 'Nosirov Shoodil Nosirovich', 'Xalqaro huquq', 'Халқаро ҳуқуқ', 'Международное право', 'International law', NULL, NULL, '2023-03-31 10:49:24', '2023-04-03 07:17:40'),
(18, 'trusts/March2023/P0D2hLdNM5UPSM89166e.jpg', 'Olimov Kaxramonjon Anvarovich', 'Алимов Кахрамонжон Анварович', 'Алимов Кахрамонжон Анварович', 'Olimov Kaxramonjon Anvarovich', 'Jurnalistika', 'Журналистика', 'Журналистика', 'Journalism', NULL, NULL, '2023-03-31 10:50:03', '2023-04-03 07:16:57'),
(19, 'trusts/March2023/OSEkdhzjHxXon8Ct1TZU.jpg', 'Yakubov Tulkin Abduvaxidovich', 'Якубов Тулкин Абдувахидович', 'Якубов Тулкин Абдувахидович', 'Yakubov Tulkin Abduvahidovich', 'Jurnalistika', 'Журналистика', 'Журналистика', 'Journalism', '+653698698', NULL, '2023-03-31 10:50:53', '2023-04-03 07:16:16'),
(20, 'trusts/March2023/wXSvD6mEyUK3WCR31iFG.jpg', 'Nurutdinova Madina Djalalitdinovna', 'Нурутдинова Мадина Жалолитдиновна', 'Нурутдинова Мадина Джалалитдиновна', 'Nurutdinova Madina Djalalitdinovna', 'Tuproqshunoslik', 'Тупроқшунослик', 'Почвоведение', 'Soil science', '+989785465485', NULL, '2023-03-31 11:01:02', '2023-04-03 07:15:20');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'islom@admin.com', 'users/March2023/exAKQxhXLan49mP09daF.png', NULL, '$2y$10$ulfK/mX4cnRYoKYaZSCjMuWZG6/R4euDYGoI2WF/WyORmX0UpnXgi', 'SFDYQpqrXDZ9d0QNnIGFG2CPjIJEWN7MOnndJTl8MALSOtjXFHg58LiNnSSb', '{\"locale\":\"en\"}', '2023-03-04 06:10:13', '2023-03-24 16:49:48'),
(2, 3, 'Admin', 'vatanparvar@admin.com', 'users/March2023/rATF2HWx8vIpam6DuEhR.png', NULL, '$2y$10$u1Fs/7I1liDsq0QuLt8r/.lsVFn3z9aSTtBXX38slA0pkmhItYp1.', 'zdtjlae7mrMcoKKIsJO8U0PVNJ90YTGvB0RbC03rUG6xQrtJRehhgT13prG5', '{\"locale\":\"en\"}', '2023-03-05 08:24:26', '2023-03-10 06:42:08');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `assosiations`
--
ALTER TABLE `assosiations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `assosiation_categories`
--
ALTER TABLE `assosiation_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `categoryshows`
--
ALTER TABLE `categoryshows`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `columns`
--
ALTER TABLE `columns`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `column_menus`
--
ALTER TABLE `column_menus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `directions`
--
ALTER TABLE `directions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `infocategorysshows`
--
ALTER TABLE `infocategorysshows`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `infographics`
--
ALTER TABLE `infographics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `infopublicevents`
--
ALTER TABLE `infopublicevents`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `interactive_services`
--
ALTER TABLE `interactive_services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `managements`
--
ALTER TABLE `managements`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mediateka_images`
--
ALTER TABLE `mediateka_images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mediateka_image_menus`
--
ALTER TABLE `mediateka_image_menus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mediateka_videos`
--
ALTER TABLE `mediateka_videos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mediateka_video_menus`
--
ALTER TABLE `mediateka_video_menus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `publicevents`
--
ALTER TABLE `publicevents`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `sendcontacts`
--
ALTER TABLE `sendcontacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sendprojects`
--
ALTER TABLE `sendprojects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sponsrs`
--
ALTER TABLE `sponsrs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `trusts`
--
ALTER TABLE `trusts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `assosiations`
--
ALTER TABLE `assosiations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `assosiation_categories`
--
ALTER TABLE `assosiation_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `categoryshows`
--
ALTER TABLE `categoryshows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `columns`
--
ALTER TABLE `columns`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `column_menus`
--
ALTER TABLE `column_menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `directions`
--
ALTER TABLE `directions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `infocategorysshows`
--
ALTER TABLE `infocategorysshows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `infographics`
--
ALTER TABLE `infographics`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `infopublicevents`
--
ALTER TABLE `infopublicevents`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `interactive_services`
--
ALTER TABLE `interactive_services`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `managements`
--
ALTER TABLE `managements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `mediateka_images`
--
ALTER TABLE `mediateka_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `mediateka_image_menus`
--
ALTER TABLE `mediateka_image_menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `mediateka_videos`
--
ALTER TABLE `mediateka_videos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `mediateka_video_menus`
--
ALTER TABLE `mediateka_video_menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `publicevents`
--
ALTER TABLE `publicevents`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `relationships`
--
ALTER TABLE `relationships`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `sendcontacts`
--
ALTER TABLE `sendcontacts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `sendprojects`
--
ALTER TABLE `sendprojects`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `sponsrs`
--
ALTER TABLE `sponsrs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `trusts`
--
ALTER TABLE `trusts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
