-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  sqletud.u-pem.fr
-- Généré le :  Jeu 03 Juin 2021 à 18:27
-- Version du serveur :  5.5.62-0+deb8u1-log
-- Version de PHP :  7.0.33-0+deb9u7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mduna_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `anciaux_cv_formulaire`
--

CREATE TABLE `anciaux_cv_formulaire` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `sujet` varchar(200) NOT NULL,
  `messages` longtext NOT NULL,
  `dates` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `anciaux_cv_formulaire`
--

INSERT INTO `anciaux_cv_formulaire` (`id`, `nom`, `email`, `tel`, `sujet`, `messages`, `dates`) VALUES
(46, 'FLAVIEN ANCIAUX', 'flavanciaux@gmail.com', '+33762607563', 'fefe', 'TEST 3 ', '2027-05-21 07:05:58'),
(47, 'FLAVIEN ANCIAUX', 'flavanciaux@gmail.com', '+33762607563', 'TEST', 'test 8', '2027-05-21 07:05:50'),
(50, 'Sonia B', 'soniaB@gmail.com', '', 'test', 'test final', '2003-06-21 01:06:12');

-- --------------------------------------------------------

--
-- Structure de la table `arrii_cv_formulaire`
--

CREATE TABLE `arrii_cv_formulaire` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `arrii_cv_formulaire`
--

INSERT INTO `arrii_cv_formulaire` (`id`, `nom`, `email`, `message`) VALUES
(1, 'victoria Arrii', 'victoria.arriipro@gmail.com', 'blabla'),
(2, 'victoria Arrii', 'victoria.arriipro@gmail.com', 'bonjour'),
(18, 'Sonia B', 'soniaB@gmail.com', 'test final');

-- --------------------------------------------------------

--
-- Structure de la table `domaine`
--

