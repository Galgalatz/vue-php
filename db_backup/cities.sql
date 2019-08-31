-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2019 at 03:35 PM
-- Server version: 10.2.10-MariaDB
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asota`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `code`) VALUES
(1, 'א סייד', 1359),
(2, 'א סייד שבט', 1170),
(3, 'אבו ג\'ווייעד', 967),
(4, 'אבו גוש', 472),
(5, 'אבו כף אום בטין', 1358),
(6, 'אבו סנאן', 473),
(7, 'אבו סריחאן', 935),
(8, 'אבו עבדון', 958),
(9, 'אבו עמאר', 1042),
(10, 'אבו עמרה', 932),
(11, 'אבו קורינאת', 968),
(12, 'אבו קרינאת', 1342),
(13, 'אבו רביעה', 966),
(14, 'אבו רוקייק', 961),
(15, 'אבטין', 652),
(16, 'אבטליון', 1275),
(17, 'אביאל', 679),
(18, 'אביבים', 1115),
(19, 'אביגדור', 819),
(20, 'אביחיל', 175),
(21, 'אביטל', 2052),
(22, 'אביעזר', 1070),
(23, 'אבירים', 1220),
(24, 'אבן יהודה', 182),
(25, 'אבן מנחם', 1081),
(26, 'אבן ספיר', 783),
(27, 'אבן שמואל', 400),
(28, 'אבני איתן', 4011),
(29, 'אבני חפץ', 3793),
(30, 'אבנת', 3786),
(31, 'אבשלום', 1311),
(32, 'אדורה', 3759),
(33, 'אדירים', 113),
(34, 'אדמית', 1068),
(35, 'אדרת', 1123),
(36, 'אודים', 446),
(37, 'אודם', 4010),
(38, 'אוהד', 1046),
(39, 'אוהלו', 1120),
(40, 'אום אל קוטוף', 2024),
(41, 'אום אל-פחם', 2710),
(42, 'אומן', 1108),
(43, 'אומץ', 680),
(44, 'אופקים', 31),
(45, 'אור הגנוז', 1294),
(46, 'אור הנר', 67),
(47, 'אור יהודה', 2400),
(48, 'אור עקיבא', 1020),
(49, 'אורה', 780),
(50, 'אורון', 1771),
(51, 'אורות', 2012),
(52, 'אורטל', 4013),
(53, 'אורים', 403),
(54, 'אורנים', 882),
(55, 'אורנית', 3760),
(56, 'אושה', 278),
(57, 'אזור', 565),
(58, 'אחווה', 1157),
(59, 'אחוזם', 821),
(60, 'אחוזת ברק', 1330),
(61, 'אחיהוד', 785),
(62, 'אחיטוב', 850),
(63, 'אחיסמך', 804),
(64, 'אחיעזר', 797),
(65, 'אטרש', 965),
(66, 'איבים', 338),
(67, 'אייל', 716),
(68, 'איילת השחר', 77),
(69, 'אילון', 294),
(70, 'אילות', 1126),
(71, 'אילניה', 49),
(72, 'אילת', 2600),
(73, 'אירוס', 1336),
(74, 'איתמר', 3762),
(75, 'איתן', 37),
(76, 'איתנים', 886),
(77, 'אכסאל', 478),
(78, 'אל אסד', 960),
(79, 'אל ח\'וואלד מערב', 986),
(80, 'אל עזי', 1339),
(81, 'אל עטאונה', 969),
(82, 'אל עריאן', 1316),
(83, 'אל רום', 4003),
(84, 'אלומה', 1145),
(85, 'אלומות', 330),
(86, 'אלון הגליל', 1182),
(87, 'אלון מורה', 3579),
(88, 'אלון שבות', 3604),
(89, 'אלוני אבא', 429),
(90, 'אלוני הבשן', 4017),
(91, 'אלוני יצחק', 868),
(92, 'אלונים', 285),
(93, 'אלי סיני', 5428),
(94, 'אלי עד', 4002),
(95, 'אליאב', 1365),
(96, 'אליכין', 41),
(97, 'אליפז', 1248),
(98, 'אליפלט', 730),
(99, 'אליקים', 682),
(100, 'אלישיב', 204),
(101, 'אלישמע', 841),
(102, 'אלמגור', 1125),
(103, 'אלמוג', 3556),
(104, 'אלעד', 1309),
(105, 'אלעזר', 3618),
(106, 'אלפי מנשה', 3750),
(107, 'אלקוש', 603),
(108, 'אלקנה', 3560),
(109, 'אם אל-גנם', 476),
(110, 'אמונים', 772),
(111, 'אמירים', 1064),
(112, 'אמנון', 1253),
(113, 'אמציה', 23),
(114, 'אניעם', 4012),
(115, 'אספר', 3754),
(116, 'אעבלין', 529),
(117, 'אעצם', 963),
(118, 'אפיניש', 959),
(119, 'אפיק', 4301),
(120, 'אפיקים', 176),
(121, 'אפעל-בית אבו', 2032),
(122, 'אפעל-סמינריו', 1048),
(123, 'אפק', 313),
(124, 'אפרתה', 3650),
(125, 'ארבל', 701),
(126, 'ארגמן', 3598),
(127, 'ארז', 714),
(128, 'אריאל', 3570),
(129, 'ארסוף', 1324),
(130, 'אשבול', 71),
(131, 'אשבל', 1276),
(132, 'אשדוד', 70),
(133, 'אשדות יעקב  (איחוד)', 199),
(134, 'אשדות יעקב מאוחד', 188),
(135, 'אשחר', 1188),
(136, 'אשכולות', 3722),
(137, 'אשל הנשיא בי\'\'ס אזורי', 2021),
(138, 'אשלים', 1152),
(139, 'אשקלון', 7100),
(140, 'אשרת', 1256),
(141, 'אשתאול', 740),
(142, 'אתגר', 1298),
(143, 'באקה אל-גרביה', 6000),
(144, 'באר אורה', 21),
(145, 'באר טוביה', 155),
(146, 'באר יעקב', 2530),
(147, 'באר מילכה', 1278),
(148, 'באר שבע', 9000),
(149, 'בארות יצחק', 450),
(150, 'בארותיים', 697),
(151, 'בארי', 399),
(152, 'בדולח', 5432),
(153, 'בוסתן הגליל', 559),
(154, 'בועיינה נוג\'יידאת', 482),
(155, 'בוקעתא', 4001),
(156, 'בורגתה', 698),
(157, 'בחן', 2043),
(158, 'בטחה', 762),
(159, 'ביה\"ח פוריה', 1712),
(160, 'ביכורה', 1135),
(161, 'ביצרון', 234),
(162, 'ביר אל מכסור', 998),
(163, 'ביר הדאג', 1348),
(164, 'ביריה', 368),
(165, 'בית אורן', 317),
(166, 'בית אל', 3574),
(167, 'בית אל ב\"', 3714),
(168, 'בית אלעזרי', 562),
(169, 'בית אלפא', 95),
(170, 'בית אריה', 3652),
(171, 'בית ברל', 1076),
(172, 'בית ג\"מאל', 479),
(173, 'בית ג\'אלא', 3063),
(174, 'בית גוברין', 619),
(175, 'בית גמליאל', 571),
(176, 'בית ג\'ן', 480),
(177, 'בית דגן', 466),
(178, 'בית הגדי', 723),
(179, 'בית הלוי', 373),
(180, 'בית הלל', 322),
(181, 'בית העמק', 572),
(182, 'בית הערבה', 3645),
(183, 'בית השיטה', 242),
(184, 'בית זיד', 353),
(185, 'בית זית', 710),
(186, 'בית זרע', 143),
(187, 'בית חורון', 3575),
(188, 'בית חירות', 877),
(189, 'בית חלקיה', 2033),
(190, 'בית חנינא', 3067),
(191, 'בית חנן', 159),
(192, 'בית חנניה', 800),
(193, 'בית חשמונאי', 1050),
(194, 'בית יהושע', 288),
(195, 'בית יוסף', 265),
(196, 'בית ינאי', 200),
(197, 'בית יצחק שער חפר', 326),
(198, 'בית ירח', 9849),
(199, 'בית לחם', 3200),
(200, 'בית לחם הגלילית', 430),
(201, 'בית מאיר', 751),
(202, 'בית נחמיה', 784),
(203, 'בית ניר', 16),
(204, 'בית נקופה', 672),
(205, 'בית עובד', 202),
(206, 'בית עוזיאל', 301),
(207, 'בית עזרא', 756),
(208, 'בית עריף', 604),
(209, 'בית צבי', 212),
(210, 'בית קמה', 598),
(211, 'בית קשת', 365),
(212, 'בית רבן', 848),
(213, 'בית רימון', 1162),
(214, 'בית שאן', 9200),
(215, 'בית שיקמה', 747),
(216, 'בית שמש', 2610),
(217, 'בית שערים', 248),
(218, 'ביתן אהרן', 252),
(219, 'ביתר עילית', 3780),
(220, 'בלפוריה', 94),
(221, 'בן זכאי', 760),
(222, 'בן עמי', 712),
(223, 'בן שמן (מושב)', 2013),
(224, 'בן שמן כפר נוער', 1084),
(225, 'בני ברק', 6100),
(226, 'בני דרום', 592),
(227, 'בני דרור', 386),
(228, 'בני יהודה', 4015),
(229, 'בני נצרים', 1363),
(230, 'בני עטרות', 448),
(231, 'בני עי\"ש', 1066),
(232, 'בני עצמון', 5425),
(233, 'בני ציון', 418),
(234, 'בני ראם', 588),
(235, 'בניה', 685),
(236, 'בנימינה', 9800),
(237, 'בסמ\"ה', 1326),
(238, 'בסמת טבעון', 944),
(239, 'בענה', 483),
(240, 'בצרה', 389),
(241, 'בצת', 589),
(242, 'בקוע', 864),
(243, 'בקעות', 3612),
(244, 'בר גיורא', 823),
(245, 'בר יוחאי', 1191),
(246, 'ברוכין', 3744),
(247, 'ברוכין', 20004),
(248, 'ברור חיל', 428),
(249, 'ברורים', 150),
(250, 'ברוש', 2060),
(251, 'ברטעה', 639),
(252, 'ברכה', 3710),
(253, 'ברכיה', 746),
(254, 'ברעם', 667),
(255, 'ברק', 141),
(256, 'ברקאי', 617),
(257, 'ברקן', 3654),
(258, 'ברקת', 2038),
(259, 'בת הדר', 1323),
(260, 'בת חן', 1361),
(261, 'בת חפר', 1319),
(262, 'בת חצור', 1401),
(263, 'בת ים', 6200),
(264, 'בת עין', 3794),
(265, 'בת שלמה', 33),
(266, 'בתיר', 477),
(267, 'גאולי תימן', 872),
(268, 'גאולי תימן', 1131),
(269, 'גאולים', 379),
(270, 'גאליה', 853),
(271, 'גבולות', 352),
(272, 'גבים', 424),
(273, 'גבע', 86),
(274, 'גבע בנימין', 3763),
(275, 'גבע כרמל', 683),
(276, 'גבעולים', 2014),
(277, 'גבעון החדשה', 3644),
(278, 'גבעות בר', 1344),
(279, 'גבעת אבני', 1293),
(280, 'גבעת אלה', 1288),
(281, 'גבעת ברנר', 147),
(282, 'גבעת השלושה', 870),
(283, 'גבעת זאב', 3730),
(284, 'גבעת ח\"ן', 207),
(285, 'גבעת חביבה', 1740),
(286, 'גבעת חיים איחוד', 2018),
(287, 'גבעת חיים מאוחד', 173),
(288, 'גבעת יואב', 4021),
(289, 'גבעת יערים', 787),
(290, 'גבעת ישעיהו', 919),
(291, 'גבעת כ\'\'ח', 802),
(292, 'גבעת ניל\'\'י', 360),
(293, 'גבעת עדה', 50),
(294, 'גבעת עוז', 703),
(295, 'גבעת שמואל', 681),
(296, 'גבעת שמש', 566),
(297, 'גבעת שפירא', 1077),
(298, 'גבעתי', 793),
(299, 'גבעתיים', 6300),
(300, 'גברעם', 342),
(301, 'גבת', 133),
(302, 'גדות', 35),
(303, 'גדיד', 5429),
(304, 'ג\'דידה מכר', 1292),
(305, 'גדיש', 145),
(306, 'גדעונה', 442),
(307, 'גדרה', 2550),
(308, 'ג\'וליס', 485),
(309, 'גונן', 852),
(310, 'גורן', 755),
(311, 'גורנות הגליל', 1219),
(312, 'גזית', 457),
(313, 'גזר', 370),
(314, 'גיאה', 706),
(315, 'גיבתון', 196),
(316, 'גיזו', 1043),
(317, 'גילון', 1204),
(318, 'גילת', 736),
(319, 'גינוסר', 262),
(320, 'גינות שומרון', 9875),
(321, 'גיניגר', 92),
(322, 'גינתון', 863),
(323, 'גיתה', 1206),
(324, 'גיתית', 3613),
(325, 'גלאון', 393),
(326, 'ג\'לג\'וליה', 627),
(327, 'גלגל', 3606),
(328, 'גליל ים', 346),
(329, 'גלעד', 369),
(330, 'גמזו', 745),
(331, 'גן אור', 5431),
(332, 'גן הדרום', 1072),
(333, 'גן השומרון', 225),
(334, 'גן חיים', 239),
(335, 'גן יאשיה', 734),
(336, 'גן ', 166),
(337, 'גן נר', 1274),
(338, 'גן שורק', 311),
(339, 'גן שלמה', 144),
(340, 'גן שמואל', 72),
(341, 'ג\'נאביב', 976),
(342, 'גנות', 836),
(343, 'גנות הדר', 549),
(344, 'גני הדר', 1103),
(345, 'גני טל', 1371),
(346, 'גני טל', 5424),
(347, 'גני יהודה', 781),
(348, 'גני יוחנן', 862),
(349, 'גני עם', 218),
(350, 'גני תקווה', 229),
(351, 'גנים', 3758),
(352, 'ג\'סר א זרקא', 541),
(353, 'געש', 842),
(354, 'געתון', 463),
(355, 'גפן', 39),
(356, 'גרופית', 1129),
(357, 'ג\'ש (גוש חלב)', 487),
(358, 'גשור', 4022),
(359, 'גשר', 305),
(360, 'גשר הזיו', 574),
(361, 'גת', 340),
(362, 'ג\'ת', 628),
(363, 'גת רימון', 128),
(364, 'דאלית אל-כרמל', 494),
(365, 'דבורה', 146),
(366, 'דבוריה', 489),
(367, 'דבירה', 849),
(368, 'דברת', 407),
(369, 'דגניה א', 62),
(370, 'דגניה ב', 79),
(371, 'דוב\'\'ב', 1067),
(372, 'דוגית', 5435),
(373, 'דולב', 3747),
(374, 'דור', 738),
(375, 'דורות', 336),
(376, 'דחי', 475),
(377, 'דייר אל אסד', 490),
(378, 'דייר חנא', 492),
(379, 'דייר ראפאת', 493),
(380, 'דימונה', 2200),
(381, 'דישון', 2063),
(382, 'דליה', 300),
(383, 'דלתון', 431),
(384, 'דמיידה', 1317),
(385, 'דן', 303),
(386, 'דפנה', 302),
(387, 'דקל', 1241),
(388, 'דריג\'את', 1349),
(389, 'האון', 702),
(390, 'הבונים', 675),
(391, 'הגושרים', 356),
(392, 'הדסים', 9924),
(393, 'הדר עם', 191),
(394, 'הוד השרון', 9700),
(395, 'הודיה', 726),
(396, 'הודיות מוסד חינוכי', 1322),
(397, 'הוואשלה', 1169),
(398, 'הוזייל', 956),
(399, 'הושעיה', 1186),
(400, 'הזורע', 250),
(401, 'הזורעים', 307),
(402, 'החותרים', 434),
(403, 'היוגב', 684),
(404, 'הילה', 1208),
(405, 'המעפיל', 377),
(406, 'המרכז האקדמי רופין', 897),
(407, 'הסוללים', 677),
(408, 'העוגן', 423),
(409, 'הקריות', 7777),
(410, 'הר אדר', 3769),
(411, 'הר ברכה', 20002),
(412, 'הר גילה', 3603),
(413, 'הר עמשא', 1261),
(414, 'הראל', 464),
(415, 'הרדוף', 1249),
(416, 'הרצליה', 6400),
(417, 'הררית', 1203),
(418, 'ורד הגליל', 9851),
(419, 'ורד יריחו', 3639),
(420, 'ורדון', 1133),
(421, 'זבארגה', 2742),
(422, 'זבדיאל', 815),
(423, 'זבידאת', 999),
(424, 'זוהר', 44),
(425, 'זיקים', 584),
(426, 'זיתן', 788),
(427, 'זכרון יעקב', 9300),
(428, 'זכריה', 799),
(429, 'זמר', 1290),
(430, 'זמרת', 1065),
(431, 'זנוח', 816),
(432, 'זרועה', 2064),
(433, 'זרזיר', 975),
(434, 'זרחיה', 818),
(435, 'זרעית', 1130),
(436, 'חבצלת השרון', 235),
(437, 'חבר', 1110),
(438, 'חברון', 3400),
(439, 'חג\"אג\"רה', 977),
(440, 'חגור', 717),
(441, 'חגי', 3764),
(442, 'חגלה', 205),
(443, 'חדיד', 618),
(444, 'חד-נס', 4026),
(445, 'חדרה', 6500),
(446, 'ח\'ואלד', 1321),
(447, 'חוג\'ייראת', 948),
(448, 'חוות השומר', 1091),
(449, 'חוות יאיר', 20003),
(450, 'חוות שלם', 1087),
(451, 'חולדה', 160),
(452, 'חולון', 6600),
(453, 'חולית', 1239),
(454, 'חולתה', 253),
(455, 'חומש', 3642),
(456, 'חוסן', 662),
(457, 'חוסנייה', 1332),
(458, 'חופית', 115),
(459, 'חוץ לארץ', 9999),
(460, 'חוקוק', 374),
(461, 'חורה', 1303),
(462, 'חורפיש', 496),
(463, 'חורשים', 355),
(464, 'חזון', 1047),
(465, 'חיבת ציון', 219),
(466, 'חיננית', 3643),
(467, 'חיפה', 4000),
(468, 'חירות', 162),
(469, 'חלוץ', 1272),
(470, 'חלמיש', 3573),
(471, 'חלף', 988),
(472, 'חלץ', 820),
(473, 'חמאם', 993),
(474, 'חמד', 801),
(475, 'חמדיה', 343),
(476, 'חמדת', 3646),
(477, 'חמרה', 3609),
(478, 'חניאל', 807),
(479, 'חניתה', 280),
(480, 'חנתון', 1257),
(481, 'חספין', 4005),
(482, 'חפץ חיים', 363),
(483, 'חפצי בה', 90),
(484, 'חצב', 700),
(485, 'חצבה', 13),
(486, 'חצור הגלילית', 2034),
(487, 'חצור-אשדוד', 406),
(488, 'חצר בארותיים', 1409),
(489, 'חצרות געש', 1407),
(490, 'חצרות חולדה', 1402),
(491, 'חצרות חפר', 1403),
(492, 'חצרות יסף', 1404),
(493, 'חצרות כ\"ח', 1405),
(494, 'חצרות כרמל', 1408),
(495, 'חצרות צריפין', 8002),
(496, 'חצרים', 397),
(497, 'חרב לאת', 422),
(498, 'חרוצים', 1024),
(499, 'חריש', 12476),
(500, 'חריש', 1247),
(501, 'חרמש', 3717),
(502, 'חרשים', 1209),
(503, 'חשמונאים', 3770),
(504, 'טבחה', 9936),
(505, 'טבריה', 6700),
(506, 'טובא זנגריה', 962),
(507, 'טורעאן', 498),
(508, 'טייבה', 2730),
(509, 'טייבה ליד מולדת', 497),
(510, 'טירה', 2720),
(511, 'טירת יהודה', 663),
(512, 'טירת כרמל', 2100),
(513, 'טירת צבי', 268),
(514, 'טל מנשה', 20006),
(515, 'טל שחר', 462),
(516, 'טל-אל', 1181),
(517, 'טללים', 1177),
(518, 'טלמון', 3788),
(519, 'טמרה', 8900),
(520, 'טמרה (יזרעאל)', 547),
(521, 'טנא עומרים', 3743),
(522, 'טפחות', 1214),
(523, 'יאנוח-ג\'ת', 1295),
(524, 'יבול', 1232),
(525, 'יבולה', 9939),
(526, 'יבור', 1217),
(527, 'יבנאל', 46),
(528, 'יבנה', 2660),
(530, 'יגור', 96),
(531, 'יגל', 798),
(532, 'יד בנימין', 577),
(533, 'יד השמונה', 1134),
(534, 'יד חנה', 758),
(535, 'יד מרדכי', 358),
(536, 'יד נתן', 775),
(537, 'יד רמב\'\'ם', 64),
(538, 'ידידה', 1144),
(539, 'יהוד-מונוסון', 9400),
(540, 'יהל', 1158),
(541, 'יובל', 2009),
(542, 'יובלים', 1226),
(543, 'יודפת', 1112),
(544, 'יונתן', 4007),
(545, 'יושיביה', 803),
(546, 'יזרעאל', 452),
(547, 'יזרעם', 5),
(548, 'יחד', 9884),
(549, 'יחיעם', 409),
(550, 'יטבתה', 866),
(551, 'ייט\'\'ב', 3607),
(552, 'יכיני', 811),
(553, 'ים המלח בתי מלון', 1772),
(554, 'ימין אורד', 9942),
(555, 'ינוב', 753),
(556, 'ינון', 2011),
(557, 'יסוד המעלה', 29),
(558, 'יסודות', 440),
(559, 'יסעור', 575),
(560, 'יעד', 1138),
(561, 'יעל', 1117),
(562, 'יעף', 1044),
(563, 'יערה', 795),
(564, 'יפיע', 499),
(565, 'יפית', 3566),
(566, 'יפעת', 134),
(567, 'יפתח', 453),
(568, 'יצהר', 3749),
(569, 'יציץ', 759),
(570, 'יקום', 417),
(571, 'יקיר', 3647),
(572, 'יקנעם (מושבה)', 241),
(573, 'יקנעם עילית', 240),
(574, 'יראון', 623),
(575, 'ירדנה', 2026),
(576, 'ירוחם', 831),
(577, 'ירושלים', 3000),
(578, 'ירחיב', 718),
(579, 'ירכא', 502),
(580, 'ירקונה', 183),
(581, 'ישע', 916),
(582, 'ישעי', 805),
(583, 'ישרש', 828),
(584, 'יתד', 1227),
(585, 'יתיר', 1329),
(586, 'כאבול', 504),
(587, 'כאוכב אבו אל היגא', 505),
(588, 'כברי', 576),
(589, 'כדורי', 371),
(590, 'כדים', 3729),
(591, 'כוחלה', 1367),
(592, 'כוכב השחר', 3564),
(593, 'כוכב יאיר-צור יגאל', 1224),
(594, 'כוכב יעקב', 3779),
(595, 'כוכב מיכאל', 824),
(596, 'כורזים', 1252),
(597, 'כחל', 1210),
(598, 'כינרת מושבה', 63),
(599, 'כינרת קבוצה', 57),
(600, 'כיסופים', 840),
(601, 'כישור', 1153),
(602, 'כליל', 1183),
(603, 'כלנית', 1229),
(604, 'כמאנה', 1331),
(605, 'כמאנה מזרח', 989),
(606, 'כמהין', 1291),
(607, 'כמון', 1201),
(608, 'כנות', 2006),
(609, 'כנף', 4028),
(610, 'כסיפה', 1059),
(611, 'כסלון', 859),
(612, 'כסרא-סמיע', 1296),
(613, 'כעביה טבאש חג\'אג\'רה', 978),
(614, 'כפר אביב', 857),
(615, 'כפר אדומים', 3638),
(616, 'כפר אוריה', 364),
(617, 'כפר אז\"ר', 180),
(618, 'כפר אחים', 690),
(619, 'כפר אל עוברה', 9948),
(620, 'כפר אליהו', 9856),
(621, 'כפר ביאליק', 220),
(622, 'כפר ביל\"ו', 177),
(623, 'כפר בלום', 357),
(624, 'כפר בן נון', 2010),
(625, 'כפר בפטיסטים', 9949),
(626, 'כפר ברא', 633),
(627, 'כפר ברוך', 132),
(628, 'כפר גדעון', 106),
(629, 'כפר גלים', 427),
(630, 'כפר גליקסון', 310),
(631, 'כפר גלעדי', 76),
(632, 'כפר דניאל', 707),
(633, 'כפר דרום', 5405),
(634, 'כפר האורנים', 3796),
(635, 'כפר החורש', 192),
(636, 'כפר הירוק', 9952),
(637, 'כפר המכבי', 254),
(638, 'כפר הנגיד', 582),
(639, 'כפר הנוער הדתי', 890),
(640, 'כפר הנשיא', 443),
(641, 'כפר הס', 187),
(642, 'כפר הרא\'\'ה', 217),
(643, 'כפר הרי\'\'ף', 888),
(644, 'כפר ויתקין', 190),
(645, 'כפר ורבורג', 320),
(646, 'כפר ורדים', 1263),
(647, 'כפר זוהרים', 1325),
(648, 'כפר זיתים', 786),
(649, 'כפר זמיר', 9857),
(650, 'כפר חב\'\'ד', 696),
(651, 'כפר חיטים', 255),
(652, 'כפר חיים', 193),
(653, 'כפר חנניה', 1297),
(654, 'כפר חסידים א', 112),
(655, 'כפר חסידים ב', 889),
(656, 'כפר חרוב', 4004),
(657, 'כפר טרומן', 673),
(658, 'כפר יאסיף', 507),
(659, 'כפר ידידיה', 233),
(660, 'כפר יהושע', 140),
(661, 'כפר יונה', 168),
(662, 'כפר יחזקאל', 85),
(663, 'כפר יעבץ', 170),
(664, 'כפר כמא', 508),
(665, 'כפר כנא', 509),
(666, 'כפר מונש', 387),
(667, 'כפר מימון', 1095),
(668, 'כפר מיסר', 512),
(669, 'כפר מל\'\'ל', 98),
(670, 'כפר מנדא', 510),
(671, 'כפר מנחם', 274),
(672, 'כפר מסריק', 297),
(673, 'כפר מרדכי', 764),
(674, 'כפר מרמורק', 9955),
(675, 'כפר נחום', 9957),
(676, 'כפר נטר', 316),
(677, 'כפר סאלד', 345),
(678, 'כפר סבא', 6900),
(679, 'כפר סילבר', 107),
(680, 'כפר סירקין', 249),
(681, 'כפר עבודה', 875),
(682, 'כפר עזה', 845),
(683, 'כפר עציון', 3488),
(684, 'כפר עקב', 3489),
(685, 'כפר פינס', 189),
(686, 'כפר קאסם', 634),
(687, 'כפר קיש', 388),
(688, 'כפר קרע', 654),
(689, 'כפר ראש הנקרה', 579),
(690, 'כפר רופין', 295),
(691, 'כפר רות', 1166),
(692, 'כפר שמאי', 605),
(693, 'כפר שמואל', 743),
(694, 'כפר שמריהו', 267),
(695, 'כפר תבור', 47),
(696, 'כפר תפוח', 3572),
(697, 'כרי דשא', 38),
(698, 'כרכום', 1285),
(699, 'כרם בן זמרה', 664),
(700, 'כרם בן שמן', 88),
(701, 'כרם ', 1094),
(702, 'כרם מהר\"ל', 580),
(703, 'כרם שלום', 1085),
(704, 'כרמי יוסף', 1264),
(705, 'כרמי צור', 3766),
(706, 'כרמיאל', 1139),
(707, 'כרמיה', 768),
(708, 'כרמים', 1198),
(709, 'כרמל', 3656),
(710, 'לב יתיר', 1196),
(711, 'לבון', 1207),
(712, 'לביא', 585),
(713, 'לבנים', 1230),
(714, 'להב', 2023),
(715, 'להבות הבשן', 380),
(716, 'להבות חביבה', 715),
(717, 'להבים', 1271),
(718, 'לוד', 7000),
(719, 'לוזית', 52),
(720, 'לוחמי הגיטאות', 595),
(721, 'לוטם', 1171),
(722, 'לוטן', 1255),
(723, 'לימן', 674),
(724, 'לכיש', 24),
(725, 'לפיד', 1310),
(726, 'לפידות', 1173),
(727, 'לקיה', 1060),
(728, 'לשם', 20001),
(729, 'מאור', 2055),
(730, 'מאיר שפיה', 102),
(731, 'מבוא ביתר', 771),
(732, 'מבוא דותן', 3569),
(733, 'מבוא חורון', 3709),
(734, 'מבוא חמה', 4204),
(735, 'מבוא מודיעים', 1141),
(736, 'מבוא עזה', 1795),
(737, 'מבואות החרמו', 2155),
(738, 'מבואות ים', 1318),
(739, 'מבועים', 1080),
(740, 'מבחור', 9962),
(741, 'מבטחים', 829),
(742, 'מבקיעים', 573),
(743, 'מבשרת ציון', 1015),
(744, 'מגאר', 481),
(745, 'מג\'ד אל כרום', 516),
(746, 'מגדים', 689),
(747, 'מגדל', 65),
(748, 'מגדל העמק', 874),
(749, 'מגדל עוז', 3561),
(750, 'מג\'דל שמס', 4201),
(751, 'מגדל תפן', 1722),
(752, 'מגדלים', 3751),
(753, 'מגידו', 586),
(754, 'מגל', 375),
(755, 'מגן', 695),
(756, 'מגן שאול', 1155),
(757, 'מגשימים', 722),
(758, 'מדרך עוז', 2029),
(759, 'מדרשת בן גוריון', 1140),
(760, 'מודיעין עילית', 3797),
(761, 'מודיעין-מכבים-רעות', 1200),
(762, 'מולדה', 1360),
(763, 'מולדת', 269),
(764, 'מוצא עילית', 208),
(765, 'מוצא תחתית', 40),
(766, 'מוקייבלה', 635),
(767, 'מורג', 5407),
(768, 'מורן', 1163),
(769, 'מורשת', 1178),
(770, 'מזור', 606),
(771, 'מזכרת בתיה', 28),
(772, 'מזרע', 104),
(773, 'מזרעה', 517),
(774, 'מחולה', 3599),
(775, 'מחנה הילה', 1411),
(776, 'מחנה יהודית', 1413),
(777, 'מחנה יוכבד', 1416),
(778, 'מחנה יפה', 1415),
(779, 'מחנה מרים', 1414),
(780, 'מחנה עדי', 1417),
(781, 'מחניים', 308),
(782, 'מחסיה', 776),
(783, 'מטולה', 43),
(784, 'מטע', 822),
(785, 'מי עמי', 1128),
(786, 'מיטב', 2054),
(787, 'מייסר', 649),
(788, 'מיצר', 4019),
(789, 'מירב', 1282),
(790, 'מירון', 607),
(791, 'מישר', 731),
(792, 'מיתר', 1268),
(793, 'מכבים-רעות', 1273),
(794, 'מכון וינגייט', 9974),
(795, 'מכורה', 3614),
(796, 'מכחול', 1343),
(797, 'מכמורת', 382),
(798, 'מכמנים', 1202),
(799, 'מלאה', 164),
(800, 'מלילות', 2044),
(801, 'מלכיה', 596),
(802, 'מלכישוע', 1154),
(803, 'מנוחה', 2030),
(804, 'מנוף', 1174),
(805, 'מנות', 1205),
(806, 'מנזר לטרון', 9975),
(807, 'מנחמיה', 48),
(808, 'מנרה', 347),
(809, 'מנשית זבדה', 994),
(810, 'מסד', 1258),
(811, 'מסדה', 263),
(812, 'מסילות', 298),
(813, 'מסילת ציון', 742),
(814, 'מסלול', 748),
(815, 'מסמיה', 9980),
(816, 'מסעדה', 4203),
(817, 'מסעודין אל עזאזמה', 939),
(818, 'מעברות', 197),
(819, 'מעגלים', 1082),
(820, 'מעגן', 678),
(821, 'מעגן מיכאל', 694),
(822, 'מעוז חיים', 272),
(823, 'מעון', 3657),
(824, 'מעונה', 570),
(825, 'מעיין ברוך', 416),
(826, 'מעיין צבי', 290),
(827, 'מעיליא', 518),
(828, 'מעלה אדומים', 3616),
(829, 'מעלה אפרים', 3608),
(830, 'מעלה גלבוע', 1127),
(831, 'מעלה גמלא', 4008),
(832, 'מעלה החמישה', 286),
(833, 'מעלה לבונה', 3752),
(834, 'מעלה מכמש', 3651),
(835, 'מעלה עירון', 1327),
(836, 'מעלה עמוס', 3653),
(837, 'מעלה שומרון', 3637),
(838, 'מעלות-תרשיחא', 1063),
(839, 'מעני אבו חאמ', 1270),
(840, 'מענית', 344),
(841, 'מעש', 230),
(842, 'מפלסים', 668),
(843, 'מפעלי מעון', 1769),
(844, 'מפעלי צין -ע', 1776),
(845, 'מפעלי רותם', 1773),
(846, 'מצדה', 9976),
(847, 'מצדות יהודה', 3745),
(848, 'מצובה', 325),
(849, 'מצודת כח', 9977),
(850, 'מצליח', 757),
(851, 'מצפה', 58),
(852, 'מצפה אבי\"ב', 1222),
(853, 'מצפה אילן', 1370),
(854, 'מצפה יריחו', 3576),
(855, 'מצפה נטופה', 1190),
(856, 'מצפה רמון', 99),
(857, 'מצפה שלם', 3610),
(858, 'מצר', 648),
(859, 'מקווה ישראל', 22),
(860, 'מרגליות', 843),
(861, 'מרום גולן', 4101),
(862, 'מרחב עם', 1340),
(863, 'מרחביה (קיבוץ)', 66),
(864, 'מרחביה מושב', 97),
(865, 'מרכז אזורי מרום הגליל', 1708),
(866, 'מרכז אזורי משגב', 1723),
(867, 'מרכז כ\'\'ח', 1705),
(868, 'מרכז למחקר ג', 9978),
(869, 'מרכז שפירא', 1098),
(870, 'מרעית', 9886),
(871, 'משאבי שדה', 421),
(872, 'משגב', 9897),
(873, 'משגב דב', 765),
(874, 'משגב עם', 378),
(875, 'משהד', 520),
(876, 'משואה', 3605),
(877, 'משואות יצחק', 620),
(878, 'משכיות', 3785),
(879, 'משמר איילון', 670),
(880, 'משמר דוד', 563),
(881, 'משמר הירדן', 732),
(882, 'משמר הנגב', 395),
(883, 'משמר העמק', 130),
(884, 'משמר השבעה', 729),
(885, 'משמר השרון', 194),
(886, 'משמרות', 213),
(887, 'משמרת', 425),
(888, 'משען', 791),
(889, 'מתמור', 9887),
(890, 'מתן', 1315),
(891, 'מתת', 1184),
(892, 'מתתיהו', 3648),
(893, 'נאות גולן', 4551),
(894, 'נאות הכיכר', 1124),
(895, 'נאות מרדכי', 408),
(896, 'נאות סמדר', 1197),
(897, 'נאעורה', 524),
(898, 'נבטים', 396),
(899, 'נגבה', 315),
(900, 'נגוהות', 3724),
(901, 'נהורה', 309),
(902, 'נהלל', 80),
(903, 'נהרייה', 9100),
(904, 'נוב', 4304),
(905, 'נוגה', 55),
(906, 'נווה', 1366),
(907, 'נווה אבות', 926),
(908, 'נווה אור', 590),
(909, 'נווה אטי\'\'ב', 4303),
(910, 'נווה אילן', 405),
(911, 'נווה איתן', 296),
(912, 'נווה אפרים', 1062),
(913, 'נווה דניאל', 3725),
(914, 'נווה דקלים', 5427),
(915, 'נווה הדסה', 9983),
(916, 'נווה הרצוג', 9861),
(917, 'נווה זוהר', 1057),
(918, 'נווה זיו', 1314),
(919, 'נווה חריף', 1279),
(920, 'נווה ים', 312),
(921, 'נווה ימין', 686),
(922, 'נווה ירק', 858),
(923, 'נווה מבטח', 827),
(924, 'נווה מיכאל', 1071),
(925, 'נווה שלום', 1259),
(926, 'נועם', 15),
(927, 'נוף איילון', 1333),
(928, 'נופי נחמיה', 20005),
(929, 'נופים', 3790),
(930, 'נופית', 1284),
(931, 'נופך', 257),
(932, 'נוקדים', 3726),
(933, 'נורדיה', 447),
(934, 'נורית', 833),
(935, 'נח\"ל אמיתי', 1277),
(936, 'נח\"ל בתרונות', 3757),
(937, 'נח\"ל גבעות', 3783),
(938, 'נח\"ל גינת', 3728),
(939, 'נח\"ל דורן', 3721),
(940, 'נח\"ל יעלון', 1269),
(941, 'נח\"ל עין חגל', 3753),
(942, 'נחושה', 59),
(943, 'נח\'\'ל אלישע', 3718),
(944, 'נחל עוז', 844),
(945, 'נחל שורק', 1751),
(946, 'נחלה', 2045),
(947, 'נחליאל', 3767),
(948, 'נחלים', 449),
(949, 'נחם', 809),
(950, 'נחף', 522),
(951, 'נחשולים', 433),
(952, 'נחשון', 777),
(953, 'נחשונים', 705),
(954, 'נטועה', 1147),
(955, 'נטור', 4014),
(956, 'נטעים', 174),
(957, 'נטף', 1254),
(958, 'ניל\'\'י', 3655),
(959, 'נין', 523),
(960, 'ניסנית', 5426),
(961, 'ניצן', 351),
(962, 'ניצן ב', 1419),
(963, 'ניצנה כפר נוער', 1195),
(964, 'ניצני סיני', 1280),
(965, 'ניצני עוז', 851),
(966, 'ניצנים', 359),
(967, 'ניר אליהו', 808),
(968, 'ניר בנים', 553),
(969, 'ניר גלים', 720),
(970, 'ניר דוד', 256),
(971, 'ניר ח\'\'ן', 11),
(972, 'ניר יפה', 165),
(973, 'ניר יצחק', 402),
(974, 'ניר ישראל', 699),
(975, 'ניר משה', 2047),
(976, 'ניר עוז', 69),
(977, 'ניר עם', 348),
(978, 'ניר עציון', 769),
(979, 'ניר עקיבא', 2048),
(980, 'ניר צבי', 331),
(981, 'נירים', 602),
(982, 'נירית', 1236),
(983, 'נירן', 3620),
(984, 'נמל תעופה בן גוריון', 1748),
(985, 'נמרוד', 4023),
(986, 'נס הרים', 825),
(987, 'נס עמים', 1143),
(988, 'נס ציונה', 7200),
(989, 'נעורים', 186),
(990, 'נעלה', 3787),
(991, 'נעמי', 3713),
(992, 'נען', 158),
(993, 'נצאצרה', 1041),
(994, 'נצר חזני', 5410),
(995, 'נצר סרני', 435),
(996, 'נצרים', 5408),
(997, 'נצרת', 7300),
(998, 'נצרת עילית', 1061),
(999, 'נשר', 2500),
(1000, 'נתיב הגדוד', 3555),
(1001, 'נתיב הל\"ה', 693),
(1002, 'נתיב העשרה', 1242),
(1003, 'נתיב השיירה', 792),
(1004, 'נתיבות', 246),
(1005, 'נתניה', 7400),
(1006, 'סאג\'ור', 525),
(1007, 'סאסא', 578),
(1008, 'סביון', 587),
(1009, 'סגולה', 2046),
(1010, 'סדום', 1775),
(1011, 'סדום', 12),
(1012, 'סואעד', 942),
(1013, 'סולם שונם', 526),
(1014, 'סוסיה', 3756),
(1015, 'סופה', 1238),
(1016, 'סח\'נין', 7500),
(1017, 'סלמה', 1245),
(1018, 'סלעית', 3567),
(1019, 'סמר', 1156),
(1020, 'סנסנה', 1328),
(1021, 'סעד', 419),
(1022, 'סער', 454),
(1023, 'ספיר', 1176),
(1024, 'ספסופה', 609),
(1025, 'סתריה', 610),
(1026, 'עבדון', 892),
(1027, 'עברון', 376),
(1028, 'עגור', 794),
(1029, 'ע\'ג\'ר', 4501),
(1030, 'עד הלום', 1762),
(1031, 'עדי', 1199),
(1032, 'עדנים', 2035),
(1033, 'עוזה', 826),
(1034, 'עוזייר', 528),
(1035, 'עולש', 737),
(1036, 'עומר', 666),
(1037, 'עופר', 810),
(1038, 'עופרה', 3617),
(1039, 'עופרים', 3792),
(1040, 'עוצם', 32),
(1041, 'עוקבי', 957),
(1042, 'עזוז', 328),
(1043, 'עזר', 1149),
(1044, 'עזריאל', 837),
(1045, 'עזריה', 711),
(1046, 'עזריקם', 817),
(1047, 'עטרת', 3658),
(1048, 'עידן', 1175),
(1049, 'עיילבון', 530),
(1050, 'עיינות', 156),
(1051, 'עילוט', 511),
(1052, 'עין איברהים', 9864),
(1053, 'עין איילה', 687),
(1054, 'עין אל אסד', 546),
(1055, 'עין גב', 273),
(1056, 'עין גדי', 2042),
(1057, 'עין דור', 436),
(1058, 'עין הבשור', 1240),
(1059, 'עין הוד', 74),
(1060, 'עין החורש', 167),
(1061, 'עין המפרץ', 289),
(1062, 'עין הנצי\'\'ב', 383),
(1063, 'עין העמק', 367),
(1064, 'עין השופט', 270),
(1065, 'עין השלושה', 676),
(1066, 'עין ורד', 157),
(1067, 'עין זיוון', 4503),
(1068, 'עין חוד', 1320),
(1069, 'עין חצבה', 1053),
(1070, 'עין חרוד איחוד', 89),
(1071, 'עין חרוד מאוחד', 82),
(1072, 'עין יהב', 806),
(1073, 'עין יעקב', 813),
(1074, 'עין כמונים', 9889),
(1075, 'עין כרם בי\'\'ס חקלאי', 1056),
(1076, 'עין כרמל', 426),
(1077, 'עין מאהל', 532),
(1078, 'עין נקובא', 521),
(1079, 'עין עירון', 223),
(1080, 'עין צורים', 622),
(1081, 'עין קנייא', 4502),
(1082, 'עין ראפה', 514),
(1083, 'עין שמר', 139),
(1084, 'עין שריד', 880),
(1085, 'עין תמר', 1251),
(1086, 'עינב', 20007),
(1087, 'עינת', 871),
(1088, 'עיר אובות', 1187),
(1089, 'עכברה', 704),
(1090, 'עכו', 7600),
(1091, 'עלומים', 1146),
(1092, 'עלי', 3765),
(1093, 'עלי זהב', 3727),
(1094, 'עלמה', 688),
(1095, 'עלמון', 3715),
(1096, 'עמוקה', 1212),
(1097, 'עמור', 1193),
(1098, 'עמינדב', 779),
(1099, 'עמיעד', 385),
(1100, 'עמיעוז', 318),
(1101, 'עמיקם', 773),
(1102, 'עמיר', 319),
(1103, 'עמנואל', 3660),
(1104, 'עמקה', 708),
(1105, 'ענב', 3712),
(1106, 'עספיא', 534),
(1107, 'עפולה', 7700),
(1108, 'עץ אפרים', 3778),
(1109, 'עצמון שגב', 917),
(1110, 'עראבה', 531),
(1111, 'עראמשה', 1246),
(1112, 'ערב אזונר', 9801),
(1113, 'ערב אל גוארנ', 9802),
(1114, 'ערב אל גנאדי', 9803),
(1115, 'ערב אל היב', 9804),
(1116, 'ערב אל ווהב', 9805),
(1117, 'ערב אל חרנאב', 9810),
(1118, 'ערב אל כעביה', 9809),
(1119, 'ערב אל מוריס', 9811),
(1120, 'ערב אל נגדאת', 9812),
(1121, 'ערב אל נעים', 1335),
(1122, 'ערב אל סגירא', 9813),
(1123, 'ערב אל סמניה', 9816),
(1124, 'ערב אל עיסאת', 9817),
(1125, 'ערב אל עיצאת', 9818),
(1126, 'ערב אל פמאז', 9820),
(1127, 'ערב אל שבאב', 9821),
(1128, 'ערב גזאלין', 9823),
(1129, 'ערב טוואפרה', 9808),
(1130, 'ערב סעדיה', 9826),
(1131, 'ערד', 2560),
(1132, 'ערוגות', 593),
(1133, 'ערערה', 637),
(1134, 'ערערה-בנגב', 1192),
(1135, 'עשרת', 591),
(1136, 'עתלית', 53),
(1137, 'עתניאל', 3748),
(1138, 'פארן', 1151),
(1139, 'פאת שדה', 5436),
(1140, 'פדואל', 3768),
(1141, 'פדויים', 750),
(1142, 'פדיה', 838),
(1143, 'פוריה כפר עבודה', 1104),
(1144, 'פוריה נווה עובד', 1105),
(1145, 'פוריה עילית', 1313),
(1146, 'פוריידיס', 537),
(1147, 'פורת', 767),
(1148, 'פטיש', 749),
(1149, 'פלך', 1185),
(1150, 'פלמחים', 597),
(1151, 'פני חבר', 3723),
(1152, 'פסגות', 3659),
(1153, 'פסוטה', 535),
(1154, 'פעמי תש\'\'ז', 2059),
(1155, 'פצאל', 3615),
(1156, 'פקיעין (בוקייעה)', 536),
(1157, 'פקיעין חדשה', 281),
(1158, 'פרדס חנה-כרכור', 7800),
(1159, 'פרדסיה', 171),
(1160, 'פרוד', 599),
(1161, 'פרזון', 2053),
(1162, 'פרי גן', 1231),
(1163, 'פתח תקווה', 7900),
(1164, 'פתחיה', 839),
(1165, 'צאלים', 413),
(1166, 'צביה', 1180),
(1167, 'צבעון', 1213),
(1168, 'צובה', 465),
(1169, 'צוחר', 1136),
(1170, 'צופיה', 1111),
(1171, 'צופים', 3791),
(1172, 'צופית', 198),
(1173, 'צופר', 1150),
(1174, 'צוקי ים', 1102),
(1175, 'צוקים', 1262),
(1176, 'צור הדסה', 1113),
(1177, 'צור יגאל (לא בשימוש)', 1306),
(1178, 'צור יצחק', 1345),
(1179, 'צור משה', 276),
(1180, 'צור נתן', 1148),
(1181, 'צוריאל', 774),
(1182, 'צורית', 1221),
(1183, 'צורן', 1308),
(1184, 'ציפורי', 613),
(1185, 'ציקלון', 9829),
(1186, 'צלפון', 796),
(1187, 'צנדלה', 636),
(1188, 'צפריה', 594),
(1189, 'צפרירים', 1079),
(1190, 'צפת', 8000),
(1191, 'צרופה', 612),
(1192, 'צריפין', 9981),
(1193, 'צרעה', 567),
(1194, 'קבועה', 1234),
(1195, 'קבוצת ', 334),
(1196, 'קדומים', 3557),
(1197, 'קדימה', 195),
(1198, 'קדיתא', 1338),
(1199, 'קדמה', 392),
(1200, 'קדמת צבי', 4025),
(1201, 'קדר', 3781),
(1202, 'קדרון', 615),
(1203, 'קדרים', 1211),
(1204, 'קודייראת א צאנה', 964),
(1205, 'קוואעין', 972),
(1206, 'קוממיות', 766),
(1207, 'קורנית', 1179),
(1208, 'קטורה', 1052),
(1209, 'קטיף', 5423),
(1210, 'קיסריה', 1167),
(1211, 'קלחים', 414),
(1212, 'קליה', 3601),
(1213, 'קלנסווה', 638),
(1214, 'קלע', 4024),
(1215, 'קמ\"ג - דימונ', 1774),
(1216, 'קסר א סיר', 1347),
(1217, 'קציר', 1243),
(1218, 'קציר', 12435),
(1219, 'קצרין', 4100),
(1220, 'קריית אונו', 2620),
(1221, 'קריית אתא', 6800),
(1222, 'קריית ביאליק', 9500),
(1223, 'קריית גת', 2630),
(1224, 'קריית חיים', 4991),
(1225, 'קריית טבעון', 2300),
(1226, 'קריית ים', 9600),
(1227, 'קריית יערים', 1137),
(1228, 'קריית מוצקין', 8200),
(1229, 'קריית מלאכי', 1034),
(1230, 'קריית עקרון', 469),
(1231, 'קריית שמונה', 2800),
(1232, 'קרית ארבע', 3611),
(1233, 'קרית חוף', 9833),
(1234, 'קרית חינוך מרחבים', 1768),
(1235, 'קרית חינוך שדות נגב', 1766),
(1236, 'קרית יערים מוסד', 2039),
(1237, 'קרית נטפים', 3746),
(1238, 'קרית ענבים', 78),
(1239, 'קרית שלמה', 412),
(1240, 'קרני שומרון', 3640),
(1241, 'קשת', 4006),
(1242, 'ראמה', 543),
(1243, 'ראס אל עין', 1334),
(1244, 'ראס עלי', 990),
(1245, 'ראש העין', 2640),
(1246, 'ראש פינה', 26),
(1247, 'ראש צורים', 3602),
(1248, 'ראשון לציון', 8300),
(1249, 'רבבה', 3795),
(1250, 'רבדים', 564),
(1251, 'רביבים', 354),
(1252, 'רביד', 1225),
(1253, 'רגבה', 390),
(1254, 'רגבים', 444),
(1255, 'רהט', 1161),
(1256, 'רווחה', 2051),
(1257, 'רוויה', 2016),
(1258, 'רוחמה', 362),
(1259, 'רומאנה', 539),
(1260, 'רומת היב', 997),
(1261, 'רועי', 3619),
(1262, 'רותם', 3782),
(1263, 'רחוב', 854),
(1264, 'רחובות', 8400),
(1265, 'רחלים', 3822),
(1266, 'ריחאנייה', 540),
(1267, 'ריחן', 3568),
(1268, 'ריינה', 542),
(1269, 'רימונים', 3565),
(1270, 'רינתיה', 616),
(1271, 'רכסים', 922),
(1272, 'רם און', 1069),
(1273, 'רמות', 4702),
(1274, 'רמות השבים', 206),
(1275, 'רמות מאיר', 735),
(1276, 'רמות מנשה', 445),
(1277, 'רמות נפתלי', 372),
(1278, 'רמלה', 8500),
(1279, 'רמת אפעל', 1049),
(1280, 'רמת גן', 8600),
(1281, 'רמת דוד', 135),
(1282, 'רמת הכובש', 184),
(1283, 'רמת השופט', 335),
(1284, 'רמת השרון', 2650),
(1285, 'רמת חובב', 1770),
(1286, 'רמת יוחנן', 178),
(1287, 'רמת ישי', 122),
(1288, 'רמת מגשימים', 4701),
(1289, 'רמת פנקס', 883),
(1290, 'רמת צבי', 339),
(1291, 'רמת רזיאל', 460),
(1292, 'רמת רחל', 127),
(1293, 'רנן', 789),
(1294, 'רעים', 713),
(1295, 'רעננה', 8700),
(1296, 'רפיח ים', 5433),
(1297, 'רקפת', 1228),
(1298, 'רשפון', 247),
(1299, 'רשפים', 437),
(1300, 'רתמים', 1260),
(1301, 'שא-נור', 3711),
(1302, 'שאר ישוב', 324),
(1303, 'שבטה', 9837),
(1304, 'שבי ציון', 282),
(1305, 'שבי שומרון', 3571),
(1306, 'שבלי', 913),
(1307, 'שגב שלום', 1286),
(1308, 'שדה אילן', 721),
(1309, 'שדה אליהו', 304),
(1310, 'שדה אליעזר', 861),
(1311, 'שדה בוקר', 885),
(1312, 'שדה דוד', 36),
(1313, 'שדה ורבורג', 284),
(1314, 'שדה חמד', 2015),
(1315, 'שדה יואב', 293),
(1316, 'שדה יעקב', 142),
(1317, 'שדה יצחק', 2008),
(1318, 'שדה משה', 18),
(1319, 'שדה נחום', 259),
(1320, 'שדה נחמיה', 329),
(1321, 'שדה ניצן', 1058),
(1322, 'שדה עוזיהו', 739),
(1323, 'שדה צבי', 2049),
(1324, 'שדות ים', 327),
(1325, 'שדות מיכה', 27),
(1326, 'שדי אברהם', 1223),
(1327, 'שדי תרומות', 2057),
(1328, 'שדמה', 555),
(1329, 'שדמות דבורה', 306),
(1330, 'שדמות מחולה', 3578),
(1331, 'שדרות', 1031),
(1332, 'שואבה', 741),
(1333, 'שובה', 761),
(1334, 'שובל', 394),
(1335, 'שוהם', 1304),
(1336, 'שומרה', 614),
(1337, 'שומריה', 1265),
(1338, 'שוקדה', 415),
(1339, 'שורש', 456),
(1340, 'שורשים', 1235),
(1341, 'שושנת העמקים', 224),
(1342, 'שזור', 527),
(1343, 'שחר', 7),
(1344, 'שחרות', 1266),
(1345, 'שיבולים', 865),
(1346, 'שיטים', 1267),
(1347, 'שייח\' דנון', 658),
(1348, 'שילה', 3641),
(1349, 'שילת', 1165),
(1350, 'שכם', 3900),
(1351, 'שכניה', 1160),
(1352, 'שלווה', 873),
(1353, 'שלוחות', 439),
(1354, 'שלומי', 812),
(1355, 'שליו', 5434),
(1356, 'שמיר', 366),
(1357, 'שמעה', 3784),
(1358, 'שמרת', 432),
(1359, 'שמשית', 1337),
(1360, 'שני', 1287),
(1361, 'שניר', 1132),
(1362, 'שעב', 538),
(1363, 'שעורים', 1299),
(1364, 'שעל', 4009),
(1365, 'שעלבים', 856),
(1366, 'שער אפרים', 661),
(1367, 'שער הגולן', 264),
(1368, 'שער הנגב', 1763),
(1369, 'שער העמקים', 237),
(1370, 'שער מנשה', 921),
(1371, 'שערי אברהם', 1106),
(1372, 'שערי תקווה', 3720),
(1373, 'שפיים', 232),
(1374, 'שפיר', 692),
(1375, 'שפר', 846),
(1376, 'שפרעם', 8800),
(1377, 'שקד', 3649),
(1378, 'שקף', 1233),
(1379, 'שרונה', 292),
(1380, 'שריגים', 1114),
(1381, 'שריד', 126),
(1382, 'שרשרת', 398),
(1383, 'שתולה', 1045),
(1384, 'שתולים', 763),
(1385, 'תאשור', 2062),
(1386, 'תדהר', 2061),
(1387, 'תובל', 1172),
(1388, 'תומר', 3558),
(1389, 'תושיה', 1083),
(1390, 'תימורים', 163),
(1391, 'תירוש', 10),
(1392, 'תל אביב - יפו', 5000),
(1393, 'תל אביב צפון', 9969),
(1394, 'תל השומר', 9841),
(1395, 'תל חי', 1707),
(1396, 'תל יוסף', 84),
(1397, 'תל יצחק', 287),
(1398, 'תל מונד', 154),
(1399, 'תל נוף', 1412),
(1400, 'תל עדשים', 103),
(1401, 'תל קציר', 719),
(1402, 'תל שבע', 1054),
(1403, 'תל תאומים', 1283),
(1404, 'תלם', 3719),
(1405, 'תלמי אליהו', 1051),
(1406, 'תלמי אלעזר', 2003),
(1407, 'תלמי ביל\'\'ו', 2050),
(1408, 'תלמי יוסף', 1237),
(1409, 'תלמי יחיאל', 727),
(1410, 'תלמי יפה', 744),
(1411, 'תלמים', 814),
(1412, 'תמרת', 1244),
(1413, 'תנובות', 2002),
(1414, 'תעוז', 752),
(1415, 'תפרח', 709),
(1416, 'תקומה', 665),
(1417, 'תקוע', 3563),
(1418, 'תראבין א צאנה', 1346),
(1419, 'תראבין א צאנה שבט', 970),
(1420, 'תרום', 778);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1421;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
