-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Мар 13 2023 г., 11:54
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
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Структура таблицы `columns`
--

CREATE TABLE `columns` (
  `id` int UNSIGNED NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashTag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_uz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text_oz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `columns`
--

INSERT INTO `columns` (`id`, `img`, `hashTag`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `text_uz`, `text_oz`, `text_ru`, `text_en`, `date`, `created_at`, `updated_at`) VALUES
(6, 'columns/March2023/wBGIeMCDVWFTUfEekp34.jpg', '#oila #tayanch', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\'jamovlar oilasi', '<div>\r\n<div>Condimentum magna faucibus torquent et aliquam molestie neque augue conubia cras id dictum per hac vel convallis sem blandit eget elementum nam pretium semper orci leo imperdiet donec lobortis nullam suspendisse dictumst platea non habitant nunc porttitor mi nostra libero nulla viverra eu a mus fusce duis parturient aenean mollis malesuada scelerisque habitasse tortor</div>\r\n</div>', '<div>\r\n<div>Condimentum magna faucibus torquent et aliquam molestie neque augue conubia cras id dictum per hac vel convallis sem blandit eget elementum nam pretium semper orci leo imperdiet donec lobortis nullam suspendisse dictumst platea non habitant nunc porttitor mi nostra libero nulla viverra eu a mus fusce duis parturient aenean mollis malesuada scelerisque habitasse tortor</div>\r\n</div>', '<div>\r\n<div>Condimentum magna faucibus torquent et aliquam molestie neque augue conubia cras id dictum per hac vel convallis sem blandit eget elementum nam pretium semper orci leo imperdiet donec lobortis nullam suspendisse dictumst platea non habitant nunc porttitor mi nostra libero nulla viverra eu a mus fusce duis parturient aenean mollis malesuada scelerisque habitasse tortor</div>\r\n</div>', '<div>\r\n<div>Condimentum magna faucibus torquent et aliquam molestie neque augue conubia cras id dictum per hac vel convallis sem blandit eget elementum nam pretium semper orci leo imperdiet donec lobortis nullam suspendisse dictumst platea non habitant nunc porttitor mi nostra libero nulla viverra eu a mus fusce duis parturient aenean mollis malesuada scelerisque habitasse tortor</div>\r\n</div>', '2023-03-09', '2023-03-06 08:42:26', '2023-03-06 10:52:29'),
(7, 'columns/March2023/m4h0jrXKuHPf8yLDSqre.png', '#\"Vatandoshlar\" jamoat fondi', 'Chexiyaning Praga shahridagi Chexiya texnika universiteti, elektrotexnika fakulteti, iqtisodiyot, menejment va gumanitar fanlar kafedrasi assistenti sifatida faoliyat yuritayotgan vatandoshimiz Sherzod Tashpoʻlatov bilan tanishing.', 'Chexiyaning Praga shahridagi Chexiya texnika universiteti, elektrotexnika fakulteti, iqtisodiyot, menejment va gumanitar fanlar kafedrasi assistenti sifatida faoliyat yuritayotgan vatandoshimiz Sherzod Tashpoʻlatov bilan tanishing.', 'Chexiyaning Praga shahridagi Chexiya texnika universiteti, elektrotexnika fakulteti, iqtisodiyot, menejment va gumanitar fanlar kafedrasi assistenti sifatida faoliyat yuritayotgan vatandoshimiz Sherzod Tashpoʻlatov bilan tanishing.', 'Chexiyaning Praga shahridagi Chexiya texnika universiteti, elektrotexnika fakulteti, iqtisodiyot, menejment va gumanitar fanlar kafedrasi assistenti sifatida faoliyat yuritayotgan vatandoshimiz Sherzod Tashpoʻlatov bilan tanishing.', '<ul>\r\n<li><em>1981-yil Samarqand shahrida tavallud topgan</em><em>man</em><em>.</em><em>&nbsp;Bolaligim tarixiy Samarqandning koʻchalarida oʻtgan. Yoshlik paytlarimni eslasam, juda ham shoʻx va bilim olishga ishtiyoqmand boʻlganligim yodga tushadi. Har narsaga qiziqadigan, kattalarga tinimsiz savol berishni kanda qilmaydigan bolakay</em><em>&nbsp;</em><em>edim.</em></li>\r\n</ul>', '<ul>\r\n<li><em>1981-yil Samarqand shahrida tavallud topgan</em><em>man</em><em>.</em><em>&nbsp;Bolaligim tarixiy Samarqandning koʻchalarida oʻtgan. Yoshlik paytlarimni eslasam, juda ham shoʻx va bilim olishga ishtiyoqmand boʻlganligim yodga tushadi. Har narsaga qiziqadigan, kattalarga tinimsiz savol berishni kanda qilmaydigan bolakay</em><em>&nbsp;</em><em>edim.</em></li>\r\n</ul>', '<ul>\r\n<li><em>1981-yil Samarqand shahrida tavallud topgan</em><em>man</em><em>.</em><em>&nbsp;Bolaligim tarixiy Samarqandning koʻchalarida oʻtgan. Yoshlik paytlarimni eslasam, juda ham shoʻx va bilim olishga ishtiyoqmand boʻlganligim yodga tushadi. Har narsaga qiziqadigan, kattalarga tinimsiz savol berishni kanda qilmaydigan bolakay</em><em>&nbsp;</em><em>edim.</em></li>\r\n</ul>', '<ul>\r\n<li><em>1981-yil Samarqand shahrida tavallud topgan</em><em>man</em><em>.</em><em>&nbsp;Bolaligim tarixiy Samarqandning koʻchalarida oʻtgan. Yoshlik paytlarimni eslasam, juda ham shoʻx va bilim olishga ishtiyoqmand boʻlganligim yodga tushadi. Har narsaga qiziqadigan, kattalarga tinimsiz savol berishni kanda qilmaydigan bolakay</em><em>&nbsp;</em><em>edim.</em></li>\r\n</ul>', '2023-03-09', '2023-03-06 09:03:21', '2023-03-06 09:03:21'),
(8, 'columns/March2023/avHhuae557iYZf5UmTKo.jpg', '#Ekspertlar Kengashi', '“Vatandoshlar” jamoat fondi huzuridagi tibbiyot sohasidagi Ekspertlar Kengashi bilan navbatdagi onlayn uchrashuv bo‘lib o‘tdi.', '“Vatandoshlar” jamoat fondi huzuridagi tibbiyot sohasidagi Ekspertlar Kengashi bilan navbatdagi onlayn uchrashuv bo‘lib o‘tdi.', '“Vatandoshlar” jamoat fondi huzuridagi tibbiyot sohasidagi Ekspertlar Kengashi bilan navbatdagi onlayn uchrashuv bo‘lib o‘tdi.', '“Vatandoshlar” jamoat fondi huzuridagi tibbiyot sohasidagi Ekspertlar Kengashi bilan navbatdagi onlayn uchrashuv bo‘lib o‘tdi.', '<p>Kuni kecha &ldquo;Vatandoshlar&rdquo; jamoat fondi huzuridagi tibbiyot sohasidagi Ekspertlar Kengashi bilan navbatdagi onlayn uchrashuv bo&lsquo;lib o&lsquo;tdi.</p>\r\n<p>Unda sog&lsquo;liqni saqlash sohasidagi dolzarb mavzular, xususan, turli xil yuqumli kasalliklar, viruslarga qarshi kurashish, infeksiyalarni erta aniqlash uchun infratuzilmani yaratish zarurligi to\'g\'risida muhokamalar olib borildi.</p>', '<p>Kuni kecha &ldquo;Vatandoshlar&rdquo; jamoat fondi huzuridagi tibbiyot sohasidagi Ekspertlar Kengashi bilan navbatdagi onlayn uchrashuv bo&lsquo;lib o&lsquo;tdi.</p>\r\n<p>Unda sog&lsquo;liqni saqlash sohasidagi dolzarb mavzular, xususan, turli xil yuqumli kasalliklar, viruslarga qarshi kurashish, infeksiyalarni erta aniqlash uchun infratuzilmani yaratish zarurligi to\'g\'risida muhokamalar olib borildi.</p>', '<p>Kuni kecha &ldquo;Vatandoshlar&rdquo; jamoat fondi huzuridagi tibbiyot sohasidagi Ekspertlar Kengashi bilan navbatdagi onlayn uchrashuv bo&lsquo;lib o&lsquo;tdi.</p>\r\n<p>Unda sog&lsquo;liqni saqlash sohasidagi dolzarb mavzular, xususan, turli xil yuqumli kasalliklar, viruslarga qarshi kurashish, infeksiyalarni erta aniqlash uchun infratuzilmani yaratish zarurligi to\'g\'risida muhokamalar olib borildi.</p>', '<p>Kuni kecha &ldquo;Vatandoshlar&rdquo; jamoat fondi huzuridagi tibbiyot sohasidagi Ekspertlar Kengashi bilan navbatdagi onlayn uchrashuv bo&lsquo;lib o&lsquo;tdi.</p>\r\n<p>Unda sog&lsquo;liqni saqlash sohasidagi dolzarb mavzular, xususan, turli xil yuqumli kasalliklar, viruslarga qarshi kurashish, infeksiyalarni erta aniqlash uchun infratuzilmani yaratish zarurligi to\'g\'risida muhokamalar olib borildi.</p>', '2023-03-10', '2023-03-06 09:05:15', '2023-03-06 09:05:15'),
(9, 'columns/March2023/g0K8H1igsZ8IjsPZG2eL.jpg', '#AQSH #vatandosh_olimlar', 'Ruknimizning ilk qahramoni – Аmerika Qoʼshma Shtatlarida faoliyat olib borayotgan vatandoshimiz, islomshunoslik fanlari doktori - Rahimjon Abdugʼofurov', 'Ruknimizning ilk qahramoni – Аmerika Qoʼshma Shtatlarida faoliyat olib borayotgan vatandoshimiz, islomshunoslik fanlari doktori - Rahimjon Abdugʼofurov', 'Ruknimizning ilk qahramoni – Аmerika Qoʼshma Shtatlarida faoliyat olib borayotgan vatandoshimiz, islomshunoslik fanlari doktori - Rahimjon Abdugʼofurov', 'Ruknimizning ilk qahramoni – Аmerika Qoʼshma Shtatlarida faoliyat olib borayotgan vatandoshimiz, islomshunoslik fanlari doktori - Rahimjon Abdugʼofurov', '<p>Bundan tashqari u Buyuk Britaniyaning Sasseks universiteti Xalqaro taʼlim markazi ilmiy xodimi hamdir.</p>\r\n<p>Vatandosh olimimiz oʼz ilmiy izlanishlari negizida yurtimizda yashab ijod qilgan buyuk alloma va mutafakkirlar Аlisher Navoiy, Аbu Mansur al- Moturidiy, Аbu al-Muʼiyn an-Nasafiylarning ilmiy va ibratli faoliyatini boshqa xalqlar tillarida keng targʼib qilishni maqsad qilgan.</p>', '<p>Bundan tashqari u Buyuk Britaniyaning Sasseks universiteti Xalqaro taʼlim markazi ilmiy xodimi hamdir.</p>\r\n<p>Vatandosh olimimiz oʼz ilmiy izlanishlari negizida yurtimizda yashab ijod qilgan buyuk alloma va mutafakkirlar Аlisher Navoiy, Аbu Mansur al- Moturidiy, Аbu al-Muʼiyn an-Nasafiylarning ilmiy va ibratli faoliyatini boshqa xalqlar tillarida keng targʼib qilishni maqsad qilgan.</p>', '<p>Bundan tashqari u Buyuk Britaniyaning Sasseks universiteti Xalqaro taʼlim markazi ilmiy xodimi hamdir.</p>\r\n<p>Vatandosh olimimiz oʼz ilmiy izlanishlari negizida yurtimizda yashab ijod qilgan buyuk alloma va mutafakkirlar Аlisher Navoiy, Аbu Mansur al- Moturidiy, Аbu al-Muʼiyn an-Nasafiylarning ilmiy va ibratli faoliyatini boshqa xalqlar tillarida keng targʼib qilishni maqsad qilgan.</p>', '<p>Bundan tashqari u Buyuk Britaniyaning Sasseks universiteti Xalqaro taʼlim markazi ilmiy xodimi hamdir.</p>\r\n<p>Vatandosh olimimiz oʼz ilmiy izlanishlari negizida yurtimizda yashab ijod qilgan buyuk alloma va mutafakkirlar Аlisher Navoiy, Аbu Mansur al- Moturidiy, Аbu al-Muʼiyn an-Nasafiylarning ilmiy va ibratli faoliyatini boshqa xalqlar tillarida keng targʼib qilishni maqsad qilgan.</p>', '2023-03-15', '2023-03-06 09:07:37', '2023-03-06 09:07:37'),
(10, 'columns/March2023/wEAhPkFc80vZVJNX7Rau.png', '#vatandosh_olimlar #Germany #Hamidov', 'Germaniyaning Berlin shahrida joylashgan Gumboldt universiteti dotsenti Ahmad Hamidov', '\"Vatandoshlar\" jamoat fondi yangi - \"Vatandosh olimlar\" ruknini e’lon qiladi!', 'Ахмад Гамидов, доцент, Университет имени Гумбольдта, Берлин, Германия', 'Ahmad Hamidov, Associate Professor, Humboldt University, Berlin, Germany', '<p>Agar siz ham bizning loyihalarimizda ishtirok etishni istasangiz&nbsp;<a href=\"https://www.vatandoshlarfondi.uz/application\">shu yerga bosing</a></p>', '<p>Agar siz ham bizning loyihalarimizda ishtirok etishni istasangiz&nbsp;<a href=\"https://www.vatandoshlarfondi.uz/application\">shu yerga bosing</a></p>', '<p>Если вы тоже хотите участвовать в наших проектах&nbsp;<a href=\"https://www.vatandoshlarfondi.uz/application\">нажмите сюда</a></p>', '<p>If you also want to participate in our projects&nbsp;<a href=\"https://www.vatandoshlarfondi.uz/application\">click here</a></p>', '2023-03-09', '2023-03-06 09:09:44', '2023-03-06 14:28:20'),
(12, 'columns/March2023/mNfCLRPa3PIeTb0RIQpX.jpg', '#AQSH #vatandosh_olimlar', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Рустамджон Мурадов, научный сотрудник Университета Флориды, США', 'Rustamjon Muradov, Research Fellow, University of Florida, USA', '<p>AQSHning Florida universitetida &ldquo;Ikki o&lsquo;lchovli umr davomiyligi funksiyasini statistik baholash va uning xossalarini tadqiq qilish&rdquo; mavzusida ilmiy-tadqiqot ishlarini olib borayotgan yosh olim Rustamjon Muradov</p>', '<p>AQSHning Florida universitetida &ldquo;Ikki o&lsquo;lchovli umr davomiyligi funksiyasini statistik baholash va uning xossalarini tadqiq qilish&rdquo; mavzusida ilmiy-tadqiqot ishlarini olib borayotgan yosh olim Rustamjon Muradov</p>', '<p>Рустамжон Мурадов, молодой ученый Университета Флориды, США, проводит исследования на тему &laquo;Статистическая оценка двумерной функции продолжительности жизни и ее свойств&raquo;.</p>', '<p>Rustamjon Muradov, a young scientist at the University of Florida, USA, is conducting research on the topic \"Statistical evaluation of a two-dimensional lifespan function and its properties.</p>', '2023-03-09', '2023-03-06 14:22:38', '2023-03-06 14:22:38');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int UNSIGNED NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `phone`, `email`, `telegram`, `instagram`, `twitter`, `facebook`, `created_at`, `updated_at`) VALUES
(1, '+998(55)502-22-99', 'info@vatandoshlarfondi.uz', 'Telegram link', 'Instagram  link', 'link', 'link', '2023-03-05 05:40:01', '2023-03-05 05:40:01');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int UNSIGNED NOT NULL,
  `country_name_uz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_name_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_name_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_flag_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 3),
(58, 7, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 4),
(59, 7, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 5),
(60, 7, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 6),
(61, 7, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 7),
(62, 7, 'text_uz', 'rich_text_box', 'Text lotin', 0, 1, 1, 1, 1, 1, '{}', 8),
(63, 7, 'text_oz', 'rich_text_box', 'Text krill', 0, 0, 1, 1, 1, 1, '{}', 9),
(64, 7, 'text_ru', 'rich_text_box', 'Text Ru', 0, 0, 1, 1, 1, 1, '{}', 10),
(65, 7, 'text_en', 'rich_text_box', 'Text En', 0, 0, 1, 1, 1, 1, '{}', 11),
(66, 7, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 2),
(67, 7, 'view', 'number', 'View', 0, 1, 1, 1, 1, 1, '{}', 12),
(68, 7, 'imgs', 'multiple_images', 'Imgs', 0, 0, 1, 1, 1, 1, '{}', 13),
(69, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 14),
(70, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
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
(96, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(97, 11, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 3),
(98, 11, 'hashTag', 'text', 'HashTag', 0, 1, 1, 1, 1, 1, '{}', 4),
(99, 11, 'title_uz', 'text', 'Title lotin', 0, 1, 1, 1, 1, 1, '{}', 5),
(100, 11, 'title_oz', 'text', 'Title krill', 0, 0, 1, 1, 1, 1, '{}', 6),
(101, 11, 'title_ru', 'text', 'Title Ru', 0, 0, 1, 1, 1, 1, '{}', 7),
(102, 11, 'title_en', 'text', 'Title En', 0, 0, 1, 1, 1, 1, '{}', 8),
(103, 11, 'text_uz', 'rich_text_box', 'Text lotin', 0, 1, 1, 1, 1, 1, '{}', 9),
(104, 11, 'text_oz', 'rich_text_box', 'Text krill', 0, 0, 1, 1, 1, 1, '{}', 10),
(105, 11, 'text_ru', 'rich_text_box', 'Text Ru', 0, 0, 1, 1, 1, 1, '{}', 11),
(106, 11, 'text_en', 'rich_text_box', 'Text En', 0, 0, 1, 1, 1, 1, '{}', 12),
(107, 11, 'date', 'timestamp', 'Date', 0, 1, 1, 1, 1, 1, '{}', 2),
(108, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 13),
(109, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(110, 9, 'logoImg', 'image', 'Logo Img', 0, 1, 1, 1, 1, 1, '{}', 3),
(111, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 12, 'country_name_uz', 'text', 'Country Name Uz', 0, 1, 1, 1, 1, 1, '{}', 2),
(113, 12, 'country_name_ru', 'text', 'Country Name Ru', 0, 1, 1, 1, 1, 1, '{}', 3),
(114, 12, 'country_name_en', 'text', 'Country Name En', 0, 1, 1, 1, 1, 1, '{}', 4),
(115, 12, 'country_flag_code', 'text', 'Country Flag Code', 0, 1, 1, 1, 1, 1, '{}', 5),
(116, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(117, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(118, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(119, 13, 'country_flag_code', 'text', 'Country Flag Code', 0, 1, 1, 1, 1, 1, '{}', 3),
(121, 13, 'photo', 'image', 'Photo', 0, 1, 1, 1, 1, 1, '{}', 8),
(122, 13, 'date_tame', 'date', 'Date Tame', 0, 1, 1, 1, 1, 1, '{}', 9),
(123, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(124, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(125, 13, 'relationship_belongsto_country_relationship', 'relationship', 'countries', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Country\",\"table\":\"countries\",\"type\":\"belongsTo\",\"column\":\"country_flag_code\",\"key\":\"country_flag_code\",\"label\":\"country_name_uz\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(126, 13, 'title_uz', 'text', 'Title Uz', 0, 1, 1, 1, 1, 1, '{}', 5),
(127, 13, 'title_ru', 'text', 'Title Ru', 0, 1, 1, 1, 1, 1, '{}', 6),
(128, 13, 'title_en', 'text', 'Title En', 0, 1, 1, 1, 1, 1, '{}', 7),
(129, 13, 'country_flag', 'image', 'Country Flag', 0, 1, 1, 1, 1, 1, '{}', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(7, 'news', 'news', 'News', 'Yangiliklar', 'voyager-world', 'App\\Models\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-04 11:46:55', '2023-03-13 06:23:41'),
(8, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-phone', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-05 05:39:11', '2023-03-05 05:39:11'),
(9, 'sponsrs', 'sponsrs', 'Sponsr', 'Bizning hamkorlar', 'voyager-group', 'App\\Models\\Sponsr', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-05 05:48:38', '2023-03-06 09:08:22'),
(11, 'columns', 'columns', 'Column', 'Bizning ruknlar', 'voyager-pen', 'App\\Models\\Column', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-05 06:03:08', '2023-03-06 09:10:38'),
(12, 'countries', 'countries', 'Country', 'Countries', NULL, 'App\\Models\\Country', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-09 16:32:11', '2023-03-09 16:32:11'),
(13, 'relationships', 'relationships', 'Relationship', 'Relationships', NULL, 'App\\Models\\Relationship', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-09 16:34:09', '2023-03-10 06:40:42');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-03-04 06:10:13', '2023-03-04 06:10:13', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2023-03-04 06:10:13', '2023-03-04 06:10:13', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-03-04 06:10:13', '2023-03-04 06:10:13', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-03-04 06:10:13', '2023-03-04 06:10:13', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2023-03-04 06:10:13', '2023-03-04 06:10:13', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2023-03-04 06:10:13', '2023-03-04 06:10:13', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2023-03-04 06:10:13', '2023-03-04 06:10:13', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2023-03-04 06:10:13', '2023-03-04 06:10:13', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2023-03-04 06:10:13', '2023-03-04 06:10:13', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2023-03-04 06:10:13', '2023-03-04 06:10:13', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2023-03-04 06:10:13', '2023-03-04 06:10:13', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2023-03-04 06:10:14', '2023-03-04 06:10:14', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2023-03-04 06:10:14', '2023-03-04 06:10:14', 'voyager.pages.index', NULL),
(14, 1, 'Yangiliklar', '', '_self', 'voyager-world', NULL, NULL, 15, '2023-03-04 11:46:55', '2023-03-04 11:46:55', 'voyager.news.index', NULL),
(15, 1, 'Contacts', '', '_self', 'voyager-phone', NULL, NULL, 16, '2023-03-05 05:39:11', '2023-03-05 05:39:11', 'voyager.contacts.index', NULL),
(16, 1, 'Bizning hamkorlar', '', '_self', 'voyager-group', NULL, NULL, 17, '2023-03-05 05:48:38', '2023-03-05 05:48:38', 'voyager.sponsrs.index', NULL),
(18, 1, 'Bizning ruknlar', '', '_self', 'voyager-pen', NULL, NULL, 19, '2023-03-05 06:03:08', '2023-03-05 06:03:08', 'voyager.columns.index', NULL),
(19, 1, 'Countries', '', '_self', 'voyager-pen', '#000000', NULL, 20, '2023-03-09 16:32:11', '2023-03-10 06:37:27', 'voyager.countries.index', 'null'),
(20, 1, 'Relationships', '', '_self', 'voyager-pen', '#000000', NULL, 21, '2023-03-09 16:34:09', '2023-03-10 06:37:41', 'voyager.relationships.index', 'null');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_uz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text_oz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `view` int DEFAULT NULL,
  `imgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `img`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `text_uz`, `text_oz`, `text_ru`, `text_en`, `date`, `view`, `imgs`, `created_at`, `updated_at`) VALUES
(3, 'news/March2023/bjnWwSrb1XA0HQb0CWg1.jpg', 'Italiyaning Sapiyensa universiteti magistranti yosh vatandoshimiz Ibrohim Jo‘raboyev bilan suhbat', 'Italiyaning Sapiyensa universiteti magistranti yosh vatandoshimiz Ibrohim Jo‘raboyev bilan suhbat', 'Italiyaning Sapiyensa universiteti magistranti yosh vatandoshimiz Ibrohim Jo‘raboyev bilan suhbat', 'Italiyaning Sapiyensa universiteti magistranti yosh vatandoshimiz Ibrohim Jo‘raboyev bilan suhbat', '<p><em>- Yoshligimda boshqa bolalar kabi sho&lsquo;h bo&lsquo;lmaganman. Ulg&lsquo;ayganim sari kishilar o&lsquo;rtasidagi munosabatlarning yaxshi-yomon taraflariga e&rsquo;tibor berar, nega bu vaziyatda unaqa, bunaqa? &ndash; degan savollarni ota-onamga ko&lsquo;p berardim. Bolaligimdan tarix kitoblarini o&lsquo;qish va sayohat qilishni yaxshi ko&lsquo;rar edim. Bundan tashqari, siyosatga va ijtimoiy psixologiyaga juda katta qiziqishim bo&lsquo;lgan.</em></p>', '<p><em>- Yoshligimda boshqa bolalar kabi sho&lsquo;h bo&lsquo;lmaganman. Ulg&lsquo;ayganim sari kishilar o&lsquo;rtasidagi munosabatlarning yaxshi-yomon taraflariga e&rsquo;tibor berar, nega bu vaziyatda unaqa, bunaqa? &ndash; degan savollarni ota-onamga ko&lsquo;p berardim. Bolaligimdan tarix kitoblarini o&lsquo;qish va sayohat qilishni yaxshi ko&lsquo;rar edim. Bundan tashqari, siyosatga va ijtimoiy psixologiyaga juda katta qiziqishim bo&lsquo;lgan.</em></p>', '<p><em>- Yoshligimda boshqa bolalar kabi sho&lsquo;h bo&lsquo;lmaganman. Ulg&lsquo;ayganim sari kishilar o&lsquo;rtasidagi munosabatlarning yaxshi-yomon taraflariga e&rsquo;tibor berar, nega bu vaziyatda unaqa, bunaqa? &ndash; degan savollarni ota-onamga ko&lsquo;p berardim. Bolaligimdan tarix kitoblarini o&lsquo;qish va sayohat qilishni yaxshi ko&lsquo;rar edim. Bundan tashqari, siyosatga va ijtimoiy psixologiyaga juda katta qiziqishim bo&lsquo;lgan.</em></p>', '<p><em>- Yoshligimda boshqa bolalar kabi sho&lsquo;h bo&lsquo;lmaganman. Ulg&lsquo;ayganim sari kishilar o&lsquo;rtasidagi munosabatlarning yaxshi-yomon taraflariga e&rsquo;tibor berar, nega bu vaziyatda unaqa, bunaqa? &ndash; degan savollarni ota-onamga ko&lsquo;p berardim. Bolaligimdan tarix kitoblarini o&lsquo;qish va sayohat qilishni yaxshi ko&lsquo;rar edim. Bundan tashqari, siyosatga va ijtimoiy psixologiyaga juda katta qiziqishim bo&lsquo;lgan.</em></p>', '2023-03-09', 1247, '[\"news\\/March2023\\/TajGoHz3BnKf7DstDRCX.jpg\"]', '2023-03-06 08:48:22', '2023-03-06 08:48:22'),
(5, 'news/March2023/dFQEBOlMLwtMyaCowEUJ.jpg', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', '<p><em>- 2015 yil Toshkent shahridagi Turin Politexnika univesitetini energetika va mexanika fakultetiga o&lsquo;qishga kirganman</em><em>.&nbsp;</em><em>Oradan 2 yil o\'tib 2017 yili Italiyaning Turin shahridagi&nbsp;<strong>Politecnico di Torino universitetiga</strong>&nbsp;bakalavrni davom ettirish uchun&nbsp;<strong>International Students Exchange</strong>&nbsp;dasturi bilan kelganman.</em></p>', '<p><em>- 2015 yil Toshkent shahridagi Turin Politexnika univesitetini energetika va mexanika fakultetiga o&lsquo;qishga kirganman</em><em>.&nbsp;</em><em>Oradan 2 yil o\'tib 2017 yili Italiyaning Turin shahridagi&nbsp;<strong>Politecnico di Torino universitetiga</strong>&nbsp;bakalavrni davom ettirish uchun&nbsp;<strong>International Students Exchange</strong>&nbsp;dasturi bilan kelganman.</em></p>', '<p><em>- 2015 yil Toshkent shahridagi Turin Politexnika univesitetini energetika va mexanika fakultetiga o&lsquo;qishga kirganman</em><em>.&nbsp;</em><em>Oradan 2 yil o\'tib 2017 yili Italiyaning Turin shahridagi&nbsp;<strong>Politecnico di Torino universitetiga</strong>&nbsp;bakalavrni davom ettirish uchun&nbsp;<strong>International Students Exchange</strong>&nbsp;dasturi bilan kelganman.</em></p>', '<p><em>- 2015 yil Toshkent shahridagi Turin Politexnika univesitetini energetika va mexanika fakultetiga o&lsquo;qishga kirganman</em><em>.&nbsp;</em><em>Oradan 2 yil o\'tib 2017 yili Italiyaning Turin shahridagi&nbsp;<strong>Politecnico di Torino universitetiga</strong>&nbsp;bakalavrni davom ettirish uchun&nbsp;<strong>International Students Exchange</strong>&nbsp;dasturi bilan kelganman.</em></p>', '2023-03-09', 892, '[\"news\\/March2023\\/EnqaSi6v9JTedTEelvP3.jpg\"]', '2023-03-06 08:51:20', '2023-03-06 08:51:20'),
(6, 'news/March2023/wMN7OMGB1ZguDGjspOL8.jpg', 'Janubiy Koreyaning Pochon va unga yaqin hududlarida bo‘lib turgan vatandoshlarimiz bilan sayyor qabul va uchrashuv o‘tkazildi', 'Janubiy Koreyaning Pochon va unga yaqin hududlarida bo‘lib turgan vatandoshlarimiz bilan sayyor qabul va uchrashuv o‘tkazildi', 'Janubiy Koreyaning Pochon va unga yaqin hududlarida bo‘lib turgan vatandoshlarimiz bilan sayyor qabul va uchrashuv o‘tkazildi', 'Janubiy Koreyaning Pochon va unga yaqin hududlarida bo‘lib turgan vatandoshlarimiz bilan sayyor qabul va uchrashuv o‘tkazildi', '<p>SЕUL, 6 fevral. /&laquo;Dunyo&raquo; AA/. Mamlakatimizning Seuldagi elchixonasi, Tashqi mehnat migratsiyasi agentligi vakolatxonasi va Janubiy Koreyadagi o&lsquo;zbekistonliklar uyushmasi xodimlari tomonidan Pochon va unga yaqin hududlarda istiqomat qilayotgan vatandoshlarimiz bilan sayyor qabul va uchrashuv tashkil etildi, deb xabar bermoqda, deb xabar bermoqda &laquo;Dunyo&raquo; AA muxbiri.</p>', '<p>SЕUL, 6 fevral. /&laquo;Dunyo&raquo; AA/. Mamlakatimizning Seuldagi elchixonasi, Tashqi mehnat migratsiyasi agentligi vakolatxonasi va Janubiy Koreyadagi o&lsquo;zbekistonliklar uyushmasi xodimlari tomonidan Pochon va unga yaqin hududlarda istiqomat qilayotgan vatandoshlarimiz bilan sayyor qabul va uchrashuv tashkil etildi, deb xabar bermoqda, deb xabar bermoqda &laquo;Dunyo&raquo; AA muxbiri.</p>', '<p>SЕUL, 6 fevral. /&laquo;Dunyo&raquo; AA/. Mamlakatimizning Seuldagi elchixonasi, Tashqi mehnat migratsiyasi agentligi vakolatxonasi va Janubiy Koreyadagi o&lsquo;zbekistonliklar uyushmasi xodimlari tomonidan Pochon va unga yaqin hududlarda istiqomat qilayotgan vatandoshlarimiz bilan sayyor qabul va uchrashuv tashkil etildi, deb xabar bermoqda, deb xabar bermoqda &laquo;Dunyo&raquo; AA muxbiri.</p>', '<p>SЕUL, 6 fevral. /&laquo;Dunyo&raquo; AA/. Mamlakatimizning Seuldagi elchixonasi, Tashqi mehnat migratsiyasi agentligi vakolatxonasi va Janubiy Koreyadagi o&lsquo;zbekistonliklar uyushmasi xodimlari tomonidan Pochon va unga yaqin hududlarda istiqomat qilayotgan vatandoshlarimiz bilan sayyor qabul va uchrashuv tashkil etildi, deb xabar bermoqda, deb xabar bermoqda &laquo;Dunyo&raquo; AA muxbiri.</p>', '2023-03-08', 896, '[\"news\\/March2023\\/slImx2g6NVgWZvglI1Rx.jpg\"]', '2023-03-06 08:53:49', '2023-03-06 08:53:49'),
(7, 'news/March2023/x0bquIRXuS8HuICbykZM.jpg', 'Mamlakatimizning Vladivostokdagi Bosh konsulxonasi Rossiyada qiyin moddiy ahvolda tushib qolgan ikki nafar yurtdoshimizning O‘zbekistonga qaytishida yordam ko‘rsatdi', 'Mamlakatimizning Vladivostokdagi Bosh konsulxonasi Rossiyada qiyin moddiy ahvolda tushib qolgan ikki nafar yurtdoshimizning O‘zbekistonga qaytishida yordam ko‘rsatdi', 'Mamlakatimizning Vladivostokdagi Bosh konsulxonasi Rossiyada qiyin moddiy ahvolda tushib qolgan ikki nafar yurtdoshimizning O‘zbekistonga qaytishida yordam ko‘rsatdi', 'Mamlakatimizning Vladivostokdagi Bosh konsulxonasi Rossiyada qiyin moddiy ahvolda tushib qolgan ikki nafar yurtdoshimizning O‘zbekistonga qaytishida yordam ko‘rsatdi', '<p>VLADIVOSTOK, 6 fevral. /&laquo;Dunyo&raquo; AA/. Rossiyada qiyin moddiy ahvolga tushib qolib ikki nafar vatandoshimiz O&lsquo;zbekistonning Vladivostokdagi Bosh konsulxonasi ko&lsquo;magida vatanga qaytarildi, deb xabar bermoqda &laquo;Dunyo&raquo; AA muxbiri.</p>', '<p>VLADIVOSTOK, 6 fevral. /&laquo;Dunyo&raquo; AA/. Rossiyada qiyin moddiy ahvolga tushib qolib ikki nafar vatandoshimiz O&lsquo;zbekistonning Vladivostokdagi Bosh konsulxonasi ko&lsquo;magida vatanga qaytarildi, deb xabar bermoqda &laquo;Dunyo&raquo; AA muxbiri.</p>', '<p>VLADIVOSTOK, 6 fevral. /&laquo;Dunyo&raquo; AA/. Rossiyada qiyin moddiy ahvolga tushib qolib ikki nafar vatandoshimiz O&lsquo;zbekistonning Vladivostokdagi Bosh konsulxonasi ko&lsquo;magida vatanga qaytarildi, deb xabar bermoqda &laquo;Dunyo&raquo; AA muxbiri.</p>', '<p>VLADIVOSTOK, 6 fevral. /&laquo;Dunyo&raquo; AA/. Rossiyada qiyin moddiy ahvolga tushib qolib ikki nafar vatandoshimiz O&lsquo;zbekistonning Vladivostokdagi Bosh konsulxonasi ko&lsquo;magida vatanga qaytarildi, deb xabar bermoqda &laquo;Dunyo&raquo; AA muxbiri.</p>', '2023-03-10', 4567, '[\"news\\/March2023\\/aGxTI5fuqJCZoIkrRCAR.jpg\"]', '2023-03-06 08:56:43', '2023-03-06 08:56:43');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-03-04 06:10:14', '2023-03-04 06:10:14');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(31, 'browse_posts', 'posts', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(32, 'read_posts', 'posts', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(33, 'edit_posts', 'posts', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(34, 'add_posts', 'posts', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(35, 'delete_posts', 'posts', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(36, 'browse_pages', 'pages', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(37, 'read_pages', 'pages', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(38, 'edit_pages', 'pages', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(39, 'add_pages', 'pages', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(40, 'delete_pages', 'pages', '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
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
(61, 'browse_columns', 'columns', '2023-03-05 06:03:08', '2023-03-05 06:03:08'),
(62, 'read_columns', 'columns', '2023-03-05 06:03:08', '2023-03-05 06:03:08'),
(63, 'edit_columns', 'columns', '2023-03-05 06:03:08', '2023-03-05 06:03:08'),
(64, 'add_columns', 'columns', '2023-03-05 06:03:08', '2023-03-05 06:03:08'),
(65, 'delete_columns', 'columns', '2023-03-05 06:03:08', '2023-03-05 06:03:08'),
(66, 'browse_countries', 'countries', '2023-03-09 16:32:11', '2023-03-09 16:32:11'),
(67, 'read_countries', 'countries', '2023-03-09 16:32:11', '2023-03-09 16:32:11'),
(68, 'edit_countries', 'countries', '2023-03-09 16:32:11', '2023-03-09 16:32:11'),
(69, 'add_countries', 'countries', '2023-03-09 16:32:11', '2023-03-09 16:32:11'),
(70, 'delete_countries', 'countries', '2023-03-09 16:32:11', '2023-03-09 16:32:11'),
(71, 'browse_relationships', 'relationships', '2023-03-09 16:34:09', '2023-03-09 16:34:09'),
(72, 'read_relationships', 'relationships', '2023-03-09 16:34:09', '2023-03-09 16:34:09'),
(73, 'edit_relationships', 'relationships', '2023-03-09 16:34:09', '2023-03-09 16:34:09'),
(74, 'add_relationships', 'relationships', '2023-03-09 16:34:09', '2023-03-09 16:34:09'),
(75, 'delete_relationships', 'relationships', '2023-03-09 16:34:09', '2023-03-09 16:34:09');

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
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
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
(75, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-03-04 06:10:14', '2023-03-04 06:10:14'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-03-04 06:10:14', '2023-03-04 06:10:14');

-- --------------------------------------------------------

--
-- Структура таблицы `relationships`
--

CREATE TABLE `relationships` (
  `id` int UNSIGNED NOT NULL,
  `country_flag_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_tame` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `relationships`
--

INSERT INTO `relationships` (`id`, `country_flag_code`, `title_uz`, `title_ru`, `title_en`, `photo`, `date_tame`, `created_at`, `updated_at`, `country_flag`) VALUES
(1, 'AS', 'Amerika', 'Аме́рика', 'United States', 'relationships/March2023/2A4qn1iw7RH3x7Xw6sDF.jpg', '2023-03-01', '2023-03-09 16:41:00', '2023-03-13 05:47:12', 'relationships/March2023/Pc0rqJC7GFsV1a2QFHNn.png'),
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `sponsrs`
--

CREATE TABLE `sponsrs` (
  `id` int UNSIGNED NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_uz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_oz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_uz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text_oz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logoImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sponsrs`
--

INSERT INTO `sponsrs` (`id`, `img`, `title_uz`, `title_oz`, `title_ru`, `title_en`, `text_uz`, `text_oz`, `text_ru`, `text_en`, `created_at`, `updated_at`, `logoImg`) VALUES
(1, 'sponsrs\\March2023\\GqzeGxakgggBMvs8i7QL.webp', 'Xalq banki bilan hamkorligimiz haqida', 'Халқ банки билан ҳамкорлигимиз ҳақида', 'О нашем сотрудничестве с Народным банком', 'О нашем сотрудничестве с Народным банком', '<p>Pharetra sollicitudin rhoncus aptent curae fusce suspendisse maecenas letius fames vivamus fringilla habitant ante tristique feugiat litora iaculis urna dictumst sapien sociosqu felis consectetur blandit vitae facilisis ipsum lacus sagittis metus neque suscipit volutpat elit ridiculus etiam primis platea consequat dapibus nostra class per mus integer ex nulla pede diam montes dis odio taciti</p>', '<p>Pharetra sollicitudin rhoncus aptent curae fusce suspendisse maecenas letius fames vivamus fringilla habitant ante tristique feugiat litora iaculis urna dictumst sapien sociosqu felis consectetur blandit vitae facilisis ipsum lacus sagittis metus neque suscipit volutpat elit ridiculus etiam primis platea consequat dapibus nostra class per mus integer ex nulla pede diam montes dis odio taciti</p>', '<p>Pharetra sollicitudin rhoncus aptent curae fusce suspendisse maecenas letius fames vivamus fringilla habitant ante tristique feugiat litora iaculis urna dictumst sapien sociosqu felis consectetur blandit vitae facilisis ipsum lacus sagittis metus neque suscipit volutpat elit ridiculus etiam primis platea consequat dapibus nostra class per mus integer ex nulla pede diam montes dis odio taciti</p>', '<p>Pharetra sollicitudin rhoncus aptent curae fusce suspendisse maecenas letius fames vivamus fringilla habitant ante tristique feugiat litora iaculis urna dictumst sapien sociosqu felis consectetur blandit vitae facilisis ipsum lacus sagittis metus neque suscipit volutpat elit ridiculus etiam primis platea consequat dapibus nostra class per mus integer ex nulla pede diam montes dis odio taciti</p>', '2023-03-05 05:51:01', '2023-03-08 07:40:46', 'sponsrs/March2023/Fzptz3gD4zi6lhO8mk5D.png'),
(2, 'sponsrs/March2023/FBMXXlROzQbSBmHAXvko.jpg', 'Xalq banki bilan hamkorligimiz haqida', 'Халқ банки билан ҳамкорлигимиз ҳақида', 'Шанхайская организация сотрудничества The Shanghai cooperation organisation', 'Шанхайская организация сотрудничества The Shanghai cooperation organisation', '<p>On 28 February 2023, the SCO Permanent Expert Working Group on Agriculture held a regular meeting via videoconference chaired by India.</p>', '<p>On 28 February 2023, the SCO Permanent Expert Working Group on Agriculture held a regular meeting via videoconference chaired by India.</p>', '<p>Pharetra sollicitudin rhoncus aptent curae fusce suspendisse maecenas letius fames vivamus fringilla habitant ante tristique feugiat litora iaculis urna dictumst sapien sociosqu felis consectetur blandit vitae facilisis ipsum lacus sagittis metus neque suscipit volutpat elit ridiculus etiam primis platea consequat dapibus nostra class per mus integer ex nulla pede diam montes dis odio taciti</p>', '<p>Pharetra sollicitudin rhoncus aptent curae fusce suspendisse maecenas letius fames vivamus fringilla habitant ante tristique feugiat litora iaculis urna dictumst sapien sociosqu felis consectetur blandit vitae facilisis ipsum lacus sagittis metus neque suscipit volutpat elit ridiculus etiam primis platea consequat dapibus nostra class per mus integer ex nulla pede diam montes dis odio taciti</p>', '2023-03-05 05:51:01', '2023-03-08 07:41:03', 'sponsrs/March2023/SsLmvIH9q5g8WWXPer9a.png'),
(3, 'sponsrs/March2023/aUeEC4E3Yr4PHwQd9hi4.jpg', 'Tashqi ishlar vazirligida Belarus elchisi bilan uchrashuv bo\'lib o\'tdi', 'Tashqi ishlar vazirligida Belarus elchisi bilan uchrashuv bo\'lib o\'tdi', 'Tashqi ishlar vazirligida Belarus elchisi bilan uchrashuv bo\'lib o\'tdi', 'Tashqi ishlar vazirligida Belarus elchisi bilan uchrashuv bo\'lib o\'tdi', '<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div class=\"news-item__description\">\r\n<div>O\'zbekiston Respublikasi tashqi ishlar vazirining o\'rinbosari Bahromjon A\'loev Belarus Respublikasining Favqulodda va muxtor elchisi Leo...</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div>Litva Elchisi ishonch yorliqlarini topshirdi</div>\r\n<div class=\"news-meta\">&nbsp;</div>\r\n</div>\r\n</div>', '<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div class=\"news-item__description\">\r\n<div>O\'zbekiston Respublikasi tashqi ishlar vazirining o\'rinbosari Bahromjon A\'loev Belarus Respublikasining Favqulodda va muxtor elchisi Leo...</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div>Litva Elchisi ishonch yorliqlarini topshirdi</div>\r\n<div class=\"news-meta\">&nbsp;</div>\r\n</div>\r\n</div>', '<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div class=\"news-item__description\">\r\n<div>O\'zbekiston Respublikasi tashqi ishlar vazirining o\'rinbosari Bahromjon A\'loev Belarus Respublikasining Favqulodda va muxtor elchisi Leo...</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div>Litva Elchisi ishonch yorliqlarini topshirdi</div>\r\n<div class=\"news-meta\">&nbsp;</div>\r\n</div>\r\n</div>', '<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div class=\"news-item__description\">\r\n<div>O\'zbekiston Respublikasi tashqi ishlar vazirining o\'rinbosari Bahromjon A\'loev Belarus Respublikasining Favqulodda va muxtor elchisi Leo...</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"tab-pane-block__item\">\r\n<div class=\"news-item\">\r\n<div>Litva Elchisi ishonch yorliqlarini topshirdi</div>\r\n<div class=\"news-meta\">&nbsp;</div>\r\n</div>\r\n</div>', '2023-03-07 10:20:23', '2023-03-08 07:40:26', 'sponsrs/March2023/bc7yx8iGYpm708WUCMgV.png'),
(4, 'sponsrs/March2023/IwQLYINuZRVFwyxhlYW0.jpg', 'shoir, yozuvchi, pedagog, teatr arbobi Hamza Hakimzoda Niyoziy tavallud topgan kun', 'shoir, yozuvchi, pedagog, teatr arbobi Hamza Hakimzoda Niyoziy tavallud topgan kun', 'shoir, yozuvchi, pedagog, teatr arbobi Hamza Hakimzoda Niyoziy tavallud topgan kun', 'shoir, yozuvchi, pedagog, teatr arbobi Hamza Hakimzoda Niyoziy tavallud topgan kun', '<p>Koʻzimizga koʻrinib turgan hama asboblar,<br>Hech biri boʻlmas edi, gar boʻlmasa, zinhor uquv.</p>\r\n<p>Yer ichida koʻmilib yotgan hama oltin, kumush,<br>Yuzaga chiqdi bari bois anga axbor, oʻquv&hellip;</p>\r\n<p>Gar dilingda oʻylagan orzuga yetmoq istasang,<br>Qimmat umring qilmagil behudaga bekor, oʻqi!</p>', '<p>Koʻzimizga koʻrinib turgan hama asboblar,<br>Hech biri boʻlmas edi, gar boʻlmasa, zinhor uquv.</p>\r\n<p>Yer ichida koʻmilib yotgan hama oltin, kumush,<br>Yuzaga chiqdi bari bois anga axbor, oʻquv&hellip;</p>\r\n<p>Gar dilingda oʻylagan orzuga yetmoq istasang,<br>Qimmat umring qilmagil behudaga bekor, oʻqi!</p>', '<p>Koʻzimizga koʻrinib turgan hama asboblar,<br>Hech biri boʻlmas edi, gar boʻlmasa, zinhor uquv.</p>\r\n<p>Yer ichida koʻmilib yotgan hama oltin, kumush,<br>Yuzaga chiqdi bari bois anga axbor, oʻquv&hellip;</p>\r\n<p>Gar dilingda oʻylagan orzuga yetmoq istasang,<br>Qimmat umring qilmagil behudaga bekor, oʻqi!</p>', '<p>Koʻzimizga koʻrinib turgan hama asboblar,<br>Hech biri boʻlmas edi, gar boʻlmasa, zinhor uquv.</p>\r\n<p>Yer ichida koʻmilib yotgan hama oltin, kumush,<br>Yuzaga chiqdi bari bois anga axbor, oʻquv&hellip;</p>\r\n<p>Gar dilingda oʻylagan orzuga yetmoq istasang,<br>Qimmat umring qilmagil behudaga bekor, oʻqi!</p>', '2023-03-07 10:22:59', '2023-03-08 07:40:03', 'sponsrs/March2023/KDP2ge3sQLnyr8CXkTsH.png'),
(5, 'sponsrs/March2023/3XNtx7rZB4Qvs2vGazGE.jpg', 'ШУКУР ХОЛМИРЗАЕВ 80 ЁШДА', 'ШУКУР ХОЛМИРЗАЕВ 80 ЁШДА', 'ШУКУР ХОЛМИРЗАЕВ 80 ЁШДА', 'ШУКУР ХОЛМИРЗАЕВ 80 ЁШДА', '<p>24 март улуғ адиб, Ўзбекистон халқ ёзувчиси, давлат мукофоти совриндори, маҳоратли публицист Шукур Холмирзаев туғилган кун. Агар адиб тирик бўлганида бугун 80 ёшни қарши олган бўларди. Барча адабиёт ихлосмандларини ушбу сана билан табриклаймиз. Тожсимон вирус балоси аригач, ёзувчининг 80 йиллиги юртимиз бўйлаб кенг нишонланади.</p>', '<p>24 март улуғ адиб, Ўзбекистон халқ ёзувчиси, давлат мукофоти совриндори, маҳоратли публицист Шукур Холмирзаев туғилган кун. Агар адиб тирик бўлганида бугун 80 ёшни қарши олган бўларди. Барча адабиёт ихлосмандларини ушбу сана билан табриклаймиз. Тожсимон вирус балоси аригач, ёзувчининг 80 йиллиги юртимиз бўйлаб кенг нишонланади.</p>', '<p>24 март улуғ адиб, Ўзбекистон халқ ёзувчиси, давлат мукофоти совриндори, маҳоратли публицист Шукур Холмирзаев туғилган кун. Агар адиб тирик бўлганида бугун 80 ёшни қарши олган бўларди. Барча адабиёт ихлосмандларини ушбу сана билан табриклаймиз. Тожсимон вирус балоси аригач, ёзувчининг 80 йиллиги юртимиз бўйлаб кенг нишонланади.</p>', '<p>24 март улуғ адиб, Ўзбекистон халқ ёзувчиси, давлат мукофоти совриндори, маҳоратли публицист Шукур Холмирзаев туғилган кун. Агар адиб тирик бўлганида бугун 80 ёшни қарши олган бўларди. Барча адабиёт ихлосмандларини ушбу сана билан табриклаймиз. Тожсимон вирус балоси аригач, ёзувчининг 80 йиллиги юртимиз бўйлаб кенг нишонланади.</p>', '2023-03-07 10:24:48', '2023-03-08 07:39:43', 'sponsrs/March2023/Ka1NPQmOMeiNnTPJeMYC.png'),
(6, 'sponsrs/March2023/kHONwVECBEB4x1pgkevm.jpg', 'AQSHning Florida universitetida ilmiy-tadqiqot ishlarini olib borayotgan Rustamjon Muradov', 'Italiyadagi \"WESTPORT FUEL SYSTEMS ITALIA SRL\" kompaniyasida sifat nazorati bo\'yicha muhandis Tolibjon Olimjonov', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', 'Xitoy Xalq Respublikasida istiqomat qilayotgan Xo\\\'jamovlar oilasi', '<p><em>Change SVG Color</em>&nbsp;Online. DeEditor allows you to make icons from&nbsp;<em>SVG</em>&nbsp;files in a really simple way. Just upload,&nbsp;<em>edit colors</em>&nbsp;and download in PNG,&nbsp;<em>SVG</em>&nbsp;...</p>', '<p><em>Change SVG Color</em>&nbsp;Online. DeEditor allows you to make icons from&nbsp;<em>SVG</em>&nbsp;files in a really simple way. Just upload,&nbsp;<em>edit colors</em>&nbsp;and download in PNG,&nbsp;<em>SVG</em>&nbsp;...</p>', '<p><em>Change SVG Color</em>&nbsp;Online. DeEditor allows you to make icons from&nbsp;<em>SVG</em>&nbsp;files in a really simple way. Just upload,&nbsp;<em>edit colors</em>&nbsp;and download in PNG,&nbsp;<em>SVG</em>&nbsp;...</p>', '<p><em>Change SVG Color</em>&nbsp;Online. DeEditor allows you to make icons from&nbsp;<em>SVG</em>&nbsp;files in a really simple way. Just upload,&nbsp;<em>edit colors</em>&nbsp;and download in PNG,&nbsp;<em>SVG</em>&nbsp;...</p>', '2023-03-07 11:53:28', '2023-03-08 07:39:19', 'sponsrs/March2023/14NOYx3cChhEIRLd0EWS.png');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/March2023/exAKQxhXLan49mP09daF.png', NULL, '$2y$10$yxBirNbuXTWLZ78ergMpM.6HMrqcLlKK078.mAyNpNBleuJC9RiSa', 'OSSfSkmSGwnPp42vYZj4nuBDKAHdKa8tMHEQaBUm1N7mHBd1zt49wsm0r4lg', '{\"locale\":\"en\"}', '2023-03-04 06:10:13', '2023-03-10 06:41:57'),
(2, 3, 'Admin', 'vatanparvar@admin.com', 'users/March2023/rATF2HWx8vIpam6DuEhR.png', NULL, '$2y$10$u1Fs/7I1liDsq0QuLt8r/.lsVFn3z9aSTtBXX38slA0pkmhItYp1.', 'hpGEnFJTRZ0p83ONaFcdtXlRs9qKOPpcVQUF5emo0SuN2yLvmcOz2OiTZ5Cw', '{\"locale\":\"en\"}', '2023-03-05 08:24:26', '2023-03-10 06:42:08');

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
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `columns`
--
ALTER TABLE `columns`
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
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

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
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

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
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

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
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `columns`
--
ALTER TABLE `columns`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