CREATE TABLE `domaine` (
  `id` int(3) NOT NULL COMMENT 'Pour une raison incomprise, il n''a pas été possible de mettre l''id en clé primaire',
  `nom` varchar(50) DEFAULT NULL,
  `id2_domaine` int(3) DEFAULT NULL,
  `id_formation` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `domaine`
--

INSERT INTO `domaine` (`id`, `nom`, `id2_domaine`, `id_formation`) VALUES
(1, 'développement', 1, 1),
(1, 'développement', 1, 2),
(1, 'développement', 1, 3),
(1, 'développement', 1, 4),
(2, 'graphisme', 2, 5),
(2, 'graphisme', 2, 6),
(2, 'graphisme', 2, 7),
(2, 'graphisme', 2, 8),
(3, 'audiovisuel', 3, 9),
(3, 'audiovisuel', 3, 10),
(3, 'audiovisuel', 3, 11),
(3, 'audiovisuel', 3, 12),
(4, 'communication_marketing', 4, 13),
(4, 'communication_marketing', 4, 14),
(4, 'communication_marketing', 4, 15),
(4, 'communication_marketing', 4, 16);

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE `ecole` (
  `id` int(3) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `id2_ecole` int(3) DEFAULT NULL,
  `localisation` varchar(50) DEFAULT NULL,
  `candidature` varchar(100) DEFAULT NULL,
  `id_formation` int(3) DEFAULT NULL,
  `description` text NOT NULL,
  `visuel_recto` varchar(200) NOT NULL,
  `visuel_verso` varchar(200) NOT NULL,
  `affichage` varchar(15) NOT NULL,
  `carte` varchar(50) NOT NULL,
  `dos_carte` varchar(50) NOT NULL,
  `balle` varchar(15) NOT NULL,
  `div_podcast` varchar(25) NOT NULL,
  `play` varchar(20) NOT NULL,
  `pause` varchar(20) NOT NULL,
  `class_h1` varchar(50) NOT NULL,
  `lien_ecole` text NOT NULL,
  `class_ici` varchar(25) NOT NULL,
  `Podcast` text NOT NULL,
  `src_musique` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ecole`
--

INSERT INTO `ecole` (`id`, `nom`, `id2_ecole`, `localisation`, `candidature`, `id_formation`, `description`, `visuel_recto`, `visuel_verso`, `affichage`, `carte`, `dos_carte`, `balle`, `div_podcast`, `play`, `pause`, `class_h1`, `lien_ecole`, `class_ici`, `Podcast`, `src_musique`) VALUES
(1, 'Gobelins', 1, 'Paris', 'concours + entretien', 1, 'Cette célèbre école <b>privée parisienne</b> vous offre la possibilité de candidater pour un </b>bachelor en développement web et mobile</b>, se réalisant en <b>alternance</b> si l’étudiant le souhaite. Pour ce faire, vous devrez <b>passer un concours, suivi d’un entretien.</b> Ces derniers mèneront ou non à la sélection de votre dossier.<br>\r\nLe bachelor offert par cet établissement regorge de matières. Vous y apprendrez des notions poussées en Javascript, des méthodologies de conception technique, le développement d’applications mobiles (avec React), la conception d\'expériences immersives, créatives et techniques, etc.<br>\r\nNous vous recommandons <b>d’avoir de solides bases</b> en langages front-end, ainsi qu’une bonne aptitude à travailler en équipe avant de postuler pour ce bachelor.\r\n', 'images/ecole-dev/GOBELIN4-recto.png', 'images/ecole-dev/GOBELIN4-verso.png', 'container', 'carte4', 'carte4dos', 'ball4', '0', '', '', 'titre_jaune', 'https://www.gobelins.fr/formation/bachelor-dev-3-ans-bachelor-developpeur-web-et-mobile-3-ans', 'ici_jaune', '', ''),
(2, 'IUT de Bobigny', 2, 'Bobigny', 'plateforme e-candidat', 2, 'Envie de poursuivre vos études avec une <b>licence pro métiers du numérique</b>? L’IUT de <b>Bobigny</b> risque d’avoir de quoi combler vos envies! De plus, cette formation s’effectue en <b>alternance</b> avec un rythme de 3 jours en entreprise et 2 jours à l’école.\r\nL’anglais, la programmation, l’UX/UI design, la communication professionnelle, la base de données, la culture informatique et les projets tutorés sont des enseignements qui vous plaisent? Si la réponse est oui, n\'hésitez pas à postuler! Pour ce faire, il vous suffit de <b>candidater en ligne</b> sur leur plateforme <b>e-candidat</b>.\r\nEn ce qui concerne les prérequis, munissez-vous de vos meilleures compétences en développement web, ainsi qu’en UI/UX design et le tour est joué!\r\n', 'images/ecole-dev/IUTBOBIGNY3-recto.png', 'images/ecole-dev/IUTBOBIGNY3-verso.png', 'container2', 'carte2', 'carte2dos', 'ball', '0', '', '', 'titre_jaune', 'https://iutb.univ-paris13.fr/formations/metiers-du-multimedia-et-de-linternet/licence-pro-metiers-du-numerique-conception-redaction-et-realisation-web/licence-pro-mn-charge-de-communication-numerique/', 'ici_jaune', '', ''),
(3, 'ECV', 4, 'Paris, Bordeaux, Aix en provence, Nantes, Lille', 'dossier + entretien + test + cv et lettre de motivation', 4, 'Envie de terminer vos études en beauté? L’ECV vous propose un <b>master en développement web</b>, afin de parfaire votre parcours. Cette école <b>privée</b>possède 5 campus: <b>Paris, Bordeaux, Aix-en-Provence, Nantes et Lille</b>. <br>\r\nJavascript, PHP, l’intégration et le front-end, ainsi que la stratégie et la gestion sont des enseignements qui vous intéressent? Des enseignements dont vous avez les bases? Si la réponse est oui, cette formation devrait vous correspondre! Sa valeur ajoutée est <b>l’alternance</b> qui peut durée de 12 à 24 mois.<br>\r\nAlors convaincue? Si c’est le cas, rendez vous sur leur site accompagné d’un <b>CV</b> et d’une <b>lettre de motivation</b>, afin de remplir <b>un dossier</b>, <b>passer un entretien</b>, ainsi que des <b>tests finaux</b>, qui nous l’espérons mèneront à votre admission!\r\n', 'images/ecole-dev/ECV1-recto.png', 'images/ecole-dev/ECV1-verso.png', 'container', 'carte1', 'carte1dos', '', 'div_podcast4', 'play1', 'pause1', 'titre_jaune', 'https://www.ecv.fr/digital/formations/mastere-developpement-web/', 'ici_jaune', 'Podcasts/podcast4ecv.mp3', 'musique1'),
(4, 'Sup de web', 3, 'Paris, Nice, Marseille, Bruxelles, Toulouse, Stras', 'test + candidature en ligne', 3, 'A la recherche d’un <b>mastère en développement mobile en alternance</b>? <b>Sup de Web</b> est peut-être l’école qu’il vous faut! D’autant plus si vous maitrisez les <b>langages de programmations</b> et êtes un adepte du <b>mobile first</b>!<br>\r\nEntre un module d\'introduction au développement web, au développement, à l’environnement mobile, au e-marketing, en techniques digitales ou en projets, vous trouverez de quoi combler vos envies.<br>\r\nL’école dispose de <b>plusieurs sites </b>: Paris, Nice Marseille, Bruxelles, Toulouse, Strasbourg, Rennes, Reims, Angoulême et mediaschool international.\r\nEn ce qui concerne l’inscription, il sera de votre devoir de <b>candidater en ligne</b>, passer un entretien, puis un petit test d’admission.\r\n', 'images/ecole-dev/Supdeweb2-recto.png', 'images/ecole-dev/Supdeweb2-verso.png', 'container2', 'carte3', 'carte3dos', 'ball2', '0', '', '', 'titre_jaune', 'https://supdeweb.com/formation-web/annees-4-5/developpement-mobile/', 'ici_jaune', '', ''),
(5, 'EFFICOM', 8, 'Montrouge, Lille', 'dossier + entretien + test + cv et lettre de motivation', 8, 'Cette école privée vous propose un <b>Bachelor en Design graphique</b>, accessible avec un <b>bac +3</b>. Elle se situe dans deux villes: <b>Lille</b> et <b>Montrouge</b> (92).<br>\r\nVous y retrouverez des <b>enseignements vastes</b> et variés tels que la photographie, la culture Web, l’anglais du design, le management des projets et tant d’autres.<br>\r\nAfin de vous immerger dans le monde professionnel, vous aurez l’opportunité de faire votre formation en <b>alternance</b>. Avant cela, assurez-vous d’avoir un <b>bagage suffisant</b>en argumentation, dialogue avec un client, analyse de cible et travail d’équipe.<br>\r\nEnfin, si vous souhaitez vous inscrire, il vous suffit de vous rendre sur le site afin de remplir un dossier, ainsi que de passer un entretien, qui si vous le réussissez, vous donnera accès à des tests. Suite à ces étapes, il ne vous restera plus qu’à venir visiter le campus!\r\n', 'images/ecole-graph/EIFFICOM4-recto.png', 'images/ecole-graph/EIFFICOM4-verso.png', 'container2', 'carte1', 'carte1dos', 'ball3', '0', '', '', 'titre', 'https://www.efficom.fr/design_school/bachelor-design-graphique/', 'ici', '', ''),
(6, 'HETIC', 5, 'Montreuil', 'rdv en ligne + appel + entretien + dossier de candidature', 5, 'Envie d’un <b>bachelor</b> qui comble deux de vos centres d\'intérêts, en l\'occurrence le marketing et l’UX design? HETIC à créer le <b>bachelor en web marketing UX</b> pour des profils comme le vôtre!<br>\r\nCette formation est disponible dans la ville de <b>Montreuil</b> et vous offre de <b>multiples enseignements</b>. Parmi ces derniers vous trouverez le Design thinking, Product Management, SEO, Soft skills, Code for marketers, Nouveaux usages et Méthodologie lean.<br> \r\nComme de nombreuses écoles, HETIC est une <b>école privée</b>, qui dans le cas de cette formation vous propose une <b>alternance</b> en 3ème année, avec un rythme de 2 semaines en entreprise et 1 semaine à l’école.\r\nEn ce qui concerne les <b>compétences requises</b>, les voici : \r\n <br>• Mettre en œuvre une stratégie de mesure\r\n <br>• Comprendre les différents modèles de monétisation du digital\r\n <br>• Concevoir et mettre en œuvre une stratégie\r\n <br>• Développer votre leadership\r\n<br><br>\r\n<b>L\'inscription</b> à cette école se déroule en <b>deux étapes</b>. La première consiste à déposer un dossier de candidature sur le site, tandis que la seconde résulte à passer un entretien en ligne.', 'images/ecole-graph/HETIC1-recto.png', 'images/ecole-graph/HETIC1-verso.png', 'container', 'carte4', 'carte4dos', '', 'div_podcast', 'play1', 'pause1', 'titre', 'https://www.hetic.net/formations/bachelor-webmarketing', 'ici', 'Podcasts/podcast3hetic.mp3', 'musique1'),
(7, 'LISAA', 7, 'Paris', 'oral + dossier + CV', 7, 'Vous êtes désireux de compléter votre cursus avec un <b>master direction artistique numérique/ média animé</b>?  En formation initiale, internationale ou en alternance, libre à vous de choisir ce qui vous convient le mieux! Si vous êtes toujours en train de lire, l’école parisienne privée <b>LISAA</b> pourrait bien être celle qu’il vous faut!\r\nVous y retrouverez des enseignements divers et variés: Projet client, Design d’interfaces, Anglais, Vidéo, Direction artistique, Animations 3D, Gestion d’entreprise,etc.<br>\r\nAfin d’être à l’aise avec ces matières, il est conseillé d’avoir de solides <b>bases en négociation, proposition de solutions graphiques créatives et management d’équipes</b>.<br>\r\nSi cette formation est faite pour vous, rendez vous sur le site de l’école afin de demander un entretien.\r\n', 'images/ecole-graph/LISAA3-recto.png', 'images/ecole-graph/LISAA3-verso.png', 'container2', 'carte3', 'carte3dos', 'ball2', '0', '', '', 'titre', 'https://www.lisaa.com/fr/formation/specialisation-direction-artistique-numerique', 'ici', '', ''),
(8, 'ICAN', 6, 'Paris', 'cv + lettre de motivation + book', 6, 'Vous êtes passionnés de jeux vidéo et à la recherche d’un <b>Mastère</b> dans ce domaine? L’ICAN propose une formation qui devrait être dans vos cordes! Cette dernière n’est qu’autre que le <b>Mastère Game Design</b>. Entre UI Design, Level Design, Projets personnels, Culture du jeu de société hybride ou encore modélisation 3D, vous trouverez chaussure à votre pied.<br>\r\nIl vous sera cependant recommandé de maîtriser les compétences suivantes : <br>\r\n•Avoir un esprit de synthèse<br>\r\n•Etre à l’écoute<br>\r\n•Etre créatif<br>\r\n•Avoir une bonne culture des jeux vidéos<br><br>\r\n\r\nCette école <b>privée parisienne</b> vous poussera dans le monde de l’entreprise grâce à son apprentissage en <b>alternance</b>, avec un rythme d’un seul jour de cours par semaine. Vous aurez alors la chance de vous familiariser davantage avec le monde du travail.<br>\r\nSi vous souhaitez rejoindre cette école, il vous faudra <b>passer un entretien</b>, sans oublier de préparer au préalable <b>votre CV, lettre de motivation, ainsi qu’un book à présenter</b>.\r\n', 'images/ecole-graph/ICAN2-recto.png', 'images/ecole-graph/ICAN2-verso.png', 'container', 'carte2', 'carte2dos', 'ball', '0', '', '', 'titre', 'https://www.ican-design.fr/formation/mastere-game-design.html', 'ici', '', ''),
(9, 'Sup de Création', 11, 'Paris', 'candidature en ligne', 11, 'Cette école <b>privée</b> a pour vocation de transformer les étudiants créatifs en professionnels de l’image. Elle propose pour cela le <b>bachelor en Film Making à Paris</b>. \r\nEntre reportages, prises de son, analyse de séquences, création de bandes annonces et tant d’autres matières plus passionnantes les unes que les autres, vous trouverez de quoi vous épanouir. Toutefois, il  sera tout à votre avantage d’être <b>débrouillard</b> en sound design, de savoir utiliser des logiciels de montage ou encore avoir une <b>bonne culture filmique</b>.<br>\r\nAfin de mettre en pratique l’ensemble de vos connaissances, vous serez en alternance avec un rythme de trois semaines en entreprise et une semaine à l’école.</br>\r\nEn ce qui concerne les inscriptions, rien de plus simple. Il vous suffit uniquement de <b>candidater en ligne</b>.\r\n', 'images/ecole-audio/supdecrea1-recto.png', 'images/ecole-audio/supdecrea1-verso.png', 'container', 'carte3', 'carte3dos', '', 'div_podcast3', 'play1', 'pause1', 'titre_rose', 'https://www.supdecreation.com/filiere-game-design/bachelor-film-making/', 'ici_rose', 'Podcasts/podcast1supdecrea.mp3', 'musique1'),
(10, 'EICAR', 12, 'Paris', 'dossier + entretien + test', 12, 'Accessible <b>après un Bac+2</b>, la <b>formation de monteur</b> proposée par cette école vous permettra de <b>professionnaliser vos compétences</b>. Pour ce faire, vous aurez le choix entre faire la formation en <b>alternance</b> ou en <b>stage alterné</b>.<br>\r\nVous naviguerez entre montages, tournages et retouches grâce à de <b>nombreux logiciels</b> tels que: After effects, photoshop, Final cut pro ou encore Media Composer.<br>\r\nDe plus, une certaine maîtrise  des logiciels de <b>montages</b> et une aisance vis à vis des <b>interfaces graphiques</b> vous seront plus que recommandées.<br>\r\nSi vous souhaitez vous inscrire, il vous suffit de créer un dossier sur le site de l’école, afin d’avoir l’opportunité de passer un entretien.<br>\r\nEn ce qui concerne la formation, elle est uniquement disponible sur leur site Parisien, plus précisément à </b>Saint-Denis</b>.\r\n</b>', 'images/ecole-audio/EICAR2-recto.png', 'images/ecole-audio/EICAR2-verso.png', 'container2', 'carte1', 'carte1dos', '', 'div_podcast4', 'play2', 'pause2', 'titre_rose', 'https://www.eicar.fr/formation/monteur/', 'ici_rose', 'Podcasts/podcast5eicar.mp3', 'musique2'),
(11, 'EMC ', 10, 'Malakoff', 'épreuve de science, de culture générale, de culture image, épreuve rédactionnelle et entretien indiv', 10, 'Vous êtes à la recherche d’une <b>licence professionnelle</b> vous permettant d’accéder au métier de <b>monteur truquiste</b>? Cela  tombe bien car <b>EMC</b> vous propose une <b>licence pro en Techniques de Création Audiovisuelle et Multimédia</b> dans la ville de <b>Malakoff</b> (92).  Vous êtes en <b>bonne forme physique</b> et possédez des bases en montages vidéo? Si la réponse est oui n’hésite pas à poursuivre la lecture.<br>\r\nCette formation publique vous formera à travers des enseignements tels que: l’étalonnage, l\'art du montage, le trucage, la gestion du Workflow d’un projet et la maîtrise des logiciels Avid, Premiere Pro et ceux touchant la chaîne graphique. En plus de cela, vous aurez la chance d’être en <b>alternance</b> tout au long de l’année, afin de travailler main dans la main avec des professionnels.<br>\r\nL\'inscription se fait dans un premier temps sur dossier et sera suivie de tests, ainsi que d’entretiens.\r\n', 'images/ecole-audio/EMC3-recto.png', 'images/ecole-audio/EMC3-verso.png', 'container', 'carte2', 'carte2dos', 'ball', '0', '', '', 'titre_rose', 'https://www.emc.fr/d/2-cinema/formation/10-le-metier-de-monteur/presentation.html', 'ici_rose', '', ''),
(12, 'IUT de Saint dié des Vosges', 9, 'Caen, Saint dié des Vosges', '', 9, 'Faites-vous partie des créatifs de ce monde en matière de multimédia et d’audiovisuel? Si la réponse est oui, l’IUT de Saint dié des Vosges a peut-être la formation qu’il vous faut! En effet, cet établissement <b>public</b> offre la possibilité de réaliser une <b>licence professionnelle en Techniques de Création Audiovisuelle et Multimédia</b>. Vous occuperez le statut <b>d’alternant</b> et pour ce faire, il est nécessaire de <b>monter un dossier</b>. <br>\r\nCette formation demande à l’étudiant de disposer de certaines <b>compétences</b> telles que savoir communiquer, maîtriser des outils relatifs à la réalisation numérique, élaborer une stratégie de communication, réaliser des supports de communication, etc.<br>\r\nCes compétences sont requises afin de briller dans les </b>matières enseignées </b>: Création numérique, Management de projets, techniques de création audiovisuelle et multimédia, techniques de communication, etc.\r\n', 'images/ecole-audio/TECAM4-recto.png', 'images/ecole-audio/TECAM4-verso.png', 'container2', 'carte4', 'carte4dos', 'ball4', '0', '', '', 'titre_rose', 'http://iutsd.univ-lorraine.fr/formation/mmi/lp-mn/', 'ici_rose', '', ''),
(13, 'Université Lumière', 16, 'Lyon', 'plateforme e-candidat', 16, 'Située à Lyon, l’Université Lumière propose une <b>Licence information, communication et média journalisme et  numérique</b>. Afin d’y accéder, il est de votre devoir de fournir un dossier en ligne, qui sera soigneusement étudié par un jury.<br>\r\nQu\'attend-t-on de vous? Une certaine habilité en <b>création de sites web</b>, sciences humaines et sociales,gestion éditoriale, mais également une bonne gestion des <b>réseaux sociaux</b>.<br>\r\nCette licence offre un programme complet avec des enseignements tels que :<br> Analyse du discours en communication, Pratique d’écriture journalistique, Création numérique et publication web, Projet éditorial, Technique de la communication, etc. <br>Afin de vous professionnaliser, vous devrez réaliser un stage d’une durée minimum de 1 mois.<br> \r\nEnfin si vous souhaitez partir <b>étudier à l’étranger</b>, sachez que cette formation vous donnera cette opportunité.\r\n', 'images/ecole-com/LMD4-recto.png', 'images/ecole-com/LMD4-verso.png', 'container', 'carte1', 'carte1dos', 'ball3', '0', '', '', 'titre', 'https://www.univ-lyon2.fr/licence-3-info-com-medias-journalisme-et-numerique-2', 'ici', '', ''),
(14, 'ITIC', 14, 'Montpellier', 'plateforme e-candidat', 14, 'Située à Montpellier, cette école vous propose une <b>licence Communication, Médias et Médiations numérique (CMM)</b>.<br>\r\nVous aurez alors l’occasion de renforcer vos connaissances à travers des matières telles que Culture numérique, Web sémantique, Ecriture journalistique, actualités médiatiques, langue vivante et tant d’autres.<br>\r\nAfin de mettre un pied dans le monde professionnel, vous aurez l’occasion de faire un <b>stage</b> d’une durée de 3 semaines maximum durant votre année à l’ITIC.<br>\r\nSi vous pensez que cette licence est faite pour vous, n’hésitez pas à vous rendre sur le site de l’école afin de candidater via leur plateforme en ligne. Avant cela, assurez d’avoir les bases nécessaires en culture du numérique, organisation de projets, analyse des situations de communication et actualités médiatiques.\r\n', 'images/ecole-com/ITIC2-recto.png', 'images/ecole-com/ITIC2-verso.png', 'container2', 'carte2', 'carte2dos', 'ball', '0', '', '', 'titre', 'https://www.univ-montp3.fr/fr/formations/offre-de-formation/licence-lmd-XA/arts-lettres-langues-ALL/licence-sciences-du-langage-program-fr_rne_645612x_pr_1240497063494/parcours-communication-medias-mediations-numeriques-cmm-l1-a-l3-subprogram-fr_rne_0341089z_pr_1295518178970.html', 'ici', '', ''),
(15, 'ISCOM', 13, 'Paris, Lille, Lyon, Montpellier, \r\nToulouse, Rouen', 'concours', 13, 'Vous êtes à la recherche d’un <b>bachelor en Marketing et Publicité</b>? Vous savez vous débrouiller lorsqu’il s’agit de parler anglais, créer des publicités ou encore développer votre créativité? L’ ISCOM a de quoi répondre à vos attentes!<br>\r\nGrâce à cette formation, vous aurez la chance de <b>développer des connaissances</b> à travers des matières telles que: E-commerce, Anglais, Création et communication digitale, Ux design, Edition numérique/vidéo, etc. De plus, afin d’appliquer votre savoir, vous aurez l’opportunité d’effectuer un <b>stage à l’étranger</b> pour une durée de 4 mois.<br>\r\nEn ce qui concerne l’école, cette dernière est privée et se situe dans de nombreuses agglomérations (<b>Paris, Lyon, Lille, Montpellier, Rouen, Bordeaux, Strasbourg et Toulouse</b>) . Si vous souhaitez vous y inscrire, il vous faudra compléter un formulaire en ligne, puis passer des <b>épreuves à distance</b> (en vue de la situation sanitaire).\r\n</b>', 'images/ecole-com/ISCOM1-recto.png', 'images/ecole-com/ISCOM1-verso.png', 'container', 'carte4', 'carte4dos', '', 'div_podcast', 'play1', 'pause1', 'titre', 'https://www.iscom.fr/fr/programmes/grande-ecole-de-communication/specialisations/1548-marketing-publicite', 'ici', 'Podcasts/podcast2iscom.mp3', 'musique1'),
(16, 'ISEG', 15, 'Paris, Toulouse, Bordeaux, \r\nLille, Lyon, Nantes, ', 'concours  + entretien', 15, 'L’ISEG est une école <b>privée</b> proposant une formation qui pourrait aussi bien vous intéresser à la sortie du DUT MMI, qu’à l’issue de votre <b>BAC+3</b>. Cette dernière peut s’effectuer en <b>alternance</b> ou non selon vos envies.<br></b>\r\nSon objectif est simple: former de futur <b>expert du marketing et de la communication de l’ère digitale</b>.<br>\r\nPour ce faire, vous suivrez des cours de Stratégie de la communication, Marketing international, Géopolitique, Marketing sectoriel et nouvelles tendances. Vous aurez également la possibilité de vous spécialiser en communication global, digital marketing, événementiel marketing ou encore Business développement.<br> \r\nNous vous conseillons toutefois d’avoir une bonne créativité, une agilité relationnelle, ainsi que des connaissances en stratégie marketing, avant de vous lancer dans cette licence.<br>\r\nCette formation est accessible depuis le site  <b>Parisien, Toulousain, Bordelais, Lillois, Lyonnais, Nantais et Strasbourgeois</b>.<br> \r\nEn ce qui concerne la procédure d’inscription, il vous sera demandé de <b>passer un concours, ainsi qu’un entretien</b>.\r\n', 'images/ecole-com/ISEG3-recto.png', 'images/ecole-com/ISEG3-verso.png', 'container2', 'carte3', 'carte3dos', 'ball2', '0', '', '', 'titre', 'https://www.iseg.fr/formation-communication/programme/', 'ici', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `erin_cv_formulaire`
--

CREATE TABLE `erin_cv_formulaire` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8 NOT NULL,
  `courriel` varchar(256) CHARACTER SET utf8 NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `erin_cv_formulaire`
--

INSERT INTO `erin_cv_formulaire` (`id`, `nom`, `courriel`, `message`, `date`) VALUES
(9, 'Sonia B', 'soniaB@gmail.com', 'test', '2021-05-09 16:58:08'),
(10, 'Sonia B', 'soniaB@gmail.com', 'test', '2021-05-09 17:01:58'),
(55, 'Sonia B', 'soniaB@gmail.com', 'test', '2021-06-03 11:42:47');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(3) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `podcast` text,
  `contact` varchar(50) DEFAULT NULL,
  `id_domaine` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `prenom`, `podcast`, `contact`, `id_domaine`) VALUES
(1, 'Manchette', 'Vickie', '', '', 4),
(2, 'Collart', 'Jérémie', '', '', 2),
(3, '', '', '', '', 1),
(4, '', '', '', '', 3),
(5, '', '', '', '', 1),
(6, '', '', '', '', 2),
(7, '', '', '', '', 4),
(8, '', '', '', '', 4),
(9, '', '', '', '', 3),
(10, '', '', '', '', 3),
(11, '', '', '', '', 4),
(12, '', '', '', '', 4),
(13, '', '', '', '', 4),
(14, '', '', '', '', 4),
(15, '', '', '', '', 4),
(16, '', '', '', '', 4);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id` int(3) DEFAULT NULL COMMENT 'Pour une raison incomprise, il n''a pas été possible de mettre l''id en clé primaire',
  `nom` varchar(50) DEFAULT NULL,
  `duree` time DEFAULT NULL,
  `diplome` varchar(100) DEFAULT NULL,
  `prix` decimal(6,2) DEFAULT NULL,
  `competences` text,
  `enseignements` text,
  `debouches` text,
  `alternance` tinyint(1) DEFAULT NULL COMMENT 'Nous avons voulu mettre un booléen mais cela met un "tinyint"',
  `id_domaine` int(3) DEFAULT NULL,
  `id_ecole` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `formation`
--

INSERT INTO `formation` (`id`, `nom`, `duree`, `diplome`, `prix`, `competences`, `enseignements`, `debouches`, `alternance`, `id_domaine`, `id_ecole`) VALUES
(NULL, 'bachelor developpement web et mobile', '00:00:01', 'bachelor', NULL, '\r\nlangages frontend de base\r\nsensibilité pour la création numérique \r\ncuriosité pour les domaines artistiques\r\naptitude au travail en équipe \r\nbonne connaissance en php et de la programmation par objet (POO)\r\n\r\n\r\n\r\n', 'méthodologie de conception technique\r\napprentissage des bases de symfony 4 \r\ndéveloppement frontend (javascript avancé) \r\napprentissage de l’environnement none.js \r\napprentissage de la bibliothèque three.js \r\ndéveloppement d’application mobile avec React/ReactNative \r\nsécurité et optimisation \r\noutils pour la data visualisation \r\nconception d’experiences immersives, créatives et techniques\r\n\r\n \r\n', 'developpeur Web \r\nIntegrateur Web \r\nadministrateur de site web\r\ndéveloppeur apllis mobiles\r\ndéveloppeur multimédia\r\nchef de projet', 0, 1, 1),
(NULL, 'licence pro: métiers du numérique', '00:00:01', 'licence pro', NULL, 'langages frontend\r\nconcevoir des maquettes web et de chartes graphiques\r\n mettre en place et configurer des solutions à base de \r\nsystèmes de gestion de contenus (CMS et leurs plugins) \r\nback-end (PHP et SQL) \r\nsavoir développer des applications mobiles', 'connaissances générales : Anglais, Socioéconomie des TIC et des réseaux\r\n sociaux, Entreprenariat dans le numérique, Droit et Veille et culture informatique\r\nculture technique : Algorithmique et programmation avancée, Système\r\n d’informations et bases de données et Web et réseaux\r\napplication web et mobile : Des interfaces à l’utilisateur (UI/UX), Technologies \r\ndu web et référencement (SEO), Programmation web (côté client, côté serveur, \r\nframeworks, programmation 2D et CMS), Programmation mobile (iPhone, Android, \r\nhybride)\r\nprojet tutoré : Communication professionnelle, Portfolio, Mémoire \r\nprofessionnel, Gestion de projet (avec initiation à l’entreprenariat dans le numérique)\r\n et Séminaire concurrence (mise en situation professionnelle)\r\nstage (alternance en entreprise sur l’année avec soutenance finale)\r\n', '\r\ndéveloppeur d’application\r\n créateur de start up univers\r\n mobile\r\n developpeur front/ \r\nback-end\r\nlead developpeur\r\ndéveloppeur applis mobiles', 0, 1, 2),
(NULL, 'mastère développement mobile', '00:00:02', 'mastère', NULL, 'ios et android \r\nlangages de programmations\r\nalgorithmes et bdd\r\nstratégie mobilefirst\r\n', ' Historique des applications mobiles:\r\n Marchés actuels des applications et sites mobiles\r\n Différents types de développements (natif, html5, cross platform, ProCons)\r\nÉcosystème stores (soumission, contraintes, référencement, promotions)\r\n Introduction au développement iOS / Android Java\r\nOutils de développement cross PF\r\nModule développement mobile\r\n Développement iOS / Android / Web app\r\nModule environnement mobile:\r\n Design / ergonomie\r\n Réseaux mobiles, on/offline\r\n Alerting / formats et SDK pubs\r\n Développement autres OS\r\n Sources d’informations et de codes\r\n Intégration d’API de partage / tracking\r\n Bases de données / API et flux\r\n Objets connectés\r\nModule Emarketing:\r\n Référencement Naturel – SEO\r\n Ergonomie de sites Web\r\nEPub : Display / Affiliation / SEA\r\n ECRM et BDD (Access / MY SQL)\r\n Marketing Mobile / MCommerce\r\nModule techniques digitales\r\n Création d’emailings / newsletters\r\n Publication et gestion de campagnes publicitaires\r\n Web design et production vidéos\r\nModule projet:\r\n> Gestion de projet / études de cas\r\n> Business English\r\n> Projet professionnel\r\n> Leadership & Management\r\n> Challenge (sur une semaine, une appli à réaliser) fin de 4ème année \r\n et de M2\r\n', ' ', 0, 1, 3),
(NULL, 'mastère développement web', '00:00:02', 'mastère', NULL, 'connaissances html et css\r\nsuite adobe', 'intégration et frontend\r\njavascript\r\nphp et framework\r\nstratégies et gestion', 'développeur frontend\r\ndéveloppeur mobile\r\nintégrateur web\r\nwebmaster technique\r\ndéveloppeur back-end', 0, 1, 4),
(NULL, 'bachelor web marketing UX', '00:00:01', 'bachelor', NULL, ' Mettre en œuvre une stratégie de mesure\r\n Comprendre les différents modèles de monétisation du digital\r\n Concevoir et mettre en œuvre une stratégie d’acquisition et d’optimisation \r\nde la performance\r\n Développer votre leadership pour vendre vos idées\r\n Construire une expérience consommateur grâce au sprint design\r\n', 'Code for Marketers\r\nNouveaux usages\r\nMéthodologie Lean\r\nSEO\r\nSoft Skills\r\nDesign Thinking\r\nProduct Management\r\n', 'Social Media Manager\r\nChef de projet\r\nECRM Customer\r\nSuccess Manager\r\nConsultant SEO\r\nConsultant SEA\r\nDigital Brand Manager\r\nData analyst\r\nTraffic Manager\r\n', 0, 2, 5),
(NULL, 'mastère game design', '00:00:02', 'mastère', NULL, ' esprit de synthèse\r\nattentif\r\ncréatif\r\nrigueur\r\nculture générale\r\nbonne culture des jeux vidéos', 'Creative Game Design\r\nAccompagnement à la programmation\r\nModélisation 3D (Blender)\r\nSound Design sur Fmod\r\nGame Design appliqué au mobile\r\nEconomic Game Design\r\nPrototypage sur mobile\r\nUI Design\r\nGame Controller Design\r\nElectronique & Hardware\r\nPrototypage & Scenographie\r\nTechnical Game Design\r\nPrototypage en Réalité Augmentée (Unity3D)\r\nConception 3D VR/AR (Blender)\r\nCreative Game Design\r\nProgrammation Blueprint\r\nLevel Design sous Unreal\r\nGame Design de jeux de société\r\nRéalisation tangible & numérique\r\nCulture du jeu de société hybride\r\n', 'Game Content Designer\r\nVR Game Designer\r\nVR Level Designer\r\nConcepteur de jeux de société\r\nDirecteur Créatif\r\nDirecteur Technique\r\nLevel designer\r\nInteractive designer\r\nLead Narrative designer\r\nNarrative Designer\r\nQuest Designer\r\nCombat Designer\r\nCreative Designer\r\nLead Game designer\r\nGame Designer\r\nTechnical Game Designer\r\nGame Economy Designer\r\n3C Designer\r\n', 0, 2, 6),
(NULL, 'mastère directiron artistique numérique\r\n/média an', '00:00:02', 'mastère', NULL, 'valorisation et négociation \r\ndéfinition de l’univers de la cible du client,\r\nproposition de solutions graphiques créatives et variées\r\nargumentation d’un préprojet\r\nidentification et gestion des problématiques humaines et matérielles\r\n coordination et management d’équipe,\r\npilotage de projet de A à Z, \r\nsuivi budgétaire et financier\r\nadaptation aux aléas de production et aux retours utilisateurs, \r\naccompagnement du client dans l’utilisation ou les évolutions du produit…\r\n', 'Design interface\r\nMotion Design\r\nEnvironnement/Web\r\nVidéo\r\nProjet client\r\nAnimation dessinée\r\nWorkshop artistique et technique\r\nWorkshop professionnel et prospectif\r\nProjet plurimédia\r\nAnglais\r\n', 'Data visualist\r\nDesigner numérique / digital\r\nDesigner web mobile\r\nDirecteur artistique en multimédia\r\nDirecteur de création\r\nDirecteur de production web\r\nGraphiste\r\nMotion Designer\r\nUI Designer / Designer d’interface\r\nUX designer\r\nWebdesigner\r\n', 0, 2, 7),
(NULL, 'LP TECAM ', '00:00:01', 'licence pro', NULL, '\r\nÊtre capable de communiquer en français ou en anglais en utilisant les processus adaptés.\r\nEntreprendre une analyse plastique et sémantique sur différentes productions des arts \r\nappliqués et des arts plastiques afin de nourrir ses réalisations.\r\nMaîtrise des outils de conception et de réalisation dans les domaines du web, du print, \r\net de l’audiovisuel.\r\nManagement d’un projet plurimédia en respectant une méthodologie adaptée à \r\ndifférents contextes.\r\nÊtre capable de formaliser et d’élaborer une stratégie de communication sur différents médias.\r\nÊtre capable de concevoir ou réaliser des supports de communication en \r\nchoisissant les outils numériques adaptés.\r\nÊtre capable de concevoir et écrire un documentaire ou reportage court.\r\nÊtre capable de mettre en place et d’animer une communication sur un ensemble de \r\nmédias socionumériques.\r\n\r\n\r\n\r\n', 'Techniques de communication (54h)\r\nCulture esthétique contemporaine (64h)\r\nCréation numérique (68h)\r\nManagement de projet multimédia (66h)\r\nTechniques de création audiovisuelle et multimédia (200h)\r\nProjet tutorés (150h)\r\n', 'Réalisateur audiovisuel maîtrisant\r\n la conception, la production \r\n(prise de vue, prise de son),\r\n la postproduction et la \r\ndiffusion de programmes \r\nde Web TV ou locales (JRI).\r\n\r\nTechnicien polyvalent dans la production\r\n audiovisuelle institutionnelle.\r\n\r\nConcepteur et/ou réalisateur plurimédia.\r\n', 0, 3, 9),
(NULL, 'bachelor EMC', '00:00:01', 'bachelor', NULL, 'Bonne conditions physiques\r\nMaitrise des logiciels de montage', 'Configuration technique d’une station de montage\r\n Gestion du Workflow d’un projet\r\nMaîtrise des logiciels Avid et Premiere Pro\r\nL’art du montage\r\nMaîtrise des logiciels de la chaîne graphique\r\n Trucage sur After Effects\r\n Etalonnage sur DaVinci Resolve\r\n Module optionnel 3DVFX\r\n', 'Monteur Truquiste', 0, 3, 10),
(NULL, 'bachelor en Film Making', '00:00:01', 'bachelor', NULL, '\r\n     Gérer un projet vidéo dans son\r\n     Etre à l’aise avec les interfaces digitales et ou graphiques\r\n     appréhender le sens et l’écriture\r\n      la culture filmique,\r\n      Savoir réaliser un storyboard\r\n     Connaissance en sound\r\n     Savoir utiliser des logiciels de montage \r\n\r\n', 'Ateliers de production \r\n• Culture filmique\r\n • Synthèse conceptuelle, la note d’intention \r\n• Showreel Personnel\r\n • Le Tournage : la captation, l’éclairage professionnel\r\n • Personal Branding\r\n • Première Pro, After Effects, Étalonnage vidéo, Sound Design\r\n • Anglais \r\n• Photo / Vidéo / Motion Design\r\n • Diffusion Digitale\r\n', 'Réalisateur vidéo, \r\nChef opérateur, \r\nMonteur.\r\n', 0, 3, 11),
(NULL, 'mastère en production audiovisuel', '00:00:02', 'mastère', NULL, '     Gérer un projet vidéo dans son\r\n     Etre à l’aise avec les interfaces digitales et ou graphiques\r\n     appréhender le sens et l’écriture\r\n      la culture filmique,\r\n      Savoir réaliser un storyboard\r\n     Connaissance en sound\r\n     Savoir utiliser des logiciels de montage', '      Fondamentaux de la chaîne de production\r\n     Comptabilité Ressources Humaines\r\n     Dramaturgie\r\n     Documentaire de création\r\n     Long métrage : distribution salle, acquisitions\r\n     Emission de flux – plateau télé\r\n     Film institutionnel et publicité\r\n     Nouveaux formats – médias online – nouvelles pratiques\r\n     Développement et stratégies de production\r\n     Comptabilité Ressources Humaines\r\n     Stratégies de communication publicitaire\r\n     Projet Création de société de production\r\n     Projet Direction de production\r\n     Financement participatif\r\n', '   assistants de production\r\n chargés, administrateurs\r\n responsables\r\ndirecteurs de production.\r\n', 0, 3, 12),
(NULL, 'Institut supérieur de communication et \r\npublicité', '00:00:02', 'Master', NULL, ' Fondamentaux de la marque, Communication, English \r\nManagement/RH\r\nCulture en communication \r\n Développement de la créativité\r\n Connaissance sur la communication des entreprises et des marques\r\n Création publicitaire\r\n Parfait anglais\r\n', ' Marketing appliqué au secteurs économique\r\n Jeux marketing\r\n Economie des médias\r\n Ecommerce\r\n Communication Orale\r\n Edition numérique/vidéo\r\n Académique English (certification TOEIC)\r\n Business Game\r\n Marketing/Publicité\r\n Création et communication digitale\r\n UX design et data expérience client\r\n', '\r\n Marketing, publicité et médias\r\n Digital et expérience client \r\nCommunication politique et publique\r\n Métier communication et stratégie\r\n des marques \r\n Influence et stratégies d’évènement \r\n\r\n\r\n\r\n', 0, 4, 13),
(NULL, 'licence CMM', '00:00:01', 'licence', NULL, ' Analyse du langage de communication \r\n Méthodes écrites et orales\r\n Analyse des situations de communication (outils numérique, orale…)\r\n Culture du numérique\r\n Organisation de projet \r\n Ecriture de médias traditionnel et numérique\r\n Capacité d’expertise et critique', ' Nouveaux médias et écritures numériques \r\n Culture du numérique \r\n Interactions et technologies\r\n Genre télévisuels\r\n Web sémantique\r\n Approche sémio discursive du web \r\n intégration et interculturalité\r\n Argumentation et rhétorique médiatique \r\n Narration politique et médiatique\r\n Ecriture journalistique\r\n Actualités médiatique \r\n Langue vivante majeur/mineur\r\n', ' Métier de l’information et de la \r\ncommunication \r\n Métier du web et multimédia\r\n Métier de la recherche et de\r\n l’enseignement supérieur\r\n', 0, 4, 14),
(NULL, 'Ecole du digital, marketing et de la \r\ncommunicati', '00:00:02', 'Master', NULL, '\r\n Créativité \r\n  Agilité relationnelle\r\n Stratégie marketing et communication\r\n Connaissance sur la communication des entreprises et des marques\r\n\r\n', ' Stratégie de la marque contexte digital\r\n Stratégie de communication \r\n Marketing international\r\n Géopolitique\r\n Marketing sectoriel et nouvelle tendances\r\n Spécialisation digital marketing/ médias sociaux\r\n Spécialisation communication global \r\n Spécialisation évènementiel\r\n Spécialisation Marketing/Brand Management \r\n Spécilisation Business development\r\n', ' Social media manager\r\n Directeur marketing digital\r\n Chef de produit mobile\r\n Responsable de communication \r\ndigitale\r\n Directeur de communication \r\n Planneur stratégique\r\n Chargé de production\r\n Responsable relation presse\r\n Data Analyst\r\n', 0, 4, 15),
(NULL, 'Licence information, communication\r\n et média jour', '00:00:01', 'licence', NULL, '- Connaissance des enjeux théoriques et pratique de la gestion éditorial journalistique\r\n- bon niveau en langue requis\r\n- Méthodologie universitaire en analyse d’enquête \r\n- connaissances relatives aux sciences humaine et social\r\n- Technique médiatique \r\n- Maîtrise des logiciels PAO, création sites web, gestion de réseaux sociaux\r\n', '- Analyse du discours en communication \r\n- Discours et société\r\n- Pratique d’écriture journalistique\r\n- Création numérique et publication Web\r\n- Projet éditorial\r\n- Langue au choix\r\n- Techniques de la communication \r\n- Média, communication et politique \r\n- Technique de relations presse\r\n- Médias et écritures audiovisuelle\r\n', '', 0, 4, 16),
(7, 'mastère directiron artistique numérique\r\n/média an', '00:00:02', 'mastère', NULL, '\r\ndéfinition de l’univers de la cible du client\r\nproposition de solutions graphiques créatives et variées\r\nargumentation d’un préprojet\r\nidentification et gestion des problématiques humaines et matérielles\r\n coordination et management d’équipe\r\npilotage de projet de A à Z\r\nsuivi budgétaire et financier\r\nadaptation aux aléas de production et aux retours utilisateurs\r\naccompagnement du client dans l’utilisation ou les évolutions du produit\r\n', 'Design interfaces\r\nMotion Design\r\nEnvironnement/Web\r\nVidéo\r\nProjet client\r\nAnimation dessinée\r\nWorkshop artistique et technique\r\nWorkshop professionnel et prospectif\r\nProjet plurimédia\r\nAnglais\r\n', 'Data visualist\r\nDesigner numérique / digital\r\nDesigner web mobile\r\nDirecteur artistique en multimédia\r\nDirecteur de création\r\nDirecteur de production web\r\nGraphiste\r\nMotion Designer\r\nUI Designer / Designer d’interface\r\nUX designer\r\nWebdesigner\r\n', 0, 2, 7);

-- --------------------------------------------------------

--
-- Structure de la table `formulaire`
--

CREATE TABLE `formulaire` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `formulaire`
--

INSERT INTO `formulaire` (`id`, `nom`, `mail`, `message`) VALUES
(1, 'tchoupi', 'tchoupi@aol.com', 'haledddd'),
(2, 'YOP', 'yop@gmail.com', 'aooooooooooo'),
(3, 'Flav', 'flav@gmail.com', 'manteau'),
(4, 'Duna Mélody', 'melodydudu@aol.com', 'kkkkkkkkkkk'),
(5, 'Anciaux papie', 'papie@gmail.com', 'jullll'),
(6, 'Sunshineeee', 'lastreet@gmail.com', 'kkkkkkkkkkk'),
(7, 'VIIII', 'vi@gmail.com', 'kolekfsjfd'),
(8, 'Sonia', 'sonia@gmail.com', 'lapotosurdes'),
(9, 'Duna Mélody', 'melodydudu@aol.com', 'test final'),
(10, 'Beselga Erin', 'erin@gmail.com', 'helicoptère');

-- --------------------------------------------------------

--
-- Structure de la table `formulairecvnumerique`
--

CREATE TABLE `formulairecvnumerique` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `sujet` text NOT NULL,
  `message` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `melody_cv_formulaire`
--

CREATE TABLE `melody_cv_formulaire` (
  `id` int(11) NOT NULL,
  `courriel` varchar(128) CHARACTER SET utf8 NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `melody_cv_formulaire`
--

INSERT INTO `melody_cv_formulaire` (`id`, `courriel`, `message`, `date`) VALUES
(3, 'mduna@etud.u-pem.fr', 'ça marche enfin!!!!!', '2021-04-17 20:09:19'),
(5, 'mduna@etud.u-pem.fr', '', '2021-04-27 19:52:57'),
(73, 'flavanciaux@gmail.com', 'mmmmmmmmm', '2021-06-03 11:05:48'),
(74, 'flavanciaux@gmail.com', 'mmmmmmmmm', '2021-06-03 11:06:19'),
(76, 'soniaB@gmail.com', 'test final', '2021-06-03 11:43:24');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `anciaux_cv_formulaire`
--
ALTER TABLE `anciaux_cv_formulaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `arrii_cv_formulaire`
--
ALTER TABLE `arrii_cv_formulaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `erin_cv_formulaire`
--
ALTER TABLE `erin_cv_formulaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formulaire`
--
ALTER TABLE `formulaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formulairecvnumerique`
--
ALTER TABLE `formulairecvnumerique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `melody_cv_formulaire`
--
ALTER TABLE `melody_cv_formulaire`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `anciaux_cv_formulaire`
--
ALTER TABLE `anciaux_cv_formulaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `arrii_cv_formulaire`
--
ALTER TABLE `arrii_cv_formulaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `erin_cv_formulaire`
--
ALTER TABLE `erin_cv_formulaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `formulaire`
--
ALTER TABLE `formulaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `formulairecvnumerique`
--
ALTER TABLE `formulairecvnumerique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `melody_cv_formulaire`
--
ALTER TABLE `melody_cv_formulaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
