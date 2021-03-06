
INSERT INTO `contient` (`numIngredient`, `numRecette`, `Quantite`) VALUES
(18, 1, '500g'),
(19, 1, '80g'),
(20, 1, '8g'),
(21, 2, NULL),
(22, 1, '25g'),
(23, 1, '2'),
(24, 1, '180ml'),
(25, 1, '100g'),
(26, 2, ''),
(27, 2, '350g'),
(28, 2, '350g'),
(29, 2, '350g'),
(30, 2, '500g'),
(31, 2, '3 gousses'),
(32, 2, '6 cuillères à soupe'),
(33, 2, '1 brin'),
(34, 2, '1'),
(35, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `est_du_type`
--

CREATE TABLE `est_du_type` (
  `numRecette` int(11) NOT NULL,
  `numType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `follow`
--

CREATE TABLE `follow` (
  `numUser` int(11) NOT NULL,
  `numUser_Utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE `ingredient` (
  `numIngredient` int(11) NOT NULL,
  `nomIngredient` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`numIngredient`, `nomIngredient`) VALUES
(1, 'farine'),
(2, 'sucre'),
(3, 'sel'),
(4, 'levure'),
(5, 'oeuf'),
(6, 'lait'),
(7, 'beurre'),
(8, 'aubergine'),
(9, 'courgette'),
(10, 'poivron'),
(11, 'oignon'),
(12, 'tomate'),
(13, 'ail'),
(14, 'huile d\'olive'),
(15, 'thym'),
(16, 'feuille de laurier'),
(17, 'poivre');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `note` int(11) NOT NULL,
  `numUser` int(11) NOT NULL,
  `numRecette` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

CREATE TABLE `notification` (
  `numNotif` int(11) NOT NULL,
  `Contenu` varchar(50) NOT NULL,
  `numUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

CREATE TABLE `recette` (
  `numRecette` int(11) NOT NULL,
  `Titre` varchar(50) NOT NULL,
  `Image` varchar(50) DEFAULT NULL,
  `Description` varchar(10000) NOT NULL,
  `Temps` varchar(20) DEFAULT NULL,
  `NbPersonne` int(11) DEFAULT NULL,
  `Auteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `recette`
--

INSERT INTO `recette` (`numRecette`, `Titre`, `Image`, `Description`, `Temps`, `NbPersonne`, `Auteur`) VALUES
(1, 'Brioche Tressée', '1.png', 'Vous allez voir, cette recette de brioche tressée est vraiment facile !\r\n\r\nPlacez les ingrédients dans la cuve en respectant bien l\'ordre, c\'est important. On met d\'abord la farine, puis le sucre d\'un côté, et le sel de l\'autre.\r\n\r\nFormez un puits au centre de la farine et émiettez la levure à l\'intérieur. Il ne faut surtout pas que la farine touche le sel car il la tuerait (et personne ne voudrait assister à une telle scène !)\r\n\r\nPlacez ensuite les oeufs sur la levure. Ils vont la protéger du sel.\r\n\r\nVersez ensuite le lait sur le dessus.\r\n\r\nPétrissez le tout avec le crochet du robot pendant 5 à 10 minutes, sur puissance moyenne. La pâte doit se décoller des parois de la cuve.\r\n\r\n\r\n\r\nAjoutez le beurre en morceaux, petit à petit, sans cesser de pétrir. Il vous faudra environ 5 minutes pour incorporer tout le beurre.\r\n\r\nLaissez tourner le robot pendant encore 5 minutes environ (plus si nécessaire), jusqu\'à ce que la pâte se décolle des parois de la cuve.\r\n\r\nJe teste actuellement chez moi le Cooking chef de chez Kenwood. J\'ai donc laissé ma pâte dans le robot et je m\'en suis servie comme étuve en le réglant sur 28°C.\r\n \r\nSi vous n\'avez pas de robot chauffant, placez votre cuve dans un endroit chaud comme près d\'un chauffage. Attention à ne pas dépasser les 29°C pour ne pas faire fondre votre beurre.\r\n\r\nLaissez pousser ainsi pendant 1h30. La pâte doit doubler de volume.\r\n\r\nAu bout d\'1h30, versez la pâte sur un plan de travail fariné et divisez-la en 2. Réservez une moitié et étalez l\'autre en rectangle. Coupez-la en 3 pour avoir 3 longues bandes.\r\nFormez des boudins avec ces bandes. N\'hésitez pas à regarder la vidéo pour visualiser la technique.\r\n\r\nRetournez les boudins de façon à avoir la soudure en-dessous. \r\nCollez les 3 extrémités entre elles et formez une tresse. Ne la serrez pas trop car la brioche va bien gonfler.\r\n\r\nFaites de même avec la seconde moitié de pâte.\r\n\r\nLaissez pousser 1 heure, toujours au chaud. \r\n\r\nAu bout d\'une heure, préchauffez le four à 180°C.\r\n\r\nMélangez ensemble un jaune d\'oeuf et 2 cuillères à soupe de lait. Badigeonnez ce mélange sur les brioches tressées avec un pinceau alimentaire.\r\n\r\nEnfournez 10 minutes.\r\n\r\nSortez les brioches du four et dorez de nouveau. Parsemez de quelques grains de sucre perlé. ré-enfournez 10 minutes.\r\n\r\nC\'est prêt ! ', '90 min', 10, 2),
(2, 'Ratatouille', '2.png', 'Etape 1\r\nCoupez les tomates pelées en quartiers,\r\nEtape 2\r\nles aubergines et les courgettes en rondelles.\r\nEtape 3\r\nEmincez les poivrons en lamelles\r\nEtape 4\r\net l\'oignon en rouelles.\r\nEtape 5\r\nChauffez 2 cuillères à soupe d\'huile dans une poêle\r\nEtape 6\r\net faites-y fondre les oignons et les poivrons.\r\nEtape 7\r\nLorsqu\'ils sont tendres, ajoutez les tomates, l\'ail haché, le thym et le laurier.\r\nEtape 8\r\nSalez, poivrez et laissez mijoter doucement à couvert durant 45 minutes.\r\nEtape 9\r\nPendant ce temps, préparez les aubergines et les courgettes. Faites les cuire séparemment ou non dans l\'huile d\'olive pendant 15 minutes.\r\nEtape 10\r\nVérifiez la cuisson des légumes pour qu\'ils ne soient plus fermes. Ajoutez les alors au mélange de tomates et prolongez la cuisson sur tout petit feu pendant 10 min.\r\nEtape 11\r\nSalez et poivrez si besoin.\r\nNote de l\'auteur\r\nTrès bon chaud mais peut aussi se servir froid.', '1h20', 4, 1),
(3, 'Abricot à l\'alsacienne', NULL, 'Préparation: 10 minutes. Cuisson: 30 minutes.\r\n750 g de beaux abricots biens mûrs, 1/2 verre d\'eau, 250 g de sucre en poudre, 1 verre à madère de kirsch.\r\n\r\nCet entremets se prépare dans un plat à feu.\r\nDisposer au fond du plat, en une seule couche les abricots dénoyautes, coupés en deux.\r\nAjouter l\'eau et saupoudrer avec environ les 2/3 du sucre en poudre. Faire cuire sur feu très doux, en interposant un diffuseur de chaleur. Quand les abricots sont cuits (en principe il ne reste plus de sirop au fond du ou des plats), les saupoudrer avec le reste du sucre en poudre. Ajouter le kirsch en le faisant couler au fond du plat et passer 10 minutes au gril du four pour caraméliser la surface.\r\nDisposer les abricots avec soin dans un compotier. Servir très frais.', '40 min', 6, 1),
(5, 'Dip à l\'avocat', NULL, '2 avocats bien mûrs, 1 c à soupe de jus de citron, 1/2 c à café de sauce anglaise (Worcestershire sauce), sel, poivre de Cayenne, 1 dl d\'huile d\'olive.\r\nCrudités de saison à volonté: morceaux de céleri en branches, de fenouil, bouquets de chou-fleur, radis et petits crackers au choix.\r\n\r\nPelez et dénoyautez les avocats. Passez la chair au mixer avec le jus de citron, la sauce anglaise et l\'assaisonnement.\r\nVersez peu à peu l\'huile d\'olive en mélangent comme pour une mayonnaise. Goûtez et rectifiez l\'assaisonnement. D\'autre part, préparez tous les légumes que vous laverez et couperez en petits morceaux.\r\nDisposez-les harmonieusement dans une ou plusieurs coupes.\r\nChacun prend un morceau de légume (ou un cracker) et le trempe dans la sauce.\r\nLe tout se déguste à l\'apéritif.', '10 min', 4, 6),
(6, 'Mousse d\'avocat', NULL, '3 avocats bien murs, le jus d\'un citron, une cuillerée à soupe de cognac, 150 g de crème, du sel, du poivre, un citron, de la laitue, du persil.\r\n\r\nLavez les avocats et coupez-les en deux dans le sens de la longueur. Retirez les noyaux et, à l\'aide d\'une cuillère à café.\r\nEnlevez délicatement la pulpe.\r\nPassez cette dernière au tamis. Mélangez-la avec le cognac, du sel, du poivre et de la crème fouettée. Répartissez cette mousse dans les écorces d\'avocat, à l\'aide d\'une poche munie d\'une douille cannelée. Dressez sur un lit de laitue et garnissez avec du persil et du citron.\r\nVous pouvez garnir la mousse d\'avocats de caviar rouge et noir. C\'est la une forme de décoration. Selon votre goût, vous pouvez orner de rondelles d’œufs durs, de morceaux de crabe, voire de quelques crevettes.\r\n\r\nServez bien froid.', '10 min', 6, 6),
(7, 'Nougat blanc', NULL, '250 g de sucre, 300 g de miel, 100 g de pistaches épluchées ou d\'amandes, 100 g de pralines concassées, 3 blancs d’œufs, 1 verre d\'eau, 3 feuilles de papier d\'hostie.\r\n\r\nPréparez un sirop avec le sucre et l\'eau, autant que possible dans une casserole de cuivre étamé, vérifier si le sirop est à point en faisant tomber une goutte dans de l\'eau froide, elle doit se transformer en perle et craquer sous la dent. Faites cuire le miel dans une autre casserole, grillez les pistaches ou les amandes.\r\nBattez les blancs d’œufs en neige bien fermes mélangez le miel et le sirop, sur feu doux incorporez les blancs d’œufs par cuillères en soulevant le mélange laissez cuire un petit moment, ajoutez les amandes ou les pistaches, ou les deux, ainsi que les pralines.\r\nGarnissez un moule rectangulaire de papier d\'hostie, versez le nougat, laissez-le refroidir et coupez-le en morceaux.', '2h50', 6, 5),
(8, 'Bortsch', NULL, 'Un canard, 150 g de lard gras, 700 g de boeuf maigre, un os à moelle, une feuille de laurier, 3 clous de girofle, un coeur de chou, 3 oignons, 3 blancs de poireaux, 2 branches de céleri, une gousse d\'ail, 3 petites betteraves rouges cuites, 2 cuillerées à soupe de vinaigre, une grosse pincée de sucre, 1 dl de yaourt.\r\n\r\nFaites revenir dans une marmite le lard coupé en morceaux. Faites de même avec le canard coupé. Ajoutez la viande et les os. Couvrez d\'eau. Portez à ébullition et écumez. Ajoutez au potage les oignons piqués de clous de girofle, le laurier, le chou, le céleri et les blancs de poireaux coupés en lanières. Reportez à ébullition, écumez à nouveau, assaisonnez et ajoutez l\'ail. Laissez mijoter avec couvercle trois heures. Incorporez deux betteraves coupées en morceaux et, après une demi-heure de cuisson, ajoutez la betterave restante rapée, le vinaigre, le sucre et prolongez la cuisson 1/2 heure. Au moment de servir, retirez les viandes que vous présenterez à part. Mettez une ou deux cuillerées à soupe de yaourt dans chaque assiette de bortsch. Le canard peut être remplacé soit, par un vieux faisan, soit, par un lièvre. Dans ce dernier cas, vous le ferez mariner 2 heures avec du vin blanc. C\'est la betterave rouge qui, ajoutée en fin de cuisson donne au bortsch sa couleur rouge-rosée. Un morceau de queue de boeuf corsera le bouillon.', '3h50', 4, 4),
(9, 'Sushis aux crevettes', NULL, 'Préparation: 30 mn - Attente: 10 mn + 30mn - Cuisson: 30 mn\r\n\r\nPour 12 sushis: 300 g de riz rond, 2 c à soupe de vinaigre de riz (ou de cidre), 6 grosses crevettes roses cuites, 12 feuilles d\'épinard, 1 carotte, 3 œufs, 2 cuillerées à soupe de sucre, 20 g de beurre, sel, poivre.\r\n\r\nPour la sauce: 3 c à soupe de sauce soja, 2 c à soupe de vin blanc, 1 c à soupe de vinaigre, 2 pincées de sucre.\r\n\r\nRincez d\'abord abondamment le riz à l\'eau froide.\r\nVersez le riz dans une casserole et couvrez-le de 60 cl d\'eau froide. Portez à ébullition sur feu vif puis des les premiers bouillons, poursuivez la cuisson à feu doux pendant 18 à 20 min.\r\nLe riz doit être tendre.\r\nLaissez reposer dans la casserole pendant 10 min.\r\nMélangez le vinaigre le sucre et 1 c à café de sel.\r\nVersez sur le riz et mélangez délicatement en soulevant le riz. Laissez refroidir complètement. Entre-temps, faites blanchir les feuilles d\'épinard, 2 min à l\'eau bouillante salée.\r\nÉgouttez-les sur un linge.\r\nBattez les œufs en omelette.\r\nSalez et poivrez-les.\r\nFaites cuire 2 omelettes très fines dans 10 g de beurre chacune.\r\nLaissez refroidir et découpez-les en 12 morceaux triangulaires.\r\nÉpluchez la carotte et prélevez des fines bandes dans la longueur à l\'aide d\'un couteau économe.\r\nFaites-les pocher 3 min à l\'eau bouillante salée.\r\nUne fois le riz refroidi, prélevez-en 12 boulettes.\r\nTassez-les bien entre vos mains puis formez-les en rouleaux.\r\nEnveloppez chaque rouleau d\'une feuille d\'épinard puis d\'un morceau d\'omelette, et d\'une bande de carotte.\r\nAjoutez une demi-crevette préalablement découpée dans la longueur.\r\nSerrez bien les sushis dans du film plastique et laissez reposer au frais 30 min.\r\nMélangez les ingrédients  à la sauce et servez-la dans un bol pour accompagner les sushis.\r\n\r\nBon appétit !', '60 min', 4, 4),
(10, 'Merlu bilbao', NULL, '2 merlus de 600 g chacun, 1 c à soupe de jus de citron, 2 c à soupe de ciboulette (ou de persil haché), 40 g de beurre, 2 c à soupe d\'huile d\'olive, sel et poivre.\r\n\r\nVidez, lavez, puis épongez les poissons. Divisez chacun d\'eux en quatre tronçons, après en avoir retiré la tête et l\'extrémité de la queue. Assaisonnez ces tronçons de sel et de poivre, arrosez-les de jus de citron. Cassez les oeufs dans un plat creux, salez, poivrez, puis ajoutez les trois quarts de la ciboulette ou du persil haché. Battez-les en omelette. Chauffez le beurre et l\'huile dans une poêle, sur feu modéré. Trempez les tronçons de poisson dans les oeufs battus et rangez-les dans la poêle lorsque le mélange de beurre et d\'huile est devenu bien chaud, sans cependant fumer. Laissez-les bien dorer sur une face pendant sept minutes, puis retournez-les sur l\'autre face. La cuisson presque terminée, versez le reste des oeufs battus dans la poêle et retirez du feu dès que ces derniers sont cuits. Disposez le poisson sur le plat de service, saupoudrez-le avec le reste de ciboulette ou de persil haché et versez très chaud.', '30 min', 4, 1),
(11, 'Chou à l\'espagnole', NULL, '1 chou bien pommé de taille moyenne, 1/2 verre d\'huile d\'olive, 3 gousses d\'ail, 4 oeufs, 4 belles tomates fraîches ou coulis en boîte, sel, poivre, piment.\r\n\r\nÉplucher le chou. Le faire cuire à l\'eau bouillante salée.\r\nL\'égoutter soigneusement et laisser refroidir.\r\nLe couper alors finement et le faire revenir dans une poêle avec la presque totalité de l\'huile, l\'ail haché menu, sel, poivre. Lorsqu\'il commence à dorer arrêter la cuisson. Huiler un plat allant au four. Parsemer une poignée de chapelure. Disposer au fond une couche de chou assez mince puis une partie des oeufs battus en omelette avec sel, poivre et quelques gouttes d\'huile.\r\nAlterner jusqu\'à épuisement les couches de chou et d\'omelette.\r\nCuire à four moyen 20 à 30 minutes. Démouler encore chaud.\r\nServir !!\r\n\r\n\r\nPeut être accompagné d\'un coulis de tomate pimenté.\r\nSe sert chaud ou froid arrosé de jus de citron.', '45 min', 3, 6),
(12, 'Potée comtoise', NULL, '2 Saucisses de Morteau (300 g environ chacune), 300 g de lard salé, 300 g de poitrine fumée, 1 palette fumée de 1 kg environ ( à dessaler si nécessaire), 2 choux, 200 g de carottes, 100 g de navets, 1 choux-rave coupé en deux, 3 poireaux (ficelés), quelques pommes de terre, 1 gousse d\'ail, 1 oignon clouté, thym, laurier, sel et poivre.\r\n\r\nMettre dans une casserole haute, environ 4 litres d\'eau, y plonger le lard salé, la poitrine fumée, la palette fumée, ajouter les assaisonnements (thym, laurier, ail, oignon, poivre), laisser mijoter pendant 3/4 heure.\r\nAjouter les légumes, les Saucisses de Morteau.\r\nLaissez-cuire 35 à 40 minutes. Égoutter les légumes, les mettre au centre d\'un plat creux, couper les viandes et les disposer tout autour. \r\n\r\nServir très chaud.', '2h30', 6, 6),
(13, 'Flan à la créole', NULL, 'Une boîte de chair de crabe de 200 g, 4 œufs, 1 dl de crème fraîche, 1 dl de lait, 1 cuillerée à café bombée de maïzena, paprika, sel, poivre moulu, 20 g de beurre pour le moule (petit moule à cake ou moule à charlotte).\r\n\r\nBeurrez le moule avec le beurre fondu.\r\nPréchauffez le four, th 6, 180°.\r\nFaites bouillir le lait. Ouvrez la boîte de crabe.\r\nÉgouttez la chair. Dans un saladier, battez les oeufs en omelette, ajoutez la maïzena, le paprika, sel et poivre. Tout en mélangeant, ajoutez le lait peu à peu, puis la chair de crabe et la crème fraîche. Versez dans le moule beurré, posez celui-ci sur un plat à four contenant un peu d\'eau et enfournez pour 45 min. Laissez refroidir et démoulez sur un plat long. \r\nServez découpé en tranches avec une mayonnaise au paprika et des avocats découpés en lamelles.\r\n\r\n\r\nVous pouvez décorer avec des crevettes roses.', '55 min', 4, 6),
(14, 'Petits gris en sauce', NULL, '2 kg de petits gris.\r\n\r\nPour la cuisson: 1 dl de vin blanc sec, 1 oignon, 2 clous de girofle, 3 carottes, 1 poireau, 2 gousses d\'ail, 1 bouquet garni, thym, laurier, persil.\r\n\r\nPour la sauce: 30 g de beurre, 2 oignons, une tranche épaisse de jambon de pays, 1 dl de vin blanc sec, autant de bouillon, 3 gousses d\'ail, 1 c à soupe de concentré de tomates, 1 bouquet garni, une tranche de pain de campagne, persil haché à volonté.\r\n\r\nFaites blanchir les escargots 5 min à l\'eau bouillante.\r\nÉgouttez-les, mettez-les dans une casserole avec le vin blanc allongé d\'eau pour les couvrir, l\'oignon piqué de clous de girofle, les carottes et le poireau émincés, l\'ail haché et le bouquet garni, assaisonnez et laissez cuire 1 h 30 à  3 heures à feu doux.\r\n\r\nD\'autre part, faites fondre au beurre les oignons hachés, joignez le jambon haché finement, laissez revenir doucement, mouillez de vin blanc et de bouillon.\r\n\r\nJoignez l\'ail haché, le concentré de tomates et le bouquet garni.\r\nLaissez mijoter 30 min.\r\nAjoutez le pain émietté, les escargots égouttées.\r\nContinuez la cuisson 20 min encore sur feu très doux.\r\n\r\nServez saupoudré de persil haché.', '2h20', 4, 6),
(15, 'Pommes de terre rôties parfaites', '', 'Le temps de cuisson c\' est : 50 - 60 minute\r\n\r\nIngrédients :\r\n??750g De pommes de terre * pelées et coupées en morceaux de 4-5cm.\r\n½ Tasse d\'huile d\'olive.\r\n\r\nPréparation :\r\nPréchauffer le four à 200 ° c (ventilateur assisté).\r\nMettez les pommes de terre préparées dans une casserole avec juste assez d\'eau froide pour couvrir les pommes de terre. couverture. porter à ébullition. laisser les pommes de terre bouillir pendant 5 minutes.\r\nÉgoutter très bien les pommes de terre. ceci est mieux fait par une passoire. remettre les pommes de terre dans la poêle à feu doux pour permettre à tout excès d\'eau de s\'évaporer. avec le couvercle en place, secouez la casserole pour ‘rugueux’ les pommes de terre.\r\nVersez l\'huile dans un plat à rôtir et faites chauffer au four jusqu\'à ce qu\'il soit chaud. ajouter les pommes de terre en une seule couche, en les retournant pour bien les enrober d\'huile. rôtir pendant 30 minutes. tourner les pommes de terre et faire cuire encore 15-20 minutes, jusqu\'à ce qu\'elles soient dorées et croustillantes. assaisonner de sel et servir immédiatement.', '5 min', 6, 2),
(16, 'Curry de poulet vert thailandais', NULL, 'Le temps de cuisson c\' est : 25 minutes\r\n\r\nIngrédients :\r\n1 oignon moyen, coupé en longueur\r\n500 g de cuisses de poulet désossées et sans peau coupées en morceaux de 2 cm\r\n1 poivron rouge, épépiné et tranché\r\nSachet de 210 g de sauce à la sauce thaï au curry vert thaïlandais\r\n½ Tasse de lait de coco léger\r\n100g De haricots verts, parés\r\n2 Tasses de riz au jasmin cuit\r\nFeuilles de coriandre hachées (facultatif)\r\nPiment rouge finement haché, graines enlevées (facultatif)\r\n\r\nPréparation :\r\nChauffer un filet d\'huile dans un wok (ou une poêle à frire).\r\nAjouter l\'oignon et faire sauter à feu moyen jusqu\'à ce que l\'oignon commence à ramollir.\r\nAugmenter le feu et ajouter le poulet et faire sauter jusqu\'à coloration du poulet.\r\nBaisser la température. ajouter le piment rouge.\r\nVerser la sauce au curry vert thaïlandais.\r\nLaisser mijoter pendant 10-15 minutes.\r\nAjouter le lait de coco léger et les haricots verts et continuer à cuire encore 5 à 10 minutes jusqu\'à ce que le poulet soit cuit et que les haricots soient tendres.\r\nServir avec du riz au jasmin cuit. garnir de coriandre fraîche et de piment rouge frais haché finement si désiré.', '5 min', 4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `numType` int(11) NOT NULL,
  `nomType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `numUser` int(11) NOT NULL,
  `Pseudo` varchar(50) NOT NULL,
  `Mdp` varchar(50) NOT NULL,
  `Genre` char(1) NOT NULL,
  `Admin` tinyint(1) NOT NULL,
  `Image` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`numUser`, `Pseudo`, `Mdp`, `Genre`, `Admin`, `Image`, `Email`) VALUES
(1, 'Billy', 'billy', 'm', 1, '1.png', 'amaury.loeillet@gmail.com'),
(2, 'Marine', 'marine', 'f', 1, '2.png', 'marine.perchappe@hotmail.fr'),
(3, 'Lucile', 'lucile', 'f', 0, NULL, 'lucile.rouquette@hotmail.com'),
(4, 'Marc', 'marc', 'm', 0, NULL, 'marc.flielf@gmail.com'),
(5, 'Ophélie', 'ophelie', 'f', 0, NULL, 'ophelie.verite@outlook.com'),
(6, 'Pierre', 'pierre', 'm', 0, NULL, 'pierre.larousia@hotmail.fr');
