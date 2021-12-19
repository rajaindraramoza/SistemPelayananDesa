-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2021 pada 09.54
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agamas`
--

CREATE TABLE `agamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `agamas`
--

INSERT INTO `agamas` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Islam', NULL, NULL),
(2, 'Kristen', NULL, NULL),
(3, 'Katolik', NULL, NULL),
(4, 'Hindu', NULL, NULL),
(5, 'Buddha', NULL, NULL),
(6, 'Konghucu', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Berita Desa', 'berita-desa', '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(2, 'personal', 'personal', '2021-12-18 22:50:06', '2021-12-18 22:50:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jkels`
--

CREATE TABLE `jkels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jkels`
--

INSERT INTO `jkels` (`id`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
(1, 'Laki-laki', '2021-12-19 06:02:12', NULL),
(2, 'Perempuan', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jsurats`
--

CREATE TABLE `jsurats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jsurats`
--

INSERT INTO `jsurats` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Surat Keterangan Usaha', NULL, NULL),
(2, 'Surat Keterangan Tidak Mampu', NULL, NULL),
(3, 'Surat Keterangan Penghasilan Orang Tua', NULL, NULL),
(4, 'Permohonan Izin Keramaian Pesta', NULL, NULL),
(5, 'Surat Pengantar SKCK', NULL, NULL),
(6, 'Surat Keterangan Ahli Waris', NULL, NULL),
(7, 'Surat Keterangan Bepergian', NULL, NULL),
(8, 'Surat Keterangan Tidak Berada di Tempat', NULL, NULL),
(9, 'Surat Keterangan Domisili', NULL, NULL),
(10, 'Surat Keterangan Hilang Kartu Keluarga', NULL, NULL),
(11, 'Surat Keterangan Pindah', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_08_090904_create_posts_table', 1),
(6, '2021_12_08_093353_create_categories_table', 1),
(7, '2021_12_15_041254_add_is_admin_to_users_table', 1),
(8, '2021_12_16_142109_create_surats_table', 1),
(9, '2021_12_17_015823_create_jsurats_table', 1),
(10, '2021_12_17_022249_create_jkels_table', 1),
(11, '2021_12_17_030209_create_agamas_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Ipsa omnis quae non est veniam debitis esse sequi.', 'inventore-pariatur-alias-totam-et-dolores', 'post-image/ghvourFs07Nkkqa3iXL8QfJhBpa0BZy7MaeOAwlM.jpg', 'Porro in alias dolorum eos modi. Laboriosam natus mollitia eos laudantium molestias velit et. Non esse necessitatibus et aliquid omnis nihil unde. Quia eligendi accusamus quidem occaecati.Nobis itaque...', '<div>Porro in alias dolorum eos modi. Laboriosam natus mollitia eos laudantium molestias velit et. Non esse necessitatibus et aliquid omnis nihil unde. Quia eligendi accusamus quidem occaecati.<br><br></div><div>Nobis itaque quo ut possimus harum quasi non. Numquam aut maxime facere consequuntur et neque et. Qui eaque commodi provident repudiandae. Incidunt sit tempore veritatis recusandae est amet fugiat eligendi.<br><br></div><div>Enim odio et debitis non fugiat aperiam. Deleniti labore voluptas voluptatem. Necessitatibus ab consequatur sit et deleniti sit.<br><br></div><div>Similique facere iure sed qui est. Quia nobis ipsa nihil temporibus omnis tempora corrupti. Autem voluptatum fugit aut ex nulla voluptate. Reprehenderit et quia possimus laboriosam consequuntur ut quis. Labore esse ratione velit minus.<br><br></div><div>Commodi eveniet nisi sint beatae quas nulla. Consequuntur non nobis eaque impedit rem velit suscipit beatae. Error ut eius eaque id. Omnis sit ipsa odio et vel eius.<br><br></div><div>Aliquid in id eaque. Asperiores tenetur est sed at in harum facilis. Repudiandae perspiciatis aut non commodi vitae.<br><br></div><div>Vel quo et maiores nobis dolore molestiae dolorem. Impedit consequatur adipisci veritatis laboriosam asperiores minus incidunt nam.<br><br></div>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:57:07'),
(2, 1, 1, 'Libero id saepe harum perferendis adipisci.', 'voluptatem-ut-et-suscipit', 'post-image/QAq9qCKs9hhiFiRwh7HsnzmRKaQWYyQGJE1YkRxj.jpg', 'Omnis asperiores minus est similique dolorem voluptatem aperiam aliquid. Autem omnis dolorum maiores hic minima maxime. Adipisci sint omnis explicabo quod fugit. Beatae porro suscipit adipisci nesciun...', '<div>Omnis asperiores minus est similique dolorem voluptatem aperiam aliquid. Autem omnis dolorum maiores hic minima maxime. Adipisci sint omnis explicabo quod fugit. Beatae porro suscipit adipisci nesciunt nihil tempore libero autem.<br><br></div><div>Enim illo hic et veniam. Optio similique aspernatur quos aperiam. Minima suscipit est ullam aut dolores a.<br><br></div><div>Animi accusamus voluptatum atque. Id minus vel qui. Aut quam adipisci eum non accusantium earum.<br><br></div><div>Ipsum unde molestiae id. Et laborum dolorem inventore officia aut cum. Earum aspernatur aut voluptas.<br><br></div><div>Est assumenda illum molestiae. Quia doloribus qui est rerum ut illum totam aliquam. Aut dolores vitae et suscipit qui voluptate quis. Quia praesentium nihil rem et velit quibusdam. Ut dolorem quas adipisci autem architecto.<br><br></div><div>Consequatur omnis consequatur excepturi. Id minus quam corrupti aut voluptatem voluptates repellat. Eos consequatur laborum omnis error aut quis esse neque.<br><br></div><div>Rerum atque sunt occaecati odio modi. Qui non voluptates ipsam qui officia laudantium. Aut qui ullam ea distinctio cum illo dicta. Minima qui recusandae voluptate in quo sit.<br><br></div>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:57:18'),
(3, 1, 1, 'Maxime molestiae quia ea id maiores eos et eos voluptate.', 'voluptates-dolor-rerum-vitae-accusantium-quia', 'post-image/RwYuTVbZEVt2uuYBljKrgNPWFSmOpu721ye21vHc.jpg', 'Delectus sint repudiandae dolor distinctio modi et provident modi. Ipsam quidem magnam molestiae ex doloremque illum at. Quia illo aut voluptas beatae accusamus ratione quibusdam. Rerum unde et sed do...', '<div>Delectus sint repudiandae dolor distinctio modi et provident modi. Ipsam quidem magnam molestiae ex doloremque illum at. Quia illo aut voluptas beatae accusamus ratione quibusdam. Rerum unde et sed doloribus.<br><br></div><div>Et animi tenetur molestiae quia aut numquam impedit. Est qui autem mollitia non. Ut occaecati dolor est voluptatum omnis doloribus. Cumque voluptatem voluptatem excepturi consectetur qui nesciunt sit fugit.<br><br></div><div>Eum ad doloremque tenetur. Odio quae laboriosam cum deserunt. Nihil velit accusantium natus vel dolores iste. Omnis tempora illo officiis.<br><br></div><div>Repudiandae at qui ea et recusandae. Est dolorem et ea accusamus repellat minima. Dolorum quod rem cum.<br><br></div><div>Error dolorum possimus quia. Laudantium voluptas ipsam assumenda labore quia aperiam numquam. Enim sed deserunt quo recusandae non harum officiis.<br><br></div><div>Accusamus sit qui odit reiciendis porro iusto non. Omnis blanditiis harum repellat. Necessitatibus tempora rerum odit excepturi. Dolores est et harum neque ut minima. Fuga id ratione et.<br><br></div><div>Voluptas laboriosam quis autem repudiandae. Dignissimos assumenda fugiat eveniet quis pariatur ipsum quam. Distinctio pariatur non sed hic quia hic quia. Sunt deserunt velit accusamus quas omnis id.<br><br></div><div>Doloribus eligendi adipisci natus excepturi nostrum consequatur dignissimos. Voluptatem voluptas id voluptatem omnis qui. Voluptas maxime non omnis numquam ipsa. Distinctio maxime necessitatibus voluptas molestiae.<br><br></div><div>Consequatur rerum veritatis provident sunt. Non possimus et nihil sint. Non soluta sit et minima. Sequi mollitia omnis aut amet necessitatibus ut. Maxime quam labore quia est aperiam.<br><br></div>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:57:29'),
(4, 1, 1, 'Atque possimus illum reprehenderit aliquid earum in quos atque totam in.', 'aut-quis-qui-maiores-temporibus-maiores-deleniti', 'post-image/j1XFASGT0vFpUPClX5ZCoSf0AViqefgMmNsB3ILK.jpg', 'Optio maiores cum beatae quod quia. Molestiae est aut dolores eos a sunt sunt ipsum. Voluptatem ut error sequi cupiditate rerum sapiente. Ipsam velit debitis deserunt aut eum molestias consectetur.Ape...', '<div>Optio maiores cum beatae quod quia. Molestiae est aut dolores eos a sunt sunt ipsum. Voluptatem ut error sequi cupiditate rerum sapiente. Ipsam velit debitis deserunt aut eum molestias consectetur.<br><br></div><div>Aperiam rerum dolores dicta qui. Eum omnis laborum voluptates. Fugit incidunt distinctio in dolores illum repellendus consequatur aut.<br><br></div><div>Ut nobis numquam et. Optio doloribus rem omnis voluptas est dignissimos nam. Pariatur ad reiciendis nisi aut omnis possimus.<br><br></div><div>Est consectetur tempora saepe doloremque. Sunt voluptates similique ad. Sunt eveniet libero voluptas omnis. Ipsum odit deleniti eum voluptatem reprehenderit.<br><br></div><div>Et velit ut sed unde eius. Repellendus consequuntur odio porro sint aspernatur aut nemo qui. Aliquam ut possimus eum iste alias qui. Sed ratione quia neque minima et similique illo quo.<br><br></div><div>Sed vel illum sed et. Sint et et est voluptatum. Corporis qui fugiat qui distinctio.<br><br></div><div>Odio in rem fugiat maxime atque et aliquid. Natus asperiores molestiae minus quod omnis. Dolor sequi at in cupiditate impedit similique. Eveniet iure qui occaecati quia nobis modi illum.<br><br></div><div>Voluptates illo tempore excepturi delectus eaque facilis. Dignissimos et amet distinctio sint omnis. Iusto ullam ipsa quis ut repellendus perspiciatis. Eligendi officia laborum ratione rerum.<br><br></div>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:57:46'),
(5, 1, 1, 'Quas esse consequuntur voluptatem est iusto cum.', 'mollitia-eligendi-et-quis-veritatis', NULL, 'Aut quo ut perferendis ducimus. Distinctio maxime sed quo consectetur quibusdam voluptates cupiditate. Ab ipsa ex voluptatibus dolorem asperiores. Possimus omnis quaerat at non aut dignissimos sequi.', '<p>Et animi dolor aliquid molestiae earum. Tempora accusantium voluptatem quia enim cum dolores tenetur.</p><p>Expedita cum aspernatur sint eligendi sed quia totam. Recusandae sed et et voluptatem repellat voluptatem. Animi officiis molestiae delectus.</p><p>Dolores et est non id. Excepturi voluptas et error vitae ipsum temporibus. Vero et accusantium ut. Id nihil et in praesentium et libero repudiandae vel.</p><p>Ut minus vero aperiam est officiis. Aut sint sequi et magnam tenetur culpa. Repellat quaerat doloribus consequatur et. Quo sunt quia aut incidunt rerum ipsam velit. Suscipit rerum sit consectetur sed.</p><p>Qui non dicta modi nam magni. Earum itaque labore eaque necessitatibus repellendus exercitationem quia. Nisi rerum quam laborum voluptatem porro voluptatibus sed mollitia.</p><p>Nihil in eius vel aut totam quasi. Dolor officiis nam non dolores. Veniam minima repellendus aut expedita adipisci.</p><p>Ex doloribus perferendis est omnis alias alias est. Quo aut ut et culpa. Consequatur ratione totam dolorem nesciunt rem est ut.</p><p>Consequatur ratione maiores aut sunt. Totam dignissimos molestias accusantium libero magnam autem aut. Molestiae est enim eaque qui maiores unde. Corporis repellendus mollitia est ea blanditiis.</p><p>Ducimus ratione sit facilis aut. Distinctio et est voluptates qui. Perspiciatis totam molestiae et.</p><p>Aut quis et nam minus veniam quod earum. Laborum non doloribus accusamus. Facere beatae similique architecto repellendus fuga. Sunt voluptas fuga tenetur non labore ea neque.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(6, 1, 1, 'Architecto aut cupiditate magnam omnis.', 'ipsum-voluptatem-delectus-culpa-odio-et-aliquid', NULL, 'Eum magni sit non voluptatem autem. Quae rem et esse incidunt aliquid adipisci. Eos quis tempore sequi laboriosam facilis dolorum.', '<p>Error quo amet ut officiis consequatur. Sed ut debitis cumque. Magnam omnis dolorem est eum sed. Maxime totam voluptas culpa ipsam ea minus ullam.</p><p>Voluptate repudiandae vitae eum voluptas maxime rerum. Quae ipsa qui sunt. Est dolore vero debitis odio temporibus.</p><p>Rerum animi molestiae similique qui expedita. Quia quae magni quam nihil enim adipisci sit. Omnis quis enim eum animi. Veritatis ipsa aliquam et ducimus.</p><p>Accusantium velit odit assumenda est. Delectus enim dolores vel totam recusandae exercitationem veritatis. Enim tempore magnam provident nemo.</p><p>Sapiente porro qui quidem quis debitis sint. Ab nihil corporis placeat quia quam aut assumenda. Vitae nemo saepe voluptates in commodi alias.</p><p>Et sed non maiores et in dolorum maxime. Recusandae perspiciatis sit inventore vero aspernatur ut aspernatur. Ipsa consequatur incidunt atque esse dolor. Nobis beatae nihil dolore quia necessitatibus laboriosam. Quibusdam est ad minima praesentium itaque rerum voluptate.</p><p>Iure ullam quam consequatur voluptatem iure labore ex. Eos ipsa ut quia sit accusantium sit voluptas.</p><p>Inventore velit nesciunt itaque dolor sed. Eos impedit consectetur nulla velit. Nihil eaque numquam et aperiam. Voluptatem quia id perferendis ipsa qui.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(7, 1, 1, 'Consectetur pariatur laborum distinctio iste nisi.', 'ex-sed-et-et-fugit-est', NULL, 'Nemo ab molestias dolores sint ea aperiam. Corrupti officiis magni voluptas quae.', '<p>Earum aliquam facilis magni ratione ab in et. Eligendi quae eum aspernatur et ut odit corrupti modi. Laboriosam nemo provident accusamus ut quis rerum. Optio consequatur consequuntur officiis quasi nihil nisi pariatur.</p><p>Odit iure magnam perspiciatis maiores quaerat expedita. Qui et qui ipsa illum quisquam. Eum vel fugiat ut rerum voluptatem doloremque. Impedit tempore ab autem distinctio adipisci illo soluta quia.</p><p>Rerum aut non saepe sed est est. Ut earum ea amet vel quibusdam sed deleniti. Illo culpa non deleniti ut sed est. Esse ratione velit omnis similique.</p><p>Est error officia ex in aut quas. Repellat quo accusantium quo ut numquam et delectus. Enim enim aliquid sit praesentium soluta dolor quaerat.</p><p>Doloremque molestiae asperiores sed laborum aut ut. Similique in nisi minus quis expedita odit.</p><p>Eveniet aliquid impedit aut est repellat et. Et sequi rerum in sunt eos earum. Laborum amet dolorem sit possimus non vero et. Velit ea unde sint et iusto et magni.</p><p>Optio repudiandae repellat molestiae. Consequatur inventore quidem aut ut vel. Eos sed eum in distinctio ab doloremque unde. Minus quod et enim minima dolor. Iure aut qui quibusdam hic modi.</p><p>Quo rerum sit sed. Aspernatur beatae sequi voluptas minima dolores qui. Incidunt eveniet eveniet expedita saepe corporis eum.</p><p>Voluptatem rem eum molestiae rerum sit distinctio error. Facilis eligendi debitis voluptatem totam voluptatem soluta. Quia adipisci similique quia dolor recusandae. Cupiditate id est itaque ducimus.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(8, 1, 1, 'Et sed laudantium cumque atque voluptatem.', 'aliquid-blanditiis-omnis-nesciunt-laudantium-laboriosam', NULL, 'Cupiditate dolores dolores iure soluta voluptatem. Error vero debitis omnis quidem velit et repellat. Occaecati maxime sed accusamus adipisci magnam veniam at. Dignissimos nihil minus suscipit inventore consequuntur fugiat quia minima.', '<p>Necessitatibus ut voluptates aut. Unde facere sed quisquam vel molestias sint. Deserunt adipisci in sed dolores quia.</p><p>Mollitia qui amet sunt dicta laborum culpa quia id. Quibusdam cumque quas ea quia quasi quo fugit. Aperiam rerum et suscipit et odio corporis qui. Architecto tempora nulla non quo eum beatae.</p><p>Nisi eius labore deserunt quod. Quaerat facere quia in explicabo sapiente totam dolore. Sit pariatur voluptatum fugiat in quas. Quia nihil ut delectus voluptatum fugit corrupti.</p><p>Non itaque minima pariatur at dolore nulla saepe. Ipsam qui odio nihil nulla ea voluptatem voluptas molestias. Vero recusandae voluptatem quaerat corrupti voluptatem dignissimos ut molestiae. Minima et sint libero dolore nulla facere expedita.</p><p>Quo consequuntur ipsa ut qui. Magnam nemo cumque tenetur. Blanditiis laborum occaecati recusandae impedit laboriosam. Nesciunt expedita nulla non.</p><p>Magni nemo voluptate nemo autem. Earum consequatur dolores rem numquam quis nulla officia. Accusantium odit amet quibusdam non id. Doloremque incidunt quos nihil.</p><p>Temporibus dolorum molestiae illum sed placeat ut. Voluptates omnis perferendis cumque beatae ut dolorem harum. Aut sit sint totam consequatur porro.</p><p>Rerum et aut distinctio delectus velit. Corrupti dignissimos perspiciatis velit iure. Quo enim commodi eligendi nemo.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(9, 1, 1, 'Et quod reiciendis optio sit quasi et nam molestiae.', 'rem-atque-velit-et-ut', NULL, 'Aliquam et quia unde sint. Quasi sequi exercitationem corporis consequatur. Esse reprehenderit veniam facere quibusdam nihil neque dolor occaecati.', '<p>Veritatis nesciunt dolore mollitia accusamus rerum. Et repellendus quis aut odio ad labore. Et sit magnam voluptatibus molestiae exercitationem asperiores.</p><p>Maxime iure est sint nulla fugit voluptates ut expedita. Soluta esse quis est occaecati. Quidem non soluta neque facere qui ad. Explicabo vel impedit deleniti ut voluptatem qui.</p><p>Perspiciatis omnis vel ut non modi dicta vitae. Eos ut laboriosam aspernatur eos. Eum fugiat fuga repellat repudiandae et similique. Aut incidunt neque quasi rerum perferendis. Animi et hic magni tenetur illum adipisci nostrum.</p><p>Omnis pariatur omnis similique ut dolorem similique. Consequatur et occaecati qui odit qui a iure suscipit. Consequatur distinctio eos error fugiat et. Est sit eum odio est ut ut.</p><p>Hic fugit ea reprehenderit nisi expedita quo. Et odit aut quia cum sapiente dicta nulla. Consequuntur cupiditate blanditiis quam aut harum. Odit fugiat quaerat dolorem voluptas qui ut voluptatem.</p><p>Reprehenderit tempora est qui nihil. Aperiam dolores sit nulla nostrum omnis. Nostrum reiciendis esse ipsa nisi aut sequi quos.</p><p>Eum qui nihil ea vel neque. Iusto quia facere ut fuga repellendus dicta soluta. Amet deleniti repellendus id ut. Ducimus voluptatem rerum aspernatur dolor.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(10, 1, 1, 'Quod ut sit a maxime facere.', 'exercitationem-qui-aut-animi-tempore-ducimus-ut-et', NULL, 'Quis molestiae molestiae sed ipsum et natus et. Quis molestias blanditiis repellendus accusantium vero voluptas ut tempora. Ut libero ut exercitationem velit quia qui qui. Dolorem qui quas ea quia aut quaerat facilis voluptates.', '<p>Ipsum ipsam quo voluptates hic id ratione. Iusto sed in ullam nobis. Aspernatur cupiditate aut omnis aperiam neque omnis maiores.</p><p>Non recusandae dolores quo et quam dicta occaecati et. Enim veniam est et eius. Voluptates magnam nesciunt occaecati id. Magnam id et cupiditate voluptate asperiores quia et dolores.</p><p>Harum minima nesciunt minima sint exercitationem repellat et porro. Deleniti est eos molestias adipisci quos.</p><p>Eum et est eligendi et. Deleniti illo nihil nobis dolores aliquam aut odit. Ut error velit tempore est ut repellat fuga ea.</p><p>Sunt quia iure minus omnis omnis laboriosam qui. Quae sapiente nulla sed voluptatem. Velit ut iusto qui aut rem.</p><p>Corrupti distinctio unde libero odio quidem. Et non officiis autem repellat et in odit laudantium. Est minima assumenda consequatur sint aut consequatur temporibus.</p><p>Aut consequatur corrupti sint quia sed sunt. Esse ratione libero aut temporibus enim veniam. Labore quia ea laudantium aliquam illo.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(11, 1, 1, 'Reprehenderit quos culpa excepturi aut veritatis et aut.', 'ipsam-aliquam-placeat-id-porro-dolorum', NULL, 'Sint et esse incidunt omnis id cupiditate consequatur. Error voluptatem ea quo error. Doloremque sit asperiores consequatur autem iure dolores. Aliquid cupiditate aliquid est non sapiente.', '<p>Ut voluptatem veritatis molestiae omnis quas et magnam. Est tenetur expedita omnis fugiat ea tempore vel. In id tempora quia saepe optio molestiae quae.</p><p>Quibusdam eum dolorum explicabo quae saepe beatae animi. Laboriosam veritatis vel et laborum quidem sunt sapiente. Et perspiciatis et facere omnis quae expedita.</p><p>Voluptatem fuga minus quia et reprehenderit tenetur alias. Eius voluptas qui natus. Deserunt eaque modi nisi magnam. Voluptas ipsum qui quia molestiae eum possimus et.</p><p>Quis quo temporibus id itaque voluptatibus corporis. Numquam laborum voluptate est ex doloribus enim temporibus. Id et veniam qui ut quod enim deleniti.</p><p>Nulla qui blanditiis harum veniam odit repellat qui. Labore eligendi aliquam laborum ut quae cumque eius. Deleniti est qui nihil cumque rerum provident. Commodi sed aut unde pariatur dignissimos illum.</p><p>Rem atque non et sit iusto. Doloribus dignissimos voluptas et ipsam ullam.</p><p>Adipisci nihil autem iusto et velit. Sed quam vitae facilis asperiores. Corrupti quae ut repellat recusandae. Voluptate molestias reiciendis dolor reprehenderit perferendis non sapiente.</p><p>Nam cumque tempore impedit impedit et sapiente. Cumque est facere ratione quos rerum tempora accusantium. Officia animi sit qui cumque est.</p><p>Quis sapiente ab quia sint nulla ducimus. Velit voluptatibus repellat vel quis. Blanditiis architecto illo sapiente. Nihil incidunt voluptatum debitis qui dolorum aspernatur natus.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(12, 1, 1, 'Aut qui possimus animi debitis velit.', 'provident-placeat-explicabo-deleniti-et-soluta-dolore-voluptas', NULL, 'Ipsum nemo beatae dignissimos tenetur rem accusamus amet. Repellat est sit omnis tempora aut. Et atque dolorem vero reprehenderit. Neque non enim iusto labore.', '<p>Aliquam quae delectus veniam vitae aliquam omnis. Dicta non quaerat praesentium illum veniam perspiciatis. Assumenda corrupti placeat corporis assumenda. Cumque earum excepturi voluptatem eius.</p><p>Doloremque ipsa nisi ipsum vitae ex magnam non earum. Quo sunt a ex magnam ut dolore ipsa. Voluptatem ea sapiente rem nemo nisi harum nobis nulla. Et repudiandae rerum aut similique enim repellendus enim.</p><p>Quia corrupti atque quam aut. Id est praesentium porro blanditiis voluptatem voluptas dolor. Quia eligendi qui vel qui veritatis nulla. Eveniet eum saepe incidunt at mollitia magnam praesentium nobis.</p><p>Expedita ducimus ea eum mollitia aut deleniti. Voluptas minus dolorem omnis molestiae omnis quo eius. Incidunt aspernatur aut omnis.</p><p>Omnis deserunt temporibus iusto et vel non. Cumque ea architecto placeat ut consectetur magnam. Commodi aliquam natus veritatis est vero praesentium ducimus. Qui placeat veritatis quam dolorum.</p><p>Deserunt quis aliquid eius dolor. Iusto possimus rerum impedit culpa doloremque ullam. Natus eius vel quis modi. Fuga fugiat eos modi mollitia veritatis quod voluptatem. Non mollitia sit quia veritatis corporis consequatur enim adipisci.</p><p>Quidem minus sed a nobis iusto repudiandae. Laboriosam iure officiis est in quasi ut non iusto. Itaque voluptatem omnis sunt tempora adipisci omnis modi. Repellat mollitia sequi similique rem nobis rerum.</p><p>Et unde pariatur beatae cupiditate consectetur cupiditate consequatur. Minima consequatur sequi deleniti consequuntur. Qui sunt aut tempore doloribus. Aspernatur eos quia officia fugiat expedita.</p><p>Numquam id quidem qui iste voluptatibus sint aut aspernatur. Ullam in libero rerum quis. Quia corporis tempora iste aliquid est. Autem quo eum ut.</p><p>Dolor architecto at quo voluptas. Cupiditate consectetur sed quis ipsam numquam. Quisquam esse placeat fugit et sed. Perferendis animi illo tempora rerum.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(13, 1, 1, 'Non eum qui id ut omnis.', 'cumque-sit-consequatur-illo-illo-eligendi', NULL, 'Perferendis adipisci blanditiis blanditiis eos fugiat dicta. Accusantium fugit dicta nam et. Architecto in magnam inventore mollitia. Molestias odit nemo quas ea nostrum.', '<p>Maxime dolor iusto qui explicabo et mollitia reiciendis. Sint perferendis et sed. Iure odit at libero est.</p><p>Sit laudantium repellendus culpa quisquam. Voluptas repellendus aut sit aliquam. Error nisi qui corrupti illum voluptas. Nemo ab odit ea.</p><p>Amet est ab molestias rerum animi et. Sapiente non animi nemo placeat voluptatum occaecati nobis. Soluta nam neque provident aut.</p><p>Fugit qui similique aut ad. Omnis aut adipisci laboriosam labore. Quasi deleniti quia libero quisquam voluptatem et velit. Totam atque qui maxime officia.</p><p>Unde autem a deleniti nihil. Dicta et quo nulla soluta saepe et veritatis.</p><p>Cum non voluptatem autem dolor deserunt voluptas repellat incidunt. Enim fugit expedita assumenda explicabo ut aspernatur. Officiis aspernatur ipsam sunt aspernatur cupiditate.</p><p>Nihil et qui quam autem quibusdam eaque eum. Natus beatae amet debitis et. Cupiditate fuga deserunt est necessitatibus accusamus. Temporibus velit quod in.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(14, 1, 1, 'Ad hic sed amet sed dolorem.', 'amet-ab-animi-qui-hic-quos', NULL, 'Aut similique perferendis adipisci id. Sit consequatur id nulla et dolores vel atque ut. Et adipisci modi velit provident. Beatae quidem nihil error velit rerum.', '<p>Ex aliquid id animi illum est est. Consequatur corrupti similique autem repudiandae soluta. Sed eum qui beatae. A eos praesentium quisquam ad. Doloribus nam sapiente aut eum esse sequi eos.</p><p>Repellendus pariatur minus sed voluptatem voluptatum quidem quia illum. Maxime harum non quia non iusto ea facere. Sequi mollitia ea aut inventore. Eius totam repellat fugit excepturi id sequi eligendi deserunt.</p><p>Quisquam eius nobis vero et excepturi nostrum. Exercitationem doloribus perspiciatis dolorem eveniet rerum beatae. Voluptas voluptatem est quae. Molestiae tempora perspiciatis id possimus in excepturi rerum.</p><p>Cupiditate saepe ut veniam aliquam minus earum porro. Quo consequatur dolorum perspiciatis non eum omnis dignissimos. Et natus veniam laudantium cumque aut quaerat.</p><p>Est distinctio ipsam qui fugiat tempore optio. Pariatur error provident rerum nisi omnis reprehenderit dolores. Amet voluptatem quis enim. Sit et vel ipsa quis.</p><p>Amet earum qui aut optio. Nihil aut libero fuga qui sint et quaerat. Magni facere neque quaerat qui ut qui.</p><p>Voluptates occaecati voluptatem magnam et aperiam modi impedit. Quae minima quam nihil aut molestiae itaque. Rerum eveniet totam consequatur facilis porro sint temporibus beatae.</p><p>Possimus itaque ipsam quia. Aut autem voluptatem voluptatem temporibus molestiae. Dicta quo voluptates cumque voluptatum est. Dicta explicabo quibusdam maiores voluptatibus.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(15, 1, 1, 'Et quidem odio ea sequi veritatis.', 'labore-eos-architecto-saepe-consequatur-quae-eveniet-qui', NULL, 'Qui quo perspiciatis excepturi rerum. Odit recusandae molestiae et enim. Optio officiis magnam occaecati doloribus cupiditate et. Alias velit omnis delectus quis ipsam.', '<p>Voluptate et facere atque officia veniam. Magni omnis doloremque quis exercitationem voluptatum repellat. Impedit commodi quos sequi asperiores corrupti dolores. Eos enim qui necessitatibus eveniet optio et sit.</p><p>Magni libero quo omnis quia sunt. Iste officia iusto sit autem et ut qui deserunt.</p><p>Aliquid enim optio debitis sed. Error rerum error et quae nesciunt eos. Omnis commodi ratione porro dolores est. Incidunt eum ipsa et et aperiam autem voluptas.</p><p>Ab dignissimos atque quis qui dignissimos. Voluptatibus voluptas autem iure quo illo in ratione. Eveniet animi alias et perspiciatis libero corrupti beatae.</p><p>Adipisci sit qui earum labore ex consequuntur molestiae. Quaerat harum omnis repudiandae est quia rerum dignissimos. Iste earum et voluptatem qui ipsam fugit velit. Consequatur quia at hic aspernatur.</p><p>Non libero repudiandae ipsum provident tempore quod alias. Quaerat ducimus quia voluptatem mollitia perferendis magni. Odio praesentium dolor veritatis tempore et. Non illum ratione similique numquam delectus.</p><p>Distinctio et voluptates deleniti voluptatum. Non voluptatem omnis sunt est. Quis culpa voluptatem autem enim eum dolor.</p><p>Expedita optio nesciunt dicta enim consequuntur incidunt. Maiores ut facilis qui voluptatem explicabo nostrum debitis aperiam. Consectetur suscipit quo sed sapiente dignissimos rerum. Et neque nihil ducimus nisi quo ipsa reiciendis quia.</p><p>Temporibus rerum minus praesentium saepe officia. Porro facilis molestiae itaque cumque. Deleniti non necessitatibus autem cumque nesciunt. Consequatur odio omnis voluptatibus cum odit tempore.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(16, 1, 1, 'Qui aliquam tempore maxime ducimus praesentium repellendus temporibus laboriosam.', 'in-sunt-ut-dolorem-accusamus', NULL, 'Fugit dolorem enim eum quae assumenda ipsam numquam. Quia repellat aut voluptas sunt qui minima quo. Quia ut ut dolorum sapiente quae quia amet. Iste dolorem tempora exercitationem ipsam est exercitationem dolore qui.', '<p>Mollitia qui dolorem natus inventore est nihil quia. Reprehenderit assumenda dolore velit facilis. Dolores ut minima et. Vel cum et impedit mollitia accusamus enim.</p><p>Fuga aut porro est odit et numquam unde. Fugiat distinctio molestiae recusandae porro ut autem nam. Et voluptas aut ut sed molestiae. Saepe ut aut beatae quia.</p><p>Omnis cumque rem necessitatibus quia quia saepe omnis id. Necessitatibus maxime nulla velit aliquid fuga nisi. Aspernatur nihil ducimus nihil qui ea cumque. Minus qui est hic sed earum.</p><p>Magnam sed eos eligendi qui. Modi sunt inventore iste consequatur similique. Ad laboriosam et iure fuga quos odit qui fuga.</p><p>Cupiditate sunt enim rerum sunt tenetur. Cumque fugit distinctio molestias cumque. Tempore laborum optio labore doloremque adipisci.</p><p>Inventore tempora distinctio ut omnis odio expedita dicta. Dolor voluptates est tempora nam.</p><p>Cupiditate qui praesentium aliquam qui quae neque aut. Veniam ut ea velit nam totam aliquam quibusdam. Eligendi nihil quis aut voluptatem est. Quia eos voluptatem libero voluptatem in eius vel.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(17, 1, 1, 'Praesentium nihil officia magni veniam sit incidunt consequuntur.', 'cupiditate-voluptatem-cum-veniam', NULL, 'Et eos non beatae nam. Iusto aut enim ad qui quam. Recusandae occaecati quidem itaque.', '<p>Neque aut eum eaque voluptatum consectetur. Illum quasi voluptatem voluptatem qui saepe et facilis ducimus. Maiores a reprehenderit maiores omnis dolores a. Iste consectetur nam molestiae esse ad neque a.</p><p>Occaecati facere cupiditate earum similique est. Vel omnis libero adipisci eius voluptates maiores quae.</p><p>Aliquam nihil sed sit iure illum corporis ullam. Minus illo numquam delectus dolores. Quo dicta voluptates sit incidunt hic. Deleniti placeat nemo vel in ipsam consequatur iure.</p><p>Sed dolores qui ad est. Illum ab minus aliquam vel possimus. Exercitationem animi quas quos error.</p><p>Ipsa aut et excepturi perspiciatis cum recusandae aut. Ad in ullam accusamus maxime sit numquam illo.</p><p>Voluptatem autem doloribus impedit voluptatem. Ullam hic et et ab atque explicabo autem. Aut ut quam qui iusto quae optio. Consequuntur quia sunt sed qui.</p><p>Cumque repellat consectetur neque consequatur. Error aut dicta explicabo rem sit quaerat excepturi. Debitis minima eius laudantium praesentium sunt iste. Dolore iusto earum cum praesentium itaque id iusto dolor.</p><p>Optio ipsam sequi tempore ipsam iure non ut. Ut ducimus occaecati et minima quia. Corrupti rerum impedit beatae et eaque est. Recusandae ex consequatur et repudiandae dolorum occaecati. Nemo possimus provident at sit aut ut quasi.</p><p>Quidem possimus nulla reiciendis molestiae corrupti nemo tempora. Quibusdam quia iusto nam magnam. Quo voluptates quo aut totam. Aut aut atque sint.</p><p>Numquam unde praesentium optio est eum ut deserunt quia. Pariatur sit est et in dicta est. Minima incidunt illo facilis magni qui nam sint.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(18, 1, 1, 'Molestiae quia inventore tenetur velit tempore dolor.', 'inventore-quidem-a-vel-voluptas-est-beatae-ad', NULL, 'Officia sed et sunt ut vero distinctio impedit. Fugit et quo iusto officia blanditiis.', '<p>Quibusdam non laborum perferendis doloribus velit sed necessitatibus et. Odio ut voluptas at consequuntur eveniet atque. Quos officiis eos ut iusto. Molestiae accusantium sit repellat atque autem soluta.</p><p>Consequuntur molestiae molestias labore debitis exercitationem. Enim veritatis sequi laudantium dolores. Odit qui sequi qui in magni iure maiores.</p><p>Vel sequi fugiat sed deleniti aut laboriosam molestias exercitationem. Enim a enim sit numquam ipsum id ullam. Ut suscipit velit velit totam harum natus.</p><p>Laborum molestiae ipsam vitae. Est ullam possimus quod cumque perferendis porro in. Enim porro officiis ab officia sed aliquam. Consectetur quas tenetur natus.</p><p>Corporis deleniti blanditiis dolorem qui et molestiae earum illum. Beatae eos et autem accusamus. Quia expedita eveniet vel iusto aut ut velit. Modi eos libero magni officiis libero omnis.</p><p>Nostrum sed optio autem fugit. Expedita id ea vero est vero non excepturi. Sed asperiores harum odio saepe quidem. Quibusdam occaecati et veritatis veniam vel quod.</p><p>Eum dicta non dolorem ex. Rerum sunt voluptatem at atque quaerat nemo. Quibusdam vitae eius nihil nam voluptatibus rem molestiae. Voluptatum magnam atque rerum molestias quia. Quae repellendus eos qui esse eum maxime.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(19, 1, 1, 'Voluptatem suscipit voluptas quaerat cumque iusto.', 'vel-animi-et-ad-esse-voluptates-voluptates-quaerat-voluptas', NULL, 'Deleniti praesentium est inventore aut blanditiis sed. Ad dolor quibusdam et consequuntur fuga et dolorem ratione. Porro nam quia et quisquam harum quia.', '<p>Rem repellendus voluptatem suscipit impedit est. Ex autem laboriosam ipsam molestias veniam est iusto. Hic adipisci veritatis sequi ad omnis.</p><p>Cupiditate dolorem repudiandae rerum culpa assumenda consequatur. Delectus et ut dolorum rerum. Facere sint et officia. Aut id corporis unde non tenetur libero ex et.</p><p>Et alias dicta ipsum quod commodi aliquam perspiciatis earum. Sit cumque omnis distinctio blanditiis unde consequatur. Dolor odit voluptatem nam dolore tenetur reiciendis. Est dignissimos optio dolorum velit unde aliquid.</p><p>Atque illo aut voluptas saepe pariatur. Sunt rerum quo aut quas iure voluptatibus. Fugit voluptates inventore ea tempore dolor. Ratione velit odit consequatur fuga rerum distinctio deserunt. Vitae sequi excepturi natus doloribus iusto vel.</p><p>Labore recusandae id perferendis possimus dolore sint. Saepe enim ex similique cupiditate consequatur. Cum ullam omnis aut modi maiores qui. Fugiat maiores ea repellat eos natus dolor quidem.</p><p>Odio sed est vitae labore. Adipisci accusantium esse impedit esse asperiores dolore est. Quos quis laudantium hic modi eius earum. Sed et excepturi doloribus qui.</p><p>Sunt vel quia dicta blanditiis nulla. Et fuga rerum tenetur rerum delectus libero. Ipsum soluta similique facilis similique quod qui laborum.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06'),
(20, 1, 1, 'Fugit voluptatem voluptatem libero unde dolorem non.', 'est-pariatur-cum-voluptatem-aliquam-eos-nemo-mollitia', NULL, 'Et numquam delectus et enim esse impedit repellat. Harum esse voluptatem soluta explicabo quo ut facilis.', '<p>Repudiandae quia molestiae quidem minus suscipit et. Quos tenetur quia voluptatem illo et. Facilis qui qui beatae aut quaerat. Animi asperiores iste dolorum et animi asperiores.</p><p>Veritatis molestias est sed libero voluptatem ipsam. Deserunt doloremque molestiae enim reiciendis eum. Voluptatum voluptatem quasi aut et minima nam rerum.</p><p>Possimus sed eum qui dignissimos. Doloremque quia doloremque iusto molestiae molestiae nemo expedita. Unde earum voluptatem fugit exercitationem qui officiis sequi. Neque qui nobis ab perspiciatis reprehenderit debitis.</p><p>Ut repudiandae hic voluptatum nihil quae. Dignissimos fuga dolores est ipsum et id consequatur tenetur. Ut voluptatibus omnis soluta facere optio voluptatum illum. Accusantium sed maiores laborum ratione officia est.</p><p>Quisquam sint explicabo officiis voluptatum enim. Enim assumenda asperiores autem. Ipsam asperiores quis neque occaecati ea. Magnam numquam possimus assumenda repellat.</p><p>Maiores sed fugiat et qui. Exercitationem expedita natus quia minima ratione. Illo laborum nemo unde dolores quo.</p><p>Enim aliquam facere odit consectetur reprehenderit ad. Doloribus et mollitia voluptatem quis. Voluptas vero ducimus maxime dolore laudantium odio in.</p><p>Nobis quo officia ullam. Natus voluptates magnam quo et provident repellat ducimus. Sequi saepe a nemo maxime.</p>', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surats`
--

CREATE TABLE `surats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` int(11) NOT NULL,
  `jsurat_id` bigint(20) UNSIGNED NOT NULL,
  `jkel_id` bigint(20) UNSIGNED NOT NULL,
  `agama_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ttl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `surats`
--

INSERT INTO `surats` (`id`, `nik`, `jsurat_id`, `jkel_id`, `agama_id`, `user_id`, `nama`, `ttl`, `alamat`, `telepon`, `pekerjaan`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 123456, 5, 1, 1, 2, 'Bayu Pratama', 'Jombang, 12 Juni 2001', 'Sungai Pagar', '0812222244', 'Karyawan Swasta', NULL, '2021-12-18 23:07:58', '2021-12-18 23:07:58'),
(2, 123456, 3, 1, 1, 2, 'Bayu Pratama', 'Jombang, 12 Juni 2001', 'Sungai Pagar', '0812222244', 'Karyawan Swasta', NULL, '2021-12-18 23:09:15', '2021-12-18 23:09:15'),
(3, 12345678, 7, 2, 2, 4, 'Dewi Kartika', 'Pekanbaru, 29 Maret 1999', 'Sungai Apit', '08123456', 'Mahasiswa', NULL, '2021-12-18 23:19:03', '2021-12-18 23:19:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `nik`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Admin', '123', 'admin', 'admin@gmail.com', NULL, '$2y$10$T5y7r8.jeVsSKKJK0H7LHuYFuVrIpiddTTzQ7IUZiAHtEnoduP1bC', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06', 1),
(2, 'UserPertama', '1234', 'user', 'user@gmail.com', NULL, '$2y$10$neybmMVolPTLQGnUnDBCXuY7ULk9zqNf9W0/CXtQtP93Ekq25KzUi', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06', 0),
(3, 'Raja Indra Ramoza', '123456', 'rajaindraramoza', 'rajaindra97@gmail.com', NULL, '$2y$10$T01p8dpzvV0Bz7vWmZAAdOWYhB1alN3mj6A4tKLVV.9EC/sM9Y8Fe', NULL, '2021-12-18 22:50:06', '2021-12-18 22:50:06', 1),
(4, 'UserKedua', '12345', 'userkedua', 'user2@gmail.com', NULL, '$2y$10$ileLZWDJXoU6SvhW1ZTEVe9dCbftUCRwE4w0HHFIF7NDbyg7Q.roy', NULL, '2021-12-18 23:17:02', '2021-12-18 23:17:02', 0),
(5, 'Kepala Desa', '12', 'kepaladesa', 'kepaladesa@gmail.com', NULL, '$2y$10$T5y7r8.jeVsSKKJK0H7LHuYFuVrIpiddTTzQ7IUZiAHtEnoduP1bC', NULL, '2021-12-19 07:57:56', '2021-12-19 07:57:58', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `jkels`
--
ALTER TABLE `jkels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jsurats`
--
ALTER TABLE `jsurats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jsurats_nama_unique` (`nama`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `surats`
--
ALTER TABLE `surats`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jkels`
--
ALTER TABLE `jkels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jsurats`
--
ALTER TABLE `jsurats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `surats`
--
ALTER TABLE `surats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
