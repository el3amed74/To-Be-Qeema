-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2026 at 09:53 AM
-- Server version: 11.4.10-MariaDB
-- PHP Version: 8.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teamqeem_tobe`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `earning_points` int(11) NOT NULL DEFAULT 0,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`content`)),
  `image` varchar(255) DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`title`)),
  `searchable_title` text NOT NULL,
  `searchable_content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `course_id`, `user_id`, `accepted_at`, `earning_points`, `content`, `image`, `is_published`, `created_at`, `updated_at`, `title`, `searchable_title`, `searchable_content`) VALUES
(2, 1, 6, NULL, 0, '{\"ar\": \"Velit quis exercitationem quas et. Accusamus perferendis incidunt optio molestias sit. Ut minima exercitationem non non corrupti.\\n\\nLaborum beatae ullam quibusdam odio. Ab repellendus magnam quibusdam culpa tempora laborum. Labore quasi vel eius sed dolor.\\n\\nAlias aspernatur inventore cupiditate culpa placeat voluptas. Dolor rem laboriosam dolores. Esse nemo ea dolorem. Dolorem qui non dolorem neque.\", \"en\": \"Ab sequi optio et aliquam dolor. Autem sed nobis deserunt soluta ipsa deleniti omnis. Quis quia eos numquam reprehenderit modi est omnis inventore. Laudantium tempore eum libero fugit amet qui.\\n\\nRepudiandae et et exercitationem. Maxime adipisci sit nihil a sit provident et a. Asperiores et veritatis et et esse. Distinctio dignissimos quidem autem repellendus vitae et.\\n\\nLibero mollitia iusto nisi occaecati deleniti illo. Mollitia sunt suscipit quos cupiditate optio illum.\"}', 'https://via.placeholder.com/640x480.png/006666?text=articles+reiciendis', 0, '2026-02-03 14:32:48', '2026-02-11 14:23:21', 'null', '', NULL),
(3, 2, 2, NULL, 0, '{\"ar\": \"Rerum dignissimos itaque iste consequatur. Culpa minus sed amet sit modi doloribus in. Non et magni iusto totam error sunt. Non ipsam cupiditate consequatur error voluptatem voluptatum non vitae.\\n\\nVoluptas eaque doloremque et facere quis quo. Sit quos soluta iure necessitatibus. Architecto ad amet fugit architecto omnis quis. Consequatur exercitationem est aut minus molestiae cum deserunt sunt.\\n\\nDolores ut omnis deleniti delectus sit error. Mollitia quis ex voluptas laboriosam voluptatibus. Voluptatem similique voluptates accusantium. Ea laudantium quos quam.\", \"en\": \"Voluptatem nulla tempore voluptatum ipsa voluptate. Voluptas minus ipsum omnis expedita est. Optio quidem dolor ipsa ea praesentium aut. Dolores provident eum atque totam dolorem odio ipsum illo. Quia hic voluptatibus aliquid eum ad.\\n\\nDignissimos et minus et omnis et. Quae sed non sed ut tempore. Omnis dolor sint ab non ipsa. Sed repudiandae culpa quas aut qui omnis officia.\\n\\nVoluptatum asperiores sint necessitatibus ut omnis commodi voluptatum sunt. Repudiandae aut at praesentium iste ad odio. Non facilis aut voluptatem occaecati. Optio rerum et nihil alias quo.\"}', 'https://via.placeholder.com/640x480.png/004411?text=articles+voluptas', 0, '2026-02-03 14:32:48', '2026-02-11 14:23:21', 'null', '', NULL),
(4, 2, 2, NULL, 0, '{\"ar\": \"Et et perspiciatis et nihil error nemo. Sit voluptate enim illo fugit sequi aut. Voluptatem unde laborum deleniti aut dolorum rerum. Tenetur aut fuga possimus consequatur sunt.\\n\\nIn quam est fuga qui ipsam odit eos. Sit asperiores repellat quos. Fuga dolores sit quas enim voluptas veniam.\\n\\nSequi voluptas saepe est ea explicabo temporibus. Nihil magni quas quidem voluptas qui asperiores. Necessitatibus esse enim ex.\", \"en\": \"Aperiam qui sunt repudiandae inventore. Illo aut dolores minus expedita.\\n\\nInventore aut dolor est. Minus sed neque modi deserunt asperiores. Beatae enim tempora dolores in dolore aliquid voluptate eos. Est commodi placeat sed dolorem magni cum. Aut quia perspiciatis et magni at.\\n\\nVeritatis et maxime molestiae tenetur. Sunt ducimus dicta vitae dolor ut. Cum ex voluptatem assumenda id velit corrupti et vel.\"}', 'https://via.placeholder.com/640x480.png/00dd00?text=articles+laudantium', 0, '2026-02-03 14:32:48', '2026-02-11 14:22:02', 'null', '', NULL),
(5, 2, 2, NULL, 0, '{\"ar\": \"Atque aliquid officia itaque tenetur deserunt fuga. Rem sint animi numquam qui. Debitis aut pariatur esse corrupti culpa. Iusto amet aut soluta earum sunt est.\\n\\nAdipisci sint vero sit eum sunt beatae aut vel. Saepe fugit perspiciatis sed. Et eum non consectetur ipsum. Quam accusantium quas nihil dolorum architecto molestias quia.\\n\\nQuae dolore a corporis praesentium magnam laudantium fuga. Molestias sequi rerum eligendi impedit quaerat commodi.\", \"en\": \"Rerum labore ipsa laboriosam voluptatum alias laudantium reprehenderit. Numquam quia necessitatibus vitae eum corrupti quos. Id fuga similique libero iste mollitia nobis a. Necessitatibus culpa quia et molestiae asperiores et.\\n\\nUt natus culpa culpa voluptatem. Odit corporis nostrum molestias dicta doloremque. Neque ut facere quibusdam sed. Autem maxime et eum nihil qui sunt iusto consectetur.\\n\\nTempora vitae ut consequatur modi. Est esse eligendi error rerum natus tempore quam. Hic voluptas reiciendis inventore. Aut corrupti quisquam assumenda dolorum.\"}', 'https://via.placeholder.com/640x480.png/00aabb?text=articles+eaque', 0, '2026-02-03 14:32:48', '2026-02-11 14:22:03', 'null', '', NULL),
(6, 2, 2, NULL, 0, '{\"ar\": \"Hic saepe dolorem aut reiciendis libero. Ea eveniet consequatur eos necessitatibus fugit sunt corrupti. Velit magnam sed optio quaerat odio et vitae. Asperiores aut laudantium qui occaecati illum repudiandae alias.\\n\\nAut aut necessitatibus asperiores ut doloribus asperiores est natus. Quis debitis quia quo ut voluptatum. Beatae non ut ut et et accusantium. Modi ratione consequatur illo et eius vel.\\n\\nDoloremque minima tempore consequatur laboriosam sunt. Omnis explicabo facere et nihil aperiam necessitatibus. Et ut illo ab commodi.\", \"en\": \"Enim alias sint amet dolorem et est qui. Sit et nostrum sint impedit est. Soluta recusandae excepturi labore accusantium. Nihil voluptatem qui repudiandae eos ut autem.\\n\\nVeritatis alias recusandae dignissimos. In impedit vitae numquam dolorum ex. Nostrum sunt unde numquam neque temporibus.\\n\\nSit unde neque rerum voluptas. Quo maxime nihil optio dolorem est ipsa. Animi corporis asperiores aut est.\"}', 'https://via.placeholder.com/640x480.png/00ff33?text=articles+ex', 0, '2026-02-03 14:32:48', '2026-02-11 14:22:08', 'null', '', NULL),
(7, 3, 5, NULL, 0, '{\"ar\": \"Quidem ut neque accusamus vel officiis quo. Quos maxime repudiandae nam distinctio et. Fuga quo sunt aut minus maiores delectus. Id officiis voluptates voluptate assumenda animi totam repudiandae.\\n\\nConsequatur culpa debitis perferendis suscipit eum. Rem id minus nesciunt dolorem libero et veniam. Dolor a in illum nesciunt consequatur autem id.\\n\\nOmnis sapiente occaecati voluptatem est et. Beatae qui nisi ex nemo soluta reiciendis. Vel ducimus dolores totam.\", \"en\": \"Tenetur ipsum sunt ea in amet dolorum et eius. Vel saepe sed minus similique ex quos. Amet repellendus et sunt ad laboriosam.\\n\\nNihil aut et est vitae a dolor placeat id. Aut quaerat nulla et saepe libero. Iure doloremque magni eius. Nostrum architecto alias error minima.\\n\\nRecusandae repellendus optio est iste dignissimos natus. Aut aut rem doloremque culpa nobis aliquam accusantium. Libero et quis modi unde. Esse voluptas perspiciatis explicabo autem distinctio corporis.\"}', 'https://via.placeholder.com/640x480.png/003377?text=articles+enim', 0, '2026-02-03 14:32:49', '2026-02-03 14:32:49', 'null', '', NULL),
(8, 3, 5, NULL, 0, '{\"ar\": \"Neque nam et unde eius voluptatem. Quam optio illo officia animi fugiat. Dignissimos exercitationem blanditiis ipsa voluptatem voluptatem. Corporis quo quisquam aspernatur reprehenderit voluptas esse.\\n\\nNumquam autem voluptas beatae modi fugiat. Laborum illo harum earum aut. Aperiam sit rerum non perspiciatis.\\n\\nEt voluptate est aliquid reiciendis voluptatem suscipit. Culpa sed voluptas autem minima. Aliquid similique explicabo sed quae. Qui fuga vel quasi aut reprehenderit sint ipsum.\", \"en\": \"Voluptate laborum ut aut qui. Nobis maiores omnis vel. Ut beatae voluptatem doloremque illum architecto quis suscipit.\\n\\nAliquid ut ut possimus beatae qui voluptas. Nostrum asperiores adipisci hic recusandae impedit. Adipisci sunt omnis consectetur esse delectus sunt. Dignissimos ut a exercitationem dolorum.\\n\\nDicta cupiditate fugiat delectus omnis inventore facere. Sint excepturi eaque occaecati omnis qui. Dicta fugit quisquam aperiam quas dolorum fuga. Praesentium nobis praesentium velit rerum est.\"}', 'https://via.placeholder.com/640x480.png/000044?text=articles+autem', 0, '2026-02-03 14:32:49', '2026-02-03 14:32:49', 'null', '', NULL),
(9, 4, 6, NULL, 0, '{\"ar\": \"Nulla molestias modi similique velit cumque autem dolorem debitis. Reiciendis voluptatem sint placeat temporibus. Et perspiciatis vitae consectetur quae.\\n\\nQuis sunt praesentium molestias aut aut sit. Quia est autem rerum quis vitae voluptate qui. Ut sint et ea doloremque.\\n\\nUt sint sed non quo est. Tempora corporis eveniet provident quae pariatur maiores sit provident. Expedita in et nihil velit debitis illo rerum.\", \"en\": \"Similique ab veritatis sit aliquam voluptatem dolor voluptas. Et quia sunt laborum accusantium dolores. Tempora vel et cupiditate deserunt recusandae explicabo possimus. Quod minima aut magni non ipsam.\\n\\nUnde eos itaque nostrum impedit. Numquam aut illum autem quo. Tenetur non qui voluptas consequatur eum sunt. Magnam suscipit molestias qui qui.\\n\\nCorporis sint et consequatur et molestiae quia. Et ab sit fuga magni ullam consequatur. Totam magnam ea accusamus vel quod quam ut iste. Qui in temporibus eius repudiandae autem rem. Qui occaecati ut rerum cumque at.\"}', 'https://via.placeholder.com/640x480.png/00ffaa?text=articles+enim', 0, '2026-02-03 14:32:49', '2026-02-11 14:23:09', 'null', '', NULL),
(10, 4, 6, NULL, 0, '{\"ar\": \"Non rerum sit saepe magnam aut eos ipsum et. A ipsum nesciunt cumque nisi voluptatum adipisci. Architecto consequuntur qui recusandae deserunt unde eum. Voluptas dolorum qui omnis aliquam maiores. Accusantium sed eos sequi necessitatibus dolor veritatis.\\n\\nFacere aut iusto molestiae odit. Quia qui soluta provident eius sunt. Cum dignissimos quis velit ut molestias.\\n\\nUllam aut non ex fugit sunt. Sequi error ratione eaque rerum iure aut ipsum maxime. Provident aperiam veniam dolor et voluptatem illum. Molestiae aut et est sunt iusto beatae perspiciatis culpa.\", \"en\": \"In ratione quia ad qui repellat voluptates. Enim aut dignissimos dolores minima quia ut quod. Saepe non corrupti velit eveniet excepturi at.\\n\\nAut natus laborum optio voluptas. Autem ea expedita fugit aut neque aspernatur. Ea molestiae animi consequatur fuga inventore qui ea. Dolorum magnam atque adipisci tempore et iste quia. Atque repellat consequuntur molestiae doloremque explicabo.\\n\\nVoluptatem numquam expedita maiores ut dolorem doloremque. Qui voluptatum earum ut et in vel quas. Corrupti voluptatem commodi qui excepturi corrupti.\"}', 'https://via.placeholder.com/640x480.png/00bb55?text=articles+velit', 0, '2026-02-03 14:32:49', '2026-02-11 14:23:09', 'null', '', NULL),
(11, 4, 6, NULL, 0, '{\"ar\": \"Maiores voluptas amet iste quisquam dicta sed. Illo suscipit qui totam. Nulla libero ipsam harum molestiae.\\n\\nDeleniti aut ad veritatis commodi suscipit quibusdam. Quaerat qui minus consequuntur debitis eveniet cum. Nulla et amet nemo ut rerum. Molestiae aliquid qui quo necessitatibus occaecati quasi. Doloribus et neque est veniam qui.\\n\\nAb minus ut fugit eius cupiditate ea ea. Aut nisi ut tenetur qui esse quo. Beatae voluptas sit saepe nemo.\", \"en\": \"Ut doloremque voluptas nostrum repellendus corporis iste doloremque enim. Rem ducimus amet molestiae animi explicabo quaerat quod. Sunt tempora deleniti id iste. Saepe fugit autem labore quo consequatur quas rerum.\\n\\nLaudantium libero doloribus facilis quasi aperiam quibusdam. Voluptatum et dolorum expedita culpa saepe laboriosam reprehenderit. Est facere ut in molestiae. Ad debitis iure dolores laudantium voluptatem rerum adipisci.\\n\\nSaepe excepturi incidunt tempora dolorem. Fuga dolorem reprehenderit assumenda modi quo consequatur.\"}', 'https://via.placeholder.com/640x480.png/00ee44?text=articles+quae', 0, '2026-02-03 14:32:49', '2026-02-11 14:23:10', 'null', '', NULL),
(12, 4, 6, NULL, 0, '{\"ar\": \"Consequuntur deserunt omnis ex dolor veniam dolore. Assumenda iste maiores temporibus et sit aut. Dolor laboriosam velit rem ratione.\\n\\nCorrupti dolore vel et eveniet omnis deserunt. Doloribus accusantium fuga consequatur et ea illum. Nostrum non ea culpa. Nesciunt est deserunt veniam.\\n\\nNecessitatibus aut quo praesentium omnis illo non harum. Dolores incidunt maxime facere assumenda. Omnis neque harum ut aut eius sint expedita consectetur.\", \"en\": \"Ducimus exercitationem et quod quam beatae aspernatur. Velit ipsam nostrum quisquam voluptas. Necessitatibus commodi praesentium eum aliquam non. Ut ullam sit fuga quaerat debitis expedita nostrum.\\n\\nTotam quia dicta doloremque soluta accusantium. Sunt saepe sapiente voluptas aut sit nostrum voluptatibus. Velit eos repellendus voluptas repellendus aut sunt. Quaerat rerum quasi dolor sit eum. Ut occaecati in occaecati eaque deserunt et aut impedit.\\n\\nSaepe quod in laboriosam est sit itaque. Eum error accusantium ab facilis reprehenderit voluptas libero. Ea eos eaque molestiae provident porro quae et. Reiciendis molestias temporibus aut voluptates ut assumenda.\"}', 'https://via.placeholder.com/640x480.png/00ff66?text=articles+dicta', 0, '2026-02-03 14:32:49', '2026-02-11 14:23:10', 'null', '', NULL),
(13, 5, 2, NULL, 0, '{\"ar\": \"Ea ea ipsam eum laborum. Reiciendis natus aut et pariatur earum. Officia consequuntur odio perspiciatis necessitatibus sint enim sit.\\n\\nConsequatur aliquam quis numquam. Quae enim nulla ab temporibus est rerum. Sunt dolor qui corporis perspiciatis perferendis. Porro consequatur itaque quia sit.\\n\\nSimilique tempore molestiae aperiam libero iure error ut. Eveniet animi aut nemo illum vero voluptatibus. Harum dolorem qui explicabo autem. Amet rerum perspiciatis eos et.\", \"en\": \"Quasi commodi vel optio est minima hic. Eum aut suscipit est occaecati.\\n\\nPerspiciatis quos nostrum aliquam minima quam pariatur. Nostrum temporibus ut molestiae asperiores.\\n\\nNihil beatae vel incidunt pariatur libero minus officiis necessitatibus. Ab nulla unde magnam est aut ab deserunt molestiae. Odio molestiae aut fugiat adipisci et maiores. Deserunt cupiditate quidem quisquam velit sint. Perspiciatis dignissimos aliquam in quos labore inventore sed dolorem.\"}', 'https://via.placeholder.com/640x480.png/00dd33?text=articles+inventore', 0, '2026-02-03 14:32:49', '2026-02-03 14:32:49', 'null', '', NULL),
(14, 5, 2, NULL, 0, '{\"ar\": \"Facilis earum nesciunt inventore illo aliquam sed vero. Dolor voluptates fuga dolor hic.\\n\\nTotam similique possimus saepe aut. Quas commodi quaerat omnis aperiam.\\n\\nSint voluptatem labore eum dolorem quia exercitationem. Modi libero est earum id non.\", \"en\": \"Esse ut voluptatum in in porro corrupti facere saepe. Dolor consequatur dolorum minus aut et corrupti nulla. Delectus nisi perspiciatis quis dolore vel est quaerat. Hic nobis autem quis qui soluta et.\\n\\nConsectetur voluptas velit adipisci. Eveniet alias sit quis quae odio voluptatum. Aut hic cum quibusdam. Aut nostrum tempora vitae aut eos vel a aut.\\n\\nPariatur quia magni asperiores. Deserunt doloribus exercitationem laborum cumque incidunt. Voluptatem nulla assumenda voluptatibus consectetur accusamus.\"}', 'https://via.placeholder.com/640x480.png/0044dd?text=articles+ut', 0, '2026-02-03 14:32:49', '2026-02-11 14:23:36', 'null', '', NULL),
(15, 5, 2, NULL, 0, '{\"ar\": \"Quam porro iste nihil ut possimus quos. Nisi dignissimos in unde unde id. Dolorum et praesentium unde voluptatibus. Eos animi esse est in officiis omnis nemo.\\n\\nEa natus dolorem ut aut ex adipisci nihil voluptas. Ea minus ex incidunt. Et odit minus maxime vero voluptas eum quo cum. Sapiente sint dolor sequi earum quis.\\n\\nPorro cumque quaerat magnam minima eum. Vel ad quia ut rem quia nisi necessitatibus. Et quia doloribus eaque iste fugiat voluptas non rerum.\", \"en\": \"Ut consectetur aspernatur quo ut. Quasi accusamus omnis et. Vitae nostrum dolore incidunt voluptas quasi.\\n\\nNon architecto voluptatem aut incidunt incidunt. Ab voluptatem iure velit voluptate sunt. Exercitationem est voluptatem autem rerum et. Ipsam ea numquam aut ad sint nihil ut.\\n\\nQuasi aliquam eum et aut quia. Aliquam ipsa enim et tempore.\"}', 'https://via.placeholder.com/640x480.png/004477?text=articles+nemo', 0, '2026-02-03 14:32:49', '2026-02-11 14:23:36', 'null', '', NULL),
(16, 5, 2, NULL, 0, '{\"ar\": \"Nulla recusandae aut nisi omnis id. Unde totam quae et sit eos cumque. Quo rerum et nemo dolorem. Ipsa mollitia tenetur autem alias sapiente.\\n\\nQuam aut alias et recusandae optio voluptas suscipit. Culpa consequuntur quia rerum accusamus. Sed cumque rem quasi et velit et. Alias maiores quaerat aut quisquam et nostrum dicta. Ad debitis debitis qui deleniti quo.\\n\\nDolores ut ut architecto atque aut saepe. Aut perferendis deleniti quia. Quas debitis ut earum.\", \"en\": \"Blanditiis quam veniam aperiam perspiciatis. Perferendis sit ipsam accusantium nihil iure veniam nisi quos. Molestiae rerum qui repellendus optio praesentium dolor id.\\n\\nIn harum accusamus soluta officia. Id molestiae vel cum et sint illo omnis.\\n\\nNeque vitae in corporis quaerat nam est consequatur. Ab in qui sunt amet nostrum officia porro. Enim deserunt maiores et et eos rerum.\"}', 'https://via.placeholder.com/640x480.png/00dd88?text=articles+qui', 0, '2026-02-03 14:32:49', '2026-02-03 14:32:49', 'null', '', NULL),
(17, 5, 2, NULL, 0, '{\"ar\": \"Sunt voluptas cum sint eveniet quo. Pariatur dicta voluptas debitis eos officiis. Eligendi similique qui sapiente atque adipisci dolor.\\n\\nUt fugit facere impedit vel et et adipisci. Hic odit aut et a reprehenderit occaecati consequatur quasi. Ab et iure quibusdam dolores.\\n\\nOdit eos recusandae itaque possimus ut voluptas. Sed neque exercitationem reprehenderit dolor doloremque. Corporis veniam veritatis quisquam id quidem rerum. Quia sed quidem fugiat ipsa est ducimus nihil. Nesciunt voluptatum est quia quibusdam optio rem excepturi.\", \"en\": \"Asperiores voluptatem tempore eum dicta repellendus. Quos est ut dicta. Ut ut maxime animi sed numquam iusto.\\n\\nRerum quam optio illum fugit non facilis consequuntur. Fugit facere provident rerum non blanditiis tenetur tempora. Ullam rerum nisi et accusamus consequuntur repudiandae molestiae. Voluptas quia illo aut ratione et voluptas tempora.\\n\\nVel sint accusamus quod et. Quo numquam et et exercitationem. Et est eaque enim beatae ut dolorem.\"}', 'https://via.placeholder.com/640x480.png/0055ee?text=articles+neque', 0, '2026-02-03 14:32:49', '2026-02-03 14:32:49', 'null', '', NULL),
(18, 6, 5, NULL, 0, '{\"ar\": \"Ipsum ea accusantium et officiis exercitationem est et laudantium. Quos odio doloribus temporibus aut. Quis facere aliquam excepturi repellat occaecati molestiae.\\n\\nMagnam explicabo laboriosam expedita magni nemo quia. Sapiente voluptatem atque labore placeat ut dolorem consectetur exercitationem. Harum et incidunt dolorem reprehenderit dicta non.\\n\\nEum perspiciatis dicta laudantium maiores quia accusamus. Qui optio nihil error quia sed. Porro accusamus dolorem suscipit. Impedit maxime omnis voluptatem.\", \"en\": \"Excepturi nihil rem voluptatibus minus sint voluptatibus nobis. Repellendus veniam placeat nam accusamus hic ratione minima ad. Iusto fugiat iusto quis ullam assumenda aut. Nihil qui delectus quis vero velit.\\n\\nPerspiciatis nostrum explicabo maiores velit sapiente et voluptates. Iste non placeat laborum sequi quia. Nesciunt quidem quis voluptas laudantium nemo ab optio. Corrupti vel eum et sed sequi.\\n\\nFacere excepturi eveniet error eligendi enim beatae. Qui consequatur minus saepe praesentium eos quisquam illo qui. Cum facilis harum voluptatem dolor dolor qui beatae aspernatur. Velit voluptatem illum non aut.\"}', 'https://via.placeholder.com/640x480.png/004444?text=articles+labore', 0, '2026-02-03 14:32:49', '2026-02-11 14:23:35', 'null', '', NULL),
(19, 6, 5, NULL, 0, '{\"ar\": \"Aut distinctio maiores at saepe molestiae temporibus voluptatem vitae. Quasi voluptas cupiditate officiis impedit expedita voluptas. Cupiditate quibusdam placeat animi rerum.\\n\\nVeritatis aut eaque quia officia facilis voluptatem et. Deleniti sed illum eveniet repellat omnis. Aperiam voluptatum omnis esse fugit ratione eos.\\n\\nQuia eligendi vero neque. Vel perferendis eveniet temporibus quasi quam est. Et saepe voluptate perspiciatis quia omnis.\", \"en\": \"Corporis ut voluptas voluptatem consequuntur nemo earum delectus tempora. Omnis minima corrupti veritatis eaque.\\n\\nAnimi rerum aut laudantium. At facilis et quis quo. Architecto dolor delectus dolores fugit facilis aut.\\n\\nDolore voluptatibus facilis quos quos libero qui tempore. Tempore modi omnis cupiditate. Repellat nihil omnis excepturi praesentium voluptas expedita nihil.\"}', 'https://via.placeholder.com/640x480.png/004422?text=articles+quae', 0, '2026-02-03 14:32:49', '2026-02-03 14:32:49', 'null', '', NULL),
(20, 6, 5, NULL, 0, '{\"ar\": \"Quae ratione voluptas rem in animi nihil odio velit. Quia sequi odit et est excepturi explicabo molestiae. Ullam et autem adipisci dolor eveniet asperiores.\\n\\nNecessitatibus recusandae tempore architecto sed deleniti. Dicta impedit in sunt velit non officia. Velit sunt beatae voluptatum incidunt. Natus ut impedit culpa sit quia quas necessitatibus.\\n\\nMolestiae sed earum nobis ut. Qui sint ut omnis et quam beatae ducimus. Cumque sapiente saepe laborum sed. Tempora non nobis ducimus autem.\", \"en\": \"Ut quam et harum eligendi saepe tenetur ut. Ullam atque tempora debitis id. Beatae neque minima quibusdam.\\n\\nQuos rerum qui quae ipsam numquam id odio. Ut porro ducimus velit. Quasi sit eos occaecati a.\\n\\nOdit soluta soluta repudiandae explicabo. Eligendi laborum aut et aut reprehenderit ad non. Praesentium voluptatem consequatur nostrum qui. Et quam enim temporibus rerum repellendus blanditiis.\"}', 'https://via.placeholder.com/640x480.png/005555?text=articles+sint', 0, '2026-02-03 14:32:49', '2026-02-07 14:08:51', 'null', '', NULL),
(21, 7, 3, NULL, 0, '{\"ar\": \"Dignissimos eaque nam autem totam quis dolor quibusdam. Quia sed dicta quia animi consequuntur assumenda. Ea eum accusamus culpa reprehenderit quidem dignissimos libero. Perferendis rerum qui nemo consectetur.\\n\\nMolestias velit accusantium et aspernatur exercitationem quae. Et quia amet sint aspernatur minus asperiores dolores. Optio nesciunt ut laborum enim amet magnam voluptate sint.\\n\\nAssumenda debitis magni provident et. Nesciunt quo quas sunt iste fugiat laudantium. Vitae dolorem quae fugiat ut voluptatem. Voluptatem velit architecto non et eius dolores.\", \"en\": \"Corporis itaque vel ut. Nam aut soluta velit odio dolor.\\n\\nSint molestiae consectetur praesentium est veritatis et ut. Autem ea quam qui eaque autem in suscipit. Illo rerum eos tenetur ab quasi sed et. Saepe labore earum error quis consequuntur tempore commodi.\\n\\nIllo omnis rem rerum voluptates culpa. Non cum tempore modi accusantium hic sunt minus. Dolor voluptatem natus id enim.\"}', 'https://via.placeholder.com/640x480.png/00ff55?text=articles+officia', 0, '2026-02-03 14:32:50', '2026-02-11 14:22:41', 'null', '', NULL),
(22, 7, 3, NULL, 0, '{\"ar\": \"Non aut eligendi voluptatem odio rerum dolor. Est blanditiis maxime cupiditate facilis. Possimus sint ut earum consectetur doloremque quo quidem perferendis. Ratione aut ut fuga aut. Asperiores et sit harum illo placeat ullam reiciendis.\\n\\nExpedita nesciunt nobis repudiandae rerum. Eos quibusdam omnis excepturi animi corrupti est quaerat. Et qui mollitia qui natus vero doloribus qui.\\n\\nNulla quis quas ut occaecati. Labore omnis quaerat sit impedit culpa. Veniam doloremque expedita totam itaque. Cupiditate repudiandae dolor qui aut aspernatur nostrum laboriosam et.\", \"en\": \"Et rerum dolores perferendis in. Odit dolorem dolor cupiditate ad nisi ut facilis. Ea nemo et aperiam. Ex odio blanditiis distinctio suscipit doloribus et illo dolore.\\n\\nHic alias voluptas expedita omnis omnis sed soluta nemo. Optio quas deleniti cum delectus sit veniam. Voluptas accusamus nostrum et tempora quae ea. Amet at animi quia maxime possimus saepe.\\n\\nQuis est quia fuga nemo excepturi. Non cupiditate a praesentium nam consectetur in hic.\"}', 'https://via.placeholder.com/640x480.png/00bb88?text=articles+est', 0, '2026-02-03 14:32:50', '2026-02-11 14:22:50', 'null', '', NULL),
(23, 7, 3, NULL, 0, '{\"ar\": \"Illum consequatur voluptatem cupiditate perspiciatis eum et earum. Quia quaerat adipisci at. Repellendus et suscipit cupiditate. Et nihil itaque iure commodi quidem.\\n\\nAt ipsum sed omnis minima dolores quaerat ut. Et fuga id dolor. Placeat dolor beatae officia quisquam nostrum placeat. Nihil explicabo rem facere voluptas adipisci corrupti nihil.\\n\\nDoloribus dolorem cumque dolores hic placeat assumenda id. Omnis dolor sed distinctio autem consequatur ut eveniet dolor. Rem dolores dicta sit ullam eligendi. Cum et natus ducimus quod non.\", \"en\": \"Et commodi sed quidem qui vero. Non enim voluptatem vel autem consequatur culpa. Ut qui harum quasi quia commodi atque at. Et voluptates natus est quos quasi illum cumque.\\n\\nDolores perferendis rerum soluta nihil mollitia aut. Officiis officia ducimus quod rerum soluta. Minima odit dolore in maxime. Et voluptatem quo quaerat dolores dolor recusandae.\\n\\nExcepturi sunt consectetur fuga quisquam facilis consequuntur aut consequatur. Possimus accusantium fuga autem et aliquid aut voluptas. Autem dolorum illum unde non ab.\"}', 'https://via.placeholder.com/640x480.png/00ccaa?text=articles+aliquam', 0, '2026-02-03 14:32:50', '2026-02-03 14:32:50', 'null', '', NULL),
(24, 8, 5, NULL, 0, '{\"ar\": \"Nulla dolor repellendus aspernatur. Quia iste hic vero magni. Et aut consectetur exercitationem labore deleniti eaque. Quaerat et et est recusandae numquam sunt.\\n\\nOfficia vel voluptatem non necessitatibus amet. Voluptas enim cum porro adipisci omnis deleniti totam. Dolorem neque autem autem et.\\n\\nId amet excepturi iste et ipsum placeat perferendis. Dolor iure consectetur non. Quod repellat molestiae tempore odit.\", \"en\": \"Voluptatem similique autem qui similique eaque vitae. Aut accusamus sit hic deleniti. Tempora consequuntur quia quia aut aperiam sint est. Ex molestias cupiditate optio.\\n\\nQuod sapiente et odit nisi iste assumenda beatae. Quisquam in est est quo. Eveniet sunt quidem necessitatibus iusto non quia deserunt. Itaque aut velit dolores aut voluptatem reiciendis non omnis.\\n\\nSapiente sapiente aliquam voluptas itaque quia. Voluptatem sint rem ut. Iure id ut quibusdam.\"}', 'https://via.placeholder.com/640x480.png/005566?text=articles+voluptates', 0, '2026-02-03 14:32:50', '2026-02-03 14:32:50', 'null', '', NULL),
(25, 8, 5, NULL, 0, '{\"ar\": \"Minus accusantium incidunt minima cum quia illum unde. Quibusdam et quasi recusandae nam. Aliquid quibusdam qui et quaerat aliquam omnis. Repellendus dolores similique eum quasi iste ut in.\\n\\nSuscipit et autem aut exercitationem id qui doloremque. Qui fuga repellat dolorem est ipsam ut blanditiis. Ut ea voluptates aspernatur vel vitae rerum. Impedit est eius repellendus.\\n\\nEius laborum sit sunt dolorem culpa dolorem. Nemo laudantium voluptatem qui sed suscipit ab recusandae. Adipisci voluptatem delectus rerum id nam non veniam. At est consequatur velit eos sint.\", \"en\": \"Hic quo voluptas voluptatibus quia laboriosam. Deleniti nihil consequatur aut quas. Repellendus ratione cupiditate dolorum. Maxime id voluptatem ut id optio nulla non. Ut et necessitatibus iste et et et est rerum.\\n\\nAut et ipsum ducimus delectus temporibus eum nam. Perferendis et ducimus molestiae laudantium perspiciatis. Velit dolorem maxime ab accusantium praesentium architecto. Maxime itaque non illum atque dolorem et.\\n\\nUnde sed quas earum. Mollitia esse similique voluptas. Quo ut beatae et quod ea. Eius nesciunt sed ut tempore adipisci sint ea.\"}', 'https://via.placeholder.com/640x480.png/007799?text=articles+est', 0, '2026-02-03 14:32:50', '2026-02-11 14:22:58', 'null', '', NULL),
(26, 8, 5, NULL, 0, '{\"ar\": \"Voluptas quia et voluptatem ipsam suscipit ut. Non laudantium ad similique quo omnis rerum. Dolores et harum non itaque et nihil dicta. Labore eaque suscipit ad eos molestiae. Omnis veritatis ut enim.\\n\\nNatus autem eos et distinctio sed. Et tempora et sunt minus aut. Recusandae quia impedit eum atque enim.\\n\\nQuas itaque iusto ullam ad. Expedita porro sunt rerum architecto.\", \"en\": \"In sit porro consequuntur aut magnam ut. Quia earum magnam aut soluta eum molestiae. Dolorum assumenda excepturi quisquam tenetur quia aut beatae. Iste officia alias consequatur exercitationem omnis animi et.\\n\\nRerum sed voluptatum doloremque est eius. Quibusdam quia mollitia at blanditiis. Itaque porro praesentium rerum numquam accusantium est temporibus.\\n\\nSequi mollitia quo ad qui et tenetur id. Non id fuga eum iure et ipsa. Molestiae quis voluptate tenetur omnis.\"}', 'https://via.placeholder.com/640x480.png/002266?text=articles+provident', 0, '2026-02-03 14:32:50', '2026-02-11 14:22:58', 'null', '', NULL),
(27, 8, 5, NULL, 0, '{\"ar\": \"Unde quas odit quae doloribus a. Ratione dolorum at officia tempora dignissimos itaque perferendis dolores. Expedita quis architecto qui veritatis accusamus.\\n\\nQuae velit et ullam a ea nihil. Culpa necessitatibus minima vero. Eos aut doloremque quia molestias perferendis qui dolorem. Est vero sint totam voluptatem sed tempora eius.\\n\\nAut aspernatur et ut molestias ut suscipit vel. Voluptatem quia nihil itaque. Fugit deserunt aut consequatur libero doloribus beatae molestiae. Id sit labore explicabo.\", \"en\": \"Quibusdam inventore consequatur velit enim. Explicabo officiis et molestiae illo magnam necessitatibus et. Autem consequatur id cupiditate possimus quis. Suscipit sed minus odio tempore explicabo.\\n\\nSunt saepe enim nam illum libero est. Fuga ratione et quidem quidem. Ipsa sint ex est accusantium dolorum et corporis aut.\\n\\nEnim voluptatem deleniti quam eos voluptas veniam. Reiciendis suscipit beatae distinctio ut et enim excepturi quas. Consequatur dolore exercitationem nesciunt.\"}', 'https://via.placeholder.com/640x480.png/000066?text=articles+molestias', 0, '2026-02-03 14:32:50', '2026-02-11 14:22:59', 'null', '', NULL),
(28, 8, 5, NULL, 0, '{\"ar\": \"Ratione illo maxime aut autem dolores. Doloribus nisi ea magni minus et fuga. Aliquid sit quis possimus. Maiores earum cum eum facere eligendi.\\n\\nIncidunt vel deserunt cupiditate id quasi rerum. Natus occaecati similique sint illum. Earum laudantium dolores itaque non.\\n\\nQuam quia eaque excepturi. Aut qui voluptatem molestiae corrupti aperiam esse. Aut et eos placeat iusto ad.\", \"en\": \"Fugit expedita tempore exercitationem. Neque dolorum est rerum iste. Tenetur voluptas quis dolores nihil ut delectus omnis.\\n\\nEt quia minima ut velit voluptas. Omnis et ipsa vero illo. Atque molestias at voluptas autem. Nesciunt neque aut nesciunt enim quo.\\n\\nExpedita est quo consequatur cumque et. Deserunt eligendi molestiae adipisci eveniet et repellendus. Nisi voluptas id autem consequatur.\"}', 'https://via.placeholder.com/640x480.png/00bbbb?text=articles+ut', 0, '2026-02-03 14:32:50', '2026-02-11 14:22:59', 'null', '', NULL),
(29, 9, 6, NULL, 0, '{\"ar\": \"Ab est pariatur officiis. Quis excepturi ducimus corrupti recusandae fuga repellendus. Totam provident placeat voluptates doloremque laborum quo enim corporis.\\n\\nEaque unde nisi atque molestiae qui nihil labore. Quaerat quia dolores possimus provident. Dicta quo et reprehenderit quod sed officiis. Nam omnis cupiditate vero tenetur officia.\\n\\nAutem eligendi quia illo consequatur quidem. Officia nobis reiciendis harum autem quo rerum. Est animi iure magni atque nam aliquam dolor.\", \"en\": \"Ut earum libero et et animi. Suscipit molestias beatae atque corrupti qui. Tempore placeat dolore saepe et debitis et perferendis dolorem.\\n\\nImpedit nostrum hic temporibus sed repellat. Nisi soluta recusandae sapiente illo dolor dolorem. Et totam ipsum tempore quo fuga iure.\\n\\nEt ipsam debitis et necessitatibus voluptatem odit. Beatae voluptatem repellendus nihil ipsam voluptates est dignissimos. Et velit perferendis modi eos et.\"}', 'https://via.placeholder.com/640x480.png/00dd22?text=articles+vero', 0, '2026-02-03 14:32:51', '2026-02-03 14:32:51', 'null', '', NULL),
(30, 9, 6, NULL, 0, '{\"ar\": \"Quia quia earum distinctio magni alias quo. Vero nisi odio necessitatibus sit nemo quae. Voluptatibus nulla et maiores qui. Rerum dolores nihil quia commodi.\\n\\nNumquam veniam modi laborum perferendis excepturi. Magnam porro repellendus voluptatum sunt impedit. Fugit ipsa autem quam vel omnis.\\n\\nIpsa illo tenetur consequatur dolorem nemo. Minus maiores exercitationem non facilis dolore. Asperiores molestiae non veniam nesciunt. Illum minus sapiente nobis cupiditate. Nobis blanditiis aut voluptates maiores ut fugit.\", \"en\": \"Consequuntur aperiam ea quis nihil quidem nesciunt consequuntur. Architecto voluptatem et repellendus sit repudiandae voluptas eum. Quisquam molestias autem culpa et ut rem quia et.\\n\\nCorrupti incidunt dignissimos facilis id. Excepturi et omnis doloribus labore sequi. Nihil voluptas ullam deleniti accusantium.\\n\\nAccusantium blanditiis aut doloremque perferendis ut. Earum sit corrupti saepe ut expedita nesciunt sed voluptates. Itaque voluptatem fugiat ea doloremque voluptates neque.\"}', 'https://via.placeholder.com/640x480.png/0011ff?text=articles+saepe', 0, '2026-02-03 14:32:51', '2026-02-11 14:22:25', 'null', '', NULL),
(31, 9, 6, NULL, 0, '{\"ar\": \"Aliquam odio nam totam eaque odio quibusdam rerum. Sunt praesentium amet totam eius. Suscipit et voluptate aut nostrum. Sed necessitatibus qui ratione ut suscipit quam.\\n\\nDignissimos amet laboriosam quia accusamus expedita nesciunt. Voluptatem eos aliquam expedita eveniet nihil. Ipsum ipsa consequatur ut dolores. Dicta dolore itaque rerum harum qui.\\n\\nLaboriosam odio odio reiciendis dignissimos omnis nam. Blanditiis ea accusamus quas eos repellat. Libero iusto quae autem est suscipit autem. Cupiditate et dignissimos nesciunt tempora ratione adipisci voluptas.\", \"en\": \"Laboriosam fuga natus et nemo odit. Sit perferendis consectetur sapiente non corrupti qui et. Et rerum et et quia.\\n\\nModi distinctio quidem id mollitia harum eveniet nesciunt. Numquam nisi dignissimos eum est adipisci sunt.\\n\\nNesciunt quia ducimus quidem occaecati est. Alias sed doloremque qui architecto aperiam quisquam. Ipsum facilis placeat consequatur voluptatibus omnis autem.\"}', 'https://via.placeholder.com/640x480.png/000099?text=articles+veritatis', 0, '2026-02-03 14:32:51', '2026-02-11 14:22:25', 'null', '', NULL),
(32, 9, 6, NULL, 0, '{\"ar\": \"Nemo consequuntur possimus et vel iusto nihil ea. Consequatur soluta sit quia illo consequatur ut sapiente. Distinctio itaque porro consequatur doloremque aperiam nobis. Velit iste et molestias laborum. Molestiae occaecati vel fuga adipisci unde.\\n\\nIpsa reprehenderit explicabo ratione soluta. Nemo incidunt perspiciatis ipsum voluptates occaecati vel. Qui ea assumenda quis fugiat alias minus ad.\\n\\nQuae amet tenetur dolorum nobis reiciendis sapiente quia. Ipsum accusantium mollitia nihil eum laudantium iusto dolor. Sapiente mollitia omnis perferendis laborum illum aut dolores porro.\", \"en\": \"Rerum facilis magnam velit sed rem. Nulla non non voluptatem molestiae. Corporis ut iste et pariatur quis voluptatibus. Voluptas fugit ab nulla dolores consequatur laudantium.\\n\\nOmnis ad velit ut ut quibusdam quas quam. Earum exercitationem aut quasi delectus consectetur. Animi optio fugit omnis.\\n\\nQuia doloremque dolore magni alias optio. Harum ex debitis qui aperiam nemo recusandae pariatur.\"}', 'https://via.placeholder.com/640x480.png/00cc77?text=articles+fugiat', 0, '2026-02-03 14:32:51', '2026-02-11 14:22:32', 'null', '', NULL),
(33, 10, 6, NULL, 0, '{\"ar\": \"Eum eum ducimus nulla similique. Id qui voluptatem voluptatibus dolor facilis voluptas iure. Illum earum velit architecto voluptas dolorem sequi.\\n\\nRatione autem beatae voluptas id. Quis velit ut voluptatem ea ipsam atque. Qui quam maxime quibusdam voluptatem sapiente ad. Ullam soluta aut odio modi illum.\\n\\nIure sunt iste nesciunt reiciendis molestiae voluptas assumenda. Aut laborum et corporis voluptatum illo. Dolorem praesentium ut perspiciatis.\", \"en\": \"Velit optio iusto qui delectus aperiam. Aut voluptatem est dolor cupiditate deserunt. Sit cumque consectetur ipsam debitis neque consectetur doloribus. Nisi laboriosam inventore quidem placeat sit officia.\\n\\nOfficiis magni facere temporibus aperiam voluptatem. Nihil laboriosam excepturi ut tempore dolorem. Magnam laborum itaque ea est sit voluptate delectus.\\n\\nOccaecati quis eum labore sunt. Dicta aut non dolorem quaerat. Totam perspiciatis ut omnis nam id.\"}', 'https://via.placeholder.com/640x480.png/00bb11?text=articles+aliquam', 0, '2026-02-03 14:32:51', '2026-02-11 14:22:39', 'null', '', NULL),
(34, 10, 6, NULL, 0, '{\"ar\": \"Ullam earum nemo velit odit. Impedit tempore enim aliquid perspiciatis mollitia. Sint quis minus dolores optio voluptatem corporis.\\n\\nDoloremque libero nisi est quia perspiciatis voluptas. Qui quia aperiam libero non et quas.\\n\\nEx ut unde molestias. Quos debitis consequatur sit temporibus adipisci at. Animi minima voluptatum magnam aspernatur ea.\", \"en\": \"Rerum veniam commodi commodi velit fugit consequatur similique maxime. Quo optio quam sit aut aut quibusdam sit. Quia ex doloremque inventore qui ut sed qui. Neque est repellendus tempora.\\n\\nAut illo qui debitis aut. Itaque dolorem quia ex est. Blanditiis doloremque aut non officia et aut.\\n\\nQuo libero rem voluptas unde non libero aut voluptatem. Accusamus corporis voluptatibus et consequatur a non. Eum tempora voluptate necessitatibus minima.\"}', 'https://via.placeholder.com/640x480.png/00cc00?text=articles+aperiam', 0, '2026-02-03 14:32:51', '2026-02-11 14:22:40', 'null', '', NULL),
(35, 10, 6, NULL, 0, '{\"ar\": \"Atque eligendi expedita non. Aut temporibus cum harum aut voluptas laboriosam minus. Libero provident qui excepturi id at earum suscipit.\\n\\nExcepturi explicabo porro quo non aspernatur enim. Culpa rem quia impedit vitae aliquam. Nulla ut est incidunt.\\n\\nIn sit eos quidem eligendi sequi perferendis nihil. Consequatur ad blanditiis porro nobis. Sit accusantium aliquam cum reiciendis. Molestiae hic impedit molestias deserunt labore rerum cumque.\", \"en\": \"Maxime voluptatibus voluptatum possimus facilis ex sequi. Culpa voluptas aperiam est dignissimos id fuga corporis. Sit ut nulla adipisci aut et aut laboriosam. Aut facere eaque inventore eos aut quia reprehenderit.\\n\\nDicta expedita consequatur praesentium consequatur nihil tempore. Maxime quia delectus eligendi consectetur ipsam et est. In repellat possimus atque vel. Doloribus quod eos et rerum. Fugit aperiam quia aperiam ut.\\n\\nQuia facere nisi eum. Soluta sit nihil ad. Cumque consequatur mollitia nulla harum iure ea.\"}', 'https://via.placeholder.com/640x480.png/00aa22?text=articles+ut', 0, '2026-02-03 14:32:51', '2026-02-03 14:32:51', 'null', '', NULL),
(36, 10, 6, NULL, 0, '{\"ar\": \"Modi culpa qui illum voluptas alias deleniti. Corporis dolorem tenetur ipsam dolores est cumque. Praesentium perferendis autem ad laudantium et. Eaque nobis doloremque architecto rem nisi.\\n\\nSimilique eum id cum. Incidunt ut reiciendis porro voluptates eius. Quia exercitationem quasi sint quia.\\n\\nEst voluptatem adipisci maxime quisquam nulla possimus tenetur. Id labore eveniet ipsa provident est voluptate sit. Non assumenda aut quos neque molestiae harum qui. Repellendus aperiam dicta labore culpa tenetur.\", \"en\": \"Quasi sunt tenetur earum et veritatis consequatur ipsam eos. Sint dolorem culpa nesciunt consectetur. Voluptatum tenetur iusto excepturi velit.\\n\\nIpsam dolorem nihil neque nulla. A nisi omnis consequuntur blanditiis et labore quam. Sed saepe impedit ipsa temporibus accusamus qui sapiente repellat. Et rerum et illum mollitia. Veniam sed ipsa quaerat.\\n\\nIllo et sit illum ullam velit minus odio dicta. Qui nostrum nesciunt sit non quo quod. Laboriosam ea aut tenetur veritatis dolorum autem consequatur. Non dolorem accusantium quod dolorem.\"}', 'https://via.placeholder.com/640x480.png/009922?text=articles+dicta', 0, '2026-02-03 14:32:51', '2026-02-11 14:22:40', 'null', '', NULL),
(37, 11, 2, NULL, 0, '{\"ar\": \"Eum voluptatem dignissimos consectetur accusamus quo eos quia. Officiis excepturi rerum repudiandae hic sint. Architecto et cupiditate cupiditate totam ipsa et dolorem. Quod quasi qui officia id assumenda hic voluptas.\\n\\nIn quaerat quas ullam quia autem voluptatum beatae. Esse quod suscipit deserunt dolores excepturi sed accusamus. Id aut inventore et omnis vero et dignissimos. Dolore voluptas ipsa deleniti et cum qui praesentium aspernatur.\\n\\nAut voluptatem quasi voluptatem quidem. Ipsa et beatae enim perspiciatis. Porro ut fugit consequatur ab aut vitae deserunt. Quos error aliquid voluptatem placeat tempora. Ipsum dolor eaque voluptas impedit et qui perspiciatis.\", \"en\": \"Temporibus officia qui consequuntur minima. Eveniet consequatur suscipit aut facere. Quasi natus molestiae dolores perspiciatis.\\n\\nHarum magnam mollitia nostrum aliquam rerum maxime distinctio. Ratione tempora dolor quibusdam qui et rem nihil. Doloribus ex sapiente delectus aspernatur quia vitae in. Voluptas odit ex mollitia.\\n\\nRerum mollitia adipisci et. Quis eum ipsam et reprehenderit. Similique blanditiis eum et repellat rerum accusamus dolor. Ullam temporibus aliquam in minima. Saepe aspernatur suscipit est consectetur quisquam tenetur.\"}', 'https://via.placeholder.com/640x480.png/00dddd?text=articles+exercitationem', 0, '2026-02-03 14:32:51', '2026-02-11 14:22:41', 'null', '', NULL),
(38, 11, 2, NULL, 0, '{\"ar\": \"Non harum nesciunt velit. A omnis aut numquam sed. Sequi quis sed dignissimos quaerat odio fugiat. Labore voluptates ex voluptatum maiores quaerat eos magni sunt.\\n\\nNam ex in repellat quia qui quis commodi. Possimus sint velit velit sed dicta est quo. Ullam magni provident voluptatem laborum.\\n\\nMinus dolore aut qui minima. Est est beatae deleniti assumenda dolorem. Qui sed quam nobis voluptatem sunt ducimus iure. Veritatis at quae sunt sunt ducimus.\", \"en\": \"Fugiat dolores et iure veniam omnis laboriosam quos. Soluta enim ut explicabo velit eaque dignissimos quaerat. Ipsa nesciunt at eos perspiciatis vitae iste. Voluptas possimus autem sint enim.\\n\\nAlias assumenda reiciendis quia. Alias quis est vero quia. Totam delectus est sed officiis. Ea et ad consectetur aut cumque consequatur.\\n\\nAutem et quae enim soluta et. Sit quia quos quod. Quia assumenda unde quisquam tempora aut placeat.\"}', 'https://via.placeholder.com/640x480.png/0099aa?text=articles+a', 0, '2026-02-03 14:32:51', '2026-02-11 14:22:41', 'null', '', NULL),
(39, 12, 4, NULL, 0, '{\"ar\": \"Quod consequatur voluptatem unde necessitatibus excepturi recusandae. Aut est dolores asperiores amet iure.\\n\\nNihil tempore quod id aut in dolores voluptates exercitationem. Iusto repellat modi esse non minus et accusamus est. Sapiente suscipit aperiam unde. Similique id eos deserunt tenetur beatae.\\n\\nTotam beatae officia quibusdam sint pariatur rerum quia nobis. Expedita rerum consequatur corporis optio consequuntur in. Modi vitae ab consequatur aliquid omnis quo.\", \"en\": \"Aut vel quas corrupti eum amet alias. Suscipit qui iste laboriosam nam sit cum et. Ipsum inventore non animi commodi qui. Quia optio rerum voluptas impedit sed. Eaque ut provident exercitationem accusantium.\\n\\nUt sed molestias velit saepe. Quis laborum consequatur necessitatibus aut laboriosam voluptate ipsam. Accusamus hic et expedita eos distinctio.\\n\\nCulpa et placeat beatae doloribus. Autem saepe at magni soluta molestias repudiandae. Nihil minima explicabo ab in.\"}', 'https://via.placeholder.com/640x480.png/005522?text=articles+porro', 0, '2026-02-03 14:32:52', '2026-02-11 14:21:52', 'null', '', NULL),
(40, 12, 4, NULL, 0, '{\"ar\": \"In dolores est tempore neque aut dicta architecto. Similique ea et voluptatem maxime tempore ratione velit. Sed omnis earum ipsam aut qui nihil est nulla.\\n\\nUllam ullam ipsum sed cumque. Debitis sint deserunt et. Quia magnam reprehenderit et quia harum. Unde nobis consequatur quas est dolor.\\n\\nAd possimus ipsum maiores accusantium quis. Enim ex est laboriosam quia et ex ea. Eveniet sed quo repellendus a odit corporis. Consectetur porro voluptatibus aliquid eum libero. Aut et soluta velit.\", \"en\": \"A voluptates quod doloremque voluptas. Magnam quod rerum delectus fugit. Voluptas consequatur laboriosam cumque voluptatibus. Dolorum natus omnis ut ad error blanditiis.\\n\\nMinima et provident magnam excepturi dolores et. Illo voluptatem facere et eveniet accusamus aut. Ut magnam deserunt est autem aut. Quis eaque natus facere debitis vitae ea quo.\\n\\nIllo ab culpa fuga autem eos. Accusantium et rem quia. Accusantium natus quas reiciendis sed ut. Aliquid expedita ipsum quo perspiciatis voluptatem quo.\"}', 'https://via.placeholder.com/640x480.png/005500?text=articles+eligendi', 0, '2026-02-03 14:32:52', '2026-02-11 14:21:53', 'null', '', NULL),
(41, 13, 2, NULL, 0, '{\"ar\": \"Fugiat pariatur vitae alias quidem numquam deleniti. Nisi quod dolores in laboriosam est qui. Accusamus corrupti qui et illum assumenda.\\n\\nConsequatur sint laudantium alias est quisquam nihil. Dolore possimus dolorem ut. Voluptas et placeat velit labore.\\n\\nEt ut et totam modi odit. Aut quod libero et. Suscipit autem qui illo possimus unde.\", \"en\": \"Unde ut amet praesentium consequatur labore architecto aut. Sit expedita commodi tempora provident debitis accusamus. Non tempora accusantium laudantium ducimus quisquam repellat fugit. Dolores dolor est et.\\n\\nVelit atque enim mollitia facilis nisi quidem aut. Tempore incidunt molestias cum molestiae ut voluptate. Aut est aliquid ullam et ratione. Voluptatem dicta alias sed vero.\\n\\nDoloribus porro provident vel molestiae culpa voluptatem voluptas. Consequuntur alias pariatur maiores odit consequatur ab earum eum. Sint et laudantium facilis ut est est nihil.\"}', 'https://via.placeholder.com/640x480.png/008822?text=articles+ea', 0, '2026-02-03 14:32:52', '2026-02-03 14:32:52', 'null', '', NULL),
(42, 13, 2, NULL, 0, '{\"ar\": \"Adipisci sed aut suscipit mollitia aspernatur repellendus. Deleniti ratione minus quas. Labore dolorum rerum ducimus quas. Reiciendis nihil quaerat vitae ut rerum.\\n\\nAd veritatis porro corporis assumenda. Nisi dolorum sapiente et voluptas suscipit aperiam animi.\\n\\nId minima accusantium tenetur alias. Culpa aut sint libero magnam et. Voluptas vel sed ipsam aut optio excepturi accusamus. Voluptas quo distinctio id ea cupiditate asperiores.\", \"en\": \"Molestias provident eum asperiores aut. Cumque aspernatur et modi ut. Quaerat corporis fugit odit voluptas eius ex. Quia ab nobis sunt libero quo voluptatem.\\n\\nRem eius aut eum et quis. Fugiat hic ipsam explicabo eos a est dolorem. Ut ipsam sit voluptatem aut.\\n\\nIn voluptatibus occaecati et rerum molestias quo illum. Pariatur quia non fuga. Necessitatibus dolorem mollitia velit sit.\"}', 'https://via.placeholder.com/640x480.png/00ffdd?text=articles+nesciunt', 0, '2026-02-03 14:32:52', '2026-02-11 14:22:16', 'null', '', NULL),
(43, 13, 2, NULL, 0, '{\"ar\": \"Tenetur nulla qui voluptas. Nemo velit earum ut maxime ipsam quae incidunt. Nobis aut ad quam laudantium minima.\\n\\nNam temporibus voluptatibus soluta debitis voluptas. Temporibus rerum modi iste cumque debitis rem. Velit facilis molestiae velit dolorem doloremque rerum. Minima consectetur autem sed quo.\\n\\nVoluptatem libero aliquam tempora neque velit omnis. Laboriosam ipsum ducimus ea rem. In saepe enim praesentium doloribus expedita sequi.\", \"en\": \"Est aut quia sint nihil. Aliquam corporis aut at dolor qui dolore. Atque id eos molestiae. Veniam quas aut aspernatur velit rem. Officia modi odio fugit ut dignissimos ea.\\n\\nQuam saepe aut ratione adipisci dolorem. Voluptatibus voluptates laborum mollitia. Et omnis aliquid omnis libero. Incidunt quaerat incidunt vitae.\\n\\nExplicabo animi dolor libero nihil reprehenderit omnis. Ea et dicta aperiam. Sunt temporibus dolore illum eius ea voluptate.\"}', 'https://via.placeholder.com/640x480.png/000033?text=articles+quod', 0, '2026-02-03 14:32:52', '2026-02-11 14:22:16', 'null', '', NULL),
(44, 14, 4, NULL, 0, '{\"ar\": \"Eos ratione eum quis. Magnam vitae assumenda eos cumque quis qui. Provident recusandae dolor dignissimos quia ullam earum dignissimos et.\\n\\nA voluptatem quas dolorem aperiam velit velit atque pariatur. Est labore architecto dolores laudantium dolores qui. Dolor dolores non est voluptas.\\n\\nSunt est et repellat dolorem consequatur assumenda voluptatem. Ut itaque repellat harum a. Nihil quia inventore velit architecto molestias harum.\", \"en\": \"Pariatur est adipisci voluptatem neque facilis ab ullam. Ullam sed explicabo provident. Adipisci cum minus suscipit. Sint a repellat ut quaerat ut aut.\\n\\nAliquid earum et architecto modi. Earum laboriosam dolore magni mollitia est error. Repellat nisi quis est. Voluptatem quaerat qui sunt placeat laboriosam blanditiis occaecati.\\n\\nAsperiores nostrum cumque nobis qui veniam aut voluptas. Exercitationem quidem animi occaecati excepturi. Aut atque consequatur dignissimos molestiae. Itaque autem sit distinctio ut.\"}', 'https://via.placeholder.com/640x480.png/00cccc?text=articles+optio', 0, '2026-02-03 14:32:52', '2026-02-11 14:22:17', 'null', '', NULL);
INSERT INTO `articles` (`id`, `course_id`, `user_id`, `accepted_at`, `earning_points`, `content`, `image`, `is_published`, `created_at`, `updated_at`, `title`, `searchable_title`, `searchable_content`) VALUES
(45, 14, 4, NULL, 0, '{\"ar\": \"Molestiae nemo doloremque consequatur et. Debitis voluptatum magni qui tenetur. Doloremque autem id neque dolores et quia.\\n\\nConsequatur fugiat quis quas aliquid nisi et nihil. Cum nihil molestias ab quidem.\\n\\nBeatae nesciunt omnis quae optio. Recusandae praesentium non id quo minima in. Ut aut provident praesentium perferendis.\", \"en\": \"Pariatur repellat molestiae eum incidunt unde. Quia cum cupiditate ea enim facere. Earum doloremque vel rerum.\\n\\nAutem et pariatur est dolores facere magni sint. Quo qui enim aut molestias incidunt laudantium. Fugiat eligendi ea odit corrupti. Dolorum maiores eos aut nam.\\n\\nAut quis dolores enim sit voluptatem pariatur. Et provident ratione incidunt possimus perferendis. In libero voluptatibus aspernatur tenetur enim. Molestiae sit cumque numquam quasi.\"}', 'https://via.placeholder.com/640x480.png/00aa55?text=articles+voluptatum', 0, '2026-02-03 14:32:52', '2026-02-11 14:22:23', 'null', '', NULL),
(46, 15, 6, NULL, 0, '{\"ar\": \"Quia nisi natus ratione culpa. Tenetur et unde voluptatem et. Ut quas et ad illo iste deleniti.\\n\\nUt culpa voluptatum incidunt omnis dolorem ducimus. In mollitia ex ea amet soluta perferendis ab recusandae. Quisquam similique culpa voluptate harum eveniet nihil. Saepe commodi architecto maxime recusandae aut alias.\\n\\nEa adipisci dolor qui ut praesentium excepturi deserunt. Eligendi labore nihil quia ut veritatis vitae. Mollitia voluptas aliquam quia debitis vel nihil deleniti.\", \"en\": \"Expedita in quia et laudantium ut perspiciatis numquam. Asperiores perferendis quae et in sapiente qui. Provident suscipit ut perspiciatis id corporis qui. Dolores similique sit ab delectus nulla aut.\\n\\nOfficiis in aut explicabo et exercitationem voluptas. Dolor nesciunt molestias ut est qui pariatur. Doloremque fuga magni est est minus suscipit.\\n\\nOccaecati velit natus eius eius. Enim ut consectetur est dicta. Magnam quis vel maxime rerum vel. Quidem voluptatem ut omnis nesciunt harum corrupti ut. Et cumque quas voluptas voluptatem.\"}', 'https://via.placeholder.com/640x480.png/008800?text=articles+labore', 0, '2026-02-03 14:32:52', '2026-02-03 14:32:52', 'null', '', NULL),
(47, 15, 6, NULL, 0, '{\"ar\": \"Est voluptatem quia aspernatur aliquid tempore id. Omnis corporis eligendi soluta. Similique et libero fuga. Temporibus magni tempore sequi consectetur. Alias ea non ipsam placeat labore temporibus.\\n\\nEt eum aut magnam nobis assumenda molestiae. Sed autem culpa asperiores itaque. Et minima ea rerum fuga. Consectetur consequatur dolor id praesentium.\\n\\nTempore quisquam voluptas nihil aut consequatur voluptate ea. Voluptatibus enim nostrum sit atque. Similique facere aperiam delectus ipsam eius quis velit exercitationem.\", \"en\": \"Consequatur dignissimos dicta enim animi consequatur. Nesciunt nihil culpa possimus ea qui. Autem illum sapiente deleniti cupiditate doloribus.\\n\\nOmnis fugiat aut quidem aliquam reprehenderit et natus. Dicta voluptas et quia itaque fugit praesentium. Modi ad et occaecati architecto ea ipsa.\\n\\nSed tempore atque sit neque blanditiis molestiae odit. Est enim ut aut rerum nam quidem in facere. Aut quae laudantium facere quia.\"}', 'https://via.placeholder.com/640x480.png/00ffdd?text=articles+cupiditate', 0, '2026-02-03 14:32:52', '2026-02-11 14:22:24', 'null', '', NULL),
(49, 17, 367, '2026-02-10 09:37:28', 0, '{\"ar\":\"Ut est voluptatibus iste impedit. Sint sapiente aliquam quos aut. At possimus consectetur rerum dolores aut fugit molestiae asperiores. Quos quaerat impedit et autem quis dolorum nulla dolorem. Accusantium totam et amet ut.\\r\\n\\r\\nMaxime fuga enim suscipit doloremque consequuntur perspiciatis. Omnis porro quia sunt nesciunt perspiciatis cupiditate quos. Suscipit animi ducimus non est quo sed. Et qui ipsa quidem saepe.\\r\\n\\r\\nMolestias rerum itaque repudiandae veritatis incidunt explicabo. Saepe amet quisquam tenetur ut. Nam omnis voluptate distinctio facere beatae ut amet.\",\"en\":\"Officiis est sed fuga autem. Neque magni sunt voluptates velit molestiae. Voluptatibus sed aut saepe autem est autem consequatur numquam. Magni consequatur nulla iure eum voluptatem omnis tempora.\\r\\n\\r\\nEt ipsam optio beatae explicabo occaecati aspernatur. Est dolorum sint praesentium dolores eos rerum qui impedit. Mollitia voluptate rerum non repellendus veniam.\\r\\n\\r\\nEt autem veniam voluptatem suscipit cum atque. Animi fugit quas enim. Vero dignissimos ullam aspernatur in sequi odio corrupti. Qui iure eligendi nihil est similique dolores sunt.\"}', 'https://via.placeholder.com/640x480.png/0088dd?text=articles+corporis', 1, '2026-02-03 14:32:53', '2026-02-11 13:02:29', '{\"en\":\"new articlejhy\",\"ar\":\"new articledf\"}', 'new articlejhy new articledf', 'Officiis est sed fuga autem. Neque magni sunt voluptates velit molestiae. Voluptatibus sed aut saepe autem est autem consequatur numquam. Magni consequatur nulla iure eum voluptatem omnis tempora.\r\n\r\nEt ipsam optio beatae explicabo occaecati aspernatur. Est dolorum sint praesentium dolores eos rerum qui impedit. Mollitia voluptate rerum non repellendus veniam.\r\n\r\nEt autem veniam voluptatem suscipit cum atque. Animi fugit quas enim. Vero dignissimos ullam aspernatur in sequi odio corrupti. Qui iure eligendi nihil est similique dolores sunt. Ut est voluptatibus iste impedit. Sint sapiente aliquam quos aut. At possimus consectetur rerum dolores aut fugit molestiae asperiores. Quos quaerat impedit et autem quis dolorum nulla dolorem. Accusantium totam et amet ut.\r\n\r\nMaxime fuga enim suscipit doloremque consequuntur perspiciatis. Omnis porro quia sunt nesciunt perspiciatis cupiditate quos. Suscipit animi ducimus non est quo sed. Et qui ipsa quidem saepe.\r\n\r\nMolestias rerum itaque repudiandae veritatis incidunt explicabo. Saepe amet quisquam tenetur ut. Nam omnis voluptate distinctio facere beatae ut amet.'),
(51, 19, 371, '2026-02-10 09:37:32', 0, '{\"ar\": \"Accusantium vel mollitia recusandae. Ut aperiam rerum et odio impedit quod perspiciatis rem. Iure non quasi non necessitatibus.\\n\\nExcepturi culpa sapiente error quia sequi. Ducimus sint aut odit odit natus debitis. Et consequuntur ut error quo.\\n\\nIncidunt id quo libero praesentium. Soluta minima temporibus qui et ea. Beatae veniam aut quis odio deserunt aspernatur maxime a. Et libero et reiciendis quod.\", \"en\": \"Quo dolores deserunt dolorum. Placeat ducimus quo inventore excepturi ut nam tempora.\\n\\nVoluptatem eveniet aspernatur at qui architecto rerum. Voluptate eos ab quia aut dolorum qui inventore cum. Error reprehenderit quas minus harum ullam omnis.\\n\\nMaiores sit error sed molestias. Repellat atque maxime ipsum. Qui iste distinctio possimus modi quos. Eaque mollitia quidem ullam reiciendis fuga dolores molestias.\"}', 'https://via.placeholder.com/640x480.png/004488?text=articles+exercitationem', 0, '2026-02-03 14:32:53', '2026-02-10 09:37:32', 'null', '', NULL),
(54, 22, 377, '2026-02-11 15:39:00', 0, '{\"ar\": \"Laborum praesentium dolorem voluptas omnis atque quidem itaque dicta. Consequuntur laudantium ut sint maiores esse iure iusto. Laudantium et impedit cupiditate dolorem quo. Omnis dolores non sit rerum omnis in dolorem. Velit ut eius dolores qui dolorum nulla quis assumenda.\\n\\nCommodi tempora excepturi aperiam numquam quos. Totam numquam fuga laboriosam vero.\\n\\nInventore molestiae sit aut et. Repudiandae a in suscipit quia. Occaecati et quia consequatur reiciendis. Laboriosam aspernatur vitae ea laboriosam ex omnis.\", \"en\": \"Excepturi quaerat doloremque quo non odio ut quae. Et nihil qui id saepe ea voluptatem eligendi. Aut iure quod rerum.\\n\\nMolestiae ut molestias voluptatem dolor error. Quae est eligendi et asperiores earum at ratione nulla. Quas non doloremque sed. Corrupti nulla officiis at quidem et.\\n\\nConsequuntur numquam ut nostrum omnis perspiciatis mollitia. Ex excepturi expedita debitis velit vel tenetur. Sapiente ut amet excepturi soluta. Laboriosam veniam voluptatem numquam officiis et dolores et.\"}', 'https://via.placeholder.com/640x480.png/009911?text=articles+voluptas', 0, '2026-02-03 14:32:53', '2026-02-11 15:39:51', 'null', '', NULL),
(56, 24, 381, NULL, 0, '{\"ar\": \"Ea consequuntur dolor exercitationem. Sunt perferendis quia sunt et omnis cum et. Sed enim et dignissimos sit. Voluptas deserunt perspiciatis et qui quidem sunt et.\\n\\nAnimi nam commodi odit. Perferendis eius quo blanditiis et distinctio autem exercitationem. Doloribus voluptatem debitis natus magni ut. Voluptatum nulla ratione a qui aut atque ad.\\n\\nEt dolor qui minus soluta minus qui. Voluptatem officia dolores numquam dicta vel optio dicta. Sit veniam deleniti odio magnam deserunt ea consectetur.\", \"en\": \"Possimus inventore expedita atque. Ipsa eum est reprehenderit cum recusandae. Saepe rerum consectetur eos et magnam sit omnis ratione. Et quibusdam minima accusamus numquam nobis sint numquam repudiandae. Mollitia earum omnis quis.\\n\\nNam sed minima quo labore eum quia recusandae. Beatae nihil quia aut sit tempore. Enim illo accusantium cupiditate velit ut.\\n\\nMaxime dignissimos aut ab atque. Sit et sint illum voluptas vitae omnis ut.\"}', 'https://via.placeholder.com/640x480.png/00aacc?text=articles+et', 0, '2026-02-03 14:32:53', '2026-02-11 14:21:50', 'null', '', NULL),
(57, 25, 383, NULL, 0, '{\"ar\": \"Aliquam consequatur quas dolorem laboriosam ut. Error sequi laborum libero voluptatem. Qui officia occaecati sit ab consequatur eos non sapiente.\\n\\nRerum officia voluptatem ut eos accusantium eius consequuntur. Sed sequi sequi veniam ea ducimus rerum quis. Impedit id omnis incidunt dolorem consequatur. Eum et rerum quidem iusto. Ut inventore harum animi odit.\\n\\nSint quas quis quibusdam aut. Quia ab at et. Adipisci in laborum consectetur ut.\", \"en\": \"Et harum velit nihil nam rem ex distinctio. Qui quidem voluptate molestiae libero neque natus.\\n\\nProvident nulla officiis excepturi commodi consequatur quasi nam nobis. In similique veritatis rerum. Architecto sed quidem sed error voluptas magnam.\\n\\nNobis accusamus sint ducimus modi qui accusantium et. Molestiae ut aliquam modi in. Totam iste facilis reiciendis aut id et maiores qui. Commodi itaque error minima et neque.\"}', 'https://via.placeholder.com/640x480.png/0033ee?text=articles+aut', 0, '2026-02-03 14:32:53', '2026-02-11 14:21:51', 'null', '', NULL),
(60, 11, 1, '2026-02-11 14:26:39', 30, '{\"en\":\"bfdbdfbfdbfd\",\"ar\":\"bfdbfdbdf\"}', 'articles/agm8ANbQQyPyEiptjxo5C3f9tws9Ze8B6DL2JF59.png', 1, '2026-02-11 14:25:19', '2026-02-11 14:26:39', '{\"en\":\"fdvbfd\",\"ar\":\"dv\"}', 'fdvbfd dv', 'bfdbdfbfdbfd bfdbfdbdf'),
(61, 13, 1, NULL, 20, '{\"en\":\"dsagdsag\",\"ar\":\"dsgf\"}', 'articles/o3JrGfOKm7HpnlEz1ReAydacINpqVDpdpQkBRQTo.png', 1, '2026-02-11 14:37:00', '2026-02-11 14:37:16', '{\"en\":\"dfsagfsasfsfa\",\"ar\":\"sgasf\"}', 'dfsagfsasfsfa sgasf', 'dsagdsag dsgf');

-- --------------------------------------------------------

--
-- Table structure for table `article_read`
--

CREATE TABLE `article_read` (
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_read`
--

INSERT INTO `article_read` (`article_id`, `user_id`) VALUES
(49, 2),
(57, 4),
(49, 13),
(51, 14),
(49, 15),
(57, 28),
(51, 35),
(57, 42),
(56, 48),
(56, 50),
(56, 52),
(54, 69),
(57, 72),
(49, 75),
(49, 85),
(49, 86),
(54, 87),
(54, 88),
(51, 99),
(51, 107),
(57, 109),
(49, 159),
(54, 159),
(56, 164),
(56, 165),
(51, 166),
(57, 168),
(49, 169),
(57, 170),
(54, 177),
(54, 180),
(56, 188),
(49, 198),
(51, 220),
(56, 220),
(51, 235),
(51, 236),
(49, 257),
(57, 265),
(49, 270),
(51, 270),
(51, 274),
(49, 290),
(49, 291),
(56, 294),
(56, 306),
(49, 310),
(57, 313),
(56, 324),
(54, 325),
(54, 333),
(51, 341),
(51, 343),
(54, 348),
(51, 351),
(54, 353),
(56, 358),
(51, 359),
(54, 361),
(56, 364),
(57, 381);

-- --------------------------------------------------------

--
-- Table structure for table `article_user`
--

CREATE TABLE `article_user` (
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_user`
--

INSERT INTO `article_user` (`article_id`, `user_id`) VALUES
(57, 5),
(49, 7),
(51, 11),
(56, 17),
(51, 20),
(54, 33),
(54, 55),
(57, 76),
(54, 90),
(49, 93),
(54, 99),
(51, 131),
(54, 134),
(56, 155),
(56, 169),
(56, 178),
(56, 194),
(51, 203),
(51, 206),
(56, 231),
(56, 240),
(57, 240),
(49, 241),
(54, 245),
(56, 246),
(51, 267),
(54, 280),
(51, 288),
(56, 305),
(51, 351),
(51, 373),
(49, 375),
(54, 377),
(51, 379),
(49, 381);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`title`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`description`)),
  `image` varchar(255) NOT NULL,
  `button_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`button_text`)),
  `button_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `button_text`, `button_url`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"evew\",\"ar\":\"سؤسث\"}', '{\"en\":\"edvinrienber\",\"ar\":\"ثصرقلاثهقى\"}', 'banners/ybCALQ4TYYxuHiV3md7AIFf0nUHvbEUH6zW5s5j0.png', '{\"en\":\"add\",\"ar\":\"سيس\"}', 'https://quilljs.com/playground/react', '2026-03-02 10:55:13', '2026-03-02 10:55:13'),
(2, '{\"en\":\"banner 1\",\"ar\":\"بانر 1\"}', '{\"en\":\"first banner\",\"ar\":\"اول بانر\"}', 'banners/J8uxslR2MIbFHzw6c8DLNaUp5lEUY4VKJsjy87N8.png', '{\"en\":\"book now\",\"ar\":\"احجز الان\"}', 'https://www.figma.com/design/fSeIN4HKvhSW4TbfcTqcto/TOBE-Application?node-id=19-1165&t=sKmJxc7NSvHv02Va-0', '2026-03-02 13:20:39', '2026-03-02 13:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-boost.roster.scan', 'a:2:{s:6:\"roster\";O:21:\"Laravel\\Roster\\Roster\":3:{s:13:\"\0*\0approaches\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{i:0;O:23:\"Laravel\\Roster\\Approach\":1:{s:11:\"\0*\0approach\";E:38:\"Laravel\\Roster\\Enums\\Approaches:ACTION\";}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:11:\"\0*\0packages\";O:32:\"Laravel\\Roster\\PackageCollection\":2:{s:8:\"\0*\0items\";a:11:{i:0;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.30\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:FORTIFY\";s:14:\"\0*\0packageName\";s:15:\"laravel/fortify\";s:10:\"\0*\0version\";s:6:\"1.34.0\";s:6:\"\0*\0dev\";b:0;}i:1;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^12.0\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:LARAVEL\";s:14:\"\0*\0packageName\";s:17:\"laravel/framework\";s:10:\"\0*\0version\";s:7:\"12.49.0\";s:6:\"\0*\0dev\";b:0;}i:2;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:7:\"v0.3.11\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PROMPTS\";s:14:\"\0*\0packageName\";s:15:\"laravel/prompts\";s:10:\"\0*\0version\";s:6:\"0.3.11\";s:6:\"\0*\0dev\";b:0;}i:3;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:4:\"^4.0\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:SANCTUM\";s:14:\"\0*\0packageName\";s:15:\"laravel/sanctum\";s:10:\"\0*\0version\";s:5:\"4.3.0\";s:6:\"\0*\0dev\";b:0;}i:4;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:6:\"^2.9.0\";s:10:\"\0*\0package\";E:41:\"Laravel\\Roster\\Enums\\Packages:FLUXUI_FREE\";s:14:\"\0*\0packageName\";s:13:\"livewire/flux\";s:10:\"\0*\0version\";s:6:\"2.11.1\";s:6:\"\0*\0dev\";b:0;}i:5;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:4:\"^4.0\";s:10:\"\0*\0package\";E:38:\"Laravel\\Roster\\Enums\\Packages:LIVEWIRE\";s:14:\"\0*\0packageName\";s:17:\"livewire/livewire\";s:10:\"\0*\0version\";s:5:\"4.1.0\";s:6:\"\0*\0dev\";b:0;}i:6;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.5.3\";s:10:\"\0*\0package\";E:33:\"Laravel\\Roster\\Enums\\Packages:MCP\";s:14:\"\0*\0packageName\";s:11:\"laravel/mcp\";s:10:\"\0*\0version\";s:5:\"0.5.3\";s:6:\"\0*\0dev\";b:1;}i:7;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.24\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PINT\";s:14:\"\0*\0packageName\";s:12:\"laravel/pint\";s:10:\"\0*\0version\";s:6:\"1.27.0\";s:6:\"\0*\0dev\";b:1;}i:8;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.41\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:SAIL\";s:14:\"\0*\0packageName\";s:12:\"laravel/sail\";s:10:\"\0*\0version\";s:6:\"1.52.0\";s:6:\"\0*\0dev\";b:1;}i:9;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:4:\"^4.3\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PEST\";s:14:\"\0*\0packageName\";s:12:\"pestphp/pest\";s:10:\"\0*\0version\";s:5:\"4.3.2\";s:6:\"\0*\0dev\";b:1;}i:10;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"12.5.8\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PHPUNIT\";s:14:\"\0*\0packageName\";s:15:\"phpunit/phpunit\";s:10:\"\0*\0version\";s:6:\"12.5.8\";s:6:\"\0*\0dev\";b:1;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:21:\"\0*\0nodePackageManager\";E:43:\"Laravel\\Roster\\Enums\\NodePackageManager:NPM\";}s:9:\"timestamp\";i:1770141666;}', 1770228066),
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:70:{i:0;a:4:{s:1:\"a\";s:1:\"1\";s:1:\"b\";s:10:\"categories\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";s:1:\"2\";s:1:\"b\";s:15:\"view_categories\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";s:1:\"3\";s:1:\"b\";s:17:\"create_categories\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";s:1:\"4\";s:1:\"b\";s:17:\"update_categories\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";s:1:\"5\";s:1:\"b\";s:17:\"delete_categories\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";s:1:\"6\";s:1:\"b\";s:6:\"levels\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";s:1:\"7\";s:1:\"b\";s:11:\"view_levels\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";s:1:\"8\";s:1:\"b\";s:13:\"create_levels\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";s:1:\"9\";s:1:\"b\";s:13:\"update_levels\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";s:2:\"10\";s:1:\"b\";s:13:\"delete_levels\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";s:2:\"11\";s:1:\"b\";s:4:\"faqs\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";s:2:\"12\";s:1:\"b\";s:9:\"view_faqs\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";s:2:\"13\";s:1:\"b\";s:11:\"create_faqs\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";s:2:\"14\";s:1:\"b\";s:11:\"update_faqs\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";s:2:\"15\";s:1:\"b\";s:11:\"delete_faqs\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";s:2:\"16\";s:1:\"b\";s:7:\"mentors\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";s:2:\"17\";s:1:\"b\";s:12:\"view_mentors\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";s:2:\"18\";s:1:\"b\";s:14:\"create_mentors\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";s:2:\"19\";s:1:\"b\";s:14:\"update_mentors\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";s:2:\"20\";s:1:\"b\";s:14:\"delete_mentors\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";s:2:\"21\";s:1:\"b\";s:7:\"banners\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";s:2:\"22\";s:1:\"b\";s:12:\"view_banners\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";s:2:\"23\";s:1:\"b\";s:14:\"create_banners\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";s:2:\"24\";s:1:\"b\";s:14:\"update_banners\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";s:2:\"25\";s:1:\"b\";s:14:\"delete_banners\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";s:2:\"26\";s:1:\"b\";s:7:\"courses\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";s:2:\"27\";s:1:\"b\";s:12:\"view_courses\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";s:2:\"28\";s:1:\"b\";s:14:\"create_courses\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";s:2:\"29\";s:1:\"b\";s:14:\"update_courses\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";s:2:\"30\";s:1:\"b\";s:14:\"delete_courses\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";s:2:\"31\";s:1:\"b\";s:7:\"lessons\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";s:2:\"32\";s:1:\"b\";s:12:\"view_lessons\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";s:2:\"33\";s:1:\"b\";s:14:\"create_lessons\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";s:2:\"34\";s:1:\"b\";s:14:\"update_lessons\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";s:2:\"35\";s:1:\"b\";s:14:\"delete_lessons\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";s:2:\"36\";s:1:\"b\";s:8:\"articles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";s:2:\"37\";s:1:\"b\";s:13:\"view_articles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";s:2:\"38\";s:1:\"b\";s:15:\"create_articles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";s:2:\"39\";s:1:\"b\";s:15:\"update_articles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";s:2:\"40\";s:1:\"b\";s:15:\"delete_articles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";s:2:\"41\";s:1:\"b\";s:5:\"roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";s:2:\"42\";s:1:\"b\";s:10:\"view_roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";s:2:\"43\";s:1:\"b\";s:12:\"create_roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";s:2:\"44\";s:1:\"b\";s:12:\"update_roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";s:2:\"45\";s:1:\"b\";s:12:\"delete_roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";s:2:\"46\";s:1:\"b\";s:11:\"permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";s:2:\"47\";s:1:\"b\";s:16:\"view_permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";s:2:\"48\";s:1:\"b\";s:18:\"create_permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";s:2:\"49\";s:1:\"b\";s:18:\"update_permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";s:2:\"50\";s:1:\"b\";s:18:\"delete_permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";s:2:\"51\";s:1:\"b\";s:5:\"users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";s:2:\"52\";s:1:\"b\";s:10:\"view_users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";s:2:\"53\";s:1:\"b\";s:12:\"create_users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";s:2:\"54\";s:1:\"b\";s:12:\"update_users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";s:2:\"55\";s:1:\"b\";s:12:\"delete_users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";s:2:\"56\";s:1:\"b\";s:9:\"dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";s:2:\"57\";s:1:\"b\";s:14:\"view_dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";s:2:\"58\";s:1:\"b\";s:16:\"create_dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";s:2:\"59\";s:1:\"b\";s:16:\"update_dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";s:2:\"60\";s:1:\"b\";s:16:\"delete_dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";s:2:\"61\";s:1:\"b\";s:8:\"settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";s:2:\"62\";s:1:\"b\";s:13:\"view_settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";s:2:\"63\";s:1:\"b\";s:15:\"create_settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";s:2:\"64\";s:1:\"b\";s:15:\"update_settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";s:2:\"65\";s:1:\"b\";s:15:\"delete_settings\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";s:2:\"66\";s:1:\"b\";s:7:\"reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";s:2:\"67\";s:1:\"b\";s:12:\"view_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:67;a:4:{s:1:\"a\";s:2:\"68\";s:1:\"b\";s:14:\"create_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:68;a:4:{s:1:\"a\";s:2:\"69\";s:1:\"b\";s:14:\"update_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:69;a:4:{s:1:\"a\";s:2:\"70\";s:1:\"b\";s:14:\"delete_reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";s:1:\"1\";s:1:\"b\";s:11:\"super-admin\";s:1:\"c\";s:3:\"web\";}}}', 1773053790);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `image` varchar(255) DEFAULT NULL,
  `searchable_name` text NOT NULL,
  `searchable_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_slug` varchar(255) NOT NULL DEFAULT 'groups'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `searchable_name`, `searchable_description`, `created_at`, `updated_at`, `type_slug`) VALUES
(4, '{\"ar\": \"iure facilis\", \"en\": \"et iste\"}', '{\"ar\": \"Corrupti aut qui corporis quos velit voluptatem ad.\", \"en\": \"Fugit dolores voluptatem doloribus sequi.\"}', 'https://via.placeholder.com/640x480.png/0077ff?text=categories+nam', 'et iste iure facilis', 'Fugit dolores voluptatem doloribus sequi. Corrupti aut qui corporis quos velit voluptatem ad.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(5, '{\"ar\": \"eos consequatur\", \"en\": \"quaerat voluptas\"}', '{\"ar\": \"Esse est corrupti neque officia consequuntur sequi voluptatem.\", \"en\": \"Aut ut deleniti cupiditate quam maxime est quas.\"}', 'https://via.placeholder.com/640x480.png/0077cc?text=categories+nam', 'quaerat voluptas eos consequatur', 'Aut ut deleniti cupiditate quam maxime est quas. Esse est corrupti neque officia consequuntur sequi voluptatem.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(6, '{\"ar\": \"eum exercitationem\", \"en\": \"iusto maxime\"}', '{\"ar\": \"Asperiores quaerat cumque blanditiis rem.\", \"en\": \"Ipsam dicta architecto amet nulla ut.\"}', 'https://via.placeholder.com/640x480.png/00aa00?text=categories+iste', 'iusto maxime eum exercitationem', 'Ipsam dicta architecto amet nulla ut. Asperiores quaerat cumque blanditiis rem.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(7, '{\"ar\": \"maxime ex\", \"en\": \"commodi id\"}', '{\"ar\": \"Labore tempore dolorem accusamus quia iure in eum.\", \"en\": \"Est nostrum totam occaecati rem voluptatem perspiciatis unde.\"}', 'https://via.placeholder.com/640x480.png/00bb66?text=categories+qui', 'commodi id maxime ex', 'Est nostrum totam occaecati rem voluptatem perspiciatis unde. Labore tempore dolorem accusamus quia iure in eum.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(8, '{\"ar\": \"voluptas vel\", \"en\": \"autem occaecati\"}', '{\"ar\": \"Iusto accusantium omnis quia dolorem vel.\", \"en\": \"Delectus sunt dolorum totam aliquam sit dolor dolores eos.\"}', 'https://via.placeholder.com/640x480.png/0022cc?text=categories+amet', 'autem occaecati voluptas vel', 'Delectus sunt dolorum totam aliquam sit dolor dolores eos. Iusto accusantium omnis quia dolorem vel.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(9, '{\"ar\": \"rem adipisci\", \"en\": \"aut dicta\"}', '{\"ar\": \"Illo fuga odio molestiae maiores aut est.\", \"en\": \"Illo ut in temporibus reprehenderit.\"}', 'https://via.placeholder.com/640x480.png/009977?text=categories+aut', 'aut dicta rem adipisci', 'Illo ut in temporibus reprehenderit. Illo fuga odio molestiae maiores aut est.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(10, '{\"ar\": \"in eos\", \"en\": \"quidem sapiente\"}', '{\"ar\": \"Nam quod harum sapiente assumenda sit dignissimos itaque.\", \"en\": \"At ex qui ipsa veniam.\"}', 'https://via.placeholder.com/640x480.png/005533?text=categories+vel', 'quidem sapiente in eos', 'At ex qui ipsa veniam. Nam quod harum sapiente assumenda sit dignissimos itaque.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(11, '{\"ar\": \"occaecati quod\", \"en\": \"quo molestias\"}', '{\"ar\": \"Enim in porro voluptates animi dolorem.\", \"en\": \"Voluptatem omnis laudantium tenetur assumenda assumenda qui.\"}', 'https://via.placeholder.com/640x480.png/0099ee?text=categories+ipsam', 'quo molestias occaecati quod', 'Voluptatem omnis laudantium tenetur assumenda assumenda qui. Enim in porro voluptates animi dolorem.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(12, '{\"ar\": \"atque incidunt\", \"en\": \"consequatur deserunt\"}', '{\"ar\": \"Mollitia omnis ullam et modi ipsum.\", \"en\": \"Est vel necessitatibus soluta error voluptatem sunt dignissimos porro.\"}', 'https://via.placeholder.com/640x480.png/006699?text=categories+ducimus', 'consequatur deserunt atque incidunt', 'Est vel necessitatibus soluta error voluptatem sunt dignissimos porro. Mollitia omnis ullam et modi ipsum.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(13, '{\"ar\": \"sit fugit\", \"en\": \"enim ab\"}', '{\"ar\": \"Culpa et rerum sapiente dignissimos nemo.\", \"en\": \"Iusto quam consequatur nesciunt.\"}', 'https://via.placeholder.com/640x480.png/0055ee?text=categories+eos', 'enim ab sit fugit', 'Iusto quam consequatur nesciunt. Culpa et rerum sapiente dignissimos nemo.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(14, '{\"ar\": \"est possimus\", \"en\": \"et dolor\"}', '{\"ar\": \"Iure et ab error voluptas expedita.\", \"en\": \"Voluptatum odio eum a ut cupiditate.\"}', 'https://via.placeholder.com/640x480.png/001100?text=categories+et', 'et dolor est possimus', 'Voluptatum odio eum a ut cupiditate. Iure et ab error voluptas expedita.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(15, '{\"ar\": \"illum vel\", \"en\": \"rerum aperiam\"}', '{\"ar\": \"Quidem occaecati consequatur sapiente cumque aut.\", \"en\": \"Non quidem rerum laudantium ut qui a.\"}', 'https://via.placeholder.com/640x480.png/00ff77?text=categories+consequatur', 'rerum aperiam illum vel', 'Non quidem rerum laudantium ut qui a. Quidem occaecati consequatur sapiente cumque aut.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(16, '{\"ar\": \"omnis odit\", \"en\": \"eaque ducimus\"}', '{\"ar\": \"Quo quasi laborum deleniti a.\", \"en\": \"Aut corporis et explicabo perspiciatis temporibus.\"}', 'https://via.placeholder.com/640x480.png/008899?text=categories+itaque', 'eaque ducimus omnis odit', 'Aut corporis et explicabo perspiciatis temporibus. Quo quasi laborum deleniti a.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(17, '{\"ar\": \"quia officia\", \"en\": \"delectus quaerat\"}', '{\"ar\": \"Repellendus libero enim provident nesciunt ex voluptatibus dolor.\", \"en\": \"Ipsam nemo nihil omnis minus voluptatem.\"}', 'https://via.placeholder.com/640x480.png/00aaff?text=categories+sit', 'delectus quaerat quia officia', 'Ipsam nemo nihil omnis minus voluptatem. Repellendus libero enim provident nesciunt ex voluptatibus dolor.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(18, '{\"ar\": \"qui soluta\", \"en\": \"minima consequatur\"}', '{\"ar\": \"Qui neque et fugit libero similique cupiditate.\", \"en\": \"Quod et modi consequuntur est soluta molestiae esse.\"}', 'https://via.placeholder.com/640x480.png/00bb99?text=categories+illo', 'minima consequatur qui soluta', 'Quod et modi consequuntur est soluta molestiae esse. Qui neque et fugit libero similique cupiditate.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(19, '{\"ar\": \"cumque earum\", \"en\": \"et et\"}', '{\"ar\": \"Aperiam aut recusandae accusantium amet veniam adipisci consequuntur.\", \"en\": \"Sed omnis consequatur omnis fuga.\"}', 'https://via.placeholder.com/640x480.png/000022?text=categories+nulla', 'et et cumque earum', 'Sed omnis consequatur omnis fuga. Aperiam aut recusandae accusantium amet veniam adipisci consequuntur.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(20, '{\"ar\": \"فئة جديدة updatedewffwe\", \"en\": \"NEW CATEGORY updatedwergf\"}', '{\"ar\": \"ينلسععثق\", \"en\": \"SDGJBDefer\"}', 'categories/ymjLo5nMNPw8MPOaGr8b0djwliGJM4C12KTuNkdC.jpg', 'NEW CATEGORY updatedwergf فئة جديدة updatedewffwe', 'SDGJBDefer ينلسععثق', '2026-02-03 14:32:48', '2026-02-04 13:35:20', 'groups'),
(22, '{\"ar\": \"itaque ex\", \"en\": \"id repudiandae\"}', '{\"ar\": \"Sequi sequi at ducimus placeat eaque sunt voluptas.\", \"en\": \"Nihil ea fuga animi minima.\"}', 'https://via.placeholder.com/640x480.png/004433?text=categories+minus', 'id repudiandae itaque ex', 'Nihil ea fuga animi minima. Sequi sequi at ducimus placeat eaque sunt voluptas.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(23, '{\"ar\": \"excepturi et\", \"en\": \"quo dolorem\"}', '{\"ar\": \"Natus earum nemo facere et optio ipsam mollitia.\", \"en\": \"Est libero minima consequatur maiores odio rerum.\"}', 'https://via.placeholder.com/640x480.png/00ff44?text=categories+maxime', 'quo dolorem excepturi et', 'Est libero minima consequatur maiores odio rerum. Natus earum nemo facere et optio ipsam mollitia.', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 'groups'),
(24, '{\"ar\": \"sed totam\", \"en\": \"sit aspernatur\"}', '{\"ar\": \"Impedit recusandae aliquid quis aperiam porro.\", \"en\": \"Nesciunt harum sit omnis eligendi iusto.\"}', 'https://via.placeholder.com/640x480.png/000077?text=categories+deserunt', 'sit aspernatur sed totam', 'Nesciunt harum sit omnis eligendi iusto. Impedit recusandae aliquid quis aperiam porro.', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 'groups'),
(25, '{\"ar\": \"aspernatur commodi\", \"en\": \"ducimus voluptatum\"}', '{\"ar\": \"Voluptatem unde tenetur esse porro dolor dolorem dolor.\", \"en\": \"Dolor reprehenderit vero quaerat.\"}', 'https://via.placeholder.com/640x480.png/00ee77?text=categories+doloremque', 'ducimus voluptatum aspernatur commodi', 'Dolor reprehenderit vero quaerat. Voluptatem unde tenetur esse porro dolor dolorem dolor.', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 'groups'),
(26, '{\"ar\": \"consequuntur laudantium\", \"en\": \"est sequi\"}', '{\"ar\": \"Neque esse quae incidunt consequatur.\", \"en\": \"Nesciunt ut ratione quasi quos.\"}', 'https://via.placeholder.com/640x480.png/006655?text=categories+velit', 'est sequi consequuntur laudantium', 'Nesciunt ut ratione quasi quos. Neque esse quae incidunt consequatur.', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 'groups'),
(27, '{\"ar\": \"cum corporis\", \"en\": \"sunt quos\"}', '{\"ar\": \"Est sint est unde quae facilis itaque ea.\", \"en\": \"Dolore ipsam repellat non sequi dolor est.\"}', 'https://via.placeholder.com/640x480.png/00bbaa?text=categories+ipsam', 'sunt quos cum corporis', 'Dolore ipsam repellat non sequi dolor est. Est sint est unde quae facilis itaque ea.', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 'groups'),
(28, '{\"ar\": \"laborum et\", \"en\": \"rerum labore\"}', '{\"ar\": \"Sed omnis aut sed eos et hic.\", \"en\": \"Nesciunt eum fugit ut occaecati ut et.\"}', 'https://via.placeholder.com/640x480.png/0099ff?text=categories+sed', 'rerum labore laborum et', 'Nesciunt eum fugit ut occaecati ut et. Sed omnis aut sed eos et hic.', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 'groups'),
(29, '{\"ar\": \"omnis et\", \"en\": \"voluptas minima\"}', '{\"ar\": \"Ea iste quas harum et illum omnis.\", \"en\": \"Esse ad est in.\"}', 'https://via.placeholder.com/640x480.png/004444?text=categories+suscipit', 'voluptas minima omnis et', 'Esse ad est in. Ea iste quas harum et illum omnis.', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 'groups'),
(30, '{\"ar\": \"nulla pariatur\", \"en\": \"non facere\"}', '{\"ar\": \"Nesciunt voluptatem hic modi deserunt.\", \"en\": \"Beatae in fugit ea consequatur pariatur minus odit placeat.\"}', 'https://via.placeholder.com/640x480.png/00aacc?text=categories+reprehenderit', 'non facere nulla pariatur', 'Beatae in fugit ea consequatur pariatur minus odit placeat. Nesciunt voluptatem hic modi deserunt.', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 'groups'),
(31, '{\"ar\": \"numquam ut\", \"en\": \"id et\"}', '{\"ar\": \"Eos molestiae quo debitis earum.\", \"en\": \"Quidem possimus et perferendis libero ipsa.\"}', 'https://via.placeholder.com/640x480.png/004422?text=categories+qui', 'id et numquam ut', 'Quidem possimus et perferendis libero ipsa. Eos molestiae quo debitis earum.', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 'groups'),
(32, '{\"ar\": \"ut eligendi\", \"en\": \"modi dolor\"}', '{\"ar\": \"Omnis deserunt quis praesentium autem est.\", \"en\": \"Repellendus corporis ipsam explicabo atque accusantium architecto aliquam.\"}', 'https://via.placeholder.com/640x480.png/004400?text=categories+ut', 'modi dolor ut eligendi', 'Repellendus corporis ipsam explicabo atque accusantium architecto aliquam. Omnis deserunt quis praesentium autem est.', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 'groups'),
(33, '{\"ar\": \"recusandae enim\", \"en\": \"ex repellendus\"}', '{\"ar\": \"Veniam laudantium corporis sequi error repudiandae.\", \"en\": \"Sit debitis eligendi magni architecto vel et.\"}', 'https://via.placeholder.com/640x480.png/0077dd?text=categories+sint', 'ex repellendus recusandae enim', 'Sit debitis eligendi magni architecto vel et. Veniam laudantium corporis sequi error repudiandae.', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 'groups'),
(34, '{\"ar\": \"فئة جديدة\", \"en\": \"NEW CATEGORY\"}', '{\"ar\": \"ينلسععثق\", \"en\": \"SDGJBD\"}', 'C:\\laragon\\tmp\\php140D.tmp', 'NEW CATEGORY فئة جديدة', 'SDGJBD ينلسععثق', '2026-02-04 12:50:54', '2026-02-04 12:50:54', 'groups'),
(35, '{\"ar\": \"فئة جديدة\", \"en\": \"NEW CATEGORY\"}', '{\"ar\": \"ينلسععثق\", \"en\": \"SDGJBD\"}', '/storage/categories/iiJrEYbRK7Pxl7NJXnCSBbxLcVROHIdSa2KhaFaE.png', 'NEW CATEGORY فئة جديدة', 'SDGJBD ينلسععثق', '2026-02-04 12:52:36', '2026-02-04 12:52:36', 'groups'),
(36, '{\"ar\": \"فئة جديدة\", \"en\": \"NEW CATEGORY\"}', '{\"ar\": \"ينلسععثق\", \"en\": \"SDGJBD\"}', 'categories/DJuNlyHSPrUJCiJjuFxaDV93kL3DGTXGLFGDl3fd.png', 'NEW CATEGORY فئة جديدة', 'SDGJBD ينلسععثق', '2026-02-04 12:57:44', '2026-02-04 12:57:44', 'groups'),
(37, '{\"en\":\"ef\",\"ar\":\"werf\"}', '{\"en\":\"ewr\",\"ar\":\"ewr\"}', NULL, 'ef werf', 'ewr ewr', '2026-02-08 14:59:25', '2026-02-08 14:59:25', 'groups'),
(40, '{\"en\":\"sdgsdg\",\"ar\":\"sdfv\"}', '{\"ar\":null}', NULL, 'sdgsdg sdfv', ' ', '2026-02-11 13:07:16', '2026-02-11 13:07:16', 'groups'),
(41, '{\"en\":\"safsaf\",\"ar\":\"asd\"}', '{\"en\":\"eagreghrgg\",\"ar\":\"asdgr4e\"}', 'categories/wHr4XkBzJlyRwdq42L6l9pslCOBi8QpFSN4gQx6T.png', 'safsaf asd', 'eagreghrgg asdgr4e', '2026-02-11 13:43:00', '2026-02-11 13:43:00', 'groups'),
(42, '{\"en\":\"hgjjhg\",\"ar\":\"thytr\"}', '{\"en\":\"hgjhgj\",\"ar\":\"hgj\"}', 'categories/d1lrvu0Mwo7gnabWXMyuSOvYcfwjnHvbagL3C7lR.png', 'hgjjhg thytr', 'hgjhgj hgj', '2026-02-11 14:31:57', '2026-02-11 14:31:57', 'groups'),
(43, '{\"en\":\"new category\",\"ar\":\"ثقل\"}', '{\"en\":\"rdgergerg\",\"ar\":\"يسب\"}', 'categories/piloLw2Ap8ruTa7ipSaIUmLCtRAbFfcu0ikGrpyZ.png', 'new category ثقل', 'rdgergerg يسب', '2026-02-11 15:18:34', '2026-02-11 15:18:34', 'groups');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 48, '{\"en\":\"Omnis quas hic consequatur repellendus corrupti dicta.\",\"ar\":\"Explicabo et consequuntur accusantium provident.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(2, 1, 49, '{\"en\":\"Odit aut numquam aperiam et consequatur error.\",\"ar\":\"Voluptatem nemo iure id nostrum in dolores aliquam.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(3, 1, 50, '{\"en\":\"Qui sunt unde commodi.\",\"ar\":\"Similique ab eos cumque in voluptatem placeat voluptas.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(4, 2, 51, '{\"en\":\"Repellendus reiciendis quisquam exercitationem rerum.\",\"ar\":\"Reiciendis repellendus voluptate enim laborum enim assumenda.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(5, 2, 52, '{\"en\":\"Et in numquam quisquam recusandae consequuntur.\",\"ar\":\"Nam molestiae sed dignissimos ipsam nisi possimus nihil.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(6, 2, 53, '{\"en\":\"A odit accusantium mollitia rem perspiciatis.\",\"ar\":\"Dolorem tenetur ab officiis voluptatibus quia facilis.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(7, 2, 54, '{\"en\":\"Blanditiis est beatae voluptas nobis veniam aut.\",\"ar\":\"Quia reprehenderit dolorem est omnis natus hic.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(8, 3, 55, '{\"en\":\"Quis repudiandae voluptates officiis culpa recusandae sint.\",\"ar\":\"Et sint commodi hic sit ex et deserunt.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(9, 3, 56, '{\"en\":\"Explicabo doloremque inventore similique adipisci.\",\"ar\":\"Deleniti a quis sit necessitatibus.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(10, 3, 57, '{\"en\":\"Enim nulla vel magni at fugiat magni necessitatibus.\",\"ar\":\"Corporis ratione similique sunt doloribus.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(11, 3, 58, '{\"en\":\"Occaecati enim excepturi a qui.\",\"ar\":\"Harum voluptas quia reprehenderit omnis odit eos ut omnis.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(12, 4, 59, '{\"en\":\"Et perferendis veniam enim harum.\",\"ar\":\"Occaecati molestiae molestiae ea dolorem.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(13, 4, 60, '{\"en\":\"Corrupti doloremque nihil facilis impedit aspernatur.\",\"ar\":\"Facilis sequi itaque quae voluptates iure laudantium ducimus cum.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(14, 5, 61, '{\"en\":\"Exercitationem odio fuga libero saepe et velit et.\",\"ar\":\"Deleniti beatae sed id delectus unde.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(15, 6, 62, '{\"en\":\"Placeat ab dolor qui pariatur veritatis fuga ipsam.\",\"ar\":\"Exercitationem consectetur corrupti qui et.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(16, 6, 63, '{\"en\":\"Aperiam at necessitatibus tempore et.\",\"ar\":\"Velit aperiam similique sequi aut et sit.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(17, 6, 64, '{\"en\":\"Occaecati dolore perspiciatis consequatur voluptates et.\",\"ar\":\"Aut facilis optio consequuntur nostrum enim eaque soluta.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(18, 6, 65, '{\"en\":\"Neque qui sunt velit nulla voluptas sit tempora.\",\"ar\":\"Iure distinctio doloribus omnis expedita autem et.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(19, 6, 66, '{\"en\":\"Excepturi deserunt inventore consectetur autem ab.\",\"ar\":\"Laborum perspiciatis ut commodi maiores.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(20, 7, 74, '{\"en\":\"Et qui possimus quaerat distinctio.\",\"ar\":\"Quos magni aut aliquam fugiat officiis provident.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(21, 7, 75, '{\"en\":\"Sunt aspernatur tempore eligendi incidunt sit exercitationem.\",\"ar\":\"Debitis et quia ipsum ullam.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(22, 7, 76, '{\"en\":\"Eos nulla autem minima sunt omnis nihil voluptatem.\",\"ar\":\"Omnis quo et sed non modi dolor.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(23, 7, 77, '{\"en\":\"Porro et molestiae eveniet consequuntur.\",\"ar\":\"Sed cum fugiat ex sequi non.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(24, 7, 78, '{\"en\":\"Ea quidem molestias in voluptatum.\",\"ar\":\"Harum deleniti ut sint reiciendis repudiandae.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(25, 8, 79, '{\"en\":\"Qui vel et sit aliquid quia et alias earum.\",\"ar\":\"Quasi aut fugiat nemo voluptatem.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(26, 8, 80, '{\"en\":\"Dolorum soluta porro aut ullam ut.\",\"ar\":\"Provident incidunt est officia consequuntur.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(27, 8, 81, '{\"en\":\"Assumenda qui voluptatibus nisi consequatur in.\",\"ar\":\"Dignissimos est soluta inventore dolorem earum voluptatem exercitationem.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(28, 9, 82, '{\"en\":\"Distinctio et repellat occaecati eos voluptates.\",\"ar\":\"Repudiandae debitis voluptates dolor quis ex at.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(29, 9, 83, '{\"en\":\"Omnis quo assumenda natus fugiat non qui ad.\",\"ar\":\"Odio nihil et suscipit distinctio hic impedit velit.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(30, 9, 84, '{\"en\":\"Sed veritatis veritatis omnis possimus eum ratione possimus aut.\",\"ar\":\"Cum et qui quia sapiente id molestiae modi ut.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(31, 9, 85, '{\"en\":\"Eaque qui quibusdam magni quo soluta provident id atque.\",\"ar\":\"Nisi blanditiis omnis pariatur.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(32, 10, 86, '{\"en\":\"Consequatur quam quo quia vero.\",\"ar\":\"Esse consequatur unde est.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(33, 10, 87, '{\"en\":\"Eos saepe quis repellendus omnis quisquam enim a.\",\"ar\":\"Est saepe magni ipsa aspernatur fugit.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(34, 10, 88, '{\"en\":\"Quos fuga repudiandae quo consequatur repellat debitis.\",\"ar\":\"Est et autem nostrum est quae.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(35, 10, 89, '{\"en\":\"Omnis ratione maiores ea.\",\"ar\":\"Quos ut aut soluta non alias est.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(36, 11, 90, '{\"en\":\"Ut cumque dicta dolores ab nam.\",\"ar\":\"Earum eaque enim nostrum autem modi tempore.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(37, 11, 91, '{\"en\":\"Omnis recusandae reprehenderit facilis commodi non vero quo.\",\"ar\":\"Fugiat quas molestias est unde.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(38, 11, 92, '{\"en\":\"Et qui doloremque fuga non ipsam quo quas eum.\",\"ar\":\"Molestiae voluptas qui molestiae officia recusandae.\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(39, 11, 93, '{\"en\":\"Et quia labore neque tempore molestiae dolorem in.\",\"ar\":\"Voluptates ipsum quia doloribus tempore fuga.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(40, 12, 94, '{\"en\":\"Similique repudiandae tempore hic qui.\",\"ar\":\"Qui nobis commodi commodi beatae magnam qui maiores.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(41, 12, 95, '{\"en\":\"Qui aut repudiandae eos asperiores velit et.\",\"ar\":\"Laborum temporibus molestiae necessitatibus nesciunt occaecati non officiis culpa.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(42, 12, 96, '{\"en\":\"Rerum aut exercitationem officiis voluptatum rerum.\",\"ar\":\"Unde voluptatem dignissimos dolore eveniet dolorem repellendus.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(43, 14, 101, '{\"en\":\"Inventore labore pariatur occaecati a minus architecto veritatis.\",\"ar\":\"Rerum quia vel totam ducimus.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(44, 14, 102, '{\"en\":\"Sapiente quaerat error minus excepturi nihil et est.\",\"ar\":\"Nihil non omnis temporibus a aliquid architecto.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(45, 14, 103, '{\"en\":\"Aut laborum vero ducimus vitae quasi.\",\"ar\":\"Aut tempora sed fuga in consequatur placeat exercitationem.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(46, 14, 104, '{\"en\":\"Commodi modi autem sed error quo.\",\"ar\":\"In dolores laboriosam veritatis nobis non consequuntur dolores.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(47, 15, 105, '{\"en\":\"Ullam voluptatem voluptas fugiat fugit natus voluptatem culpa.\",\"ar\":\"Quis in voluptatem consequuntur adipisci et.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(48, 15, 106, '{\"en\":\"Qui aut occaecati omnis veniam quam.\",\"ar\":\"Ut cum deleniti molestiae repellendus.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(49, 15, 107, '{\"en\":\"Possimus vero autem libero incidunt.\",\"ar\":\"Minima id id asperiores corporis magnam sint labore.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(50, 15, 108, '{\"en\":\"Aut commodi nulla voluptatem et optio quam sed velit.\",\"ar\":\"Fugiat facere et doloribus quia deleniti est.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(51, 15, 109, '{\"en\":\"Sit reprehenderit ut praesentium officia quidem id pariatur.\",\"ar\":\"Nihil enim laudantium minus perferendis fugiat deleniti nostrum maiores.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(52, 17, 110, '{\"en\":\"At voluptatibus blanditiis quibusdam quod qui.\",\"ar\":\"Molestiae et blanditiis impedit.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(53, 18, 117, '{\"en\":\"Veniam voluptates pariatur eius.\",\"ar\":\"Nihil ut et harum aliquid delectus.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(54, 18, 118, '{\"en\":\"Quia voluptate sit distinctio laboriosam.\",\"ar\":\"Sed reiciendis amet tempore ratione mollitia sint quidem nihil.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(55, 18, 119, '{\"en\":\"Quaerat tenetur ratione repudiandae et aut omnis rerum.\",\"ar\":\"Voluptas facilis possimus exercitationem dolores harum sed incidunt.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(56, 18, 120, '{\"en\":\"Blanditiis tenetur ut laboriosam et.\",\"ar\":\"Libero iusto saepe error sunt dolorem praesentium sed.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(57, 19, 121, '{\"en\":\"Quae rerum asperiores ipsa non praesentium quae.\",\"ar\":\"Qui est expedita voluptates.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(58, 19, 122, '{\"en\":\"Accusamus qui laborum dolor voluptatem debitis provident est ut.\",\"ar\":\"Debitis libero sit ea rerum occaecati nostrum.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(59, 19, 123, '{\"en\":\"Error sit voluptas nobis impedit.\",\"ar\":\"Voluptas corporis doloribus blanditiis molestiae.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(60, 20, 124, '{\"en\":\"Laboriosam sint labore accusamus.\",\"ar\":\"Consequuntur ad quia possimus eligendi et.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(61, 20, 125, '{\"en\":\"Enim ducimus eveniet ut perferendis non praesentium architecto consequuntur.\",\"ar\":\"Quidem perferendis praesentium dolore.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(62, 20, 126, '{\"en\":\"Et id adipisci porro officiis ducimus praesentium aperiam.\",\"ar\":\"Sed quia in qui et autem.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(63, 20, 127, '{\"en\":\"Exercitationem numquam dolorem aut et quas.\",\"ar\":\"Quisquam quos et ea consequatur est ut.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(64, 21, 128, '{\"en\":\"Deleniti sit sed dicta rerum enim optio.\",\"ar\":\"Aut quidem officia non.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(65, 21, 129, '{\"en\":\"Reprehenderit dolores iste aliquid voluptatibus.\",\"ar\":\"Nobis nam dolorem perspiciatis at sit commodi et.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(66, 21, 130, '{\"en\":\"Cumque ullam nihil iure aliquam.\",\"ar\":\"Illo reiciendis voluptas voluptatem nisi harum.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(67, 21, 131, '{\"en\":\"Non molestiae voluptatem eaque iusto occaecati id animi dolor.\",\"ar\":\"Harum quasi voluptatem natus et voluptas consequuntur.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(68, 22, 132, '{\"en\":\"Sed ut provident et cupiditate voluptatem omnis libero.\",\"ar\":\"Esse dolore dolores eius occaecati architecto debitis.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(69, 22, 133, '{\"en\":\"Et et impedit fugiat est.\",\"ar\":\"Soluta quos nemo est aliquid eveniet.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(70, 22, 134, '{\"en\":\"Temporibus id excepturi quidem consequatur reprehenderit officia ducimus.\",\"ar\":\"Enim modi nisi ut saepe.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(71, 23, 135, '{\"en\":\"Omnis eligendi iure qui perspiciatis fugiat nihil.\",\"ar\":\"Est dolores quia labore consequuntur officia perspiciatis.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(72, 23, 136, '{\"en\":\"Et labore eum numquam aliquid blanditiis ut et.\",\"ar\":\"Sed harum ut consectetur molestiae illo iste cupiditate.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(73, 23, 137, '{\"en\":\"Ex rerum corrupti iste esse sequi ut.\",\"ar\":\"Eveniet ducimus molestiae eius maxime illo assumenda.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(74, 23, 138, '{\"en\":\"Facilis quo inventore veniam.\",\"ar\":\"Quaerat sed ratione sit architecto molestiae delectus aperiam.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(75, 24, 145, '{\"en\":\"Repellendus maiores quo cumque nam.\",\"ar\":\"Repellendus sed non quia mollitia autem omnis adipisci.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(76, 25, 146, '{\"en\":\"Et repellendus nihil sunt earum qui est.\",\"ar\":\"In fugit voluptatem maxime est possimus quia error.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(77, 25, 147, '{\"en\":\"Fugit molestiae ad id cumque sit voluptatem porro.\",\"ar\":\"Sint alias nobis recusandae.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(78, 25, 148, '{\"en\":\"Quibusdam et laudantium maiores ut ad quia mollitia sit.\",\"ar\":\"Voluptate reiciendis ipsam beatae aliquam.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(79, 25, 149, '{\"en\":\"Delectus omnis autem necessitatibus tenetur.\",\"ar\":\"Fugit voluptatem quaerat officiis molestiae id vitae aut.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(80, 26, 150, '{\"en\":\"Soluta ut occaecati velit consequuntur sed impedit non.\",\"ar\":\"Molestias et quia accusamus labore.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(81, 26, 151, '{\"en\":\"Minus non velit blanditiis aperiam ea ratione.\",\"ar\":\"Id enim ut laudantium quas.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(82, 26, 152, '{\"en\":\"Nihil vero debitis ut dicta harum.\",\"ar\":\"In nostrum dignissimos est sapiente aut eos.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(83, 26, 153, '{\"en\":\"Eaque sint molestiae blanditiis modi molestiae culpa.\",\"ar\":\"Sed id cumque sed aut fuga atque velit.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(84, 26, 154, '{\"en\":\"Quis sed excepturi error ipsam mollitia et odio enim.\",\"ar\":\"Commodi quas ut molestiae.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(85, 28, 155, '{\"en\":\"Vero ut amet inventore repudiandae.\",\"ar\":\"Rerum aliquam sequi facilis ea nostrum doloremque sit.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(86, 29, 156, '{\"en\":\"Consequatur illum reprehenderit non minus.\",\"ar\":\"Doloremque animi et facere velit ad maxime.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(87, 29, 157, '{\"en\":\"Temporibus quia ea ea repudiandae odio nulla.\",\"ar\":\"A voluptas officia et et consectetur autem.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(88, 29, 158, '{\"en\":\"Quos maiores in necessitatibus.\",\"ar\":\"Eius id perferendis facere.\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(89, 30, 166, '{\"en\":\"Enim reiciendis et pariatur quia animi.\",\"ar\":\"Rem ipsum est tempora cumque tenetur ducimus expedita.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(90, 30, 167, '{\"en\":\"Voluptas enim modi eum quaerat.\",\"ar\":\"Dolorem eaque ut quo veniam.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(91, 30, 168, '{\"en\":\"Vero dolorum amet corporis velit.\",\"ar\":\"Ut adipisci recusandae harum quis consequatur ea ipsam.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(92, 30, 169, '{\"en\":\"Amet iusto vero quo repellat.\",\"ar\":\"Recusandae quisquam et ea est nam omnis.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(93, 31, 170, '{\"en\":\"Exercitationem est consequatur quas perspiciatis est nostrum impedit.\",\"ar\":\"Aut eius perferendis culpa ut sunt voluptatem.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(94, 31, 171, '{\"en\":\"Aperiam aliquid et odio nisi commodi.\",\"ar\":\"Ut consequatur vero aliquam molestias voluptas distinctio et quo.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(95, 31, 172, '{\"en\":\"Eos aspernatur sint alias dolores pariatur id commodi.\",\"ar\":\"Qui impedit inventore molestias quia.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(96, 31, 173, '{\"en\":\"Provident quia quod inventore.\",\"ar\":\"Architecto inventore molestiae dolor praesentium dolores.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(97, 31, 174, '{\"en\":\"Est officiis necessitatibus dicta et distinctio ex similique.\",\"ar\":\"Dolore aperiam ut id eos omnis itaque.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(98, 32, 175, '{\"en\":\"Nihil aspernatur explicabo maiores et quam.\",\"ar\":\"Iste tempore est cupiditate a temporibus minima.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(99, 32, 176, '{\"en\":\"Dolores reiciendis nobis aspernatur provident.\",\"ar\":\"Laboriosam assumenda voluptatibus officiis veniam labore.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(100, 32, 177, '{\"en\":\"Neque commodi quo sunt ipsam et iure.\",\"ar\":\"Unde aut libero voluptatem autem quae.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(101, 32, 178, '{\"en\":\"Officiis minima fuga in ipsum doloribus modi molestias.\",\"ar\":\"Similique consectetur nostrum occaecati alias quia eius.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(102, 33, 179, '{\"en\":\"Sequi pariatur cumque molestias sequi et facilis impedit voluptas.\",\"ar\":\"Mollitia quasi minus sint possimus.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(103, 34, 180, '{\"en\":\"Et qui dolores sed distinctio praesentium.\",\"ar\":\"Ratione soluta eius exercitationem eos.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(104, 34, 181, '{\"en\":\"Nobis et architecto in impedit.\",\"ar\":\"Doloremque porro laudantium provident quas exercitationem sed vel.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(105, 34, 182, '{\"en\":\"Laboriosam id laborum tenetur.\",\"ar\":\"Totam ut a animi cupiditate ut sapiente eius.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(106, 34, 183, '{\"en\":\"Velit non voluptate eos sint itaque ut beatae.\",\"ar\":\"Adipisci omnis vero consequuntur labore facere consequatur.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(107, 35, 184, '{\"en\":\"Ducimus inventore mollitia tenetur quis.\",\"ar\":\"Aut et magnam aperiam.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(108, 35, 185, '{\"en\":\"Quasi exercitationem rerum corporis sequi praesentium non reiciendis.\",\"ar\":\"Voluptatem ut et enim ab quis.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(109, 36, 186, '{\"en\":\"Voluptate dicta veniam et veniam omnis a iste non.\",\"ar\":\"Exercitationem consequuntur quo et sequi itaque.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(110, 37, 195, '{\"en\":\"Quas sed dolores qui aut hic aut ad.\",\"ar\":\"Molestiae corporis esse ipsum et sit sint expedita.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(111, 37, 196, '{\"en\":\"Eligendi neque illo suscipit ab laboriosam recusandae culpa nesciunt.\",\"ar\":\"Quam voluptatibus voluptas ab est non qui praesentium.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(112, 38, 197, '{\"en\":\"Quo labore autem numquam corrupti est nobis.\",\"ar\":\"Pariatur porro dolorem voluptatibus voluptatem magnam sunt non.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(113, 38, 198, '{\"en\":\"Consequuntur ut unde iure et illum occaecati.\",\"ar\":\"Eveniet aut ratione corporis.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(114, 38, 199, '{\"en\":\"Ducimus et eum alias id commodi est ut eos.\",\"ar\":\"Et a neque fuga voluptate hic tenetur repudiandae.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(115, 38, 200, '{\"en\":\"Sed ut dicta voluptatem recusandae.\",\"ar\":\"Sapiente placeat ea autem.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(116, 38, 201, '{\"en\":\"Quia quod voluptatem illum ut ut et facilis.\",\"ar\":\"Itaque rerum molestiae omnis cupiditate.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(117, 39, 202, '{\"en\":\"Debitis sed in ducimus ab.\",\"ar\":\"Reiciendis vel itaque labore earum.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(118, 39, 203, '{\"en\":\"Eos voluptatibus similique quas nobis ut dolorum animi quidem.\",\"ar\":\"Sed recusandae in illum qui ut id cupiditate.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(119, 39, 204, '{\"en\":\"Quae corporis sint autem quis et modi est.\",\"ar\":\"Qui aliquid perspiciatis rerum dolorem.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(120, 39, 205, '{\"en\":\"Quos odit ea dignissimos nesciunt soluta modi beatae.\",\"ar\":\"Quia et repellat ut.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(121, 39, 206, '{\"en\":\"Esse illo omnis quod facere.\",\"ar\":\"Iure praesentium et sed voluptatum.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(122, 40, 207, '{\"en\":\"Qui ut a qui reprehenderit omnis at quisquam culpa.\",\"ar\":\"Accusamus et est consequuntur rerum delectus molestias qui.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(123, 40, 208, '{\"en\":\"Quisquam amet asperiores et optio natus repellendus deserunt iste.\",\"ar\":\"Enim qui ut dicta reiciendis in iure aut omnis.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(124, 40, 209, '{\"en\":\"Blanditiis illo nostrum sunt voluptate voluptatem.\",\"ar\":\"Quae aspernatur ea dignissimos exercitationem.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(125, 41, 210, '{\"en\":\"Voluptate consequatur explicabo omnis quis est blanditiis.\",\"ar\":\"Nisi tenetur quisquam totam.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(126, 43, 211, '{\"en\":\"Vitae molestiae quod est suscipit minus.\",\"ar\":\"Voluptatem repellendus necessitatibus aut autem eligendi et aut.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(127, 43, 212, '{\"en\":\"Fuga aut provident repudiandae et nobis incidunt.\",\"ar\":\"Aliquid voluptas ab deserunt voluptate.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(128, 43, 213, '{\"en\":\"Quia aut dolorem molestiae quae in doloremque.\",\"ar\":\"Ipsum nesciunt sequi autem repellat eos qui nostrum.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(129, 43, 214, '{\"en\":\"Voluptatem blanditiis fugiat labore ex iure itaque quos aut.\",\"ar\":\"Molestiae autem nemo reprehenderit animi repellendus iste.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(130, 44, 215, '{\"en\":\"Sed voluptatibus aut tempora ab architecto voluptatem aut.\",\"ar\":\"Odit dolorem voluptas labore necessitatibus fugiat et atque odio.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(131, 44, 216, '{\"en\":\"Porro dolores laboriosam eum a.\",\"ar\":\"Earum nesciunt accusamus reiciendis aliquid omnis id.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(132, 44, 217, '{\"en\":\"Facilis reiciendis dicta distinctio nemo fugit voluptas.\",\"ar\":\"Dignissimos cupiditate quas voluptatem molestias ab id rerum.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(133, 44, 218, '{\"en\":\"In consectetur odio et ea dolores aut ea.\",\"ar\":\"Architecto distinctio rerum rerum deleniti provident illo iure dolorem.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(134, 44, 219, '{\"en\":\"Neque ratione harum distinctio dolorum vero necessitatibus.\",\"ar\":\"Ipsa eos aperiam ipsa officia iste omnis.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(135, 45, 228, '{\"en\":\"Laborum et sequi itaque est ut.\",\"ar\":\"Et corrupti tempora voluptatem facilis aut aliquid.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(136, 46, 229, '{\"en\":\"Deserunt quibusdam asperiores ducimus accusantium explicabo voluptatem.\",\"ar\":\"Voluptatibus vero atque sint et mollitia.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(137, 46, 230, '{\"en\":\"Vel ut ad aut ipsam sit consequatur.\",\"ar\":\"Sint inventore placeat unde dolorem similique quam rerum.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(138, 47, 231, '{\"en\":\"Tempora sapiente animi ad tempore aut voluptatem.\",\"ar\":\"Saepe quo accusamus temporibus numquam et.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(139, 47, 232, '{\"en\":\"Dolore possimus perspiciatis maxime sed.\",\"ar\":\"Necessitatibus reprehenderit quod quibusdam cupiditate.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(140, 48, 233, '{\"en\":\"Est error voluptatem quis similique non accusantium.\",\"ar\":\"Omnis quas quis praesentium rerum iusto amet neque.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(141, 48, 234, '{\"en\":\"Voluptatem saepe omnis et.\",\"ar\":\"Itaque sapiente consectetur debitis qui sit.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(142, 49, 235, '{\"en\":\"Minima laborum repellendus omnis est et vitae dolor.\",\"ar\":\"Ducimus itaque nihil deleniti.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(143, 49, 236, '{\"en\":\"Velit saepe accusamus ducimus laborum consequatur.\",\"ar\":\"Officiis quo qui odit et sint autem qui.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(144, 50, 237, '{\"en\":\"Quis consequuntur rerum aspernatur possimus.\",\"ar\":\"Ullam eos eos explicabo unde vel provident.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(145, 50, 238, '{\"en\":\"Perferendis assumenda iure deserunt nesciunt nam aspernatur minus aut.\",\"ar\":\"Minima facilis cumque aut pariatur voluptas voluptatem facilis libero.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(146, 50, 239, '{\"en\":\"Deleniti ullam pariatur optio ut incidunt illum voluptatum.\",\"ar\":\"Non et consequatur aperiam pariatur quae.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(147, 50, 240, '{\"en\":\"Et non voluptatem mollitia fugit occaecati.\",\"ar\":\"Minus hic et aut eius dolorum.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(148, 51, 241, '{\"en\":\"Natus ut voluptas molestiae eum voluptatibus aliquid.\",\"ar\":\"Dolorem eius et maiores fugit eos qui accusantium.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(149, 51, 242, '{\"en\":\"Et est minima enim quasi quos ea.\",\"ar\":\"Porro assumenda modi rerum excepturi debitis.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(150, 51, 243, '{\"en\":\"Debitis ad adipisci nostrum impedit deserunt suscipit.\",\"ar\":\"A repellat illo deleniti soluta voluptatem in aliquam.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(151, 51, 244, '{\"en\":\"Minima rem quod natus et iusto.\",\"ar\":\"Consequatur sed reiciendis numquam in maiores et ipsa.\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(152, 52, 245, '{\"en\":\"Veniam vel facere voluptatibus non.\",\"ar\":\"Illo sunt nostrum ducimus numquam labore cupiditate libero.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(153, 52, 246, '{\"en\":\"Voluptatem rem totam odit sint.\",\"ar\":\"At molestiae pariatur nesciunt et qui.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(154, 53, 253, '{\"en\":\"Et numquam recusandae quibusdam et.\",\"ar\":\"Fugiat harum soluta est accusamus deserunt ullam.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(155, 53, 254, '{\"en\":\"Aut tempore voluptatem non.\",\"ar\":\"Vero sunt totam omnis sunt quo nihil.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(156, 53, 255, '{\"en\":\"Saepe quidem iure eius quia iste omnis quas.\",\"ar\":\"Dolor inventore corrupti optio modi.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(157, 53, 256, '{\"en\":\"Enim molestias maiores unde vel.\",\"ar\":\"Repellendus facere voluptate sit aliquid.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(158, 54, 257, '{\"en\":\"Perferendis nemo nemo odio vero amet quas non.\",\"ar\":\"Excepturi est odio quae fuga.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(159, 54, 258, '{\"en\":\"Ratione est velit perspiciatis voluptatibus dignissimos.\",\"ar\":\"Eveniet sit doloribus rerum similique sit.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(160, 54, 259, '{\"en\":\"Vero error odit assumenda ad voluptatum quia ab.\",\"ar\":\"Dolore nemo optio exercitationem tempora.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(161, 54, 260, '{\"en\":\"Quia cumque est quas eum eveniet harum pariatur.\",\"ar\":\"Molestiae ea dolore deleniti incidunt nulla tempora.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(162, 55, 261, '{\"en\":\"Fugiat laborum quisquam omnis eligendi qui et accusamus optio.\",\"ar\":\"Laboriosam autem sunt amet repellendus animi.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(163, 55, 262, '{\"en\":\"Numquam quam ipsum porro est sunt commodi.\",\"ar\":\"Non voluptatem esse et quae et.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(164, 55, 263, '{\"en\":\"Dolor in voluptatibus mollitia asperiores ut voluptas.\",\"ar\":\"Aperiam eligendi iusto qui provident porro libero non blanditiis.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(165, 55, 264, '{\"en\":\"Praesentium est qui rerum vitae aliquam itaque.\",\"ar\":\"Asperiores tenetur sapiente voluptatem et.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(166, 56, 265, '{\"en\":\"Autem minus molestiae ut velit et.\",\"ar\":\"Quo distinctio soluta non ipsam assumenda.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(167, 56, 266, '{\"en\":\"Illo nam ea dolor iusto quidem aliquid.\",\"ar\":\"Est fugiat nulla qui quidem.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(168, 56, 267, '{\"en\":\"Mollitia et quae pariatur.\",\"ar\":\"Placeat molestiae et libero molestiae recusandae.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(169, 57, 268, '{\"en\":\"Ipsa porro omnis praesentium et ad molestiae ullam.\",\"ar\":\"Rerum temporibus aspernatur nihil distinctio voluptatem.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(170, 57, 269, '{\"en\":\"Facilis numquam vel amet enim enim voluptatem laborum officiis.\",\"ar\":\"Tempora harum quia reprehenderit et possimus ad omnis.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(171, 57, 270, '{\"en\":\"Quo ut vero vel ratione nemo dicta.\",\"ar\":\"Quia odio vel placeat dolorem qui eius.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(172, 57, 271, '{\"en\":\"Officiis quasi perferendis consequuntur.\",\"ar\":\"Quis atque nam eos non ad aspernatur accusamus.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(173, 58, 272, '{\"en\":\"Tempora suscipit ea autem dolor id nihil.\",\"ar\":\"Et officiis expedita quos quidem amet.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(174, 58, 273, '{\"en\":\"Temporibus tempora tempore quia maxime.\",\"ar\":\"Eos unde nulla voluptas.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(175, 58, 274, '{\"en\":\"Nulla et sit aliquam.\",\"ar\":\"Et officia officiis nemo incidunt omnis.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(176, 58, 275, '{\"en\":\"Ut ut occaecati perspiciatis praesentium.\",\"ar\":\"Omnis id eum fugiat magnam.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(177, 58, 276, '{\"en\":\"Maiores cumque et et et.\",\"ar\":\"Ut amet voluptates quisquam ab.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(178, 59, 284, '{\"en\":\"Eligendi cupiditate dolor reiciendis voluptatem est ab et.\",\"ar\":\"Neque deleniti sit non quas ipsam quia.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(179, 59, 285, '{\"en\":\"Odio maxime id laudantium nisi repellendus explicabo quis ipsa.\",\"ar\":\"Aut odit et beatae officiis in aut sunt.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(180, 61, 286, '{\"en\":\"Sit iste optio commodi.\",\"ar\":\"Nostrum quaerat illo et laudantium dignissimos consectetur.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(181, 62, 287, '{\"en\":\"Ipsam quia aspernatur enim blanditiis.\",\"ar\":\"Officia et id atque blanditiis aut assumenda.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(182, 63, 288, '{\"en\":\"Aspernatur dolorem et qui blanditiis.\",\"ar\":\"Velit eum quibusdam a fugiat ullam aut.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(183, 63, 289, '{\"en\":\"Debitis dolores est sapiente blanditiis expedita.\",\"ar\":\"Minima omnis praesentium laudantium labore possimus iste voluptatem consequatur.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(184, 63, 290, '{\"en\":\"Vel facere quia quaerat.\",\"ar\":\"Dicta quaerat excepturi molestiae accusantium dolorem.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(185, 63, 291, '{\"en\":\"Accusamus sunt corrupti iure et voluptatem sapiente incidunt.\",\"ar\":\"Expedita qui voluptas temporibus expedita doloremque.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(186, 63, 292, '{\"en\":\"Dolorem dolore in qui fugiat neque ut esse quidem.\",\"ar\":\"Rerum suscipit qui nihil quia dolor.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(187, 64, 293, '{\"en\":\"Enim maxime minima cumque sint.\",\"ar\":\"Dolores dolor natus est iure in ex id.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(188, 64, 294, '{\"en\":\"Inventore iusto velit hic velit quos nihil.\",\"ar\":\"Aut aspernatur a ut minus et.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(189, 65, 295, '{\"en\":\"Sunt voluptate sequi qui tempora.\",\"ar\":\"Ratione rem eveniet aut et et similique hic.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(190, 65, 296, '{\"en\":\"Nulla provident voluptas incidunt illo rerum laudantium recusandae.\",\"ar\":\"Voluptatem alias animi rem est.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(191, 65, 297, '{\"en\":\"Qui ea commodi sit voluptas sed minus rerum.\",\"ar\":\"Autem ad repellat dolorum quos quibusdam.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(192, 67, 302, '{\"en\":\"Neque qui nesciunt quo asperiores omnis asperiores veritatis optio.\",\"ar\":\"Autem numquam est aliquam aspernatur.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(193, 67, 303, '{\"en\":\"Id et non quia aliquid.\",\"ar\":\"Adipisci minus laudantium vero consectetur enim rerum.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(194, 68, 304, '{\"en\":\"Non numquam necessitatibus est sed praesentium optio debitis voluptatem.\",\"ar\":\"Voluptates ea delectus et.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(195, 68, 305, '{\"en\":\"Pariatur sit laboriosam officia natus.\",\"ar\":\"Excepturi et aut necessitatibus est magnam molestias.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(196, 68, 306, '{\"en\":\"Provident magnam mollitia placeat quia saepe temporibus.\",\"ar\":\"At laudantium voluptates ratione facere voluptatibus asperiores.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(197, 69, 307, '{\"en\":\"Quia omnis odit veniam similique blanditiis ducimus aut.\",\"ar\":\"Et aut veritatis omnis et officia et eum doloribus.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(198, 69, 308, '{\"en\":\"Blanditiis dolor quis sed nemo sit.\",\"ar\":\"Pariatur a et architecto in similique.\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(199, 70, 312, '{\"en\":\"Sint ut quisquam quaerat voluptatem.\",\"ar\":\"Quisquam animi autem enim nemo odio consectetur.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(200, 70, 313, '{\"en\":\"Aut consequatur voluptatibus nulla aliquam.\",\"ar\":\"Non et sapiente et.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(201, 70, 314, '{\"en\":\"Animi debitis tenetur sed dolore qui repudiandae.\",\"ar\":\"Ipsam praesentium libero enim voluptas.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(202, 70, 315, '{\"en\":\"Rerum voluptas culpa libero.\",\"ar\":\"In tempora eligendi incidunt officiis libero voluptatem fugiat.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(203, 70, 316, '{\"en\":\"Dolorem ad ratione minus qui culpa.\",\"ar\":\"Iure voluptas deleniti iusto quam voluptatibus esse maiores.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(204, 71, 317, '{\"en\":\"Temporibus voluptatem et voluptas animi ut sit rerum numquam.\",\"ar\":\"Beatae et sed quo quaerat quidem.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(205, 72, 318, '{\"en\":\"Unde consectetur illo non ea.\",\"ar\":\"Eaque excepturi consectetur odio voluptates.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(206, 74, 325, '{\"en\":\"Voluptatem ex enim non corporis quia.\",\"ar\":\"Quas voluptatem consequuntur aut debitis omnis officia.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(207, 75, 326, '{\"en\":\"Laboriosam error itaque exercitationem quis beatae.\",\"ar\":\"Ducimus iste dicta omnis nisi omnis.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(208, 75, 327, '{\"en\":\"A ut eum et.\",\"ar\":\"Doloremque vero placeat culpa sint.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(209, 75, 328, '{\"en\":\"Omnis ut veniam itaque voluptatum quas nihil voluptas.\",\"ar\":\"Ex vel sit molestias sed non sit sed fugiat.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(210, 75, 329, '{\"en\":\"Illo consectetur odit ea pariatur.\",\"ar\":\"Quia sit est cupiditate velit ut cum.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(211, 76, 330, '{\"en\":\"Esse eligendi laudantium sint ut ipsum.\",\"ar\":\"Eos quis quam architecto iusto et.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(212, 76, 331, '{\"en\":\"Consectetur totam ad quod aperiam.\",\"ar\":\"Sapiente odit eaque laborum eos.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(213, 76, 332, '{\"en\":\"Ut autem quo dolorem deleniti.\",\"ar\":\"Temporibus quaerat sapiente amet eum repudiandae mollitia nemo.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(214, 76, 333, '{\"en\":\"Aliquam laudantium ut voluptatem voluptatem.\",\"ar\":\"Fuga voluptas atque delectus dolores non voluptatem.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(215, 77, 334, '{\"en\":\"Aliquam nihil cum eum qui.\",\"ar\":\"Totam assumenda corporis quos magnam aut cumque.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(216, 77, 335, '{\"en\":\"Ratione deserunt porro nisi ut iste ut provident delectus.\",\"ar\":\"Dolorem voluptas repellat cumque accusantium.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(217, 77, 336, '{\"en\":\"Voluptates et aliquid est.\",\"ar\":\"Tempore qui non repellendus reiciendis placeat quod ea.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(218, 80, 342, '{\"en\":\"Est recusandae quisquam quis magnam perferendis id illo.\",\"ar\":\"Maiores est id sed rerum itaque animi fuga.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(219, 80, 343, '{\"en\":\"Impedit quisquam eveniet iste ratione consequatur.\",\"ar\":\"Est impedit omnis reiciendis pariatur eum.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(220, 80, 344, '{\"en\":\"Voluptatem perferendis amet possimus dolorum necessitatibus.\",\"ar\":\"Dolores aut maxime enim architecto facere consequatur officia.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(221, 81, 345, '{\"en\":\"Distinctio nihil qui amet commodi et.\",\"ar\":\"Quia et quia delectus aut ut praesentium voluptatem sapiente.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(222, 81, 346, '{\"en\":\"Dolorem sed dolores delectus quibusdam.\",\"ar\":\"Et quo voluptatibus ea consequuntur aut.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(223, 81, 347, '{\"en\":\"Recusandae ex incidunt fuga.\",\"ar\":\"Architecto aut voluptatem tenetur dolores aut praesentium.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(224, 82, 348, '{\"en\":\"Sit earum quia modi est.\",\"ar\":\"Ipsum ullam saepe recusandae molestias nemo voluptatibus.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(225, 82, 349, '{\"en\":\"Quisquam omnis molestiae vero.\",\"ar\":\"Earum soluta veritatis excepturi.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(226, 82, 350, '{\"en\":\"Eos quia sit est dolores asperiores minus laborum vel.\",\"ar\":\"Numquam aspernatur cum sed deserunt exercitationem esse ab.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(227, 82, 351, '{\"en\":\"Perspiciatis unde eligendi magni qui suscipit et.\",\"ar\":\"Facilis consequatur esse error et possimus sint ea.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(228, 82, 352, '{\"en\":\"Iste incidunt fugit autem sed dolore doloribus sapiente.\",\"ar\":\"Eligendi sed illo accusantium.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(229, 83, 353, '{\"en\":\"Voluptatem tenetur natus facere deleniti harum voluptate error.\",\"ar\":\"Accusantium quia vel quia aliquam qui dolorem.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(230, 83, 354, '{\"en\":\"Nemo est laudantium aperiam qui nemo et.\",\"ar\":\"Odio iusto explicabo velit enim voluptates quia molestiae minima.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(231, 83, 355, '{\"en\":\"Omnis est maxime est temporibus soluta.\",\"ar\":\"Repellendus suscipit magni dolorum inventore et non.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(232, 83, 356, '{\"en\":\"Ut beatae in occaecati et.\",\"ar\":\"Voluptatem officia molestiae omnis praesentium.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(233, 86, 361, '{\"en\":\"Sit et sint inventore aperiam.\",\"ar\":\"Maiores ad quaerat sapiente aut.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(234, 86, 362, '{\"en\":\"At ea eos quis et cupiditate a nisi.\",\"ar\":\"Magni esse similique libero.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(235, 86, 363, '{\"en\":\"Voluptates ea saepe magnam aliquam nihil harum deleniti.\",\"ar\":\"Eaque debitis pariatur vel possimus.\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `image` varchar(255) DEFAULT NULL,
  `type` enum('live','offline','recorded') NOT NULL DEFAULT 'offline',
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `url` varchar(255) DEFAULT NULL,
  `searchable_name` text NOT NULL,
  `searchable_description` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mentor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `earning_points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `image`, `type`, `price`, `url`, `searchable_name`, `searchable_description`, `category_id`, `level_id`, `mentor_id`, `accepted_at`, `earning_points`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\": \"Itaque laboriosam neque et.\", \"en\": \"Facilis ut eveniet laudantium esse.\"}', '{\"ar\":\"Officia fugiat consequatur ipsam expedita. Soluta quia facilis ea.ewgew\",\"en\":\"Officia fugiat consequatur ipsam expedita. Soluta quia facilis ea.\"}', 'courses/bJ42gaAAZnSNWhuJVer2EuyG7orfiMnmdxKE5UCx.png', 'offline', 966.16, 'https://www.schowalter.com/non-quae-voluptatem-eaque-voluptas-voluptates', 'Facilis ut eveniet laudantium esse. Itaque laboriosam neque et.', 'Officia fugiat consequatur ipsam expedita. Soluta quia facilis ea. Officia fugiat consequatur ipsam expedita. Soluta quia facilis ea.ewgew', 9, 5, 2, '2026-02-08 15:38:14', 0, '2026-02-03 14:32:48', '2026-02-11 13:59:06'),
(2, '{\"ar\": \"Et et aliquam id.\", \"en\": \"Aspernatur voluptates placeat quam.\"}', '{\"ar\":\"Et ipsa expedita et quia provident et ipsum qui. Aliquam esse est et ea reprehenderit et. Sapiente enim sit earum sed inventore numquam. Tempora temporibus eveniet aut ut.\",\"en\":\"Et ipsa expedita et quia provident et ipsum qui. Aliquam esse est et ea reprehenderit et. Sapiente enim sit earum sed inventore numquam. Tempora temporibus eveniet aut ut.\"}', 'https://via.placeholder.com/640x480.png/008800?text=courses+voluptatem', 'recorded', 521.07, 'https://collier.com/cumque-praesentium-ad-est-laborum-illum.html', 'Aspernatur voluptates placeat quam. Et et aliquam id.', 'Et ipsa expedita et quia provident et ipsum qui. Aliquam esse est et ea reprehenderit et. Sapiente enim sit earum sed inventore numquam. Tempora temporibus eveniet aut ut. Et ipsa expedita et quia provident et ipsum qui. Aliquam esse est et ea reprehenderit et. Sapiente enim sit earum sed inventore numquam. Tempora temporibus eveniet aut ut.', 10, 6, 2, '2026-02-08 17:20:11', 0, '2026-02-03 14:32:48', '2026-02-08 15:38:41'),
(3, '{\"ar\": \"Qui ut hic est.\", \"en\": \"Quaerat ut doloremque.\"}', '{\"ar\":\"Cupiditate expedita ad possimus officiis dolorum. Vero unde debitis iure sed esse similique. Optio qui quo unde non sed et.\",\"en\":\"Cupiditate expedita ad possimus officiis dolorum. Vero unde debitis iure sed esse similique. Optio qui quo unde non sed et.\"}', 'https://via.placeholder.com/640x480.png/00aaff?text=courses+et', 'offline', 242.33, 'http://www.krajcik.biz/sunt-asperiores-enim-aspernatur-animi-quis', 'Quaerat ut doloremque. Qui ut hic est.', 'Cupiditate expedita ad possimus officiis dolorum. Vero unde debitis iure sed esse similique. Optio qui quo unde non sed et. Cupiditate expedita ad possimus officiis dolorum. Vero unde debitis iure sed esse similique. Optio qui quo unde non sed et.', 11, 7, 5, '2026-02-09 11:25:19', 0, '2026-02-03 14:32:48', '2026-02-09 11:37:21'),
(4, '{\"ar\": \"Minus delectus voluptas.\", \"en\": \"Repudiandae facere dolorum magni consequatur.\"}', '{\"ar\": \"Quia sint quas quia unde excepturi facere iusto. Dolorum vel earum et ut. Vel beatae porro possimus sed tempora provident accusantium.\", \"en\": \"Voluptas qui eum sed nam natus vitae voluptatibus. Non a aut aut molestiae aut dolore earum rerum. Amet et deserunt aut quisquam earum. Sit quis ut ut voluptate quia quidem.\"}', 'https://via.placeholder.com/640x480.png/00aa77?text=courses+fugiat', 'live', 33.04, 'http://rice.com/ut-corporis-odit-enim-odio-eveniet-similique-facere.html', 'Repudiandae facere dolorum magni consequatur. Minus delectus voluptas.', 'Voluptates aspernatur delectus ut quo accusamus doloribus rerum. Laboriosam non maxime enim omnis. Nesciunt a quis iure sequi quam numquam.', 12, 8, 6, '2026-02-09 13:17:21', 0, '2026-02-03 14:32:48', '2026-02-03 14:32:49'),
(5, '{\"ar\": \"Porro rerum ea fugiat.\", \"en\": \"Sint hic tenetur molestias.\"}', '{\"ar\":\"Voluptatibus nobis assumenda voluptas aut voluptate earum aspernatur quis. Consequatur distinctio vel aperiam quibusdam suscipit. Provident molestias aut similique suscipit. Aut distinctio aut ullam ipsum error.\",\"en\":\"Voluptatibus nobis assumenda voluptas aut voluptate earum aspernatur quis. Consequatur distinctio vel aperiam quibusdam suscipit. Provident molestias aut similique suscipit. Aut distinctio aut ullam ipsum error.\"}', 'https://via.placeholder.com/640x480.png/006644?text=courses+distinctio', 'offline', 400.00, 'http://www.fritsch.info/enim-ab-quo-ea-eius', 'Sint hic tenetur molestias. Porro rerum ea fugiat.', 'Voluptatibus nobis assumenda voluptas aut voluptate earum aspernatur quis. Consequatur distinctio vel aperiam quibusdam suscipit. Provident molestias aut similique suscipit. Aut distinctio aut ullam ipsum error. Voluptatibus nobis assumenda voluptas aut voluptate earum aspernatur quis. Consequatur distinctio vel aperiam quibusdam suscipit. Provident molestias aut similique suscipit. Aut distinctio aut ullam ipsum error.', 13, 9, 5, '2026-02-11 15:37:42', 0, '2026-02-03 14:32:48', '2026-02-11 15:31:24'),
(6, '{\"ar\": \"Minima consequuntur sequi vero.\", \"en\": \"Et ut doloribus sequi.\"}', '{\"ar\": \"Perspiciatis soluta sint ipsum odit accusantium ut error. Ratione minima ducimus laboriosam quasi ipsam. Modi labore distinctio voluptates placeat. Ea et cumque minus quos. Distinctio impedit aut ut id aut qui corporis.\", \"en\": \"Adipisci cupiditate vitae aut autem corporis dignissimos voluptas perferendis. Quas nesciunt ut praesentium pariatur culpa quibusdam qui. Et sed in asperiores quasi repellat.\"}', 'https://via.placeholder.com/640x480.png/003388?text=courses+illum', 'offline', 953.37, 'http://ledner.com/doloremque-voluptates-nihil-perferendis.html', 'Et ut doloribus sequi. Minima consequuntur sequi vero.', 'Ducimus nulla sit magnam consequuntur dolor impedit ut iusto. Architecto natus quia facilis voluptatum. Facere fugiat consectetur itaque deserunt officiis.', 14, 10, 5, NULL, 0, '2026-02-03 14:32:48', '2026-02-03 14:32:49'),
(7, '{\"ar\": \"Quis tenetur libero necessitatibus.\", \"en\": \"Illo aperiam fugit.\"}', '{\"ar\": \"Et autem ad veritatis repudiandae. Maxime dolorem beatae et repellendus. Eos dolores reprehenderit nisi dolor ut quam cumque.\", \"en\": \"Dolore in placeat eum sed optio. Id id minima et nostrum qui impedit. Esse iste qui eius quia totam illo praesentium sit.\"}', 'https://via.placeholder.com/640x480.png/00dd22?text=courses+quod', 'offline', 49.65, 'https://www.denesik.net/velit-sed-quia-enim-aspernatur-ut', 'Illo aperiam fugit. Quis tenetur libero necessitatibus.', 'Molestiae mollitia ullam labore magnam provident qui nulla. Ut totam porro perferendis magni delectus. Voluptatem hic aperiam nisi sequi ipsam maxime. Officiis quis ut blanditiis sit.', 15, 11, 3, NULL, 0, '2026-02-03 14:32:48', '2026-02-03 14:32:50'),
(8, '{\"ar\": \"Ab corporis reprehenderit.\", \"en\": \"Eum enim et omnis.\"}', '{\"ar\": \"Quo iste exercitationem nostrum quidem iste qui est. Et optio quisquam non consequatur voluptatibus delectus aut. Suscipit rerum asperiores accusantium optio suscipit. Qui distinctio a possimus eligendi ut ut ad.\", \"en\": \"Eligendi quo aut consequuntur eveniet ratione. Architecto vel qui at aspernatur. Porro sit at soluta laborum cumque. Qui eum reprehenderit asperiores nobis omnis soluta.\"}', 'https://via.placeholder.com/640x480.png/004488?text=courses+aut', 'recorded', 930.07, 'http://www.stokes.com/amet-est-tempora-tempora-quae.html', 'Eum enim et omnis. Ab corporis reprehenderit.', 'Optio est omnis ad culpa. Incidunt velit quia eum repudiandae repudiandae officia. Maxime atque officiis et. Similique laboriosam modi et. Aspernatur sunt atque et ipsum voluptates odit.', 16, 12, 5, NULL, 0, '2026-02-03 14:32:48', '2026-02-03 14:32:50'),
(9, '{\"ar\": \"Dicta et.\", \"en\": \"Cumque itaque reprehenderit a.\"}', '{\"ar\": \"Quis ipsam aut et. Omnis alias sit aut illum et quo. Debitis corporis dolor quas voluptas quam voluptatem. Voluptas et nihil officiis accusamus. Amet eos aut laborum aperiam impedit corporis expedita.\", \"en\": \"Sed velit voluptatum voluptatem dolore dolorem ea. Aliquam omnis eligendi nobis at quae tenetur dolores tenetur. Ipsa et voluptatum voluptatem alias autem ipsam qui. Id laboriosam assumenda eligendi sed commodi voluptatum.\"}', 'https://via.placeholder.com/640x480.png/001144?text=courses+aliquam', 'recorded', 947.07, 'https://www.gulgowski.com/error-ut-et-unde-hic-numquam', 'Cumque itaque reprehenderit a. Dicta et.', 'Corrupti dolore accusantium dolor doloremque ad. Laborum repellat aliquid omnis aperiam cupiditate aut repellendus. Nemo aut eligendi voluptate harum voluptatem libero. Quo eum est fuga veniam.', 17, 13, 6, NULL, 0, '2026-02-03 14:32:48', '2026-02-03 14:32:51'),
(10, '{\"ar\": \"Quod eveniet dolore nulla ea.\", \"en\": \"Tempora iste laborum.\"}', '{\"ar\": \"Molestiae rerum ipsam rerum voluptatibus animi sunt facilis. Optio omnis enim tempore officia officia. Porro nostrum ut ut quam delectus.\", \"en\": \"Temporibus qui asperiores consectetur magnam nihil. Incidunt repudiandae nihil pariatur atque ipsum. Iste cumque illum dolorem sed. Aut natus sed et dolor consequuntur consectetur et.\"}', 'https://via.placeholder.com/640x480.png/007755?text=courses+rerum', 'recorded', 878.97, 'http://www.gerhold.com/id-qui-odio-dolor.html', 'Tempora iste laborum. Quod eveniet dolore nulla ea.', 'Libero optio ut ut molestiae. Debitis dolorum ipsa in quasi ut in. Labore iure natus sapiente officiis et. Cupiditate illo consequatur voluptatum.', 18, 14, 6, NULL, 0, '2026-02-03 14:32:48', '2026-02-03 14:32:51'),
(11, '{\"ar\": \"Necessitatibus odio et.\", \"en\": \"Quibusdam dicta nemo optio accusantium.\"}', '{\"ar\": \"Ratione sit quo doloribus incidunt. Consequatur rerum animi nulla maiores autem corrupti quidem deleniti. Quo saepe ducimus facere quia autem ad numquam praesentium.\", \"en\": \"Aut eos minus fugiat aut non. Porro quis cumque quisquam corporis ab at ea.\"}', 'https://via.placeholder.com/640x480.png/0055bb?text=courses+unde', 'offline', 593.67, 'http://www.lemke.com/excepturi-eius-vel-dolor-consequatur', 'Quibusdam dicta nemo optio accusantium. Necessitatibus odio et.', 'Facilis ut voluptates non debitis sint in eligendi. Consequuntur animi excepturi aut architecto aut. Rerum aut aut architecto aut deserunt sit ea.', 19, 15, 2, NULL, 0, '2026-02-03 14:32:48', '2026-02-03 14:32:51'),
(12, '{\"ar\": \"Asperiores repellat magni.\", \"en\": \"Eum facere ipsa provident.\"}', '{\"ar\": \"Dolores et nesciunt dolorum placeat. Sed sed beatae consequatur qui quo. Totam repudiandae tempore veritatis maxime vero aut.\", \"en\": \"Magnam modi veritatis dolores quia. Sed praesentium tempora ea non quia. Libero quis iure adipisci quam et sequi. Autem libero vero est sint fugit. Voluptate qui adipisci accusantium similique occaecati ipsam.\"}', 'https://via.placeholder.com/640x480.png/001199?text=courses+est', 'recorded', 459.33, 'http://haley.com/aliquid-est-quis-quia-temporibus-quaerat-autem', 'Eum facere ipsa provident. Asperiores repellat magni.', 'Sit officiis voluptatum vel aut laborum quia. Aut ut blanditiis aspernatur temporibus in enim sed. Harum nulla velit laboriosam earum rerum veritatis est.', 20, 16, 4, NULL, 0, '2026-02-03 14:32:48', '2026-02-03 14:32:52'),
(13, '{\"ar\": \"Quod id.\", \"en\": \"Tenetur soluta in.\"}', '{\"ar\": \"Laboriosam veniam vel unde earum ipsum eos. Provident ea recusandae beatae nihil. Qui et ut magnam ipsa perferendis alias consequuntur.\", \"en\": \"Aut qui natus quo laudantium perferendis harum. Animi non necessitatibus recusandae autem. Et corporis perferendis quia molestiae. Corrupti amet voluptates tempora excepturi accusantium tempora. Voluptatum eos autem totam debitis libero minima.\"}', 'https://via.placeholder.com/640x480.png/00eeee?text=courses+odio', 'recorded', 413.46, 'http://www.hilpert.com/iure-id-culpa-quidem-vel-tenetur', 'Tenetur soluta in. Quod id.', 'Odio voluptatem minima ex nihil. Quia sit quam nostrum. Earum quos aut qui repellat.', NULL, 17, 2, NULL, 0, '2026-02-03 14:32:48', '2026-02-03 14:32:52'),
(14, '{\"ar\": \"Magni velit fugit ut.\", \"en\": \"Officiis eos sit.\"}', '{\"ar\": \"Enim molestias qui eos sed voluptas ut quos beatae. Animi velit placeat rerum dolor unde eum vel sit. Reprehenderit officiis qui perferendis qui nam et eius doloremque.\", \"en\": \"Velit asperiores et cumque non ut sunt. Architecto et voluptas facilis perspiciatis et vitae ut. Consequuntur et itaque dolorem ullam. Architecto nihil non in.\"}', 'https://via.placeholder.com/640x480.png/003377?text=courses+quo', 'live', 281.39, 'https://harvey.com/enim-rerum-nobis-iure.html', 'Officiis eos sit. Magni velit fugit ut.', 'Quia officia maxime voluptate sunt. Et adipisci eaque qui illo cupiditate qui nostrum. Ullam numquam aut voluptatem eius quas. Cumque eaque nihil ut.', 22, 18, 4, NULL, 0, '2026-02-03 14:32:48', '2026-02-03 14:32:52'),
(15, '{\"ar\": \"Vero cum illo.\", \"en\": \"Vero dolor dignissimos natus.\"}', '{\"ar\": \"Voluptatem et ut dignissimos. In optio recusandae totam ea itaque quia dolor. Hic repellendus dolores nobis.\", \"en\": \"Id aliquam eos aut quam eius. Vel eligendi reiciendis et est recusandae aut corporis sapiente. Eius praesentium accusantium enim et iusto animi rem.\"}', 'https://via.placeholder.com/640x480.png/00cc22?text=courses+laboriosam', 'live', 809.70, 'http://mayert.com/rerum-tempore-beatae-recusandae-minus-molestiae-modi-tenetur-velit', 'Vero dolor dignissimos natus. Vero cum illo.', 'Sunt ut perferendis et fuga delectus reprehenderit et. Rerum minus ad animi itaque. Reiciendis facere culpa asperiores autem iure magnam dolorem. Consectetur quos et repudiandae explicabo. Et vero sint et.', 23, 19, 6, NULL, 0, '2026-02-03 14:32:48', '2026-02-03 14:32:52'),
(16, '{\"ar\": \"Placeat voluptatibus alias voluptatibus.\", \"en\": \"Odit sint.\"}', '{\"ar\": \"Recusandae facilis aperiam rem modi. Repellendus voluptates voluptatibus aut optio vero est aut. Qui natus architecto veniam repellendus doloremque facilis.\", \"en\": \"Perspiciatis beatae aspernatur ea sint est doloribus. Reprehenderit reprehenderit ducimus quibusdam nihil. Est omnis odio harum.\"}', 'https://via.placeholder.com/640x480.png/009933?text=courses+nobis', 'live', 720.33, 'http://www.haag.com/accusamus-quia-sapiente-quasi-tenetur-aut-minima-quae', 'Odit sint. Placeat voluptatibus alias voluptatibus.', 'Accusamus error qui veritatis repellendus in possimus quia eos. Officiis natus delectus nostrum id illo eos molestias. Molestiae suscipit aut illum voluptatem placeat corporis in.', 24, 20, 364, NULL, 0, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(17, '{\"ar\": \"Iure sit.\", \"en\": \"Commodi enim facilis ab.\"}', '{\"ar\": \"Eveniet provident dolorum dolorem totam nobis non dolorem. Debitis a rerum quia ea. Fugit eaque accusamus inventore quia rerum. Quia rerum laboriosam nobis officiis quia.\", \"en\": \"Molestiae voluptates unde voluptas nulla cum hic ratione. Consectetur sunt voluptatem omnis voluptatem consequatur blanditiis ducimus. Velit labore quia fuga. Deleniti ullam aspernatur rem error.\"}', 'https://via.placeholder.com/640x480.png/0022cc?text=courses+saepe', 'offline', 708.52, 'http://grimes.com/enim-odit-iure-quis', 'Commodi enim facilis ab. Iure sit.', 'Et odit ipsum ratione voluptas. Odit ea suscipit eius consequatur maxime sed eum dolore. Velit voluptatum aut unde ut vitae sed.', 25, NULL, 366, NULL, 0, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(18, '{\"ar\": \"Aut atque accusantium.\", \"en\": \"Cum consequatur optio nobis.\"}', '{\"ar\": \"Natus voluptatibus velit perspiciatis repellat modi suscipit. Soluta consequatur dolore laudantium beatae perspiciatis. Optio dolores neque animi eaque facere. Autem eaque pariatur perferendis ut sint esse.\", \"en\": \"Aut sed unde pariatur et veniam consectetur quidem. Ducimus quia iusto numquam eum. At dignissimos esse unde vitae. Velit qui non neque corporis placeat sit.\"}', 'https://via.placeholder.com/640x480.png/00dd77?text=courses+iusto', 'recorded', 169.16, 'http://prohaska.com/', 'Cum consequatur optio nobis. Aut atque accusantium.', 'Dicta velit corporis vel hic consectetur. Vel excepturi dicta dolor placeat odio possimus esse. Impedit sed laboriosam blanditiis ipsa pariatur.', 26, 22, 368, NULL, 0, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(19, '{\"ar\": \"Voluptate eaque corporis.\", \"en\": \"Similique earum numquam cumque.\"}', '{\"ar\": \"Quo reprehenderit facere atque eveniet. Rerum ullam minima vero necessitatibus cum impedit dolores nostrum. Dolore laudantium nihil dignissimos aut nam. Vitae eligendi nam quia laudantium.\", \"en\": \"Vero praesentium veritatis quos similique officia. Quisquam neque iusto temporibus saepe beatae dolore. Dolorem consequatur in nobis vel enim.\"}', 'https://via.placeholder.com/640x480.png/004488?text=courses+ut', 'recorded', 793.21, 'http://www.kovacek.com/et-libero-fuga-exercitationem-vel-animi-voluptas-aperiam', 'Similique earum numquam cumque. Voluptate eaque corporis.', 'Molestiae quaerat porro libero. Maxime omnis nam ea architecto. Molestias doloremque qui iusto ex vel.', 27, 23, 370, NULL, 0, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(20, '{\"ar\": \"Fugit corrupti rerum et.\", \"en\": \"Quis illo et.\"}', '{\"ar\": \"Ipsam et nihil magnam sed recusandae sapiente quia. Sed doloribus sapiente repudiandae quidem eaque eum porro. Vel earum vel ut omnis dignissimos repudiandae.\", \"en\": \"Dolores fugit illum nihil et eligendi magni. Harum officia optio soluta et quibusdam. Quisquam natus placeat dolore rerum accusantium aliquid.\"}', 'https://via.placeholder.com/640x480.png/0066cc?text=courses+explicabo', 'recorded', 599.83, 'http://www.pfannerstill.com/adipisci-qui-eum-cum-eos-aut-voluptatem-dolorem-et', 'Quis illo et. Fugit corrupti rerum et.', 'Eligendi cupiditate debitis maiores voluptatibus. Quia reiciendis expedita eius sunt ipsum. Cum non dolorem harum error et quia quia soluta. Non accusantium eligendi quidem aliquid.', 28, 24, 372, NULL, 0, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(21, '{\"ar\": \"Ut et.\", \"en\": \"Delectus quia voluptatem.\"}', '{\"ar\": \"In veniam quia esse beatae autem architecto. Facilis doloremque atque blanditiis rerum. Ea est odio similique omnis corporis eaque.\", \"en\": \"Magni ipsa ea consectetur fuga magni a voluptatem autem. In aut aut ab molestias recusandae. Vel accusantium animi odio ut. Voluptatum ut rem dicta sunt.\"}', 'https://via.placeholder.com/640x480.png/00eedd?text=courses+adipisci', 'offline', 224.79, 'http://gibson.com/sed-et-quasi-culpa-omnis-magni-unde-quisquam-impedit', 'Delectus quia voluptatem. Ut et.', 'Et ea expedita veritatis totam nesciunt. Repellendus non est omnis voluptates et ullam vel quod. Accusamus ducimus eaque dolorem. Est ut doloribus ea itaque possimus.', 29, 25, 374, NULL, 0, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(22, '{\"ar\": \"Non non repellendus eos voluptas.\", \"en\": \"Similique neque non.\"}', '{\"ar\": \"Eligendi deserunt et in sint. Consequuntur sed quo ut occaecati ut sint iure. Corrupti corrupti atque maxime sit adipisci ut. Debitis sed vitae itaque eius ut quos autem. Qui aperiam praesentium ab veritatis.\", \"en\": \"Voluptas et quas tempore. Adipisci repellat consequatur et voluptatum corrupti in. Temporibus debitis praesentium et.\"}', 'https://via.placeholder.com/640x480.png/009999?text=courses+voluptas', 'offline', 499.72, 'http://hodkiewicz.com/', 'Similique neque non. Non non repellendus eos voluptas.', 'Sint velit doloribus ut iste rerum assumenda aut error. Quam omnis natus quibusdam eius vero hic. Ut laborum voluptas ut sequi qui blanditiis iusto. Adipisci eligendi ut ea nisi expedita commodi debitis molestias. Ratione molestias eius non autem aperiam.', 30, 26, 376, NULL, 0, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(23, '{\"ar\": \"Harum similique sit.\", \"en\": \"Asperiores magni iste.\"}', '{\"ar\": \"Repellendus sint aut dolorum non at. Qui unde explicabo illo suscipit at. Corrupti corrupti qui qui rerum dolorum quae optio in. Optio sint est quo impedit dicta similique sit. Aut quaerat enim voluptate unde dolore omnis.\", \"en\": \"Nulla repellat sit itaque a. Ut dolorem autem illo ipsa.\"}', 'https://via.placeholder.com/640x480.png/006688?text=courses+dolorum', 'recorded', 405.51, 'http://okeefe.info/magni-molestiae-doloremque-ducimus-cum-ducimus-recusandae', 'Asperiores magni iste. Harum similique sit.', 'Nesciunt magnam impedit nesciunt veritatis repellat dolorem alias. Et totam provident ab sint. Ipsa et assumenda occaecati illo dolorem eaque ut.', 31, 27, 378, NULL, 0, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(24, '{\"ar\": \"Deleniti deserunt amet.\", \"en\": \"Dolorem aut corporis.\"}', '{\"ar\": \"Quibusdam est officiis voluptatem nemo. Quia doloribus dignissimos facilis saepe odio eum aliquid et. Reiciendis repellendus minima ducimus et eaque aperiam. Est voluptatem placeat ut maxime recusandae in.\", \"en\": \"Maiores autem ut dolorem fugit. Voluptates aperiam provident itaque est cupiditate qui amet. Et incidunt a aliquid sed eos.\"}', 'https://via.placeholder.com/640x480.png/009999?text=courses+voluptatem', 'recorded', 264.66, 'http://www.turcotte.com/', 'Dolorem aut corporis. Deleniti deserunt amet.', 'Et itaque officiis reprehenderit voluptas consequuntur saepe voluptate. Consequatur sunt non consequatur voluptatem. Dolorem voluptas ut et omnis cumque quia magni. Nihil voluptas quia libero aut repellendus.', 32, 28, 380, NULL, 0, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(25, '{\"ar\": \"Recusandae voluptatum.\", \"en\": \"Iusto vero quae.\"}', '{\"ar\": \"Dicta non nisi aperiam. Pariatur molestiae voluptas eius perspiciatis. Et temporibus ratione aspernatur et.\", \"en\": \"Sequi explicabo dolor magni sit non. Quaerat quas id et harum id ut. Placeat consequuntur non odio incidunt quam. Quos odit distinctio qui ipsa doloremque qui esse fugit. Enim natus veritatis ratione quod dolor voluptates.\"}', 'https://via.placeholder.com/640x480.png/0077aa?text=courses+ex', 'recorded', 789.43, 'http://www.russel.net/maiores-repellat-id-quod-voluptatibus-atque-atque', 'Iusto vero quae. Recusandae voluptatum.', 'Iure blanditiis accusamus numquam nemo cum mollitia enim. Id aliquid beatae eius ut. Et amet fugit et modi numquam eius est ipsa. Eveniet ut et dolore rerum nihil.', 33, 29, 382, NULL, 0, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(26, '{\"en\":\"new course\",\"ar\":\"new course\"}', '{\"en\":\"dfevcsgv\",\"ar\":\"sfrfvcs\"}', 'courses/LKZY1yK3BhgTsDGj4zquLl3zOQLFKu56VJsgvYdB.png', 'live', 200.00, NULL, 'new course new course', 'dfevcsgv sfrfvcs', NULL, 10, 10, '2026-02-09 11:39:05', 10, '2026-02-09 11:39:05', '2026-02-09 11:39:05'),
(27, '{\"en\":\"new course\",\"ar\":\"new course\"}', '{\"en\":\"dfevcsgv\",\"ar\":\"sfrfvcs\"}', 'courses/xCby5eRUYd7OaCwldT4UMN7K2u4rr0dsVI2hlWvV.png', 'live', 200.00, NULL, 'new course new course', 'dfevcsgv sfrfvcs', NULL, 10, 10, '2026-02-11 13:57:11', 10, '2026-02-11 13:57:11', '2026-02-11 13:57:11'),
(28, '{\"en\":\"new course\",\"ar\":\"new course\"}', '{\"en\":\"dfevcsgv\",\"ar\":\"sfrfvcs\"}', 'courses/2a4DFjlosWVfRi9Ark6xBsrxQr10GshZsGLE4UIb.png', 'live', 200.00, NULL, 'new course new course', 'dfevcsgv sfrfvcs', NULL, 10, 10, '2026-02-11 14:13:20', 10, '2026-02-11 14:13:20', '2026-02-11 14:13:20'),
(29, '{\"en\":\"new course\",\"ar\":\"new course\"}', '{\"en\":\"dfevcsgv\",\"ar\":\"sfrfvcs\"}', 'courses/AnEgpiMI04WLCquRODqmSwVr5DnD4cJWVPyWtMsX.png', 'live', 200.00, NULL, 'new course new course', 'dfevcsgv sfrfvcs', NULL, 10, 10, '2026-02-11 14:17:45', 10, '2026-02-11 14:17:45', '2026-02-11 14:17:45'),
(30, '{\"en\":\"new course\",\"ar\":\"new course\"}', '{\"en\":\"dfevcsgv\",\"ar\":\"sfrfvcs\"}', 'courses/56xvVnlTRp0ilesipl5vmyd0JcaCRfNuYNXh83LF.png', 'live', 200.00, NULL, 'new course new course', 'dfevcsgv sfrfvcs', NULL, 10, 10, '2026-02-11 14:19:31', 10, '2026-02-11 14:19:31', '2026-02-11 14:19:31'),
(31, '{\"en\":\"new course\",\"ar\":\"new course\"}', '{\"en\":\"dfevcsgv\",\"ar\":\"sfrfvcs\"}', 'courses/MKcCLFJAVwoi1QqGxeE0wgDbNpOkOKXnwwNVHplk.png', 'live', 200.00, NULL, 'new course new course', 'dfevcsgv sfrfvcs', NULL, 10, 10, '2026-02-11 14:43:06', 10, '2026-02-11 14:43:06', '2026-02-11 14:43:06'),
(32, '{\"en\":\"new course\",\"ar\":\"new course\"}', '{\"en\":\"dfevcsgv\",\"ar\":\"sfrfvcs\"}', 'courses/C7D6Sui2rCRMoUil0yzv3rj1sQToPkGJB2OyzvzR.png', 'live', 200.00, NULL, 'new course new course', 'dfevcsgv sfrfvcs', NULL, 10, 10, '2026-02-11 14:43:25', 10, '2026-02-11 14:43:25', '2026-02-11 14:43:25'),
(33, '{\"en\":\"new course\",\"ar\":\"new course\"}', '{\"en\":\"dfevcsgv\",\"ar\":\"sfrfvcs\"}', 'courses/y6cyXf9m9lrHJoTlG0hehMjzjt60V88Iw8tzLZ0b.png', 'live', 200.00, NULL, 'new course new course', 'dfevcsgv sfrfvcs', NULL, 10, 10, '2026-02-11 15:04:34', 10, '2026-02-11 15:04:34', '2026-02-11 15:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `course_user`
--

CREATE TABLE `course_user` (
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_user`
--

INSERT INTO `course_user` (`course_id`, `user_id`) VALUES
(6, 7),
(8, 7),
(14, 7),
(1, 8),
(3, 8),
(4, 8),
(5, 8),
(7, 8),
(12, 8),
(14, 8),
(15, 8),
(3, 9),
(5, 9),
(8, 9),
(10, 9),
(11, 9),
(12, 9),
(14, 9),
(15, 9),
(4, 10),
(7, 10),
(8, 10),
(1, 11),
(2, 11),
(4, 11),
(6, 11),
(7, 11),
(8, 11),
(10, 11),
(11, 11),
(12, 11),
(15, 11),
(1, 12),
(2, 12),
(8, 12),
(9, 12),
(10, 12),
(14, 12),
(4, 13),
(11, 13),
(14, 13),
(15, 13),
(1, 14),
(2, 14),
(3, 14),
(5, 14),
(6, 14),
(8, 14),
(10, 14),
(12, 14),
(13, 14),
(14, 14),
(15, 14),
(3, 15),
(5, 15),
(6, 15),
(7, 15),
(8, 15),
(10, 15),
(11, 15),
(12, 15),
(13, 15),
(14, 15),
(1, 16),
(12, 16),
(14, 16),
(15, 16),
(2, 17),
(6, 17),
(8, 17),
(10, 17),
(11, 17),
(12, 17),
(13, 17),
(15, 17),
(4, 18),
(5, 18),
(6, 18),
(9, 18),
(12, 18),
(14, 18),
(3, 19),
(4, 19),
(8, 19),
(9, 19),
(10, 19),
(11, 19),
(12, 19),
(14, 19),
(3, 20),
(9, 20),
(10, 20),
(12, 20),
(15, 20),
(2, 22),
(3, 22),
(7, 22),
(8, 22),
(9, 22),
(10, 22),
(12, 22),
(13, 22),
(14, 22),
(7, 23),
(8, 23),
(14, 23),
(2, 24),
(6, 24),
(8, 24),
(12, 24),
(2, 25),
(8, 25),
(10, 25),
(12, 25),
(13, 25),
(14, 25),
(2, 26),
(4, 26),
(5, 26),
(6, 26),
(7, 26),
(8, 26),
(12, 26),
(15, 26);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`question`)),
  `answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`answer`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"fugdfvDF?\",\"en\":\"fugdfvDF?\"}', '{\"ar\":\"dhfgs daziuf sdisdvds\",\"en\":\"dhfgs daziuf sdidsvds\"}', '2026-02-03 14:32:53', '2026-02-11 14:37:34'),
(2, '{\"ar\": \"Temporibus aliquam dignissimos saepe qui qui iusto nemo illo.؟\", \"en\": \"Fugit delectus commodi ut itaque.?\"}', '{\"ar\": \"Omnis aut est repudiandae reiciendis non ratione voluptatibus consequatur. Consequatur quidem beatae consequatur similique.\", \"en\": \"Numquam eveniet et est sed harum neque. Et nam facilis eos neque minus vero quia. Veniam neque nobis alias eius doloribus repudiandae.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(3, '{\"ar\": \"Quia ipsa nulla molestias explicabo ducimus dolor reprehenderit.؟\", \"en\": \"Repellendus impedit voluptate a repellat asperiores amet et.?\"}', '{\"ar\": \"Asperiores molestiae aspernatur nostrum nam corrupti illum error animi. Dolorum consectetur minus non ut placeat et. Saepe voluptate voluptas eius aut. Dolorem dolor qui ut ut magni sequi.\", \"en\": \"Nesciunt dignissimos ut vel sit explicabo odit. Veniam autem ut distinctio accusantium quisquam aut distinctio.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(4, '{\"ar\": \"Recusandae enim eligendi et maxime.؟\", \"en\": \"Doloribus qui unde adipisci sed rerum corrupti.?\"}', '{\"ar\": \"Error placeat et cumque voluptatem enim a eius. Nihil quasi voluptatibus ut dolores neque.\", \"en\": \"Fugit illum maiores perferendis deleniti ad sint accusamus. Aut iure et eligendi qui possimus voluptas. Ad quasi odio velit omnis delectus.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(5, '{\"ar\": \"Ut enim odit explicabo eligendi ad consequatur.؟\", \"en\": \"Dicta quis modi aliquam fugiat et et qui.?\"}', '{\"ar\": \"Et consequatur modi quos quia rerum vitae. Eum vel est veritatis rerum omnis atque ad asperiores. Officiis ipsam dolor est nihil incidunt.\", \"en\": \"Nihil corrupti quo nulla consequuntur quia voluptas. Praesentium quibusdam qui sed. Inventore non tempore et et eius exercitationem dolor. Tempora ratione distinctio doloremque.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(6, '{\"ar\": \"Magnam perspiciatis dolorum qui distinctio et consectetur velit.؟\", \"en\": \"Voluptatum sapiente asperiores tempora quo omnis eaque eum nam.?\"}', '{\"ar\": \"Et dignissimos est voluptas et eos minus dolore. Temporibus quae consequuntur id. Nam aut qui ad.\", \"en\": \"Dolor nulla molestias sed voluptatem dolorem saepe saepe ut. Numquam cupiditate beatae velit aut. Labore aperiam molestiae atque magni laudantium.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(7, '{\"ar\": \"Porro maxime illo repellat eos eum nihil ad.؟\", \"en\": \"Quia reiciendis ipsam voluptates ullam.?\"}', '{\"ar\": \"Accusantium neque et doloremque non. Enim quia dignissimos consequuntur eum aut nostrum. Ex est dolores dolores possimus deserunt non. Debitis ducimus est dolorem maxime consequatur blanditiis eligendi soluta.\", \"en\": \"Beatae aspernatur vel veritatis animi cumque illo. Autem illo aut ut alias ut quas. Aut fuga qui blanditiis.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(8, '{\"ar\": \"Quam ut et libero et.؟\", \"en\": \"Possimus ad non velit cupiditate et odio repellat qui.?\"}', '{\"ar\": \"Quia adipisci aut voluptates. Reiciendis cum aliquam nulla omnis. Et distinctio non aut sed. Qui illo et tempore alias repellat. Quae incidunt repellendus velit et officiis id.\", \"en\": \"Nesciunt facere quaerat error exercitationem. Saepe doloribus aut ut omnis occaecati. Sed officiis est veniam aperiam occaecati quia praesentium.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(9, '{\"ar\": \"Rerum molestias omnis eum.؟\", \"en\": \"Sed maxime eum unde ea.?\"}', '{\"ar\": \"Rerum dolorum dolorum et quia corporis vel dignissimos. Vel dolorum nulla illum et. Nihil et et nostrum accusamus.\", \"en\": \"Molestias numquam harum voluptas rerum est accusamus voluptate. Quis inventore quia dolorem possimus. Mollitia quasi veniam qui ut sapiente debitis omnis.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(11, '{\"ar\": \"Mollitia cumque at recusandae debitis.؟\", \"en\": \"Hic est impedit nemo ipsum ab saepe nam corporis.?\"}', '{\"ar\": \"Cumque in sed et. Facere magni quod soluta enim asperiores quia nisi amet.\", \"en\": \"Et iure omnis aut porro enim vitae. Sint ea quae ut rerum velit. Omnis labore blanditiis voluptatum qui ipsum. Ratione quia officia quis voluptates veniam et ea laudantium.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(12, '{\"ar\": \"In totam nihil atque explicabo.؟\", \"en\": \"Omnis earum deserunt quidem aut qui consequatur repellat.?\"}', '{\"ar\": \"Sit nemo accusamus aut qui modi aut occaecati error. In ut magnam vel sunt earum sunt neque sit. Omnis ratione ea consequatur numquam expedita quia. A facere sed rem labore in et soluta.\", \"en\": \"Earum fugiat doloremque placeat deserunt voluptatibus id. Veniam aperiam repudiandae et nam aliquid aut ut. Et blanditiis voluptatem similique eligendi voluptate quia optio.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(13, '{\"ar\": \"Aut dolore enim voluptate nesciunt autem deserunt.؟\", \"en\": \"Vel fugit vero quae non voluptatem qui nisi.?\"}', '{\"ar\": \"Accusamus hic aliquam similique modi voluptas. Sed eos sequi dolorem qui totam fugiat. Maxime quasi consequuntur veritatis laborum qui. Tempore perspiciatis hic cumque quas.\", \"en\": \"At rerum blanditiis hic delectus. Aut laborum dicta animi quos. Provident possimus ut natus maxime qui dolores.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(14, '{\"ar\": \"Veniam dolor sunt earum blanditiis error reiciendis odit.؟\", \"en\": \"Consequuntur qui quam autem quidem dolorem nemo.?\"}', '{\"ar\": \"Aut in hic voluptatem quis deserunt nemo illum adipisci. Ducimus iure consequatur alias. Voluptatum ea ut et quia animi eius nemo. Delectus porro iure non dolorem sed.\", \"en\": \"Sequi dolore cumque sapiente maiores. A magni modi autem illo laborum. Ex voluptas ex et facilis dolor possimus unde.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(15, '{\"ar\": \"Vitae nesciunt ut aut porro.؟\", \"en\": \"Blanditiis quae sequi nobis quis debitis perspiciatis accusantium quibusdam.?\"}', '{\"ar\": \"Similique aut ad ut rerum asperiores sit quia et. Possimus quam quis neque aspernatur quos sapiente distinctio omnis. Mollitia at quae nam. Est atque amet mollitia explicabo aperiam et.\", \"en\": \"Repellendus iusto id qui hic. Libero consequatur corrupti ut eos eos ut aut asperiores. Aut suscipit sint vero corrupti at porro ex soluta. Aperiam voluptas non corrupti tempora.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(16, '{\"ar\": \"Expedita aut eaque molestiae et est quo.؟\", \"en\": \"A quae ea non et nisi eos ad.?\"}', '{\"ar\": \"Distinctio ad temporibus fuga voluptas sint. Officia praesentium sint quod sapiente enim. Saepe nobis eos et dicta sed qui debitis. Animi aliquam neque architecto culpa doloribus dolores voluptatem.\", \"en\": \"Molestiae sit labore earum et. Sunt assumenda quis atque et vel facere natus. Veniam magnam voluptas recusandae. Quo sed quis consequatur est dolorem voluptatem doloribus.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(17, '{\"ar\": \"Cumque quia ipsum sit officia.؟\", \"en\": \"Praesentium ab excepturi harum.?\"}', '{\"ar\": \"Asperiores enim enim esse enim animi rerum. Quasi nesciunt earum perspiciatis deserunt. Accusantium dolor accusamus non molestiae molestiae laboriosam. Eveniet neque ipsam est vel. Corrupti dolores hic quae id.\", \"en\": \"Sapiente consequuntur ut in sit quisquam id. Alias placeat numquam vero eum in commodi quis. Aut id id omnis ad beatae.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(18, '{\"ar\": \"Quos numquam quidem earum sunt sunt sunt molestiae officia.؟\", \"en\": \"Porro commodi officiis sequi odit quasi autem et.?\"}', '{\"ar\": \"Minus aliquam suscipit eveniet nemo quas. A quia ipsam officia eos cumque aut beatae. Ex sit laudantium voluptas aliquam quo alias deserunt.\", \"en\": \"Rerum autem voluptatem error voluptatem possimus. Sint magnam doloribus architecto amet soluta consectetur voluptas accusamus. Dicta sint iste consequatur ea eaque sapiente. Odio provident nulla nemo velit saepe.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(19, '{\"ar\": \"Iure et temporibus eius sit odio.؟\", \"en\": \"Consequuntur molestias rerum veniam quo beatae recusandae.?\"}', '{\"ar\": \"Et rem fuga iure eum perferendis. Odio fuga qui cupiditate a aut est. Ipsa voluptatem et a dolores modi quod. Voluptas autem qui id ut.\", \"en\": \"Dolor perspiciatis error odio earum beatae et iusto. Eaque autem rerum id veniam sit ab. Quis temporibus reprehenderit quibusdam quam quis.\"}', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(24, '{\"en\":\"dsavbsdbv\",\"ar\":\"csacfa?\"}', '{\"en\":\"sdavdsavadsvdsav\",\"ar\":\"dsafvadsv\"}', '2026-02-11 14:37:27', '2026-02-11 14:37:27'),
(25, '{\"en\":\"why?\",\"ar\":\"عنغعغ\"}', '{\"en\":\"because regregf\",\"ar\":\"نمعمهه\"}', '2026-02-11 15:41:31', '2026-02-11 15:41:31'),
(26, '{\"en\":\"why?\",\"ar\":\"ثصب\"}', '{\"en\":\"afdsfvesrd\",\"ar\":\"صثبصؤ\"}', '2026-02-11 15:42:12', '2026-02-11 15:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_key` varchar(255) NOT NULL,
  `setting_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`setting_value`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES
(1, 'deduction_type', '\"percentage\"', '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(2, 'deduction_value', '10', '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(3, 'about_us', '\"{\\\"en\\\":\\\"<p>jvnjkerv<\\\\\\/p>\\\",\\\"ar\\\":\\\"<p>\\u0633\\u064a\\u0646\\u0631\\u0649<\\\\\\/p>\\\"}\"', '2026-02-28 11:51:55', '2026-03-02 11:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL COMMENT 'Duration in minutes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`title`)),
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`content`)),
  `searchable_title` text NOT NULL,
  `searchable_content` text NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `video_url`, `duration`, `created_at`, `updated_at`, `title`, `content`, `searchable_title`, `searchable_content`, `order`) VALUES
(8, 2, 'videos/lessons/9537790c-4e40-4a30-a79e-7b5102089c76.mp4', 20, '2026-02-11 11:50:41', '2026-03-02 09:19:12', '{\"en\":\"egfarg\",\"ar\":\"ad\"}', '{\"en\":\"asffa\",\"ar\":\"asf\"}', 'egfarg ad', 'asffa asf', 2),
(9, 12, 'https://www.youtube.com/watch?v=6Iidg_WxnnY', 23, '2026-02-11 11:52:10', '2026-02-11 11:52:10', '{\"en\":\"asfag\",\"ar\":\"zs\"}', '{\"en\":\"yoi;ioy;\",\"ar\":\"guioliu\"}', 'asfag zs', 'yoi;ioy; guioliu', 1),
(11, 10, 'https://www.youtube.com/watch?v=6Iidg_WxnnY', 320, '2026-02-11 14:35:00', '2026-02-11 14:35:00', '{\"en\":\"sdfgsdg\",\"ar\":\"dsgdsg\"}', '{\"en\":\"sdafsdf\",\"ar\":\"safsdf\"}', 'sdfgsdg dsgdsg', 'sdafsdf safsdf', 2),
(12, 2, 'videos/lessons/025276b9-87ff-4ae6-9a90-a68c1522492d.mp4', 30, '2026-02-11 15:35:31', '2026-03-02 13:17:34', '{\"en\":\"new lesson\",\"ar\":\"درس جديد\"}', '{\"en\":\"asddffh\",\"ar\":\"قثصلقثلق\"}', 'new lesson درس جديد', 'asddffh قثصلقثلق', 1),
(13, 2, 'https://www.youtube.com/watch?v=6Iidg_WxnnY', 3, '2026-03-02 09:28:29', '2026-03-02 09:28:29', '{\"en\":\"new course\",\"ar\":\"new course\"}', '{\"en\":\"dfevcsgv\",\"ar\":\"sfrfvcs\"}', 'new course new course', 'dfevcsgv sfrfvcs', 3),
(14, 2, 'videos/lessons/381f5fd2-080a-446d-bae8-fc16c2735e49.mp4', 120, '2026-03-02 09:45:54', '2026-03-02 09:49:59', '{\"en\":\"acewv\",\"ar\":\"شسؤ\"}', '{\"en\":\"svsvwrvdvv\",\"ar\":\"شؤثثص\"}', 'acewv شسؤ', 'svsvwrvdvv شؤثثص', 4);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_user`
--

CREATE TABLE `lesson_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lesson_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `progress` int(11) NOT NULL DEFAULT 0 COMMENT 'Progress percentage 0-100',
  `watch_time` int(11) NOT NULL DEFAULT 0 COMMENT 'Watch time in seconds',
  `started_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `image` varchar(255) DEFAULT NULL,
  `searchable_name` text NOT NULL,
  `searchable_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `description`, `image`, `searchable_name`, `searchable_description`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"Intermediateff\",\"en\":\"Intermediategg\"}', '{\"ar\":\"Autem nulla dolores eaque iusto mollitia dolor necessitatibus.\",\"en\":\"Autem nulla dolores eaque iusto mollitia dolor necessitatibus.\"}', NULL, 'Intermediategg Intermediateff', 'Autem nulla dolores eaque iusto mollitia dolor necessitatibus. Autem nulla dolores eaque iusto mollitia dolor necessitatibus.', '2026-02-03 14:32:48', '2026-02-11 14:32:44'),
(2, '{\"ar\": \"متوسط\", \"en\": \"Expert\"}', '{\"ar\": \"Dolorem numquam mollitia sed aspernatur atque repellendus repellendus.\", \"en\": \"In blanditiis beatae et maxime non at.\"}', NULL, 'Expert متوسط', 'In blanditiis beatae et maxime non at. Dolorem numquam mollitia sed aspernatur atque repellendus repellendus.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(5, '{\"ar\": \"متقدم\", \"en\": \"Advanced\"}', '{\"ar\": \"Quia ad iure cum ipsa.\", \"en\": \"Omnis optio quia dolor vel facere enim id.\"}', NULL, 'Advanced متقدم', 'Omnis optio quia dolor vel facere enim id. Quia ad iure cum ipsa.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(6, '{\"ar\": \"خبير\", \"en\": \"Advanced\"}', '{\"ar\": \"Explicabo sequi optio quidem sed sint sit.\", \"en\": \"Quis qui corporis asperiores sapiente temporibus ut nesciunt.\"}', NULL, 'Advanced خبير', 'Quis qui corporis asperiores sapiente temporibus ut nesciunt. Explicabo sequi optio quidem sed sint sit.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(7, '{\"ar\": \"متقدم\", \"en\": \"Expert\"}', '{\"ar\": \"Enim ut consectetur ut optio repellat.\", \"en\": \"Distinctio et qui recusandae.\"}', NULL, 'Expert متقدم', 'Distinctio et qui recusandae. Enim ut consectetur ut optio repellat.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(8, '{\"ar\": \"خبير\", \"en\": \"Advanced\"}', '{\"ar\": \"Saepe eligendi minus sunt sed dolorem ducimus.\", \"en\": \"Molestiae error minus aut quisquam temporibus recusandae totam.\"}', NULL, 'Advanced خبير', 'Molestiae error minus aut quisquam temporibus recusandae totam. Saepe eligendi minus sunt sed dolorem ducimus.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(9, '{\"ar\": \"متقدم\", \"en\": \"Expert\"}', '{\"ar\": \"Enim dignissimos dolore esse sed sit est.\", \"en\": \"Aliquid natus asperiores quam dolores recusandae velit.\"}', NULL, 'Expert متقدم', 'Aliquid natus asperiores quam dolores recusandae velit. Enim dignissimos dolore esse sed sit est.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(10, '{\"ar\": \"متوسط\", \"en\": \"Beginner\"}', '{\"ar\": \"Consequatur molestias adipisci omnis harum deserunt excepturi qui.\", \"en\": \"Et officia quia voluptas minima et illo quam.\"}', NULL, 'Beginner متوسط', 'Et officia quia voluptas minima et illo quam. Consequatur molestias adipisci omnis harum deserunt excepturi qui.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(11, '{\"ar\": \"متوسط\", \"en\": \"Beginner\"}', '{\"ar\": \"Sit ut minus incidunt.\", \"en\": \"Architecto ad dolorem aut consectetur adipisci vel suscipit.\"}', NULL, 'Beginner متوسط', 'Architecto ad dolorem aut consectetur adipisci vel suscipit. Sit ut minus incidunt.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(12, '{\"ar\": \"خبير\", \"en\": \"Intermediate\"}', '{\"ar\": \"Enim omnis quasi facilis.\", \"en\": \"Excepturi quo soluta dolores ea qui saepe accusamus.\"}', NULL, 'Intermediate خبير', 'Excepturi quo soluta dolores ea qui saepe accusamus. Enim omnis quasi facilis.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(13, '{\"ar\": \"مبتدئ\", \"en\": \"Advanced\"}', '{\"ar\": \"Nisi perferendis et mollitia dicta facere dolorem eius.\", \"en\": \"Dolorem omnis aut odit est eligendi fugit sed.\"}', NULL, 'Advanced مبتدئ', 'Dolorem omnis aut odit est eligendi fugit sed. Nisi perferendis et mollitia dicta facere dolorem eius.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(14, '{\"ar\": \"متقدم\", \"en\": \"Expert\"}', '{\"ar\": \"Iure dolor nam eum nulla libero placeat voluptas commodi.\", \"en\": \"Tenetur at rerum eaque veritatis.\"}', NULL, 'Expert متقدم', 'Tenetur at rerum eaque veritatis. Iure dolor nam eum nulla libero placeat voluptas commodi.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(15, '{\"ar\": \"متقدم\", \"en\": \"Intermediate\"}', '{\"ar\": \"Sed ipsa rerum tempora neque voluptatem nesciunt vero.\", \"en\": \"Et eveniet in error aut deleniti eaque.\"}', NULL, 'Intermediate متقدم', 'Et eveniet in error aut deleniti eaque. Sed ipsa rerum tempora neque voluptatem nesciunt vero.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(16, '{\"ar\": \"متوسط\", \"en\": \"Advanced\"}', '{\"ar\": \"Quae et voluptate modi eum eligendi ut perspiciatis.\", \"en\": \"Et repudiandae facere tenetur ad voluptates.\"}', NULL, 'Advanced متوسط', 'Et repudiandae facere tenetur ad voluptates. Quae et voluptate modi eum eligendi ut perspiciatis.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(17, '{\"ar\": \"متوسط\", \"en\": \"Intermediate\"}', '{\"ar\": \"Molestias ut enim cum minima quis.\", \"en\": \"Illo consectetur voluptas voluptates omnis illum.\"}', NULL, 'Intermediate متوسط', 'Illo consectetur voluptas voluptates omnis illum. Molestias ut enim cum minima quis.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(18, '{\"ar\": \"متقدم\", \"en\": \"Intermediate\"}', '{\"ar\": \"Quia quas quae minus quo repellat tempore suscipit.\", \"en\": \"Consequuntur exercitationem ut et iste.\"}', NULL, 'Intermediate متقدم', 'Consequuntur exercitationem ut et iste. Quia quas quae minus quo repellat tempore suscipit.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(19, '{\"ar\": \"متوسط\", \"en\": \"Expert\"}', '{\"ar\": \"Reiciendis fugiat et quia ut et.\", \"en\": \"In fugit eaque et dignissimos odio.\"}', NULL, 'Expert متوسط', 'In fugit eaque et dignissimos odio. Reiciendis fugiat et quia ut et.', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(20, '{\"ar\": \"فئة جديدة updatedewffwe\", \"en\": \"NEW CATEGORY updatedwergf\"}', '{\"ar\": \"Blanditiis totam suscipit et eveniet.\", \"en\": \"Dolores autem repellendus asperiores.\"}', 'levels/buJY6lwxyYRFisTOIEvS3AJaKEnAkdFMNvH2zZJD.png', 'NEW CATEGORY updatedwergf فئة جديدة updatedewffwe', 'Dolores autem repellendus asperiores. Blanditiis totam suscipit et eveniet.', '2026-02-03 14:32:53', '2026-02-04 14:58:40'),
(22, '{\"ar\": \"مبتدئ\", \"en\": \"Beginner\"}', '{\"ar\": \"Reprehenderit et ducimus aliquid consectetur numquam quis.\", \"en\": \"Quia sed dolorem ad enim distinctio incidunt.\"}', NULL, 'Beginner مبتدئ', 'Quia sed dolorem ad enim distinctio incidunt. Reprehenderit et ducimus aliquid consectetur numquam quis.', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(23, '{\"ar\": \"مبتدئ\", \"en\": \"Expert\"}', '{\"ar\": \"Officia voluptatem labore praesentium id vel voluptatem.\", \"en\": \"Vel nihil blanditiis est corrupti mollitia rerum laborum.\"}', NULL, 'Expert مبتدئ', 'Vel nihil blanditiis est corrupti mollitia rerum laborum. Officia voluptatem labore praesentium id vel voluptatem.', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(24, '{\"ar\": \"خبير\", \"en\": \"Advanced\"}', '{\"ar\": \"Et dolorem ex eligendi tenetur veniam illum itaque magnam.\", \"en\": \"Enim quasi et deleniti.\"}', NULL, 'Advanced خبير', 'Enim quasi et deleniti. Et dolorem ex eligendi tenetur veniam illum itaque magnam.', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(25, '{\"ar\": \"متقدم\", \"en\": \"Advanced\"}', '{\"ar\": \"Et sint occaecati excepturi suscipit illo cupiditate non.\", \"en\": \"Quia vitae qui nisi veritatis.\"}', NULL, 'Advanced متقدم', 'Quia vitae qui nisi veritatis. Et sint occaecati excepturi suscipit illo cupiditate non.', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(26, '{\"ar\": \"خبير\", \"en\": \"Expert\"}', '{\"ar\": \"Explicabo quos nobis quidem et.\", \"en\": \"Ex quibusdam voluptas corporis voluptatem.\"}', NULL, 'Expert خبير', 'Ex quibusdam voluptas corporis voluptatem. Explicabo quos nobis quidem et.', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(27, '{\"ar\": \"متوسط\", \"en\": \"Advanced\"}', '{\"ar\": \"Odit voluptatem sed exercitationem eum ipsam.\", \"en\": \"Reprehenderit similique excepturi possimus sit.\"}', NULL, 'Advanced متوسط', 'Reprehenderit similique excepturi possimus sit. Odit voluptatem sed exercitationem eum ipsam.', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(28, '{\"ar\": \"متوسط\", \"en\": \"Beginner\"}', '{\"ar\": \"Doloribus doloribus dicta et aut ut necessitatibus.\", \"en\": \"Repudiandae fuga qui et.\"}', NULL, 'Beginner متوسط', 'Repudiandae fuga qui et. Doloribus doloribus dicta et aut ut necessitatibus.', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(29, '{\"ar\": \"متوسط\", \"en\": \"Expert\"}', '{\"ar\": \"Distinctio et dolores animi sint porro corporis quia.\", \"en\": \"Distinctio et sequi molestiae ut aliquam autem ipsam.\"}', NULL, 'Expert متوسط', 'Distinctio et sequi molestiae ut aliquam autem ipsam. Distinctio et dolores animi sint porro corporis quia.', '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(30, '{\"ar\": \"فئة جديدة\", \"en\": \"NEW CATEGORY\"}', '{\"ar\": \"ينلسععثق\", \"en\": \"SDGJBD\"}', NULL, 'NEW CATEGORY فئة جديدة', 'SDGJBD ينلسععثق', '2026-02-04 14:42:53', '2026-02-04 14:42:53'),
(31, '{\"ar\": \"فئة جديدة\", \"en\": \"NEW CATEGORY\"}', '{\"ar\": \"ينلسععثق\", \"en\": \"SDGJBD\"}', NULL, 'NEW CATEGORY فئة جديدة', 'SDGJBD ينلسععثق', '2026-02-04 14:44:18', '2026-02-04 14:44:18'),
(32, '{\"ar\": \"فئة جديدة\", \"en\": \"NEW CATEGORY\"}', '{\"ar\": \"ينلسععثق\", \"en\": \"SDGJBD\"}', NULL, 'NEW CATEGORY فئة جديدة', 'SDGJBD ينلسععثق', '2026-02-04 14:45:01', '2026-02-04 14:45:01'),
(33, '{\"ar\": \"فئة جديدة\", \"en\": \"NEW CATEGORY\"}', '{\"ar\": \"ينلسععثق\", \"en\": \"SDGJBD\"}', NULL, 'NEW CATEGORY فئة جديدة', 'SDGJBD ينلسععثق', '2026-02-04 14:49:00', '2026-02-04 14:49:00'),
(34, '{\"ar\": \"فئة جديدة\", \"en\": \"NEW CATEGORY\"}', '{\"ar\": \"ينلسععثق\", \"en\": \"SDGJBD\"}', NULL, 'NEW CATEGORY فئة جديدة', 'SDGJBD ينلسععثق', '2026-02-04 14:49:09', '2026-02-04 14:49:09'),
(35, '{\"ar\": \"فئة جديدة\", \"en\": \"NEW CATEGORY\"}', '{\"ar\": \"ينلسععثق\", \"en\": \"SDGJBD\"}', 'levels/SMA1TICCrYsFl3ZI7Q7mFrq3VuWBzqdL7iLhHPb5.jpg', 'NEW CATEGORY فئة جديدة', 'SDGJBD ينلسععثق', '2026-02-04 14:51:27', '2026-02-04 14:51:27'),
(38, '{\"en\":\"good\",\"ar\":\"جيد\"}', '{\"en\":\"sdfsdfdsf\",\"ar\":\"يسبيب\"}', 'levels/L43C4t4gVif8Ltw6oVB9jnTvxGXmosoUxCivSXPK.png', 'good جيد', 'sdfsdfdsf يسبيب', '2026-02-11 15:23:15', '2026-02-11 15:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `mentor_details`
--

CREATE TABLE `mentor_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deduction_type` enum('percentage','fixed') NOT NULL DEFAULT 'percentage',
  `deduction_value` decimal(10,2) NOT NULL DEFAULT 0.00,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `bank_account_name` varchar(255) DEFAULT NULL,
  `bank_account_iban` varchar(255) DEFAULT NULL,
  `bank_account_swift` varchar(255) DEFAULT NULL,
  `bank_account_routing_number` varchar(255) DEFAULT NULL,
  `bank_account_branch_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mentor_details`
--

INSERT INTO `mentor_details` (`id`, `user_id`, `deduction_type`, `deduction_value`, `bank_name`, `bank_account_number`, `bank_account_name`, `bank_account_iban`, `bank_account_swift`, `bank_account_routing_number`, `bank_account_branch_code`, `created_at`, `updated_at`) VALUES
(1, 2, 'percentage', 26.81, 'Goyette PLC Bank', '4116007864', 'Luciano Beer', 'SA157748178616601289223984', 'OKOYQWK2', '283971669', '6124', '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(2, 3, 'fixed', 35.22, 'Kihn Inc Bank', '2182336803', 'Porter Simonis', 'SA603411754374030457873925', 'RFHCFMJR', '009647466', '9156', '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(3, 4, 'fixed', 17.59, 'Jones, Maggio and Kub Bank', '6820669456', 'Rico Larson', 'SA303096295169172734774862', 'HDLHZZBL', '226256677', '3326', '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(4, 5, 'percentage', 9.48, 'Cruickshank-Gleichner Bank', '4175226203', 'Mr. Turner Mosciski III', 'SA742806087412437537621443', 'SVAJSLGI', '254011917', '6722', '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(5, 6, 'fixed', 41.05, 'Will, Keebler and Stiedemann Bank', '6207216264', 'Prof. Sallie Jacobi', 'SA124893529585046366678529', 'RULVWWJT', '311780664', '3243', '2026-02-03 14:32:47', '2026-02-03 14:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_14_170933_add_two_factor_columns_to_users_table', 1),
(5, '2026_02_02_144317_create_categories_table', 1),
(6, '2026_02_02_145406_create_levels_table', 1),
(7, '2026_02_02_145537_create_courses_table', 1),
(8, '2026_02_02_152558_create_course_user_table', 1),
(9, '2026_02_02_153828_create_posts_table', 1),
(10, '2026_02_02_154143_create_comments_table', 1),
(11, '2026_02_02_155134_create_post_user_table', 1),
(12, '2026_02_02_155620_create_polls_table', 1),
(13, '2026_02_02_160237_create_poll_options_table', 1),
(14, '2026_02_02_163947_create_poll_option_user_table', 1),
(15, '2026_02_02_164702_create_articles_table', 1),
(16, '2026_02_02_165018_create_article_user_table', 1),
(17, '2026_02_02_165203_create_article_read_table', 1),
(18, '2026_02_02_165934_create_wallets_table', 1),
(19, '2026_02_02_170138_create_transactions_table', 1),
(20, '2026_02_02_170523_create_general_settings_table', 1),
(21, '2026_02_02_170647_create_faqs_table', 1),
(22, '2026_02_03_115505_create_working_days_table', 1),
(23, '2026_02_03_120206_create_working_hours_table', 1),
(24, '2026_02_03_120651_create_permission_tables', 1),
(25, '2026_02_03_125027_add_phone_number_column_to_users_table', 1),
(26, '2026_02_03_134005_add_price_and_url_to_courses_table', 1),
(27, '2026_02_03_135743_create_lessons_table', 1),
(28, '2026_02_03_135755_create_lesson_user_table', 1),
(29, '2026_02_03_141448_create_mentor_details_table', 1),
(30, '2026_02_03_150553_create_notifications_table', 1),
(31, '2026_02_03_151652_add_points_column_to_users_table', 1),
(32, '2026_02_03_151751_create_point_transactions_table', 1),
(33, '2026_02_03_180111_create_personal_access_tokens_table', 2),
(34, '2026_02_05_133601_add_accepted_at_and_earning_points_column_to_courses_table', 3),
(35, '2026_02_05_133724_add_accepted_at_and_earning_points_column_to_articles_table', 3),
(36, '2026_02_07_115705_add_title_and_content_colum_to_lessons_table', 4),
(37, '2026_02_07_145730_add_title_column_to_articles_table', 5),
(38, '2026_02_25_101930_add_slug_to_categories_table', 6),
(39, '2026_02_25_130747_create_banners_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 14),
(4, 'App\\Models\\User', 15),
(4, 'App\\Models\\User', 16),
(4, 'App\\Models\\User', 17),
(4, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 20),
(4, 'App\\Models\\User', 22),
(4, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 25),
(4, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 395),
(3, 'App\\Models\\User', 396),
(3, 'App\\Models\\User', 397);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'categories', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(2, 'view_categories', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(3, 'create_categories', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(4, 'update_categories', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(5, 'delete_categories', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(6, 'levels', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(7, 'view_levels', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(8, 'create_levels', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(9, 'update_levels', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(10, 'delete_levels', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(11, 'faqs', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(12, 'view_faqs', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(13, 'create_faqs', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(14, 'update_faqs', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(15, 'delete_faqs', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(16, 'mentors', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(17, 'view_mentors', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(18, 'create_mentors', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(19, 'update_mentors', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(20, 'delete_mentors', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(21, 'banners', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(22, 'view_banners', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(23, 'create_banners', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(24, 'update_banners', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(25, 'delete_banners', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(26, 'courses', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(27, 'view_courses', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(28, 'create_courses', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(29, 'update_courses', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(30, 'delete_courses', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(31, 'lessons', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(32, 'view_lessons', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(33, 'create_lessons', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(34, 'update_lessons', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(35, 'delete_lessons', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(36, 'articles', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(37, 'view_articles', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(38, 'create_articles', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(39, 'update_articles', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(40, 'delete_articles', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(41, 'roles', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(42, 'view_roles', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(43, 'create_roles', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(44, 'update_roles', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(45, 'delete_roles', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(46, 'permissions', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(47, 'view_permissions', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(48, 'create_permissions', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(49, 'update_permissions', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(50, 'delete_permissions', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(51, 'users', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(52, 'view_users', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(53, 'create_users', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(54, 'update_users', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(55, 'delete_users', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(56, 'dashboard', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(57, 'view_dashboard', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(58, 'create_dashboard', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(59, 'update_dashboard', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(60, 'delete_dashboard', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(61, 'settings', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(62, 'view_settings', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(63, 'create_settings', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(64, 'update_settings', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(65, 'delete_settings', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(66, 'reports', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(67, 'view_reports', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(68, 'create_reports', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(69, 'update_reports', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38'),
(70, 'delete_reports', 'web', '2026-03-02 08:53:38', '2026-03-02 08:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(54, 'App\\Models\\User', 1, 'auth_token', '0caa283f6dc8dfba52b9ca6a0c0d44b869a83e55c0689be2d981de8f504c863d', '[\"*\"]', '2026-03-02 13:39:15', NULL, '2026-03-02 13:13:42', '2026-03-02 13:39:15'),
(55, 'App\\Models\\User', 1, 'auth_token', '113536c6dbf70f9959a879fc17d6ba695187ae8d7792aea7590929eed1d568b0', '[\"*\"]', '2026-03-08 13:18:00', NULL, '2026-03-08 10:56:29', '2026-03-08 13:18:00'),
(56, 'App\\Models\\User', 1, 'auth_token', 'd5082dc6c5a5be2e5b8311f31bf3f7fddbd4594068c98c190cd64f7b7a9dfdb7', '[\"*\"]', '2026-03-08 13:18:00', NULL, '2026-03-08 13:13:46', '2026-03-08 13:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `point_transactions`
--

CREATE TABLE `point_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` enum('earn','spend') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`content`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`id`, `course_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '{\"ar\": \"Nihil aut neque ducimus enim voluptatem veniam earum.؟\", \"en\": \"Cumque expedita et eius odio quam est alias animi.?\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(2, 1, 6, '{\"ar\": \"Voluptatem voluptatum sint quibusdam excepturi quia architecto.؟\", \"en\": \"Error repudiandae omnis cum architecto nobis.?\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(3, 2, 2, '{\"ar\": \"Quo corporis fuga sed nihil corrupti.؟\", \"en\": \"Cumque dolores iure velit beatae assumenda occaecati iure excepturi.?\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(4, 3, 5, '{\"ar\": \"Expedita cumque est officiis natus nostrum iste quis.؟\", \"en\": \"Quasi suscipit dolores nesciunt a cupiditate quae libero et.?\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(5, 3, 5, '{\"ar\": \"In unde autem velit distinctio ipsa quia odio ducimus.؟\", \"en\": \"Ea et aliquam quis sed sit.?\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(6, 4, 6, '{\"ar\": \"Nesciunt excepturi voluptatem consequatur voluptatibus.؟\", \"en\": \"Eos enim perferendis laboriosam commodi occaecati voluptas.?\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(7, 4, 6, '{\"ar\": \"Accusantium animi in esse quia.؟\", \"en\": \"Sit fugit autem voluptas ratione.?\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(8, 5, 2, '{\"ar\": \"Accusantium blanditiis ducimus quo magnam aut aut.؟\", \"en\": \"Et aut qui sunt numquam sint.?\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(9, 5, 2, '{\"ar\": \"Voluptatum ut cumque praesentium doloribus veritatis dolor.؟\", \"en\": \"Debitis ex ullam ut repudiandae.?\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(10, 6, 5, '{\"ar\": \"Soluta et quas quisquam esse laudantium.؟\", \"en\": \"Est fugit voluptatum numquam maiores dolores saepe.?\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(11, 6, 5, '{\"ar\": \"Labore ut temporibus sed exercitationem excepturi nihil cum.؟\", \"en\": \"Qui voluptatem ut quo cum mollitia est deleniti.?\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(12, 7, 3, '{\"ar\": \"Nulla beatae distinctio vero vel sed.؟\", \"en\": \"Impedit assumenda aut necessitatibus temporibus voluptatem doloribus.?\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(13, 7, 3, '{\"ar\": \"Et molestias dolores ipsa ipsam qui molestiae.؟\", \"en\": \"Quia laboriosam et voluptatibus non aut delectus.?\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(14, 8, 5, '{\"ar\": \"Provident amet aspernatur facilis nam nostrum omnis sequi.؟\", \"en\": \"Sit quia nesciunt reprehenderit temporibus est.?\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(15, 9, 6, '{\"ar\": \"Qui voluptas maxime aut eum est et sed voluptatem.؟\", \"en\": \"Repellendus rerum modi velit labore velit et sit.?\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(16, 9, 6, '{\"ar\": \"Dolorum quia rem eligendi sunt ad id qui.؟\", \"en\": \"Eveniet maiores sequi illo rem.?\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(17, 9, 6, '{\"ar\": \"Voluptas ex incidunt ratione sed.؟\", \"en\": \"Voluptates tempore eos dolor neque dicta fugit.?\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(18, 10, 6, '{\"ar\": \"Omnis vel error incidunt adipisci asperiores.؟\", \"en\": \"Quo illum qui repellendus nemo.?\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(19, 10, 6, '{\"ar\": \"Est totam odio reprehenderit vel officiis sapiente qui.؟\", \"en\": \"Est quae et molestias enim.?\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(20, 11, 2, '{\"ar\": \"Aspernatur iure praesentium ratione quod.؟\", \"en\": \"Quasi esse eligendi odio veniam.?\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(21, 11, 2, '{\"ar\": \"Labore veritatis eveniet non quia quia eos illo.؟\", \"en\": \"Odio asperiores corporis ratione vel distinctio.?\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(22, 11, 2, '{\"ar\": \"Et molestias consequuntur ratione.؟\", \"en\": \"Similique quos quo tempore voluptatibus reprehenderit exercitationem et.?\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(23, 12, 4, '{\"ar\": \"Ut voluptatem et odio suscipit.؟\", \"en\": \"Quia qui quia esse sed incidunt iste libero.?\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(24, 12, 4, '{\"ar\": \"Eius nihil eveniet sit.؟\", \"en\": \"Nisi eligendi id cum quia exercitationem.?\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(25, 13, 2, '{\"ar\": \"Sed ratione quod neque aut.؟\", \"en\": \"Sed sed nihil voluptatem officia ut illum ratione unde.?\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(26, 13, 2, '{\"ar\": \"Eveniet voluptatem omnis odio est in.؟\", \"en\": \"Quis qui est doloribus ut amet et tempora.?\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(27, 13, 2, '{\"ar\": \"Eveniet perferendis alias eum dignissimos.؟\", \"en\": \"Dolor praesentium dolores ex.?\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(28, 14, 4, '{\"ar\": \"Sit in explicabo blanditiis aliquid.؟\", \"en\": \"Quaerat est omnis numquam vel omnis fugit.?\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(29, 14, 4, '{\"ar\": \"Laborum explicabo modi laborum qui id.؟\", \"en\": \"Dolorem voluptatem facere minima.?\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(30, 14, 4, '{\"ar\": \"A dolore dolorem aspernatur sapiente eius architecto officiis.؟\", \"en\": \"Quidem deleniti cupiditate necessitatibus illum id qui.?\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(31, 15, 6, '{\"ar\": \"Beatae et aperiam praesentium omnis.؟\", \"en\": \"Atque sequi molestias et voluptatibus non aut dolor enim.?\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `poll_options`
--

CREATE TABLE `poll_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`content`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `poll_options`
--

INSERT INTO `poll_options` (`id`, `poll_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"ar\": \"quia officiis aperiam\", \"en\": \"alias dignissimos omnis\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(2, 1, '{\"ar\": \"aliquam rerum odit\", \"en\": \"tempora aperiam rerum\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(3, 2, '{\"ar\": \"voluptatum necessitatibus dicta\", \"en\": \"beatae voluptatem libero\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(4, 2, '{\"ar\": \"doloribus asperiores quo\", \"en\": \"quia ipsam at\"}', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(5, 3, '{\"ar\": \"quam est quaerat\", \"en\": \"nulla officiis unde\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(6, 3, '{\"ar\": \"voluptates illo mollitia\", \"en\": \"architecto recusandae sit\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(7, 3, '{\"ar\": \"ipsum est sunt\", \"en\": \"repellendus aspernatur ratione\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(8, 4, '{\"ar\": \"a veniam alias\", \"en\": \"id architecto et\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(9, 4, '{\"ar\": \"minima quibusdam libero\", \"en\": \"et in velit\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(10, 4, '{\"ar\": \"aut aut sequi\", \"en\": \"architecto amet sapiente\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(11, 5, '{\"ar\": \"consequatur quo corporis\", \"en\": \"commodi ea neque\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(12, 5, '{\"ar\": \"ipsum et optio\", \"en\": \"exercitationem ipsam quos\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(13, 5, '{\"ar\": \"et qui facere\", \"en\": \"fugiat magnam quo\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(14, 5, '{\"ar\": \"nihil tempore quia\", \"en\": \"magnam rem perspiciatis\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(15, 6, '{\"ar\": \"reiciendis neque reprehenderit\", \"en\": \"omnis exercitationem dignissimos\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(16, 6, '{\"ar\": \"quae quidem numquam\", \"en\": \"in aspernatur eaque\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(17, 6, '{\"ar\": \"esse et in\", \"en\": \"vero enim sed\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(18, 7, '{\"ar\": \"quasi autem velit\", \"en\": \"saepe deserunt sunt\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(19, 7, '{\"ar\": \"quibusdam rem non\", \"en\": \"assumenda consequuntur voluptas\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(20, 7, '{\"ar\": \"quae aut officiis\", \"en\": \"et ipsum ratione\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(21, 8, '{\"ar\": \"tenetur voluptas voluptate\", \"en\": \"eligendi autem ratione\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(22, 8, '{\"ar\": \"ut aut a\", \"en\": \"nobis iste dolor\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(23, 8, '{\"ar\": \"animi voluptatem rerum\", \"en\": \"autem labore voluptatem\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(24, 9, '{\"ar\": \"ut enim ut\", \"en\": \"ea quas odit\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(25, 9, '{\"ar\": \"et sed error\", \"en\": \"porro qui minima\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(26, 9, '{\"ar\": \"magnam aut quaerat\", \"en\": \"corrupti natus harum\"}', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(27, 10, '{\"ar\": \"voluptatem reiciendis exercitationem\", \"en\": \"assumenda autem ut\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(28, 10, '{\"ar\": \"recusandae cumque ut\", \"en\": \"rem distinctio necessitatibus\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(29, 11, '{\"ar\": \"incidunt velit illum\", \"en\": \"omnis non voluptatem\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(30, 11, '{\"ar\": \"assumenda soluta laborum\", \"en\": \"ad et laboriosam\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(31, 11, '{\"ar\": \"iusto animi ab\", \"en\": \"minima aut blanditiis\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(32, 11, '{\"ar\": \"laboriosam in repellat\", \"en\": \"quibusdam dolores at\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(33, 12, '{\"ar\": \"ab ut officiis\", \"en\": \"alias soluta ad\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(34, 12, '{\"ar\": \"eos eum maxime\", \"en\": \"soluta aut aperiam\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(35, 13, '{\"ar\": \"enim saepe nemo\", \"en\": \"quo blanditiis ducimus\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(36, 13, '{\"ar\": \"dolorum fugiat reiciendis\", \"en\": \"nemo facilis ex\"}', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(37, 14, '{\"ar\": \"quis ratione ipsa\", \"en\": \"velit atque ipsum\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(38, 14, '{\"ar\": \"ut quaerat nisi\", \"en\": \"amet ut soluta\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(39, 14, '{\"ar\": \"qui qui omnis\", \"en\": \"a voluptas quo\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(40, 14, '{\"ar\": \"ut non molestiae\", \"en\": \"quidem fuga quo\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(41, 15, '{\"ar\": \"voluptas eum eveniet\", \"en\": \"inventore enim provident\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(42, 15, '{\"ar\": \"ut est eius\", \"en\": \"doloremque impedit enim\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(43, 16, '{\"ar\": \"cum quo provident\", \"en\": \"vitae ipsa pariatur\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(44, 16, '{\"ar\": \"quo rerum aut\", \"en\": \"sint eius aut\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(45, 16, '{\"ar\": \"qui quia sed\", \"en\": \"est iusto magnam\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(46, 16, '{\"ar\": \"iste distinctio illum\", \"en\": \"dolor commodi quisquam\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(47, 17, '{\"ar\": \"quis omnis voluptatum\", \"en\": \"quo ut in\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(48, 17, '{\"ar\": \"ratione ea fugit\", \"en\": \"et nesciunt autem\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(49, 18, '{\"ar\": \"ipsam incidunt doloribus\", \"en\": \"voluptatibus eius cupiditate\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(50, 18, '{\"ar\": \"dicta dignissimos ex\", \"en\": \"dolorem tempora doloremque\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(51, 19, '{\"ar\": \"velit ut dicta\", \"en\": \"molestiae qui vero\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(52, 19, '{\"ar\": \"a sint nam\", \"en\": \"cum sunt neque\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(53, 19, '{\"ar\": \"deleniti aliquam iste\", \"en\": \"similique id voluptatibus\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(54, 19, '{\"ar\": \"error magni tempore\", \"en\": \"autem exercitationem aliquid\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(55, 20, '{\"ar\": \"suscipit esse libero\", \"en\": \"fugiat quaerat omnis\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(56, 20, '{\"ar\": \"cumque et mollitia\", \"en\": \"eligendi ipsa blanditiis\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(57, 20, '{\"ar\": \"quam dignissimos nisi\", \"en\": \"sed ratione eveniet\"}', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(58, 21, '{\"ar\": \"natus voluptas sit\", \"en\": \"aut quae a\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(59, 21, '{\"ar\": \"odit dolore velit\", \"en\": \"distinctio velit nostrum\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(60, 21, '{\"ar\": \"beatae dolorem velit\", \"en\": \"et deserunt autem\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(61, 21, '{\"ar\": \"sint voluptatem fugiat\", \"en\": \"labore adipisci velit\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(62, 22, '{\"ar\": \"labore voluptas pariatur\", \"en\": \"sed doloribus voluptate\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(63, 22, '{\"ar\": \"voluptatem culpa quaerat\", \"en\": \"porro reprehenderit quod\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(64, 23, '{\"ar\": \"delectus repudiandae officia\", \"en\": \"et distinctio quo\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(65, 23, '{\"ar\": \"est aut ea\", \"en\": \"debitis occaecati consequatur\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(66, 23, '{\"ar\": \"eius laboriosam dolor\", \"en\": \"nam qui sint\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(67, 24, '{\"ar\": \"rem est tempora\", \"en\": \"non nesciunt reprehenderit\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(68, 24, '{\"ar\": \"minus voluptatem neque\", \"en\": \"beatae nam id\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(69, 25, '{\"ar\": \"aut molestias ipsum\", \"en\": \"qui asperiores ut\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(70, 25, '{\"ar\": \"magnam aperiam numquam\", \"en\": \"ipsum ipsum magni\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(71, 25, '{\"ar\": \"delectus quis expedita\", \"en\": \"quidem neque cupiditate\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(72, 25, '{\"ar\": \"ipsa maiores debitis\", \"en\": \"expedita necessitatibus ea\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(73, 26, '{\"ar\": \"provident eos unde\", \"en\": \"blanditiis ut odio\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(74, 26, '{\"ar\": \"sint consequuntur sed\", \"en\": \"voluptate placeat nobis\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(75, 26, '{\"ar\": \"eum facere doloribus\", \"en\": \"aut amet sunt\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(76, 27, '{\"ar\": \"voluptatum iste vel\", \"en\": \"quis facilis dolorem\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(77, 27, '{\"ar\": \"voluptas ut voluptatibus\", \"en\": \"autem accusantium eum\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(78, 28, '{\"ar\": \"non sint velit\", \"en\": \"maxime doloremque temporibus\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(79, 28, '{\"ar\": \"aut quod maxime\", \"en\": \"dolor blanditiis rerum\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(80, 28, '{\"ar\": \"incidunt corrupti laboriosam\", \"en\": \"magnam asperiores et\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(81, 29, '{\"ar\": \"voluptatem mollitia qui\", \"en\": \"nisi veritatis pariatur\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(82, 29, '{\"ar\": \"voluptatem dolor et\", \"en\": \"voluptatum veniam officiis\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(83, 30, '{\"ar\": \"eveniet quod minus\", \"en\": \"eligendi ea veritatis\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(84, 30, '{\"ar\": \"itaque repudiandae delectus\", \"en\": \"quibusdam ut laboriosam\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(85, 30, '{\"ar\": \"quod doloribus quis\", \"en\": \"eveniet voluptas qui\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(86, 31, '{\"ar\": \"unde qui libero\", \"en\": \"aut tempora inventore\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(87, 31, '{\"ar\": \"enim et odit\", \"en\": \"at sit sunt\"}', '2026-02-03 14:32:52', '2026-02-03 14:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `poll_option_user`
--

CREATE TABLE `poll_option_user` (
  `poll_option_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `poll_option_user`
--

INSERT INTO `poll_option_user` (`poll_option_id`, `user_id`) VALUES
(8, 1),
(37, 2),
(19, 3),
(23, 3),
(4, 4),
(7, 4),
(8, 5),
(10, 5),
(66, 5),
(71, 5),
(3, 6),
(12, 7),
(17, 8),
(57, 8),
(1, 9),
(31, 9),
(35, 9),
(9, 10),
(16, 10),
(1, 11),
(6, 11),
(1, 12),
(6, 12),
(22, 14),
(71, 14),
(4, 15),
(8, 15),
(47, 16),
(4, 17),
(3, 18),
(46, 19),
(68, 19),
(4, 20),
(10, 20),
(33, 20),
(1, 22),
(10, 23),
(66, 23),
(7, 26),
(22, 26),
(75, 27),
(3, 28),
(9, 28),
(37, 28),
(4, 29),
(40, 29),
(1, 30),
(20, 30),
(24, 30),
(12, 32),
(1, 33),
(2, 33),
(72, 33),
(9, 34),
(23, 34),
(65, 34),
(65, 36),
(8, 37),
(66, 37),
(4, 38),
(51, 38),
(61, 40),
(69, 41),
(75, 41),
(11, 43),
(2, 44),
(4, 44),
(37, 44),
(76, 44),
(34, 45),
(32, 46),
(14, 47),
(46, 47),
(1, 48),
(73, 48),
(81, 49),
(1, 50),
(3, 50),
(8, 50),
(54, 50),
(66, 50),
(81, 50),
(3, 51),
(8, 51),
(2, 52),
(22, 52),
(33, 53),
(21, 54),
(12, 55),
(17, 55),
(35, 55),
(67, 55),
(20, 56),
(53, 56),
(4, 57),
(11, 57),
(65, 57),
(9, 58),
(14, 58),
(73, 58),
(21, 59),
(27, 59),
(47, 59),
(10, 60),
(35, 60),
(37, 60),
(71, 61),
(14, 62),
(49, 62),
(50, 62),
(11, 63),
(17, 63),
(3, 64),
(5, 64),
(2, 65),
(75, 67),
(44, 68),
(33, 69),
(75, 70),
(23, 71),
(47, 71),
(54, 71),
(8, 72),
(45, 72),
(69, 72),
(85, 73),
(61, 75),
(75, 75),
(13, 78),
(41, 78),
(23, 80),
(34, 80),
(44, 80),
(86, 80),
(40, 81),
(77, 81),
(12, 83),
(31, 83),
(38, 86),
(35, 87),
(8, 88),
(23, 88),
(67, 88),
(59, 89),
(21, 90),
(10, 91),
(83, 91),
(13, 92),
(46, 92),
(47, 92),
(49, 92),
(6, 93),
(35, 93),
(43, 93),
(46, 93),
(25, 94),
(81, 94),
(85, 94),
(7, 95),
(53, 96),
(29, 98),
(10, 99),
(17, 99),
(9, 100),
(20, 100),
(61, 100),
(51, 101),
(68, 101),
(13, 102),
(57, 102),
(58, 102),
(33, 104),
(29, 106),
(39, 107),
(17, 108),
(31, 108),
(20, 109),
(31, 110),
(33, 110),
(17, 111),
(77, 111),
(50, 112),
(67, 112),
(52, 113),
(22, 115),
(45, 116),
(28, 117),
(51, 117),
(71, 117),
(74, 117),
(82, 117),
(17, 118),
(47, 118),
(50, 118),
(26, 121),
(41, 122),
(67, 123),
(20, 124),
(22, 124),
(49, 124),
(25, 125),
(87, 125),
(34, 127),
(44, 127),
(22, 128),
(49, 129),
(16, 130),
(22, 130),
(45, 130),
(31, 131),
(85, 131),
(35, 132),
(53, 132),
(17, 133),
(19, 134),
(47, 135),
(74, 135),
(20, 136),
(33, 136),
(21, 138),
(57, 138),
(46, 140),
(85, 141),
(61, 142),
(28, 144),
(35, 144),
(55, 144),
(45, 146),
(64, 146),
(22, 147),
(48, 149),
(21, 150),
(31, 151),
(53, 151),
(70, 152),
(67, 153),
(86, 155),
(60, 156),
(21, 157),
(24, 158),
(48, 158),
(81, 162),
(28, 163),
(63, 165),
(85, 174),
(37, 175),
(50, 175),
(60, 175),
(27, 178),
(68, 178),
(47, 180),
(27, 181),
(57, 189),
(54, 191),
(48, 193),
(59, 193),
(71, 193),
(72, 194),
(37, 195),
(78, 196),
(84, 197),
(53, 198),
(87, 199),
(63, 200),
(66, 200),
(68, 200),
(38, 204),
(73, 204),
(65, 205),
(35, 206),
(49, 208),
(81, 211),
(65, 213),
(55, 217),
(66, 221),
(86, 221),
(51, 222),
(48, 225),
(48, 228),
(73, 228),
(81, 229),
(45, 230),
(57, 230),
(52, 231),
(75, 231),
(67, 233),
(37, 237),
(51, 240),
(37, 245),
(63, 245),
(45, 246),
(72, 246),
(51, 247),
(60, 247),
(50, 249),
(68, 251),
(75, 252),
(82, 252),
(46, 253),
(64, 253),
(43, 254),
(66, 256),
(83, 257),
(47, 258),
(64, 258),
(43, 260),
(50, 260),
(51, 260),
(49, 261),
(70, 264),
(53, 266),
(67, 269),
(81, 274),
(75, 279),
(86, 281),
(57, 284),
(79, 287),
(68, 288),
(71, 288),
(61, 290),
(80, 292),
(57, 293),
(55, 294),
(76, 295),
(50, 296),
(63, 303),
(65, 305),
(63, 306),
(68, 306),
(59, 308),
(71, 312),
(83, 313),
(86, 316),
(78, 318),
(82, 324),
(82, 342);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` text NOT NULL,
  `type` enum('text','image','video') NOT NULL DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `course_id`, `user_id`, `content`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 42, '{\"en\":\"Et fugiat odit est architecto natus tenetur autem optio. Et aut consequatur cumque nam et ea dignissimos.\",\"ar\":\"Similique et sint ut nesciunt. Nam neque magni aut iure fugit voluptates mollitia.\"}', 'video', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(2, 1, 43, '{\"en\":\"Ducimus ut minus unde ratione fuga esse sunt. Voluptatem sunt mollitia magnam temporibus quo commodi labore. Ut rerum corrupti odit sint.\",\"ar\":\"Rerum similique ut sapiente aut voluptatibus quia. Dicta nobis autem et porro harum fugit a sit. Modi et commodi vitae perspiciatis.\"}', 'text', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(3, 1, 44, '{\"en\":\"Ut officiis exercitationem voluptatem modi libero enim aut. Sed in doloribus repellat qui incidunt adipisci sed. Non non voluptate omnis ut nihil voluptatem aliquam.\",\"ar\":\"Ut dolor accusantium itaque sapiente voluptatem. Ut eum dolorem nihil magni inventore omnis enim. Quaerat provident tenetur voluptatem nulla iure necessitatibus.\"}', 'text', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(4, 1, 45, '{\"en\":\"Sed sapiente nisi ex quia dolor aut. Nemo officiis doloremque fuga occaecati non. Quisquam iste ipsam eaque veritatis eveniet.\",\"ar\":\"Voluptatem aperiam omnis nostrum dolorem autem tempore quibusdam. Voluptatem occaecati ullam voluptatem dolores. Dolore velit natus nihil ea officia sapiente.\"}', 'text', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(5, 1, 46, '{\"en\":\"Perspiciatis est voluptatem impedit distinctio voluptatem autem. Consequatur aut culpa nisi accusantium minima ut debitis reprehenderit. Optio nihil illo vitae molestiae ut dolor quasi ipsa. Sed ratione distinctio rem quo assumenda et quas aliquid.\",\"ar\":\"Inventore quidem omnis nobis quia. Eos autem rerum nihil ad. Omnis eveniet dolorum praesentium aut.\"}', 'text', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(6, 1, 47, '{\"en\":\"Qui aspernatur laudantium voluptatibus accusamus alias aliquid. Et aut vel minima labore et eos.\",\"ar\":\"Doloremque rerum dignissimos alias a. Aut voluptas dolores numquam. Inventore et omnis dolores. Facere expedita reiciendis aut eveniet. At vero dignissimos earum cumque esse aut dolor.\"}', 'text', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(7, 2, 67, '{\"en\":\"Aperiam rerum maiores cumque provident et eius perspiciatis error. Consequatur dolor rem corporis ut eum quaerat tempore. Perspiciatis aut aut ut.\",\"ar\":\"Esse eligendi et consequatur praesentium nulla consequuntur. Minima quam ut officiis labore velit. Sed rerum molestiae repudiandae quisquam iste sed. Omnis doloremque aut officiis voluptas vitae. Sunt optio unde laudantium modi maxime rerum deleniti.\"}', 'text', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(8, 2, 68, '{\"en\":\"Et consectetur veritatis sequi consequatur autem. Sed quia accusamus vel dolores deleniti sed assumenda atque. Qui rem reprehenderit et sapiente consequatur vero veniam nihil.\",\"ar\":\"Repellendus ipsa beatae porro laudantium. Non eaque officia ut et. Omnis similique vel quae et. Voluptas amet eum assumenda unde est.\"}', 'image', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(9, 2, 69, '{\"en\":\"Dignissimos voluptas dicta enim placeat impedit recusandae. Dolor qui occaecati explicabo magnam nulla error. Voluptatem aut est aut quod sed. Officiis magnam aut sit.\",\"ar\":\"Quidem unde eveniet modi placeat numquam magnam. Animi architecto excepturi et porro quas. Nulla occaecati sit dicta eos quo earum quisquam. Sint minus consequatur suscipit veniam minima unde repellendus.\"}', 'image', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(10, 2, 70, '{\"en\":\"Facilis repellat recusandae sit culpa maiores atque unde corrupti. Occaecati laborum odio et ipsum. Quam tenetur fugiat dolor iste debitis.\",\"ar\":\"Sit voluptatum culpa ea quos. Officiis sit aut ducimus sunt sunt iste. Explicabo quo dolorem id dolorem. Nemo ut soluta harum ut doloribus porro itaque.\"}', 'text', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(11, 2, 71, '{\"en\":\"Adipisci quo ipsam qui dignissimos itaque. Rerum aspernatur est sit voluptatibus. Hic hic reprehenderit ratione earum. Dolores sed eligendi facilis magni corporis autem aut. Soluta animi accusamus in doloribus.\",\"ar\":\"Nihil deleniti qui non voluptatibus laboriosam quos temporibus. Qui hic soluta accusamus et saepe possimus ad. Odit quas aut cupiditate vitae non. Et officiis repudiandae et cupiditate.\"}', 'text', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(12, 2, 72, '{\"en\":\"At aliquam provident minima nobis. Ipsum ut debitis architecto deserunt. Quia at et est possimus. Iure id tempora dolorum ut eum natus est.\",\"ar\":\"Ut excepturi odio exercitationem exercitationem nisi libero ab. Doloremque natus et distinctio. Sunt aut consequatur molestias culpa et est. Qui natus sit sequi iure voluptatum et fugiat.\"}', 'image', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(13, 2, 73, '{\"en\":\"Consequatur autem quidem numquam rem. Ratione ipsam ut expedita dolor. Ad et mollitia harum maiores recusandae.\",\"ar\":\"Quisquam non asperiores id inventore sit quos. Cum distinctio sapiente eos ut eos. Ut fuga ullam aspernatur dolores.\"}', 'image', '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(14, 3, 97, '{\"en\":\"Quia quaerat perferendis officiis dolores sequi. Accusantium ut qui fugiat earum rem. Aliquam consectetur qui odit magni fuga. Alias est praesentium in veritatis eum.\",\"ar\":\"Repudiandae est eligendi et laboriosam quo ut. Reiciendis debitis fugiat aut. A sed molestiae et voluptates. Non quaerat quod quis laudantium.\"}', 'video', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(15, 3, 98, '{\"en\":\"Praesentium sequi voluptas officia. Perspiciatis nihil et cumque soluta asperiores in iusto. Sed illo et et ab.\",\"ar\":\"Quam explicabo fugit odio itaque sunt facilis modi. Odio laboriosam enim autem molestiae nisi est. Nobis ipsam eos quae et. Beatae impedit et eos inventore ullam odit dolor.\"}', 'video', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(16, 3, 99, '{\"en\":\"Ipsa molestiae commodi autem voluptas nostrum. Eum voluptas quis et eveniet. Enim ex sit iure reprehenderit fugiat.\",\"ar\":\"Voluptatem et incidunt omnis quaerat quis. Est et mollitia consequatur dolore voluptas. Necessitatibus quo ad veritatis dolor quaerat eligendi. Est repellendus nesciunt quos repellendus at nostrum dolores. Atque et dicta blanditiis quisquam quisquam temporibus est.\"}', 'image', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(17, 3, 100, '{\"en\":\"Omnis cupiditate voluptas reprehenderit ad reprehenderit rem quidem inventore. Id delectus quam commodi in. Rerum soluta distinctio qui aliquid. Magni aperiam ea sed sint aut eius.\",\"ar\":\"Dolores ut et consequatur. Ut aliquid distinctio eos reprehenderit accusamus debitis iste. Sint et veniam et ea hic.\"}', 'video', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(18, 4, 111, '{\"en\":\"Qui in veritatis culpa aut tempora quos voluptates. Et necessitatibus illum est nihil quibusdam ducimus ex. Totam aut est dolor qui enim aliquid eius.\",\"ar\":\"Inventore sit voluptas dolorem repellat. Consequuntur velit ipsa quaerat dolores. Quae ullam ut consequuntur omnis. Et rerum officiis possimus fugit.\"}', 'image', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(19, 4, 112, '{\"en\":\"Ea distinctio earum qui suscipit sit atque praesentium. Porro est deleniti in impedit sit molestias. Distinctio qui culpa in officiis.\",\"ar\":\"Ducimus et ut tempora. Ut reprehenderit corrupti et rerum minima minima voluptate. Est quia dolorem est unde qui vel. Doloremque libero est reiciendis iure vel ut.\"}', 'image', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(20, 4, 113, '{\"en\":\"Doloribus modi porro saepe et id labore facere laborum. Alias sit ex officiis est corporis omnis quis nostrum. Labore officia dolores temporibus voluptatem ab iusto reprehenderit.\",\"ar\":\"Ut impedit similique at labore et. Delectus rerum suscipit atque laboriosam est. Nihil et voluptas amet est atque mollitia animi. Asperiores non nemo aut odit asperiores ad quaerat. Molestiae tempore placeat expedita ipsa ea et minus.\"}', 'video', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(21, 4, 114, '{\"en\":\"Reprehenderit enim dignissimos ut. Autem iure aut sit. Nam alias similique cupiditate impedit eum quidem reprehenderit. Maxime qui unde qui alias corporis.\",\"ar\":\"Quis earum deserunt voluptate non. Quia commodi aspernatur adipisci est dolor aut est dolorem. Maxime quisquam enim dolor repellat molestias magnam tempora dicta. Tempore recusandae aperiam quo quisquam.\"}', 'text', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(22, 4, 115, '{\"en\":\"Ut in amet quisquam deserunt quos id quod. Ipsum vel animi beatae eos earum soluta. Rerum quis nihil iste voluptatem ex autem. Et voluptatem quia aliquam quia consequuntur.\",\"ar\":\"Sint est ullam omnis quo ab. Et aperiam explicabo accusantium praesentium assumenda nesciunt aperiam illum. Qui aperiam animi est.\"}', 'text', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(23, 4, 116, '{\"en\":\"Sit commodi quibusdam mollitia maxime aut omnis. Ut iusto odio consequatur perferendis. Facere dolorum adipisci illum illo odit. Omnis quasi similique itaque harum. Ea consequatur minus fuga aliquid.\",\"ar\":\"Qui a debitis labore alias. Velit dolores explicabo aperiam hic minima ullam. Ut magni natus omnis quia. Provident magni est et reprehenderit iure.\"}', 'text', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(24, 5, 139, '{\"en\":\"Vel molestiae quis perferendis harum asperiores. Qui qui autem inventore est neque. Necessitatibus eaque eos qui fuga rerum dignissimos.\",\"ar\":\"In neque nemo cum fugit. Earum quo suscipit eos architecto. Et maiores qui libero deleniti et impedit placeat. Voluptas aut consequatur sed repellat.\"}', 'text', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(25, 5, 140, '{\"en\":\"Corporis autem laborum eos sit rem. Velit et sit nihil. Ut quisquam error enim voluptas. A eaque ullam nesciunt autem.\",\"ar\":\"Recusandae quia qui quia sit. Atque quia fugiat non est veritatis. Reiciendis ut occaecati dignissimos qui nihil voluptate. Ipsum repellat animi tempore et earum.\"}', 'text', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(26, 5, 141, '{\"en\":\"Debitis non velit possimus. Et magnam expedita omnis aut sequi. Rerum dolorem voluptas sint non in.\",\"ar\":\"Nemo dignissimos voluptatem quasi voluptatem vel omnis. Rerum officia odio voluptas voluptatibus et facere facere. Qui facilis dolor harum sit libero.\"}', 'video', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(27, 5, 142, '{\"en\":\"Qui magnam explicabo ut dolores autem omnis. Libero deleniti iure et. Quas odit aut dolore consectetur laborum nesciunt. Eum culpa eveniet libero voluptatibus quasi.\",\"ar\":\"Consequatur quo repellat quas fugiat consequatur sit non. Architecto enim repellat ut provident officia quia omnis.\"}', 'video', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(28, 5, 143, '{\"en\":\"Qui voluptatem aperiam iste modi. Nulla ipsum corrupti omnis eveniet incidunt. Ut sed illum inventore sed. Repellendus quam quibusdam et neque.\",\"ar\":\"Ducimus ut quas cum itaque quae quia. Molestiae accusantium sint enim omnis laborum eligendi.\"}', 'image', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(29, 5, 144, '{\"en\":\"Vel dolorem modi ex tempora ut. Consequuntur incidunt velit aut hic. Praesentium dolorem et accusamus voluptatum quis velit ea.\",\"ar\":\"Est incidunt non optio quia officia rerum et. Aut hic soluta provident ducimus totam. Aperiam placeat et sed dolores.\"}', 'image', '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(30, 6, 159, '{\"en\":\"Molestiae eligendi vel molestiae nostrum. Aliquam labore mollitia sapiente.\",\"ar\":\"Dolore maxime error sed eos repudiandae. Dolorem dolorum perspiciatis quo voluptas pariatur veniam. Sed adipisci incidunt possimus et autem. Non ipsa aliquid repudiandae non.\"}', 'text', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(31, 6, 160, '{\"en\":\"Amet natus explicabo aut incidunt dolor vel. Veritatis a sunt aspernatur totam. Corporis labore laborum voluptas reprehenderit delectus id similique. Quibusdam neque est facilis perferendis quidem ut minus. Quod officia temporibus nihil excepturi reiciendis.\",\"ar\":\"Sunt eius nesciunt asperiores tempore est voluptas sed illo. Quia est eum maxime est. Quia facilis possimus laboriosam fugit molestias. Vel repellendus eius consequatur et aut et corporis.\"}', 'image', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(32, 6, 161, '{\"en\":\"Est ipsum officiis sint magni. Tempore ea nisi ut corporis. Inventore provident nulla ut est. Est id esse sunt voluptatem ratione illum vero.\",\"ar\":\"Ad provident consequatur rem quasi voluptates vel. Facilis voluptatem perferendis nisi et similique minus.\"}', 'image', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(33, 6, 162, '{\"en\":\"Quas saepe et recusandae ut ut. Accusantium cum minus et qui enim assumenda nostrum a. Et ut quia deleniti atque earum id dolorem. Rerum reiciendis incidunt animi magnam unde reprehenderit et.\",\"ar\":\"Culpa excepturi dolorem placeat numquam sed repellendus ex autem. Nisi porro eum commodi distinctio omnis. Voluptatum temporibus temporibus tempore minus. Repellat sit fugiat nostrum ipsa fugit.\"}', 'video', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(34, 6, 163, '{\"en\":\"Ullam iure debitis soluta voluptatem eveniet sequi. Est quasi reprehenderit enim incidunt. Qui tempore aut sed. Voluptates impedit id iusto corrupti sint quae omnis ipsum.\",\"ar\":\"Cumque perferendis est sit quaerat nesciunt maxime aspernatur. Nam ut odit rerum deserunt est animi. Expedita placeat id qui sit iure nesciunt sunt. Quia quo assumenda corrupti dolor. Vel id autem ratione nihil.\"}', 'video', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(35, 6, 164, '{\"en\":\"Praesentium est consequuntur nemo ipsam similique non. Aut quia et quisquam eos architecto assumenda. Accusamus autem sed dolorem odio labore. Commodi adipisci possimus aut ut.\",\"ar\":\"Dolorem itaque ex ex quis provident. Et aut est praesentium ipsam porro ex voluptas. Animi et ut reiciendis earum et.\"}', 'image', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(36, 6, 165, '{\"en\":\"Sit illo aliquam perferendis accusamus odio harum provident numquam. Ipsa blanditiis illo ipsam laborum itaque. Cumque est quisquam beatae necessitatibus. Cupiditate hic qui magni sequi perferendis laudantium. Quaerat nemo deserunt eum assumenda consectetur.\",\"ar\":\"Adipisci culpa sunt ut perspiciatis dicta sint omnis. Ducimus atque aspernatur rerum ratione distinctio eligendi assumenda. Ea minima consequuntur quasi qui ut repellat. Pariatur nisi architecto voluptas quia qui quis.\"}', 'video', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(37, 7, 187, '{\"en\":\"Qui inventore eaque rerum et qui. Aut quia doloribus magni molestiae officiis sit explicabo. Eius provident ex ducimus sint debitis natus minima odit. Ducimus delectus provident ut sed maxime est quia corrupti.\",\"ar\":\"Et voluptatem nisi aut. Et qui consequatur fugiat ut rerum tenetur eveniet. Doloremque magni nam voluptas soluta ullam corrupti officia.\"}', 'video', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(38, 7, 188, '{\"en\":\"Nihil enim et facilis sed et odio totam nisi. Repellat dolorem rerum et aperiam ipsa vitae aut. Debitis rerum et excepturi.\",\"ar\":\"Aperiam voluptate omnis dicta doloribus ad. Et soluta qui asperiores totam natus quos. Rem ex soluta placeat dolore assumenda.\"}', 'text', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(39, 7, 189, '{\"en\":\"Dolor voluptas est odit reprehenderit dignissimos ipsum aut sit. Qui ea enim at id. Veniam alias adipisci labore rem sint. Sint fuga qui aspernatur autem.\",\"ar\":\"Quia maxime libero consequatur cumque enim ducimus. Possimus explicabo repudiandae neque ea minima in quibusdam. Ut sapiente illum aperiam saepe esse. In rem autem omnis voluptatem.\"}', 'text', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(40, 7, 190, '{\"en\":\"Vel beatae id et vel. Quia tempora harum quaerat voluptas impedit dolore voluptate. Perferendis inventore eius consequatur nihil eum libero quia.\",\"ar\":\"Deserunt pariatur commodi earum et tempore libero eveniet nam. Qui omnis aut eos quisquam veniam veritatis. Nesciunt possimus rerum consequatur. Provident perferendis id aut voluptatibus repellendus illo.\"}', 'video', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(41, 7, 191, '{\"en\":\"Maxime aperiam fuga incidunt fuga porro minus. Qui sed perspiciatis in. Deleniti ullam quam magni repellat. Quam natus et quam consequatur.\",\"ar\":\"Et enim distinctio quaerat quo. Suscipit enim est rerum quis ipsum voluptas cumque. Nulla rerum reprehenderit rerum et voluptatem. Harum cumque quis dignissimos architecto explicabo.\"}', 'video', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(42, 7, 192, '{\"en\":\"Aut cum exercitationem fugiat eaque libero neque ipsum. Voluptas quas eos voluptates repellat et placeat. Quos omnis excepturi corporis adipisci. Quo quidem voluptatem unde saepe. Est est natus consequatur dolor delectus voluptatibus ad quam.\",\"ar\":\"Ratione voluptates eos qui sit animi vel laborum. Sequi dolore eos et maxime provident facere placeat dolore. Dolores nihil consequatur dicta et quo aut.\"}', 'text', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(43, 7, 193, '{\"en\":\"Exercitationem amet ea et non voluptas illo. Totam ullam iste culpa debitis illo et. Laborum nobis corrupti cumque ipsum.\",\"ar\":\"Eum beatae ipsam quod possimus sunt earum eos. Odio ullam aperiam temporibus nihil. Aut quidem est non quas. Sint voluptatem eos sit voluptas omnis qui quidem neque.\"}', 'image', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(44, 7, 194, '{\"en\":\"Deserunt eum perferendis aut. Fuga omnis provident ratione veritatis. Repellat voluptatem excepturi adipisci et nihil aut. Esse laboriosam soluta a eveniet quia omnis. Sequi qui aut delectus.\",\"ar\":\"Quo ratione aliquid doloremque facere. Et et maiores culpa laudantium a et voluptas quia. Vitae libero eveniet eos dolorem minus ea vel. Minus ratione consequuntur autem ducimus est facere eos.\"}', 'text', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(45, 8, 220, '{\"en\":\"Non dolorum et qui omnis. Accusamus libero numquam rerum ipsum temporibus dolores. Vitae provident blanditiis enim quod. Nihil est ut molestiae suscipit.\",\"ar\":\"Quia qui et natus nemo impedit. Ut at mollitia odit explicabo illo quae non. Unde eius maxime est commodi aut. Eius dignissimos tenetur sed temporibus molestiae delectus distinctio pariatur.\"}', 'text', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(46, 8, 221, '{\"en\":\"Ea suscipit ducimus rerum quos. Culpa expedita consequatur deleniti voluptates. Odit quibusdam unde quam eaque iusto sint voluptatem veniam. Quo et aut tenetur veritatis placeat voluptatem sint.\",\"ar\":\"Expedita ratione pariatur laudantium vero. Architecto ab magni hic eos labore aliquid voluptatem quidem. Asperiores molestias reprehenderit quisquam nam veniam voluptatibus.\"}', 'image', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(47, 8, 222, '{\"en\":\"Assumenda eos voluptatem et officiis. Facere quaerat quia consequatur ut. Sed amet sunt harum est. Et atque exercitationem est tenetur quis non. Consectetur id non deleniti cum minus.\",\"ar\":\"Quas non ullam porro quisquam tempora neque. Et ipsam architecto qui sunt. In est adipisci commodi dolores.\"}', 'image', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(48, 8, 223, '{\"en\":\"Corporis voluptas quos aut numquam voluptatem. Nostrum et iure numquam dolorem aut magni rerum. Dolores porro fuga id dolorem quod quia repudiandae.\",\"ar\":\"Nemo ut et id. Odit quae rem error voluptatibus quasi reprehenderit eos. Ut iusto aut consequatur fugiat consequatur itaque.\"}', 'video', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(49, 8, 224, '{\"en\":\"Minima dolorem ipsum aut et distinctio. Voluptatem beatae ea numquam quis. Corporis omnis blanditiis voluptas cum. Fugiat qui ut et occaecati nihil nisi exercitationem.\",\"ar\":\"Id qui ratione odit incidunt nesciunt sunt in qui. Recusandae dolore et debitis autem excepturi autem. Et quam sed est beatae.\"}', 'image', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(50, 8, 225, '{\"en\":\"Magni quam assumenda enim corrupti rerum aut esse. Voluptas aliquid consequatur est saepe pariatur nemo atque. Nisi quam quam ipsam nostrum. Sit et iusto temporibus voluptatum accusantium doloremque. Autem reiciendis maiores sit qui repudiandae nobis.\",\"ar\":\"Commodi quae dolorem non nostrum pariatur beatae. Sed veniam voluptatibus deleniti molestiae. Dolor occaecati sed dolores rerum non unde. Aliquam occaecati molestiae debitis.\"}', 'image', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(51, 8, 226, '{\"en\":\"Error autem recusandae vel et numquam voluptas ad. Eaque perspiciatis vitae odio et numquam aliquid. Non dolorem vel inventore quod. Earum similique ut non iusto totam.\",\"ar\":\"Cumque id autem beatae laboriosam. Totam vel nulla modi ut numquam. Eum magnam debitis corporis praesentium asperiores. Qui et aut ea officiis dolores.\"}', 'image', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(52, 8, 227, '{\"en\":\"Ducimus in ut vero dolorem nesciunt. Natus aut odio ut qui. Voluptatem et assumenda est assumenda dignissimos sapiente.\",\"ar\":\"Consequatur voluptate maxime nulla tempora sint repellat. Accusantium similique blanditiis ut eum enim. Accusamus quam delectus aut minima qui eius beatae.\"}', 'video', '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(53, 9, 247, '{\"en\":\"Voluptatem et ut sunt. Et odio ut deleniti voluptatem molestiae quo sed. Quis est minima ipsa repudiandae ut.\",\"ar\":\"Dolor autem laborum quod harum hic cum. Omnis voluptatum debitis voluptatum unde enim. Rerum corporis neque velit nisi quod eaque. Blanditiis numquam et minus excepturi. Voluptate et quo libero.\"}', 'text', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(54, 9, 248, '{\"en\":\"Assumenda exercitationem eligendi qui voluptatum consequatur. Fugiat est voluptas quae molestiae. Voluptate et repellendus quia doloribus earum sunt. At voluptatum voluptatibus quis. Eum facere dolores eveniet quos deserunt.\",\"ar\":\"A aspernatur vel commodi exercitationem sed et corporis est. Asperiores et ad minima quisquam voluptatum nisi id. Ut sit velit et enim illum qui sunt ducimus. Odio eos atque amet velit.\"}', 'image', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(55, 9, 249, '{\"en\":\"Sunt ipsum quasi qui quidem. Dolores fuga quam nobis dicta quibusdam non inventore. Placeat dolorem id ipsam sit facilis. Quos et commodi amet sed odio fugit.\",\"ar\":\"Pariatur voluptatem quasi soluta quaerat dicta quibusdam. Excepturi maxime perferendis sapiente occaecati placeat earum autem delectus. Quibusdam alias debitis quasi aut accusantium iste quas officiis. Eligendi accusamus iusto voluptate dicta nisi consequatur incidunt omnis.\"}', 'image', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(56, 9, 250, '{\"en\":\"Qui dolorem qui neque perferendis placeat. Fugit dignissimos quisquam nemo. Ipsum expedita qui qui accusamus placeat similique officia. Assumenda eveniet aut et ipsam iste nulla.\",\"ar\":\"Minima pariatur consequatur et. Quia nemo repellat dolorum qui suscipit qui. Est temporibus est nesciunt ea nam tempore. Cupiditate laborum cumque rerum repellat.\"}', 'image', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(57, 9, 251, '{\"en\":\"Voluptatem incidunt eveniet nobis officia inventore et porro. Amet unde aliquid qui eos optio. Illum repellendus doloremque earum vel aut dolores.\",\"ar\":\"Quae qui ipsam quia non totam qui quo. Autem accusantium est et sunt. Veritatis harum suscipit dolorum velit quisquam earum consequuntur.\"}', 'video', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(58, 9, 252, '{\"en\":\"Repellendus esse aut aut quibusdam voluptatem sit odit. Voluptas officia ut aliquam maxime. Reiciendis deserunt error repellendus laborum corporis quas officia quis. Nobis error similique officiis labore.\",\"ar\":\"Necessitatibus quia labore recusandae ut adipisci incidunt omnis. Aut voluptatem voluptas facilis et consequatur labore suscipit quibusdam. Ipsa mollitia eum repudiandae illo cumque. Optio eum sint explicabo dolor ut omnis.\"}', 'image', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(59, 10, 277, '{\"en\":\"Beatae illo aut facilis culpa quod voluptatem natus. Consectetur aspernatur ipsum illo ut. Unde cumque distinctio explicabo optio assumenda.\",\"ar\":\"Voluptatem impedit voluptatem harum vitae voluptate beatae nemo quidem. Cupiditate voluptate nesciunt quasi eos. Explicabo sint neque aut sunt nemo expedita et. Perferendis esse voluptatem odio aperiam sit. Dolores velit itaque ad nihil laudantium pariatur aut.\"}', 'text', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(60, 10, 278, '{\"en\":\"Necessitatibus dolorem et ad ex natus modi. Voluptatibus nihil blanditiis rem culpa eveniet ipsum magni unde. Aspernatur eaque ea aperiam qui inventore veritatis pariatur possimus. Inventore assumenda error et ullam et.\",\"ar\":\"Itaque ad qui enim molestiae. Temporibus vero cum consequatur id esse. Aliquid voluptatem quaerat non corrupti earum reiciendis sequi. Ullam vitae in vitae mollitia vero ea culpa eos.\"}', 'text', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(61, 10, 279, '{\"en\":\"Voluptas quia nobis ut sequi qui. Tempore sit nostrum magni voluptatem corrupti. Officiis voluptas architecto aperiam dolore minus.\",\"ar\":\"Laborum dolorem sit quo perferendis excepturi ducimus voluptatem. Enim temporibus quos voluptatibus ut rerum voluptatibus. Rem accusantium dicta laborum dicta nostrum. Dignissimos officiis ipsam sequi similique illo voluptatem quos.\"}', 'video', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(62, 10, 280, '{\"en\":\"Sed aut eaque adipisci. Magni quasi facere itaque ut quam. Sequi perspiciatis omnis et quia aut. Sit magnam quo sunt minus.\",\"ar\":\"Nesciunt nihil dolorum dignissimos est. Voluptatem voluptatem totam aperiam architecto consectetur placeat. Maxime dolorum accusamus aperiam nam asperiores. Exercitationem nihil ipsam voluptatem corporis.\"}', 'video', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(63, 10, 281, '{\"en\":\"Sed eveniet labore dolore ut. Omnis libero quidem temporibus quia eligendi. A id molestias officia et. Possimus a ad optio.\",\"ar\":\"Animi sit qui placeat doloribus ipsum sit. Neque id animi libero nesciunt ex recusandae in quo.\"}', 'video', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(64, 10, 282, '{\"en\":\"Blanditiis aut ex adipisci ut corporis assumenda. Nam quia quia animi. Natus voluptate et voluptatem ut. Aut iste sunt non reprehenderit voluptate voluptatibus consectetur.\",\"ar\":\"Minus dolores odio ut laboriosam explicabo. Fugiat a est ducimus nemo ullam maxime. Dolor aspernatur officiis praesentium repellat exercitationem aliquid. Ut sint eius ut et deleniti.\"}', 'video', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(65, 10, 283, '{\"en\":\"Voluptatem tenetur quis nam rerum consequuntur dolorem. Dicta deleniti molestiae et et aut dolor quia.\",\"ar\":\"Ex qui aliquam sint nihil quam velit tenetur. Similique laudantium quis quia debitis sapiente ab maxime rerum. Magni inventore dicta animi minima omnis. Laboriosam cumque ut modi sunt.\"}', 'text', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(66, 11, 298, '{\"en\":\"Itaque culpa aspernatur aut iure. Placeat dolorum autem dolores dolores maiores ut delectus provident. Suscipit magnam repudiandae fugiat et repudiandae qui.\",\"ar\":\"Facilis minus eaque quod quas maxime. Numquam nesciunt nihil eligendi laboriosam. Facilis fugiat dignissimos expedita.\"}', 'text', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(67, 11, 299, '{\"en\":\"Veniam in dolores qui eos minima amet. Repellendus optio libero eaque ea quia eum molestiae.\",\"ar\":\"Aut quis quaerat cupiditate in. Quas nulla expedita tempore non debitis. Soluta ipsam possimus fuga deserunt provident voluptatibus est vitae.\"}', 'image', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(68, 11, 300, '{\"en\":\"Facilis debitis maxime esse nesciunt totam sunt. Vel inventore et voluptatem explicabo officia voluptas. Ipsum aliquid facere aut eius fugiat optio. Dolor in maxime et est ab sapiente nisi ducimus.\",\"ar\":\"Aut facilis ex aut vel fuga. Ratione velit sint impedit totam. Nobis quo nesciunt vitae.\"}', 'video', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(69, 11, 301, '{\"en\":\"Enim veritatis error eum est voluptas molestiae. Eum pariatur blanditiis consectetur reprehenderit dicta dolores quam. Est dolore excepturi et accusamus. Ut quo voluptatem saepe consequuntur ab aut provident.\",\"ar\":\"Dolor id dolore omnis. Unde iure ad qui dolores voluptas vel. Dolores doloribus veritatis quis quo et doloribus.\"}', 'text', '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(70, 12, 309, '{\"en\":\"Iusto non fuga distinctio labore corporis quis velit. Quidem cum delectus soluta eum. Ut delectus vero exercitationem corrupti. Id rerum recusandae voluptas sit consequatur non.\",\"ar\":\"Dicta blanditiis quae deserunt dolorum ut dolorum tenetur. Eum qui quis nam dolor. Repudiandae illo eos mollitia in officiis facere omnis aut. Quas magnam sit officia qui tenetur.\"}', 'text', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(71, 12, 310, '{\"en\":\"Quia voluptate culpa culpa voluptates. Deserunt veniam dolores amet iste et officia mollitia. Et dolorem et repellendus accusamus dolorem. Perspiciatis aut ut assumenda.\",\"ar\":\"Aperiam ea est libero cumque. Quis quidem amet voluptate est. Tenetur voluptates animi accusamus reprehenderit non nam ducimus. Est ut sequi quae aspernatur suscipit ea est consequatur.\"}', 'text', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(72, 12, 311, '{\"en\":\"Quibusdam quia suscipit et similique maxime. Est quam natus repellat iure possimus corrupti et. Porro aut deleniti tempore porro ea unde optio quam. Pariatur voluptatem rerum omnis vero saepe.\",\"ar\":\"Qui est hic et qui adipisci voluptas cupiditate. Laudantium ex expedita nemo quod perferendis. Sed possimus quis mollitia doloribus rerum non.\"}', 'image', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(73, 13, 319, '{\"en\":\"Asperiores aut repellat tenetur minus exercitationem. Enim aspernatur tempore doloribus velit fugit dolores eos. Aliquam distinctio sit sunt est. Animi ut porro similique id et consequatur eveniet repellat.\",\"ar\":\"Et excepturi expedita quidem aut doloribus autem. Perferendis excepturi rerum sit consectetur sequi. Accusantium mollitia libero amet. Est ut perferendis quia et odit.\"}', 'text', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(74, 13, 320, '{\"en\":\"Incidunt exercitationem sed qui magnam qui autem. Eligendi est amet dignissimos ut maxime. Autem asperiores unde sit rerum maiores quibusdam possimus.\",\"ar\":\"Iste exercitationem et temporibus eos. Iste harum doloribus architecto illum cumque omnis qui. Sit sit qui quisquam tempore nihil.\"}', 'image', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(75, 13, 321, '{\"en\":\"Sint quia totam sapiente culpa iste totam nesciunt nisi. Odit qui ut rerum pariatur tempore. Et praesentium perferendis alias aut rerum.\",\"ar\":\"Ratione dolorem repellat officiis aut et dolorem. Minima eveniet consequatur soluta dolor incidunt nam. Eaque ex voluptate dolorem omnis qui quod.\"}', 'image', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(76, 13, 322, '{\"en\":\"Est eaque facilis vitae. Modi et ut enim corrupti. Perferendis et veniam doloremque magni omnis doloribus qui. Iste error aliquid iste quis qui voluptas.\",\"ar\":\"Ex vel alias molestiae suscipit tenetur at temporibus. Architecto sed quia omnis architecto facilis. Asperiores facere similique aliquam nobis veniam sint. Sunt et inventore aut sed eaque ex perferendis.\"}', 'text', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(77, 13, 323, '{\"en\":\"Reprehenderit quia voluptatem et sequi est. Ratione dolore autem nesciunt consectetur laborum vero. Quisquam et aperiam omnis amet aut magni. Accusantium voluptatem praesentium labore ab culpa placeat. Rem cupiditate sunt velit dignissimos.\",\"ar\":\"Architecto sunt saepe eum repellendus. Voluptatem nisi nobis eius autem veritatis sunt. Quisquam nihil possimus ut maiores tempora quidem animi. Laborum error ea eligendi pariatur dolor quia corrupti. Et a quaerat est odio atque earum.\"}', 'text', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(78, 13, 324, '{\"en\":\"Eligendi nihil possimus facilis veritatis sunt dolores quia doloribus. Esse dolorem et inventore illum nihil commodi similique. Accusamus voluptatem deserunt tempore aut. Nesciunt sit ea quis laborum.\",\"ar\":\"Est quas culpa voluptatibus. Aut ipsum aut tenetur deserunt.\"}', 'image', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(79, 14, 337, '{\"en\":\"Similique quis magnam ut architecto ex voluptatem animi. Ex qui deleniti porro. Et laborum minus perferendis modi ut explicabo.\",\"ar\":\"Omnis eum sed nam aperiam optio. Deleniti doloremque iure assumenda aperiam. Sed voluptatem quos deleniti saepe rem. Eos quae beatae sint delectus suscipit maxime et.\"}', 'text', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(80, 14, 338, '{\"en\":\"Ea recusandae esse tempora facere. Sed earum tempore rerum dolorem. Sint sit sit ab. Ut praesentium commodi in.\",\"ar\":\"Blanditiis voluptas neque qui mollitia alias. Impedit eos eaque dolorem ipsam quia laudantium voluptas corporis. Quaerat enim eius laudantium enim maxime. Labore tenetur eos et in maxime assumenda qui ad. Quaerat voluptates facilis laboriosam.\"}', 'text', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(81, 14, 339, '{\"en\":\"Qui provident velit quos repellat ut laborum fugit. Praesentium aperiam et laborum ipsum error beatae. Consectetur et quam totam nesciunt totam.\",\"ar\":\"Porro molestias sit consequuntur velit labore inventore est. Asperiores quos iste quia maxime expedita occaecati. Hic illo id adipisci.\"}', 'video', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(82, 14, 340, '{\"en\":\"In illo reprehenderit accusamus rerum ut ducimus molestias ad. Ratione quo dicta a at autem odio. Odio dolorem et qui numquam itaque quidem maiores.\",\"ar\":\"Id blanditiis enim unde magni omnis. Temporibus dolorem sint recusandae autem sit dignissimos qui. Sit amet sequi ut ut occaecati assumenda sit dignissimos. Quam dolores quo exercitationem eum.\"}', 'video', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(83, 14, 341, '{\"en\":\"Id voluptatem nulla autem. Eum distinctio ut et similique dolor dolor. Excepturi libero quas id ad aut distinctio.\",\"ar\":\"Sapiente dolores ipsum aliquam ducimus sapiente. Qui saepe explicabo maxime ad sed qui. Enim ad reprehenderit corporis ut voluptatem omnis. Non fugiat sunt ea repudiandae. Alias ab voluptas voluptas tempora ut ut qui.\"}', 'text', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(84, 15, 357, '{\"en\":\"Recusandae et quia eos qui quasi maxime. Modi qui nihil nisi illum libero non esse.\",\"ar\":\"Impedit quasi ut nihil voluptas dolores et. Libero velit nihil quia aut perspiciatis est quia. Mollitia qui enim dolor eum laudantium corporis.\"}', 'video', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(85, 15, 358, '{\"en\":\"Repellendus aliquam inventore sit ut. Dolor sed tenetur incidunt necessitatibus. Expedita aut eos vel dolor itaque.\",\"ar\":\"Perferendis debitis culpa et illum sequi quis minima. Quia aliquam qui molestias quae nihil harum. Id aut tenetur enim. Omnis et unde et voluptas.\"}', 'video', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(86, 15, 359, '{\"en\":\"Inventore quis inventore nisi perferendis beatae omnis. Quia aperiam architecto ab optio quo. Sunt blanditiis recusandae odit tenetur.\",\"ar\":\"Sit ut perspiciatis error et iure. Sed laboriosam dignissimos fugit incidunt molestiae qui rem architecto. Deleniti error magnam et saepe. Eum mollitia repellat ut mollitia ut. Dolor quo maiores architecto sit.\"}', 'video', '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(87, 15, 360, '{\"en\":\"Et est repellendus enim ut. Consequatur voluptate perspiciatis voluptas tempora non consequatur necessitatibus et. Excepturi dolore officia esse ut aut sunt quo at. Sit et dolorem dolore voluptatem deleniti voluptatibus.\",\"ar\":\"Ea alias ipsa voluptatum accusantium nesciunt. Sapiente nihil nihil labore vitae ut ipsum. Quia error velit nemo officiis. Quibusdam sed corrupti pariatur fuga consequatur et.\"}', 'text', '2026-02-03 14:32:52', '2026-02-03 14:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_user`
--

INSERT INTO `post_user` (`post_id`, `user_id`) VALUES
(14, 1),
(36, 1),
(2, 2),
(24, 2),
(64, 2),
(5, 3),
(29, 3),
(12, 5),
(1, 6),
(8, 6),
(10, 6),
(20, 7),
(22, 7),
(1, 9),
(35, 9),
(24, 10),
(34, 11),
(38, 12),
(3, 14),
(25, 15),
(12, 16),
(5, 17),
(1, 18),
(13, 18),
(4, 19),
(13, 22),
(11, 23),
(12, 23),
(16, 23),
(25, 23),
(27, 23),
(53, 23),
(1, 24),
(69, 24),
(3, 25),
(18, 25),
(46, 26),
(84, 26),
(40, 28),
(45, 28),
(55, 28),
(76, 28),
(27, 29),
(72, 31),
(12, 32),
(13, 34),
(9, 36),
(11, 36),
(1, 37),
(36, 38),
(24, 40),
(6, 41),
(19, 41),
(27, 41),
(71, 41),
(4, 42),
(10, 42),
(33, 43),
(2, 44),
(33, 44),
(52, 45),
(51, 48),
(43, 49),
(29, 50),
(82, 51),
(21, 53),
(21, 54),
(28, 54),
(47, 54),
(72, 54),
(8, 55),
(14, 56),
(38, 56),
(63, 57),
(46, 58),
(48, 58),
(59, 58),
(11, 60),
(7, 62),
(68, 62),
(15, 63),
(20, 63),
(35, 63),
(35, 65),
(78, 65),
(13, 66),
(72, 66),
(7, 68),
(29, 68),
(75, 68),
(14, 69),
(22, 69),
(29, 70),
(43, 70),
(10, 71),
(62, 72),
(82, 73),
(25, 74),
(13, 75),
(61, 76),
(30, 78),
(17, 81),
(74, 81),
(12, 82),
(67, 82),
(86, 83),
(11, 84),
(40, 84),
(33, 86),
(62, 86),
(74, 86),
(78, 86),
(30, 87),
(41, 87),
(46, 87),
(73, 87),
(22, 88),
(44, 88),
(28, 89),
(11, 90),
(83, 90),
(83, 91),
(14, 94),
(21, 94),
(40, 94),
(75, 95),
(26, 96),
(43, 96),
(66, 97),
(26, 98),
(45, 98),
(20, 101),
(57, 103),
(81, 105),
(28, 106),
(37, 106),
(45, 106),
(64, 106),
(20, 107),
(23, 107),
(15, 109),
(17, 110),
(21, 110),
(31, 112),
(34, 113),
(82, 116),
(34, 117),
(54, 118),
(33, 119),
(27, 120),
(56, 120),
(36, 122),
(55, 122),
(71, 122),
(37, 124),
(61, 124),
(20, 126),
(73, 126),
(68, 127),
(25, 129),
(83, 129),
(26, 130),
(44, 130),
(21, 131),
(22, 131),
(52, 131),
(62, 131),
(32, 133),
(65, 133),
(83, 133),
(45, 134),
(69, 134),
(62, 135),
(39, 137),
(35, 139),
(32, 140),
(78, 140),
(47, 141),
(48, 141),
(41, 142),
(62, 148),
(65, 149),
(42, 150),
(26, 151),
(29, 151),
(48, 155),
(30, 156),
(38, 156),
(70, 156),
(46, 157),
(33, 158),
(52, 158),
(80, 158),
(38, 161),
(63, 161),
(30, 163),
(59, 163),
(77, 163),
(72, 164),
(43, 171),
(60, 172),
(58, 174),
(37, 177),
(50, 177),
(47, 178),
(34, 180),
(80, 186),
(47, 189),
(37, 190),
(73, 193),
(83, 194),
(79, 196),
(59, 197),
(40, 199),
(76, 201),
(53, 202),
(41, 209),
(61, 210),
(79, 212),
(55, 216),
(57, 218),
(61, 220),
(47, 224),
(49, 225),
(50, 226),
(74, 226),
(65, 230),
(55, 232),
(69, 233),
(56, 238),
(58, 238),
(63, 245),
(63, 246),
(68, 246),
(86, 247),
(64, 248),
(59, 253),
(64, 254),
(69, 256),
(76, 257),
(84, 260),
(64, 268),
(65, 268),
(81, 270),
(78, 276),
(85, 276),
(60, 278),
(75, 278),
(78, 278),
(75, 287),
(65, 294),
(82, 308),
(82, 314),
(79, 341),
(80, 344),
(87, 349);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(2, 'admin', 'web', '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(3, 'mentor', 'web', '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(4, 'student', 'web', '2026-02-03 14:32:47', '2026-02-03 14:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
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
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('83H9zObxYoRkp3pjQA1PcDeDGSA43XyG2e88mfkr', NULL, '198.235.24.25', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHpxdU1NQWNsOURCeFpLcTJ2ekdtSDBFa0ZCTEhYOHRidFBrWmpLRyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vdG9iZS50ZWFtcWVlbWF0ZWNoLnNpdGUiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1773067771),
('ILIqwewwgo1MVek8rEdoXJNK7R30HPvT8d9ALOZu', NULL, '34.68.112.172', 'Mozilla/5.0 (compatible; CMS-Checker/1.0; +https://example.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDZreFpJVVp5djloOWhzajFBRTVVdDJnMkdxVDlUZHJLS012S0s2SyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly90b2JlLnRlYW1xZWVtYXRlY2guc2l0ZSI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1773068901),
('KXB4CYquXbzA30Y7sniNIN4sLgIEb8ErQYwLwEsM', NULL, '74.7.243.245', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.3; +https://openai.com/gptbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREFFM1RlZkNFeWk2Z1BNTDBYQmloMFpxZWNESjNtWE05TXliUVFaWSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vd3d3LnRvYmUudGVhbXFlZW1hdGVjaC5zaXRlIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1773028694),
('RDewQK0gsJSjaga5vxI1iGgh7PvrueA2WaCLEIOk', NULL, '198.235.24.155', 'Hello from Palo Alto Networks, find out more about our scans in https://docs-cortex.paloaltonetworks.com/r/1/Cortex-Xpanse/Scanning-activity', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibENWOFd3QktBS28wdGhJTWtEOVFKZEZRYktINzBETXdObG94aDFZOCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vd3d3LnRvYmUudGVhbXFlZW1hdGVjaC5zaXRlIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1773028519);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` enum('withdrawal','deposit') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `phone_number_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `fcm_token`, `phone_number_verified_at`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `points`) VALUES
(1, 'Abdo Khaled', 'abdo@tobe.com', '09123456789', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$S3DdE2R86ToL35wLi589LOMs3Uyw.9XrIwiJ2F6fwltoNIAeVcx0.', NULL, '2026-02-03 14:32:47', '2026-02-11 13:06:28', 0),
(2, 'Miss Ocie Wuckert Sr.', 'krystal.cassin@example.net', '09786769442', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'EinxOLK1lh', '2026-02-03 14:32:47', '2026-02-09 11:03:44', 0),
(3, 'Mossie Aufderhar', 'pbahringer@example.org', '09186371969', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'T9wdAfjYfl', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(4, 'Reggie Ruecker', 'lind.catalina@example.net', '09497702755', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '2m9qgaggcJ', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(5, 'Prof. Jerod Kutch III', 'demetris55@example.org', '09178015717', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'FDivfuEBCg', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(6, 'Guido Huels', 'lenny90@example.com', '09261846963', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '49jnQeYlQh', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(7, 'Prof. Maximilian Ondricka', 'alycia.koss@example.com', '09070928273', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'co4c5V2lF5', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(8, 'Marianne Cole', 'josianne23@example.org', '09969795648', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'dFO5wcMiKU', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(9, 'Dr. Sydnee Will III', 'aubree05@example.com', '09036968633', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'tLMH5rwRpi', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(10, 'Mozelle McClure', 'antonia15@example.com', '09344191617', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'T01ymP2cg1', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(11, 'Jacinto Okuneva', 'ella25@example.com', '09601389349', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'FC0QnUDNek', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(12, 'Cleora Miller', 'nya49@example.net', '09835701526', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'VNYalBWV4T', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(13, 'Dr. Joshuah Larson PhD', 'bernhard42@example.net', '09821760900', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'F8Hd3MXEwa', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(14, 'Ms. Dorothy Gislason DVM', 'rosina61@example.org', '09226336224', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'h4a27Crj3x', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(15, 'Aurelie Klocko', 'andre04@example.com', '09934410987', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'BuwcOMnJlt', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(16, 'Vito Emard', 'zoey90@example.org', '09139094099', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'vkFp9dUO7g', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(17, 'Dr. Joany Sauer', 'jnicolas@example.org', '09431782391', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '3sriQiyO3i', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(18, 'Kenny Dare Jr.', 'juliana.schowalter@example.org', '09853496135', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'sI5Cwm9ZHS', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(19, 'Hilma Hill', 'annette.hyatt@example.net', '09275822462', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'qKSRlHZmQh', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(20, 'Zack Bradtke', 'kathlyn59@example.com', '09429645872', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '42IZfNqyoO', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(22, 'Francesca Lowe', 'schmitt.florine@example.net', '09884312079', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'QHWvHxymUJ', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(23, 'Heloise Farrell', 'yrussel@example.net', '09378147929', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'hBmlgJqR9Z', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(24, 'Christine Thiel', 'nbernier@example.net', '09148706807', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'ivYJ06womY', '2026-02-03 14:32:47', '2026-02-03 14:32:47', 0),
(25, 'Hal Krajcik', 'gutmann.larue@example.org', '09656571440', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '3ELn3wqq1c', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(26, 'Osvaldo Reilly', 'marge79@example.com', '09780553603', NULL, NULL, '2026-02-03 14:32:47', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'uuD5GJyzFo', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(27, 'Mckenzie Bergnaum', 'pmcdermott@example.com', '09340026182', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'aPpabJKmuc', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(28, 'Odell Connelly', 'queen97@example.org', '09175728369', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'rMFqllMnYr', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(29, 'Mr. Monty Wisozk IV', 'sipes.arjun@example.net', '09721910095', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Uw2nipiivO', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(30, 'Mandy Miller', 'imelda.sauer@example.com', '09892792412', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Sh0QvNCDuH', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(31, 'Gianni Beatty', 'marcella.kerluke@example.net', '09940619643', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '3sdHwCnaJN', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(32, 'Odie Hessel', 'sanford.olin@example.com', '09026521886', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'PIcD7lgGeS', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(33, 'Mrs. Margarita Greenfelder', 'wilkinson.noemi@example.org', '09928574051', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'bmZ9WljAes', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(34, 'Lucio Rogahn', 'lindgren.carey@example.org', '09351030378', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'WGonrbZHCY', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(35, 'Dayana Willms I', 'zmayer@example.com', '09093095566', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '9Ux6m7gOdM', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(36, 'Mr. Deondre Blick', 'bradly.durgan@example.com', '09878154267', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 't5sHmPGdsO', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(37, 'Retha Cummings', 'virgie70@example.org', '09779339076', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Ue0UvZuAAt', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(38, 'Myles Walker', 'okshlerin@example.com', '09189565461', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'mhGwIMEwnp', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(39, 'Maritza Glover', 'cristobal33@example.net', '09981769373', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'uqPvzLHzFM', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(40, 'Kenyon Okuneva DVM', 'charles11@example.com', '09847485952', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '13mpaiX0Wn', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(41, 'Sebastian Zemlak', 'earlene.willms@example.com', '09850274313', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'iMybDgJ8eT', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(42, 'Mrs. Nedra Feil DVM', 'yjohnston@example.net', '09433868379', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'G5TdAiW8J1', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(43, 'Stephon Keeling III', 'griffin.hahn@example.net', '09329861232', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'KalgCDYCEH', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(44, 'Jaren DuBuque', 'ohansen@example.org', '09113183636', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Bam7Pc4rGf', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(45, 'Mrs. Ardith Hamill V', 'keely17@example.net', '09326517287', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'kwpedczOtk', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(46, 'Prof. Francisco Stracke', 'geraldine.hoeger@example.org', '09912215605', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'RdMfXn8uBh', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(47, 'Dr. Elisa Gorczany IV', 'aglover@example.net', '09315666669', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'uwWYcWBQpb', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(48, 'Lela Fadel', 'vada32@example.org', '09704186804', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '920S3BFO5k', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(49, 'Florine Wisozk', 'gfeeney@example.net', '09471043809', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'cvd3gi6ldT', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(50, 'Dr. Abbey Schmeler', 'andreanne.dubuque@example.com', '09080630522', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'KbbKxCw7vt', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(51, 'Chance Harvey', 'cleo.bartell@example.net', '09847331710', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'vYlv0gtVE8', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(52, 'Einar Kreiger', 'jasmin.senger@example.org', '09682284472', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'hm0jXMgVPg', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(53, 'Gust Sipes', 'orn.bo@example.com', '09843995830', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'nlx4ENLhmu', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(54, 'Rickey Bartoletti', 'hoppe.megane@example.org', '09757361254', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'vUwZWYHYVB', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(55, 'Millie Schinner', 'micah51@example.org', '09145765996', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'T7l4s2OQxz', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(56, 'Prof. Mackenzie Streich', 'carlo.donnelly@example.com', '09772371501', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'kq0laV6XDP', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(57, 'Neha Conn', 'mittie.kutch@example.org', '09731574504', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'iOZ2WwwCsY', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(58, 'Hector Beer', 'anabelle37@example.org', '09351408250', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'rmC0gUTLgT', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(59, 'Naomi Homenick', 'bmcglynn@example.net', '09894017006', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'z6PrJwGEoX', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(60, 'Lamont Sawayn', 'ccronin@example.org', '09212976573', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'vBpgIRnCjt', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(61, 'Dr. Nelle Kshlerin MD', 'kayden.tillman@example.com', '09956299753', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '0WJANgv6YA', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(62, 'Magnolia Beer IV', 'theo.ernser@example.net', '09404797715', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'NJ2E7Ks3dY', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(63, 'Evangeline Spinka MD', 'estefania.runolfsson@example.org', '09425421176', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'mwqYXGrfnv', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(64, 'Gonzalo Daugherty III', 'jhegmann@example.org', '09175651258', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'SdlIOfmooq', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(65, 'Horacio Stamm DVM', 'brain.zieme@example.org', '09828720053', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'uKEKLvMx4n', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(66, 'Jan Collier', 'mreynolds@example.net', '09480858550', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'O6yRaVbBmj', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(67, 'Dr. Jerel Bruen', 'reynolds.brett@example.org', '09567328773', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'hHYV895Wu8', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(68, 'Mr. Angus Barton', 'anibal.mcdermott@example.org', '09146172329', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '0u9HqsVPkz', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(69, 'Dr. Aron Oberbrunner II', 'champlin.theron@example.org', '09657143214', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'NuvGGXJqwz', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(70, 'Wanda Hills', 'kelly94@example.org', '09107477011', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'cKH5DzKS8F', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(71, 'Kaycee Tremblay', 'mertz.felix@example.com', '09252327178', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'dMosDl85Je', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(72, 'Merlin Pollich', 'sabina78@example.org', '09556757071', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '1JZxnKDkYi', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(73, 'Timmothy Ruecker', 'coleman.wilkinson@example.com', '09343768562', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'ZjjAUZUNCE', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(74, 'Mrs. Lisette Mann', 'abigayle.konopelski@example.com', '09965952170', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '37lNLg2k6w', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(75, 'Wilma Feest', 'blaze.sporer@example.com', '09549315224', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'wyp90V9HXM', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(76, 'Mrs. Rosetta Stehr III', 'mante.mariam@example.net', '09821635152', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Jrs4RtPMcL', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(77, 'Leopoldo Spinka', 'mayer.ryleigh@example.net', '09662381136', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'LlCIpCHpuv', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(78, 'Mr. Donato Pouros IV', 'madeline.ziemann@example.net', '09683213118', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'zY7pkwbhDM', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(79, 'Toby Kovacek', 'mia25@example.com', '09841551254', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'S2eDj9rh4x', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(80, 'Dejuan Considine', 'kiehn.myrl@example.org', '09481463816', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'reRXBwZjFK', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(81, 'Evert Roob', 'quincy.spinka@example.com', '09425582140', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'F9J1GSR8MC', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(82, 'Dr. Werner Windler', 'qdickinson@example.com', '09623773169', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '8tdH3bwMym', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(83, 'Mr. Urban Stanton PhD', 'lorenz.osinski@example.org', '09507461233', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Dc7rXS4tCU', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(84, 'Vincenza Ortiz', 'king.theo@example.org', '09530095137', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'pzLrzLeFZV', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(85, 'Megane Wyman', 'dicki.jackeline@example.org', '09385998807', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'yPw32H4Rpv', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(86, 'Wilford McClure', 'loyal52@example.net', '09289680002', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'hAS9ldYjUV', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(87, 'Alison Halvorson III', 'pwelch@example.com', '09682741850', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '29wqo6ZSdA', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(88, 'Sterling Parisian II', 'ngottlieb@example.net', '09934587987', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'ykvk8LZUjP', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(89, 'Granville Watsica MD', 'grant04@example.com', '09970453008', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '3CpfZtVGaF', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(90, 'Kamren Hamill', 'wbayer@example.org', '09477031186', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'FVdoablsoW', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(91, 'Prof. Camylle Goyette MD', 'patricia.vonrueden@example.com', '09679477884', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'NYRRdq24Y6', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(92, 'Nikko Jakubowski', 'webster27@example.org', '09909129117', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '6UTbygNX3F', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(93, 'Liza Rogahn', 'margret.cartwright@example.com', '09791671032', NULL, NULL, '2026-02-03 14:32:48', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'I3FxGJMbuq', '2026-02-03 14:32:48', '2026-02-03 14:32:48', 0),
(94, 'Isabelle Gerlach MD', 'marjorie.lebsack@example.com', '09737213425', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'q65n2S3lHK', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(95, 'Delphia Homenick III', 'goyette.mya@example.com', '09468661376', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'vSNteDWI2y', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(96, 'Dr. Eileen Cormier II', 'torrey30@example.org', '09543106951', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'wCvBJ5w5Pi', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(97, 'Judah Fay', 'derek46@example.org', '09298421907', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'tt4IgTAnGa', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(98, 'Dr. Major Considine', 'collins.shakira@example.org', '09052008996', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '7kqUX1tK5R', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(99, 'Felicita Langworth', 'diego48@example.org', '09447787949', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'RyWYVS1xzK', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(100, 'jdsgfsduvppd', 'updated-mentor@email.com', '01159175042', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$emRpxTpBjubJjL4ZA.pBHO3ljkhrxYT1LcS3Dca6HfZ8YxQZFW9by', 'hmk4ntDIkB', '2026-02-03 14:32:49', '2026-02-09 10:33:05', 0),
(101, 'Kaia Durgan', 'kuphal.zakary@example.com', '09244220661', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '6yWFzdj1kh', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(102, 'Dell Boehm', 'vivianne87@example.net', '09065786155', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'u7NBe5GmQX', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(103, 'Keven Schoen Sr.', 'cassie97@example.org', '09846949080', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '5P0eEqBZ2a', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(104, 'Miss Natalie Wunsch', 'brielle40@example.net', '09530589549', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'QNnuWUSAwU', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(105, 'Prof. Alana Torphy', 'cornelius93@example.net', '09524389953', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'ovKI1axvNE', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(106, 'Kayla Cassin', 'strosin.danielle@example.com', '09007942318', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'p70HND6xyk', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(107, 'Vernon Prohaska', 'merritt.botsford@example.com', '09568696508', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'eMWgexQhAK', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(108, 'Ally Steuber', 'twiegand@example.com', '09393072830', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'yTq5MV2LKg', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(109, 'Melany Bradtke', 'marina48@example.org', '09158256941', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'qet9Jeamil', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(110, 'Nash Nitzsche', 'garfield.bayer@example.org', '09588376281', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'kTfG5s5Mz5', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(111, 'Prof. Johnathan Metz III', 'tremblay.brian@example.org', '09513991543', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Kz0xpuEZoz', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(112, 'Shaina Kuvalis', 'sheridan.lockman@example.org', '09830529375', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'JIY4C1vduD', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(113, 'Crawford Renner', 'jarrett.bergstrom@example.org', '09742666869', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'j1G2eAYmra', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(114, 'Cortney Hayes', 'mquigley@example.org', '09382918939', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'VB12qQ0YsC', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(115, 'Derrick Hauck', 'gussie.senger@example.net', '09574946316', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'PR8F4uzQoZ', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(116, 'Tod Crist', 'verla.cummings@example.com', '09324826497', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'QWFkP72fCo', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(117, 'Elizabeth O\'Conner', 'brekke.rodrigo@example.org', '09797710168', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'McTtpVGDoD', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(118, 'Dustin Ernser', 'griffin22@example.com', '09710527113', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'r09W9c10Gr', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(119, 'Keith Flatley', 'emmet.mcclure@example.org', '09399220580', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'EGXyLYiM9A', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(120, 'Dina Ziemann', 'aliya32@example.net', '09592311942', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'tD0baNTvuv', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(121, 'Prof. Norberto Stiedemann', 'harris.keegan@example.net', '09498672610', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'jwQhV2bxAy', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(122, 'Aaron Schuppe', 'idella69@example.com', '09478814271', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'T50ODUf4gR', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(123, 'Dr. Christy Hirthe', 'kautzer.fae@example.net', '09589590770', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'NumVEeraUg', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(124, 'Junior Toy III', 'olson.royce@example.net', '09579734717', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '91zLYAqMNJ', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(125, 'Flavio Prosacco', 'mccullough.jasmin@example.net', '09671426671', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '4GEik4Yc6d', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(126, 'Dr. Natalie Lebsack DDS', 'marques71@example.net', '09491746839', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'xv93RyhUpX', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(127, 'Alaina Donnelly DDS', 'carlee.mcdermott@example.com', '09976982619', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'si4ttzwJx1', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(128, 'Denis Wilderman', 'lilliana47@example.com', '09489651109', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'UVqbMf2Wgg', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(129, 'Rocio Dickinson', 'turcotte.winston@example.org', '09702017522', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'p5Jb689EQf', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(130, 'Allene Beer', 'vfay@example.org', '09931299781', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'LaqQqBlwQq', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(131, 'Dr. Donald Lehner I', 'rahul.eichmann@example.com', '09328339681', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'ZzvaEYdS4q', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(132, 'Prof. Gavin Wintheiser', 'jonathan31@example.net', '09201248726', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'WRHQdfYJsT', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(133, 'Prof. Monty Homenick DVM', 'nicholaus.hodkiewicz@example.net', '09563816059', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'CaNSjH2xZp', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(134, 'Carlee Bednar', 'carmela32@example.com', '09774959676', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'ZQvipFF1xS', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(135, 'Mr. Dane Bruen Jr.', 'madelynn14@example.com', '09603604113', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '7yZYomZCXH', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(136, 'Fae Bergstrom', 'gennaro.cole@example.org', '09919091002', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'izCDZedMSm', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(137, 'Mr. Titus Keebler Jr.', 'nparker@example.net', '09745806951', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'YBmDO93QQO', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(138, 'Tavares Smitham', 'wherzog@example.org', '09127614190', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'qV7Trz9O8L', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(139, 'Dr. Rick Treutel', 'haley.abel@example.net', '09824911835', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '6THNUBZGrE', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(140, 'Miss Madeline Lockman Sr.', 'delfina86@example.net', '09509196787', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'AgzyL19EVx', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(141, 'Henderson Jones MD', 'tressie90@example.org', '09328926307', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'uoKoQ3G4bX', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(142, 'Olga Waelchi', 'thompson.benny@example.net', '09341660791', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'zJonXyVn3Z', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(143, 'Bernice Shanahan', 'qgerhold@example.net', '09281916771', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'KPxHI8Zt7w', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(144, 'Xzavier Crona', 'lionel79@example.com', '09199464660', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'KRUgk6v1iN', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(145, 'Kathryne Abbott', 'travon.fadel@example.org', '09873039939', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '9UItuclxbx', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(146, 'Prof. Roselyn Gutkowski III', 'mtreutel@example.net', '09473166387', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'JTYdKrNx0v', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(147, 'Hailie Robel', 'anais.kozey@example.org', '09581046661', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'HACVHwoCqo', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(148, 'Napoleon Koelpin', 'olga.hintz@example.net', '09313216282', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '4gSnzQV1M7', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(149, 'Miss Winnifred Crona', 'jarrell03@example.net', '09977575443', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'NBontB1yEF', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(150, 'Pascale Walsh', 'dell27@example.net', '09909175249', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Z84NA7aumt', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(151, 'Fredrick Weissnat', 'gloria.armstrong@example.org', '09027183191', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'ay4pA8FXkn', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(152, 'Miss Annie Runolfsson', 'jnolan@example.com', '09446103447', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '6ouDJ9Rm7k', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(153, 'Jade Buckridge DVM', 'vanderson@example.org', '09160800167', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'TkBOaKT9wQ', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(154, 'Ms. Lolita Roob IV', 'hollie.kuhic@example.net', '09295537046', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'FgOkC8NqIj', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(155, 'Verda Green', 'uoreilly@example.com', '09111617205', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'FmxGlHVqD5', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(156, 'Dr. Katrine Armstrong', 'bblanda@example.org', '09691829151', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'ka7x8IIitK', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(157, 'Curtis Schmidt', 'chad.buckridge@example.net', '09251842114', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'LFtIw5Yvai', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(158, 'Miss Shaina Aufderhar', 'daren.senger@example.org', '09309497193', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'uXPPJvcprH', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(159, 'Prof. Bethany Okuneva IV', 'smith.charlene@example.com', '09464693225', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'icAYJ9E6bB', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(160, 'Elvie Leuschke', 'junius.treutel@example.com', '09703766598', NULL, NULL, '2026-02-03 14:32:49', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'ur6kWCMCJ5', '2026-02-03 14:32:49', '2026-02-03 14:32:49', 0),
(161, 'Olin Kuhic III', 'donato.wunsch@example.net', '09615413656', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'wZbFR3kEct', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(162, 'Christian Franecki', 'cheyenne.ortiz@example.net', '09283063011', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Lp0KDizF3v', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(163, 'Henri Hettinger', 'charlie75@example.net', '09356619008', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'DoK38D00oX', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(164, 'Prof. Golda Jacobs', 'clint56@example.com', '09643311007', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'FSBpjW7Hkg', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(165, 'Miss Nedra Schiller', 'amara52@example.com', '09586728238', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '7YBuVt5NfP', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(166, 'Carol Gerlach', 'evalyn32@example.net', '09179827514', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'xaO9sml0W1', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(167, 'Prof. Hilton Klein III', 'janessa80@example.com', '09946378483', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'b6Dx3xMAoH', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(168, 'Golden Beer MD', 'kirk.rowe@example.com', '09026504307', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Udyfrricz9', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(169, 'Lizzie Parker', 'kshlerin.gavin@example.org', '09572518103', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'tPYwcq6H3V', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(170, 'Whitney Witting Sr.', 'zhauck@example.org', '09947690883', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '7IpA11diAy', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(171, 'Gino Reichel', 'qjakubowski@example.net', '09796158120', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '5DV0AKcTmj', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(172, 'Tavares Schaefer', 'fbednar@example.org', '09729442147', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'k4sc6JFoYI', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(173, 'Gisselle Rau', 'hailey.morissette@example.com', '09338793577', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'yTH6WKBopa', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(174, 'Olaf Schumm', 'rosalee49@example.net', '09153983265', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'mHhp2dGejl', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(175, 'Dr. Brennon Adams Jr.', 'schinner.maida@example.net', '09534764365', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'qikIlNb52R', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(176, 'Prof. Stephany Stamm V', 'neoma.jenkins@example.org', '09019413773', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '3FfmF3wsQj', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(177, 'Ruthie Metz', 'pprosacco@example.net', '09621128430', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'AR2BTI5RXb', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(178, 'Erika Cassin', 'beatty.amos@example.com', '09546690989', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Szcy6oyGYb', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(179, 'Lonnie Franecki', 'conor.simonis@example.net', '09848587645', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'LtIzcNCLac', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(180, 'Joshua Halvorson', 'ckiehn@example.org', '09718465857', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'kE9MCCiBTN', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(181, 'Sydnie Torp', 'heller.leland@example.com', '09697034773', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'qjgaFCWRWL', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(182, 'Miss Helena O\'Kon', 'windler.nella@example.net', '09250751952', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'khQHxSwZH3', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(183, 'Dr. Talon Hackett', 'malcolm.oconner@example.org', '09775876618', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'KNyZUSVfQ4', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(184, 'Prof. Cierra Bechtelar Jr.', 'silas.rutherford@example.net', '09951929021', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'UX1zLEsLuT', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(185, 'Mona Hettinger DVM', 'fcartwright@example.com', '09043784363', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'M1fjMyvrzm', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(186, 'Tiara Wuckert Sr.', 'walker.freddy@example.org', '09585048199', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '3qZEz8U1kp', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(187, 'Antonina Herman Sr.', 'kelley.hermann@example.net', '09739635974', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'q8MwKuA7Kw', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(188, 'Veronica Weber', 'aufderhar.kristopher@example.com', '09679849196', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Q7VyZoI2nf', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(189, 'Bill Rath DVM', 'trice@example.org', '09112907406', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '8am3U7bULt', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(190, 'Dorthy Zboncak Jr.', 'michel.halvorson@example.org', '09982246895', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '6o6asRhQXQ', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(191, 'Demond Jast', 'fay.hallie@example.net', '09371082283', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'MZW1QeMnbR', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(192, 'Mr. Vance Kunde', 'satterfield.otha@example.net', '09741555013', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '2eqGicyLW5', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(193, 'Rylan Heidenreich', 'janice63@example.net', '09642594795', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'pkdLMHb1Ma', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(194, 'Percival Johnson Sr.', 'kling.cecilia@example.org', '09483142916', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'QmZoA9sNkv', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(195, 'Irving Windler II', 'morar.leon@example.com', '09820893765', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Mr41zKuU9w', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(196, 'Dorothy Lebsack', 'qreynolds@example.org', '09848766678', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'SFHk54CV2f', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(197, 'Ms. Mariane Bogisich II', 'eden01@example.net', '09393359751', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'YVq2iq5cua', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(198, 'Ephraim O\'Keefe', 'corkery.rosalee@example.com', '09096714412', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '6NMyOEm1ob', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(199, 'Jalyn Emmerich', 'elinor.kihn@example.com', '09485158546', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Cr1sfKwHAL', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(200, 'Mrs. Layla Reilly PhD', 'carolina14@example.net', '09155979627', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'mgUjQUmyHY', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(201, 'Terence Gibson', 'btowne@example.com', '09654699619', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'tzHG7xc18F', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(202, 'Miss Madaline Hand', 'jerde.sherman@example.net', '09309299114', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '6lSvnMBse7', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(203, 'Alva Stroman', 'herman.kristian@example.com', '09794108977', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'IMp05zIoKc', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(204, 'Alia Flatley', 'christelle01@example.org', '09326921479', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'd0k4dgpdba', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(205, 'Dr. Isabella Okuneva', 'gunner.zboncak@example.org', '09185955663', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'TquIhvSlia', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(206, 'Elizabeth Trantow', 'deja.witting@example.net', '09623587574', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'QO2Mx35Qqo', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(207, 'Prof. Tyshawn Greenfelder Sr.', 'kiana.lindgren@example.org', '09732933078', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'TIQv3ZHtMg', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(208, 'Freida Hettinger', 'mario.morissette@example.net', '09581361180', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'nsOrvCKVt9', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(209, 'Brock Ferry', 'jarret.quigley@example.com', '09958519435', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'dpfj2ldoMy', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(210, 'Carmelo White', 'wbeatty@example.com', '09837519265', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'XkhW8YyEri', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(211, 'Nya Lockman', 'wbuckridge@example.com', '09854921525', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'HEMGl7tXMD', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(212, 'Maudie Grimes PhD', 'mckayla51@example.com', '09001570167', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'mKYOY9zHh9', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(213, 'Josiah Sauer', 'ytowne@example.com', '09562445369', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '5WbhXEdPPv', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(214, 'Mr. Johnny Senger', 'prosacco.monique@example.net', '09442378926', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '5Y3niWuthc', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(215, 'Maeve Bogisich', 'marquardt.ismael@example.net', '09456026992', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'wYIOGWCH1V', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(216, 'Maiya Bergnaum', 'joanne71@example.org', '09180497254', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'UxuY4mQQkN', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(217, 'Ciara O\'Connell', 'nupton@example.com', '09691212169', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'BNVVEWJ3uP', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(218, 'Miss Karolann Beatty PhD', 'ulices49@example.com', '09888782517', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'NUaOcPTquG', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0);
INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `fcm_token`, `phone_number_verified_at`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `points`) VALUES
(219, 'Chauncey McClure III', 'echamplin@example.net', '09567882422', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'ft3BRNcNL8', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(220, 'Shanny Wolff', 'kaden04@example.net', '09388338934', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'rxRYbAfyeu', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(221, 'Mark Moore', 'lessie30@example.org', '09841990865', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '9eLQKfoMRj', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(222, 'Arvel Farrell', 'delphine40@example.org', '09777060553', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'qf2DDOpB1W', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(223, 'Cornell Donnelly', 'kupton@example.org', '09825038112', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'd02Ey44R4N', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(224, 'Mrs. Alexandrine Turcotte I', 'valentin05@example.net', '09732175846', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'x842lcdNWT', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(225, 'Markus Wuckert', 'iva.wintheiser@example.org', '09794909749', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '1L6RAlsr6B', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(226, 'Idella DuBuque', 'aurelio.brekke@example.net', '09893084155', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'O2R3DFCT2n', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(227, 'Mr. Keshawn Klein', 'hrau@example.net', '09874315925', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'PHPuB1UkxQ', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(228, 'Edwardo Dibbert Sr.', 'houston.zemlak@example.net', '09086755365', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'cwzOrJt646', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(229, 'Ms. Yolanda Konopelski', 'rosemarie.heidenreich@example.net', '09361977189', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '7DNCZw4H0d', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(230, 'Miss Catharine Grimes', 'casimer16@example.net', '09802504064', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'CpyPrtE7AB', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(231, 'Flavio Marks', 'neoma23@example.org', '09896927223', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'HKNVeCmF9Y', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(232, 'Hillary Trantow', 'jlynch@example.net', '09335271606', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'IzMcj2JzfJ', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(233, 'Rusty Pfeffer I', 'felix85@example.org', '09185465448', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'RUMjZC122V', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(234, 'Effie Hahn', 'vernon75@example.com', '09192753474', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'KTlHEDa0Mt', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(235, 'Mrs. Elizabeth Borer Sr.', 'trantow.rodrick@example.com', '09536800428', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'cX1xcT6Wdx', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(236, 'Rita Roberts', 'bcarter@example.com', '09997450922', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'F3rzQrpJ4C', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(237, 'Deshawn Olson', 'rolfson.carolanne@example.com', '09976705352', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'EAUptkZmQL', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(238, 'Maud Wilderman V', 'tgutkowski@example.com', '09909070833', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'AdRzH31Blu', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(239, 'Kaia Ratke', 'geovanni.schulist@example.com', '09479306820', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'xjf59aPegy', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(240, 'Nicolas Hammes', 'lockman.kian@example.org', '09534888845', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'erIf9eEfoU', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(241, 'Kiel Carter', 'payton20@example.org', '09111786704', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'T3sDvhgGEX', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(242, 'Zetta Hartmann V', 'stracke.rogelio@example.com', '09442857309', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '1DmXjS1LeB', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(243, 'Mike Johnson', 'maureen22@example.org', '09997639399', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'TqQQKNC6HD', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(244, 'Teresa Heidenreich', 'weissnat.vada@example.org', '09783976927', NULL, NULL, '2026-02-03 14:32:50', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '7u28TplmA3', '2026-02-03 14:32:50', '2026-02-03 14:32:50', 0),
(245, 'Maddison Bartell', 'mwalsh@example.net', '09242737036', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Pp2AODAbM0', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(246, 'Krystel Watsica', 'afeil@example.com', '09082414437', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '2YSbirN2Al', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(247, 'Prince Farrell Sr.', 'brandi82@example.com', '09088915078', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'CxgGkaR0vZ', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(248, 'Bria Schowalter', 'bertha.moore@example.net', '09640213924', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'jxGKSpwDK7', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(249, 'Litzy Maggio', 'laurel43@example.com', '09846220831', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '1WTVGA51Zz', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(250, 'Janae Lubowitz', 'irenner@example.com', '09696419131', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'j5bzh3y9A3', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(251, 'Miss Frances DuBuque', 'jarod70@example.org', '09045833506', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'mPgeRBNsCI', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(252, 'Dr. Jarrell Reinger', 'desmond.hessel@example.net', '09965955080', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'lFC9s7AlBD', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(253, 'Scottie Monahan IV', 'maynard91@example.org', '09490974986', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'LItsiYS5Gu', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(254, 'Prof. Laurine Grimes V', 'considine.maximilian@example.org', '09832565906', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Yl0MchcgaU', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(255, 'Mr. Dane Flatley', 'feil.kamren@example.net', '09626294101', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'viScX6oPS0', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(256, 'Chance Schiller', 'dayana47@example.com', '09955200819', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'JBZ6j89fAN', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(257, 'Faye Rowe III', 'ida20@example.net', '09359505941', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Im6KMWZZ98', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(258, 'Citlalli Hackett', 'vrunolfsdottir@example.net', '09410585999', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'gvTscV9TDY', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(259, 'Vance Leannon', 'rice.stan@example.com', '09542394012', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'xO5BqnQnoQ', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(260, 'Dr. Nat Cummings V', 'kohler.hassie@example.com', '09712475215', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Mniy4NmCBM', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(261, 'Americo Dare', 'glover.savannah@example.org', '09938364079', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '1ZTMK8t79R', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(262, 'Jairo Green', 'upton.verdie@example.org', '09653721974', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'uM2LSnU9y3', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(263, 'Luella Borer', 'barton.freida@example.com', '09812897717', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'd4DCoFtNtv', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(264, 'Lorenza Kozey', 'brakus.bobbie@example.com', '09108708944', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'dadBkhTdyb', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(265, 'Ms. Kaycee Ernser', 'marianne.kuphal@example.net', '09484201190', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'xkBMtyoSf2', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(266, 'Eusebio Reichert', 'elza85@example.net', '09335324587', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Md2nlQKQii', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(267, 'Prof. Mitchell Quigley', 'sheridan60@example.com', '09408494081', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'QoHwYnRDio', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(268, 'Odell Runte', 'florencio.padberg@example.com', '09196014888', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '1eNFJwqE1W', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(269, 'Nadia Conn', 'abel.baumbach@example.org', '09937002621', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'DLSgehQRRw', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(270, 'Gladyce Wolf', 'jhessel@example.com', '09617016731', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Xh7Vnwz99e', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(271, 'Kirsten Dicki DVM', 'pschuster@example.org', '09932121092', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'n2RiCaqxU9', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(272, 'Haley Hagenes', 'gwitting@example.com', '09083126726', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '4h5ReR9JPn', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(273, 'Ted O\'Kon', 'jhills@example.net', '09765748422', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'DdyhEAodHc', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(274, 'Louvenia Marks II', 'london37@example.com', '09673440048', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'rR2cEXSLPD', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(275, 'Romaine Mosciski IV', 'gislason.myrtice@example.com', '09142436700', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '9IFj6OjFC7', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(276, 'Erin Hahn IV', 'emerald.gulgowski@example.org', '09147023939', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Ecm7BgsXpB', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(277, 'Syble Zieme', 'abeahan@example.org', '09364402419', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'ZhZDnuCi6s', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(278, 'Erwin Abshire', 'yjones@example.org', '09914324280', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'XFkKZFCgCG', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(279, 'Dr. Duane Deckow DVM', 'kim67@example.org', '09090138247', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '74NnOGCwSa', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(280, 'Shane Renner', 'saul.orn@example.com', '09048024025', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Be3Ih9Wrhw', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(281, 'Camryn Macejkovic', 'francesca56@example.com', '09561823099', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '0OeBNZ2yTC', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(282, 'Mona Goodwin', 'lavern14@example.org', '09796927220', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'qrR0CDlegF', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(283, 'Prof. Clair Dooley', 'ffranecki@example.org', '09375727306', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '9Ub6Kwqsjm', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(284, 'Susie Jenkins', 'hherman@example.com', '09540408654', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '0HedpLtTDg', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(285, 'Alexane Cole MD', 'jensen48@example.org', '09666364957', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'bJvEk9nBhW', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(286, 'Lucinda Gislason I', 'king.karen@example.com', '09005652719', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'GcN0HpDeuF', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(287, 'Prof. Alphonso Reinger', 'bernhard22@example.com', '09487176988', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'cj680d5BD5', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(288, 'Mrs. Shaina Wiza', 'marisol19@example.net', '09940249314', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'lH6Phq18OM', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(289, 'Dayne Harris III', 'xkohler@example.org', '09892091277', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '0p1bKhlgik', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(290, 'Aidan Douglas Jr.', 'jrohan@example.net', '09479248212', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '98qwt4Xmje', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(291, 'Pinkie Wiza IV', 'conrad66@example.com', '09692754452', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'xcDRNrXqL7', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(292, 'Meghan Ondricka', 'oullrich@example.net', '09335756638', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'k4JsFIX1gC', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(293, 'Anastasia Schiller', 'goodwin.winston@example.com', '09775491221', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Ea27XtqiWh', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(294, 'Raymond Gusikowski', 'maynard.johnson@example.org', '09550622899', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'RDWaFH7kwr', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(295, 'Delphine Ondricka', 'mozelle.nikolaus@example.org', '09893930344', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'UkxdpDxzY7', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(296, 'Icie Schultz', 'bashirian.antwan@example.org', '09872992034', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'hbBfhyd0yV', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(297, 'Nigel Torphy', 'jerrell.effertz@example.org', '09109494192', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'KhbP4ABHTy', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(298, 'Nikko Gusikowski', 'cielo74@example.org', '09190523068', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'g72QziymoD', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(299, 'Annamarie Glover', 'pagac.jerald@example.org', '09480367433', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'LmQGXIFEVe', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(300, 'Prof. Sabryna Ankunding II', 'prohaska.anahi@example.org', '09706991214', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'AUPwM78UjS', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(301, 'Jeffrey Crona', 'hailie45@example.org', '09930670967', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'UVnHxmtBhY', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(302, 'Will Wyman', 'robel.ollie@example.com', '09148720069', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'KhRPPTY6pw', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(303, 'Armando Hahn', 'gmurazik@example.net', '09822389457', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 't8UQCSYIBL', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(304, 'Susan Ebert', 'abechtelar@example.org', '09824628543', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '3x9xB2Luhd', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(305, 'Garland Kovacek', 'will.lakin@example.net', '09350204351', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'TQOYR5o6xW', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(306, 'Prof. Emerald Jast', 'filomena03@example.org', '09545860015', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'H8D6l65Vjf', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(307, 'Cristina Harvey', 'maggio.hailee@example.org', '09894725278', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'HirSSmEemY', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(308, 'Cristobal Mann', 'bluettgen@example.net', '09049072097', NULL, NULL, '2026-02-03 14:32:51', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'CpANCULXMp', '2026-02-03 14:32:51', '2026-02-03 14:32:51', 0),
(309, 'Celine Marks', 'jherzog@example.org', '09716464870', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'U88L39f93G', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(310, 'Prof. Jasper Zboncak', 'tdaugherty@example.org', '09972566642', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'HTEb0xL3zF', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(311, 'Prof. Christ Collier III', 'arvel85@example.net', '09366208648', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'uR9WQ6Bp3G', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(312, 'Schuyler Grant', 'martine94@example.org', '09332396296', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'hP87KoU3Fz', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(313, 'Mr. Rey Cormier DDS', 'inikolaus@example.com', '09849581203', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'PS14xL77Ij', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(314, 'Eryn Braun', 'ntorphy@example.com', '09415055544', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '7YllRE8DEw', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(315, 'Mr. Anderson Krajcik', 'gislason.effie@example.net', '09534220054', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'jMNqYfhsDn', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(316, 'Prof. Lukas Bahringer IV', 'runolfsson.luciano@example.net', '09787148377', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'bWkq7Uq3Ui', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(317, 'Meredith Heathcote', 'beer.thad@example.com', '09995745552', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'cPyosBSd3I', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(318, 'Donavon Schoen', 'ernie52@example.org', '09813323109', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'o7ZJALvYE4', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(319, 'Darian Connelly DVM', 'mandy65@example.org', '09096663477', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'EkftB4N4iy', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(320, 'Prof. Roscoe Welch', 'okeefe.bethel@example.com', '09562922008', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'tguqaYjY7D', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(321, 'Kaley Schumm', 'jenkins.kiarra@example.org', '09301622663', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'aKwCqUCds6', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(322, 'Kris Runolfsdottir', 'wintheiser.zoey@example.org', '09837162728', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'MJ0TMroORj', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(323, 'Kylee Hill', 'hschultz@example.org', '09721554031', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'MUKG5RG4xw', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(324, 'Yesenia Nicolas', 'ohermiston@example.org', '09385570078', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'kK3tYgqmeY', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(325, 'Carmela Nikolaus', 'elmer36@example.org', '09277956766', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'ADTNmJgaTr', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(326, 'Mr. Vito Kreiger', 'eyundt@example.net', '09324949344', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'jzrVsHGdZC', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(327, 'Jerad Hettinger', 'zita.glover@example.net', '09115014843', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'DC4X7tXKgy', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(328, 'Helene Erdman V', 'rylan94@example.com', '09353357657', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'bqHErU7do1', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(329, 'Willa Wolf', 'felicia15@example.net', '09211805853', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'HM7WhmT9oe', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(330, 'Alice Nitzsche', 'ubruen@example.com', '09106313419', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'AjrGKnoj5S', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(331, 'Mrs. Priscilla Weissnat PhD', 'noemi04@example.org', '09040200360', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Sc5ArXRjQO', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(332, 'Lottie Lind', 'orin.klein@example.com', '09159433834', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'YLaBO0olUd', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(333, 'Vincent Block', 'reichert.garth@example.net', '09413804235', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'CIS8gjt9Wa', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(334, 'Amara Kulas', 'tluettgen@example.org', '09080465771', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'fXbZAm12Jq', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(335, 'Delilah Ward', 'moore.patricia@example.net', '09924267561', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'lZ3nBHCERZ', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(336, 'Mrs. Maggie Kohler', 'saige81@example.org', '09702482938', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Iow9BjuElU', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(337, 'Jacey Wisoky', 'pparker@example.com', '09521714458', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'A5YSR3rEPA', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(338, 'Miss Brenda Sawayn PhD', 'hnolan@example.com', '09246302643', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '3recKZ4Wsc', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(339, 'Elta Hills II', 'jcole@example.net', '09141482140', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'wvaZSBcCmd', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(340, 'Aida Oberbrunner', 'ismael39@example.com', '09478182094', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'R24J4jOskQ', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(341, 'Mr. Israel Rippin IV', 'jett.crist@example.org', '09197142543', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Jj6LkEIkm1', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(342, 'Maia Mayert Sr.', 'hayden96@example.com', '09566990887', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'qqxj9zvhFM', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(343, 'Hans Quitzon', 'zstroman@example.net', '09986266318', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'lf5nL8c6Ur', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(344, 'Emiliano Ortiz V', 'ozboncak@example.net', '09765715727', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'iIUBYAffRt', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(345, 'Franco Armstrong', 'wboehm@example.org', '09867799447', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'mmcCksgHBr', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(346, 'Aubrey Stamm', 'senger.dillon@example.com', '09935156399', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'YqiU8gkeuR', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(347, 'Patrick Bauch', 'murazik.juliet@example.org', '09423826801', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'oyVCZovDGv', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(348, 'Ari Reilly', 'ykeebler@example.net', '09474860459', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'tq984EJ1f5', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(349, 'Rylan Hartmann', 'ted.fay@example.org', '09349642792', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'bcsqGbHcy7', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(350, 'Janet Bechtelar II', 'mante.kyler@example.com', '09707088120', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '5Bcw3A4f8l', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(351, 'Fern Marquardt V', 'christop.barton@example.org', '09703997970', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'EbUEbJdNPw', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(352, 'Drake Von', 'chadrick08@example.org', '09058614345', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'RpFADKsFIt', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(353, 'Prof. Esmeralda Padberg III', 'jamarcus35@example.org', '09895749206', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'hezFFcRzXN', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(354, 'Dr. Dennis Hyatt', 'mollie.robel@example.com', '09585058867', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'b1OVMIb5oY', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(355, 'Rosina Keeling', 'predovic.theodore@example.net', '09278214018', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'VVuYfIQQdN', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(356, 'Prof. Isabel Lueilwitz DDS', 'osinski.lavina@example.com', '09426733869', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Op6y3KOyCA', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(357, 'Lura Hammes', 'neoma.wolf@example.org', '09658211907', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '6r3JIl4h3W', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(358, 'Jerrell Hayes', 'nathanael.green@example.org', '09892682595', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Ngy1ISfRrD', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(359, 'Erika Christiansen', 'arobel@example.org', '09891992406', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'jKr0DbtWRA', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(360, 'Reginald Braun', 'isac.smith@example.com', '09481742882', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '5YcT8uglg7', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(361, 'Neal Bechtelar', 'brannon91@example.com', '09689387591', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'x3HPmUdsy5', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(362, 'Dr. Violet Watsica III', 'dgusikowski@example.org', '09432273394', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'AZQnfTA1AB', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(363, 'Mrs. Rozella Gibson Jr.', 'jakayla.reinger@example.com', '09184229419', NULL, NULL, '2026-02-03 14:32:52', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'LObXxaidit', '2026-02-03 14:32:52', '2026-02-03 14:32:52', 0),
(364, 'Annalise Altenwerth', 'magnolia.mohr@example.com', '09869043060', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'ydrBHYuziG', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(365, 'Ms. Minnie Stroman IV', 'dovie.mueller@example.com', '09628422730', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'XyhgjeIVTN', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(366, 'Prof. Rico Zboncak IV', 'sylvan.keebler@example.net', '09766148496', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'eT6SlhGSII', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(367, 'Grayce Crist', 'ila.cole@example.org', '09982807658', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '1bG1tsLGoj', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(368, 'Mrs. Veronica Wilkinson II', 'norberto.hudson@example.com', '09143054072', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Rf0uJjDfgR', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(369, 'Mrs. Lucy Dach', 'hswift@example.org', '09358503537', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'fcaq8EVPnJ', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(370, 'Julie Schoen Jr.', 'austyn55@example.org', '09477562575', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'dnc9rTlsEq', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(371, 'Jennie Auer', 'rempel.rosanna@example.com', '09397960441', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'Dvwn4JnlpK', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(372, 'Mr. Gay Kutch PhD', 'quitzon.raven@example.com', '09991673762', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'BTVjVyObat', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(373, 'Mr. Buster Murray I', 'ikemmer@example.org', '09162323379', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'DaETE2B1Ww', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(374, 'Odessa Gibson II', 'xfunk@example.org', '09019484627', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'unv4Vukbry', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(375, 'Mr. Bernie Kunde', 'orippin@example.org', '09612880574', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '9ZceehyVoo', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(376, 'Felipe Reilly', 'leuschke.dustin@example.net', '09945268593', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'VD1AiDOjDR', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(377, 'Thaddeus Zboncak', 'michael.rodriguez@example.org', '09170028855', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '5NVgiuiRo8', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(378, 'Ms. Baby Konopelski', 'jziemann@example.com', '09487696250', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'O83jLQfAHD', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(379, 'Ruth Pacocha', 'barton.schiller@example.net', '09633957904', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '2ygnTqDDS8', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(380, 'Kasey Wintheiser', 'kparker@example.org', '09212117723', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'VNq0SwzPic', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(381, 'Manley Littel PhD', 'iprice@example.org', '09639473486', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'NROdoOaIST', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(382, 'Dr. Jaylon O\'Reilly Sr.', 'ischulist@example.net', '09325684741', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', '3vwkbwL0HC', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(383, 'Lilly Kuphal', 'little.noemie@example.net', '09232373929', NULL, NULL, '2026-02-03 14:32:53', '$2y$12$T3a630LqPWPLOr9982NV/.U/B.LR7GRv9HZqmfl/iAD0BUIwTXluu', 'GG9uUsRU6l', '2026-02-03 14:32:53', '2026-02-03 14:32:53', 0),
(395, 'asdffdsf', 'fsafsa@fegwgfwe', '9876543210', NULL, NULL, NULL, '$2y$12$ShB0uzLJR/PgNqjwYvLCmuSNgXfSgiDnxFCIm2L8IacJrOFKbmTTa', NULL, '2026-02-09 11:26:10', '2026-02-09 11:26:50', 0),
(396, 'fgvfasd', 'dsf@fgdg.df', '01234588962', NULL, NULL, NULL, '$2y$12$YdLo1bcumTD3Ne9jk4Vm/O/Vkgdh8ZBlnvMuVHArQ6iL8Gy48dfYi', NULL, '2026-02-11 14:33:03', '2026-02-11 14:33:08', 0),
(397, 'abdo', 'asdd@gmail.com', NULL, NULL, NULL, NULL, '$2y$12$6csFOZN00KM736yHS3U.eu3Ux5BZFvSJqTQyyiyTaLpeon8TJyslC', NULL, '2026-02-11 15:24:52', '2026-02-11 15:24:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `balance`, `created_at`, `updated_at`) VALUES
(1, 1, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(2, 2, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(3, 3, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(4, 4, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(5, 5, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(6, 6, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(7, 7, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(8, 8, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(9, 9, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(10, 10, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(11, 11, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(12, 12, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(13, 13, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(14, 14, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(15, 15, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(16, 16, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(17, 17, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(18, 18, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(19, 19, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(20, 20, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(22, 22, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(23, 23, 0.00, '2026-02-03 14:32:47', '2026-02-03 14:32:47'),
(24, 24, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(25, 25, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(26, 26, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(27, 27, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(28, 28, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(29, 29, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(30, 30, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(31, 31, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(32, 32, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(33, 33, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(34, 34, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(35, 35, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(36, 36, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(37, 37, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(38, 38, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(39, 39, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(40, 40, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(41, 41, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(42, 42, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(43, 43, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(44, 44, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(45, 45, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(46, 46, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(47, 47, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(48, 48, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(49, 49, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(50, 50, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(51, 51, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(52, 52, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(53, 53, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(54, 54, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(55, 55, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(56, 56, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(57, 57, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(58, 58, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(59, 59, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(60, 60, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(61, 61, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(62, 62, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(63, 63, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(64, 64, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(65, 65, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(66, 66, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(67, 67, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(68, 68, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(69, 69, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(70, 70, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(71, 71, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(72, 72, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(73, 73, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(74, 74, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(75, 75, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(76, 76, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(77, 77, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(78, 78, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(79, 79, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(80, 80, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(81, 81, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(82, 82, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(83, 83, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(84, 84, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(85, 85, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(86, 86, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(87, 87, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(88, 88, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(89, 89, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(90, 90, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(91, 91, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(92, 92, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(93, 93, 0.00, '2026-02-03 14:32:48', '2026-02-03 14:32:48'),
(94, 94, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(95, 95, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(96, 96, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(97, 97, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(98, 98, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(99, 99, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(100, 100, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(101, 101, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(102, 102, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(103, 103, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(104, 104, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(105, 105, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(106, 106, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(107, 107, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(108, 108, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(109, 109, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(110, 110, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(111, 111, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(112, 112, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(113, 113, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(114, 114, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(115, 115, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(116, 116, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(117, 117, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(118, 118, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(119, 119, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(120, 120, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(121, 121, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(122, 122, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(123, 123, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(124, 124, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(125, 125, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(126, 126, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(127, 127, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(128, 128, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(129, 129, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(130, 130, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(131, 131, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(132, 132, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(133, 133, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(134, 134, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(135, 135, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(136, 136, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(137, 137, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(138, 138, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(139, 139, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(140, 140, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(141, 141, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(142, 142, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(143, 143, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(144, 144, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(145, 145, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(146, 146, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(147, 147, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(148, 148, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(149, 149, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(150, 150, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(151, 151, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(152, 152, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(153, 153, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(154, 154, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(155, 155, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(156, 156, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(157, 157, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(158, 158, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(159, 159, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(160, 160, 0.00, '2026-02-03 14:32:49', '2026-02-03 14:32:49'),
(161, 161, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(162, 162, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(163, 163, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(164, 164, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(165, 165, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(166, 166, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(167, 167, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(168, 168, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(169, 169, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(170, 170, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(171, 171, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(172, 172, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(173, 173, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(174, 174, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(175, 175, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(176, 176, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(177, 177, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(178, 178, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(179, 179, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(180, 180, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(181, 181, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(182, 182, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(183, 183, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(184, 184, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(185, 185, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(186, 186, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(187, 187, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(188, 188, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(189, 189, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(190, 190, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(191, 191, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(192, 192, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(193, 193, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(194, 194, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(195, 195, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(196, 196, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(197, 197, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(198, 198, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(199, 199, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(200, 200, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(201, 201, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(202, 202, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(203, 203, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(204, 204, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(205, 205, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(206, 206, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(207, 207, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(208, 208, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(209, 209, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(210, 210, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(211, 211, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(212, 212, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(213, 213, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(214, 214, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(215, 215, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(216, 216, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(217, 217, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(218, 218, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(219, 219, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(220, 220, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(221, 221, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(222, 222, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(223, 223, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(224, 224, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(225, 225, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(226, 226, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(227, 227, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(228, 228, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(229, 229, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(230, 230, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(231, 231, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(232, 232, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(233, 233, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(234, 234, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(235, 235, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(236, 236, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(237, 237, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(238, 238, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(239, 239, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(240, 240, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(241, 241, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(242, 242, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(243, 243, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(244, 244, 0.00, '2026-02-03 14:32:50', '2026-02-03 14:32:50'),
(245, 245, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(246, 246, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(247, 247, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(248, 248, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(249, 249, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(250, 250, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(251, 251, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(252, 252, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(253, 253, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(254, 254, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(255, 255, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(256, 256, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(257, 257, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(258, 258, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(259, 259, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(260, 260, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(261, 261, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(262, 262, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(263, 263, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(264, 264, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(265, 265, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(266, 266, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(267, 267, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(268, 268, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(269, 269, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(270, 270, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(271, 271, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(272, 272, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(273, 273, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(274, 274, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(275, 275, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(276, 276, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(277, 277, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(278, 278, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(279, 279, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(280, 280, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(281, 281, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(282, 282, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(283, 283, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(284, 284, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(285, 285, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(286, 286, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(287, 287, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(288, 288, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(289, 289, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(290, 290, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(291, 291, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(292, 292, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(293, 293, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(294, 294, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(295, 295, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(296, 296, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(297, 297, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(298, 298, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(299, 299, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(300, 300, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(301, 301, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(302, 302, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(303, 303, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(304, 304, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(305, 305, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(306, 306, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(307, 307, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(308, 308, 0.00, '2026-02-03 14:32:51', '2026-02-03 14:32:51'),
(309, 309, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(310, 310, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(311, 311, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(312, 312, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(313, 313, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(314, 314, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(315, 315, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(316, 316, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(317, 317, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(318, 318, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(319, 319, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(320, 320, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(321, 321, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(322, 322, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(323, 323, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(324, 324, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(325, 325, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(326, 326, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(327, 327, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(328, 328, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(329, 329, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(330, 330, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(331, 331, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(332, 332, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(333, 333, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(334, 334, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(335, 335, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(336, 336, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(337, 337, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(338, 338, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(339, 339, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(340, 340, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(341, 341, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(342, 342, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(343, 343, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(344, 344, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(345, 345, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(346, 346, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(347, 347, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(348, 348, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(349, 349, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(350, 350, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(351, 351, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(352, 352, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(353, 353, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(354, 354, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(355, 355, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(356, 356, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(357, 357, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(358, 358, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(359, 359, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(360, 360, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(361, 361, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(362, 362, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(363, 363, 0.00, '2026-02-03 14:32:52', '2026-02-03 14:32:52'),
(364, 364, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(365, 365, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(366, 366, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(367, 367, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(368, 368, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(369, 369, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(370, 370, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(371, 371, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(372, 372, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(373, 373, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(374, 374, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(375, 375, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(376, 376, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(377, 377, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(378, 378, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(379, 379, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(380, 380, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(381, 381, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(382, 382, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(383, 383, 0.00, '2026-02-03 14:32:53', '2026-02-03 14:32:53'),
(395, 395, 0.00, '2026-02-09 11:26:10', '2026-02-09 11:26:10'),
(396, 396, 0.00, '2026-02-11 14:33:03', '2026-02-11 14:33:03'),
(397, 397, 0.00, '2026-02-11 15:24:52', '2026-02-11 15:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `working_days`
--

CREATE TABLE `working_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `day` enum('monday','tuesday','wednesday','thursday','friday','saturday','sunday') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `working_hours`
--

CREATE TABLE `working_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `working_day_id` bigint(20) UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_course_id_foreign` (`course_id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);
ALTER TABLE `articles` ADD FULLTEXT KEY `articles_searchable_title_fulltext` (`searchable_title`);
ALTER TABLE `articles` ADD FULLTEXT KEY `articles_searchable_content_fulltext` (`searchable_content`);

--
-- Indexes for table `article_read`
--
ALTER TABLE `article_read`
  ADD PRIMARY KEY (`article_id`,`user_id`),
  ADD KEY `article_read_user_id_foreign` (`user_id`);

--
-- Indexes for table `article_user`
--
ALTER TABLE `article_user`
  ADD PRIMARY KEY (`article_id`,`user_id`),
  ADD KEY `article_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `categories` ADD FULLTEXT KEY `categories_searchable_name_fulltext` (`searchable_name`);
ALTER TABLE `categories` ADD FULLTEXT KEY `categories_searchable_description_fulltext` (`searchable_description`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`),
  ADD KEY `courses_level_id_foreign` (`level_id`),
  ADD KEY `courses_mentor_id_foreign` (`mentor_id`),
  ADD KEY `courses_type_index` (`type`);
ALTER TABLE `courses` ADD FULLTEXT KEY `courses_searchable_name_fulltext` (`searchable_name`);
ALTER TABLE `courses` ADD FULLTEXT KEY `courses_searchable_description_fulltext` (`searchable_description`);

--
-- Indexes for table `course_user`
--
ALTER TABLE `course_user`
  ADD PRIMARY KEY (`course_id`,`user_id`),
  ADD KEY `course_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `general_settings_setting_key_unique` (`setting_key`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lessons_course_id_order_unique` (`course_id`,`order`);
ALTER TABLE `lessons` ADD FULLTEXT KEY `lessons_searchable_title_fulltext` (`searchable_title`);
ALTER TABLE `lessons` ADD FULLTEXT KEY `lessons_searchable_content_fulltext` (`searchable_content`);

--
-- Indexes for table `lesson_user`
--
ALTER TABLE `lesson_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lesson_user_lesson_id_user_id_unique` (`lesson_id`,`user_id`),
  ADD KEY `lesson_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `levels` ADD FULLTEXT KEY `levels_searchable_name_fulltext` (`searchable_name`);
ALTER TABLE `levels` ADD FULLTEXT KEY `levels_searchable_description_fulltext` (`searchable_description`);

--
-- Indexes for table `mentor_details`
--
ALTER TABLE `mentor_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mentor_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `point_transactions`
--
ALTER TABLE `point_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `point_transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `polls_course_id_foreign` (`course_id`),
  ADD KEY `polls_user_id_foreign` (`user_id`);

--
-- Indexes for table `poll_options`
--
ALTER TABLE `poll_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_options_poll_id_foreign` (`poll_id`);

--
-- Indexes for table `poll_option_user`
--
ALTER TABLE `poll_option_user`
  ADD PRIMARY KEY (`poll_option_id`,`user_id`),
  ADD KEY `poll_option_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_course_id_foreign` (`course_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`post_id`,`user_id`),
  ADD KEY `post_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `working_days`
--
ALTER TABLE `working_days`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `working_days_user_id_day_unique` (`user_id`,`day`),
  ADD KEY `working_days_day_index` (`day`);

--
-- Indexes for table `working_hours`
--
ALTER TABLE `working_hours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `working_hours_working_day_id_start_time_end_time_unique` (`working_day_id`,`start_time`,`end_time`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lesson_user`
--
ALTER TABLE `lesson_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `mentor_details`
--
ALTER TABLE `mentor_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `point_transactions`
--
ALTER TABLE `point_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `poll_options`
--
ALTER TABLE `poll_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `working_days`
--
ALTER TABLE `working_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `working_hours`
--
ALTER TABLE `working_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `article_read`
--
ALTER TABLE `article_read`
  ADD CONSTRAINT `article_read_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_read_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_user`
--
ALTER TABLE `article_user`
  ADD CONSTRAINT `article_user_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `courses_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `courses_mentor_id_foreign` FOREIGN KEY (`mentor_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `course_user_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_user`
--
ALTER TABLE `lesson_user`
  ADD CONSTRAINT `lesson_user_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mentor_details`
--
ALTER TABLE `mentor_details`
  ADD CONSTRAINT `mentor_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `point_transactions`
--
ALTER TABLE `point_transactions`
  ADD CONSTRAINT `point_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `polls`
--
ALTER TABLE `polls`
  ADD CONSTRAINT `polls_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `polls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `poll_options`
--
ALTER TABLE `poll_options`
  ADD CONSTRAINT `poll_options_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `poll_option_user`
--
ALTER TABLE `poll_option_user`
  ADD CONSTRAINT `poll_option_user_poll_option_id_foreign` FOREIGN KEY (`poll_option_id`) REFERENCES `poll_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `poll_option_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `working_days`
--
ALTER TABLE `working_days`
  ADD CONSTRAINT `working_days_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `working_hours`
--
ALTER TABLE `working_hours`
  ADD CONSTRAINT `working_hours_working_day_id_foreign` FOREIGN KEY (`working_day_id`) REFERENCES `working_days` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
