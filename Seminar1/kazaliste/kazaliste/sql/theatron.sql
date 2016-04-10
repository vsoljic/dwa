-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2016 at 12:44 PM
-- Server version: 5.6.23-log
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theatron`
--

-- --------------------------------------------------------

--
-- Table structure for table `glumci`
--

CREATE TABLE `glumci` (
  `id` int(11) NOT NULL,
  `idPredstave` int(11) NOT NULL,
  `imeGlumac` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `prezimeGlumac` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `uloga` varchar(255) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `glumci`
--

INSERT INTO `glumci` (`id`, `idPredstave`, `imeGlumac`, `prezimeGlumac`, `uloga`) VALUES
(1, 1, 'Sven', 'Šestak', 'ARNE'),
(2, 1, 'Siniša', 'Ružić', 'HOLMFRID'),
(3, 1, 'Antonija', 'Stanišić Šeparda', 'FLORENCE'),
(4, 1, 'Nikola', 'Baće', 'BEN'),
(5, 1, 'Ana', 'Dulčić', 'ADELAIDE'),
(6, 1, 'Andrea', 'Glad', 'LENOIDE'),
(7, 2, 'Vedran', 'Mlikota', 'TUCO'),
(8, 2, 'Mirko', 'Mirkić', 'BUBO'),
(9, 2, 'Burka', 'Burkić', 'BIRKANA'),
(10, 2, 'Luka', 'Bunić', 'DANIEL'),
(11, 2, 'Ivana', 'Ivanić', 'LUCRECIA'),
(12, 3, 'Borna', 'Maić', 'OTTO'),
(13, 3, 'Mario', 'Mušić', 'SONI'),
(14, 3, 'Anita', 'Virić', 'DONATELLA'),
(15, 3, 'Ana', 'Riović', 'JOGOBELLA'),
(16, 3, 'Anja', 'Bajković', 'HORTENZIA'),
(17, 3, 'Ivan', 'Pirković', 'NEOR'),
(18, 4, 'Biodrag', 'Golina', 'MICO'),
(19, 4, 'Marko', 'Vidra', 'BORKO'),
(20, 4, 'Sara', 'Brčić', 'ORHIDA'),
(21, 4, 'Vanda', 'Rokić', 'GORANKA'),
(22, 4, 'Petar', 'Ludrić', 'BONO'),
(23, 4, 'Maja', 'Ludrušić', 'MIA'),
(24, 5, 'Mirena', 'Vonić', 'RANKA'),
(25, 5, 'Damir', 'Dronić', 'DURKO'),
(26, 5, 'Ante', 'Majkić', 'DRAGO'),
(27, 5, 'Lana', 'Sparić', 'VIŠNJA'),
(28, 5, 'Martina', 'Malić', 'HORIZONTIA'),
(29, 6, 'Branka', 'Hilić', 'ATTA'),
(30, 6, 'Inga', 'Bunjević', 'LANA'),
(31, 6, 'Domagoj', 'Durnjak', 'MILE'),
(32, 6, 'Zvonimir', 'Španić', 'HECTOR'),
(33, 7, 'Ela', 'Ranić', 'FIORELLA'),
(34, 7, 'Sara', 'Andruić', 'GIANNA'),
(35, 7, 'Viktor', 'Prljić', 'PEDRO'),
(36, 7, 'Ranko', 'Hrenko', 'FERNANDO'),
(37, 7, 'Vlado', 'Galić', 'FEDERICO');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `code` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `code`) VALUES
(1, 'eng'),
(2, 'hr');

-- --------------------------------------------------------

--
-- Table structure for table `predstave`
--

CREATE TABLE `predstave` (
  `id` int(11) NOT NULL,
  `naslov` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `oPredstavi` text COLLATE utf8_croatian_ci NOT NULL,
  `datum` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `sati` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `cijena` float NOT NULL,
  `idRedatelja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `predstave`
--

INSERT INTO `predstave` (`id`, `naslov`, `oPredstavi`, `datum`, `sati`, `cijena`, `idRedatelja`) VALUES
(1, 'Svećenikovi prijatelji', '“Svećenikovi prijatelji”, djelo jednog od najzanimljivijih hrvatskih dramskih autora danas, napisano je 1997., ali nevjerojatno precizno pogađa bit nekih od gotovo dnevnih aktualnosti kojima smo okruženi. U širem smislu riječ je o tragikomediji, unutar koje nailazimo na elemente raznih vrsta i žanrova (drame, komedije, tragedije, farse, groteske). No, osnovni ton koji obuhvaća sve elemente jest satiričan i kroz njega se tretiraju neka od temeljnih društvenih pitanja. U prvom redu, tu mislimo na ograničavanje moći Crkve, odnosno, pitanje dubine njenog zadiranja u građanske sfere te one osobne, intimne, na koje ima pravo svaki pojedinac. Zatim, na mnoge se načine razlaže pitanje domoljublja te pozicija žene u društvu i odnos prema njoj i njezinom pravu na slobodno i autonomno odlučivanje svega onog što je vezano uz njezino tijelo. Pitanje osobnih sloboda i ponašanje u mikrostrukturi, kasnije posljedično tvori širu sliku te na kraju i politiku jedne društvene zajednice. Matišić ironizira potrebu za povećanjem nataliteta te ju hipertrofira i prikazuje u svom njenom apsurdu. Bitno je samo da nas ima svakim danom sve više, a kvaliteta i smisao naših života državi nije primarna. Okrutnost darvinističkog principa ovdje je u punoj snazi. ˝Nešto je trulo u državi Danskoj˝, rekli su već odavno, a jeka tog uzvika snažno odzvanja kroz svaki prizor ovog hrabrog teksta.', '03.05.2016.', '20:00', 70, 1),
(2, 'Shakespearov pjev', 'Pred vama stoje tri mlada glumca koji su pokušali tako nešto i tijekom svoga puta često su se zaustavljali upravo iz gore navedenih razloga. U početku postojala je stanovita želja da se, poput ranije poznatih kazališnih primjera, obuhvate svi Shakespeareovi dramski tekstovi kroz određeni broj scenskih krokija. Taj revijalni nazivnik se malo-pomalo transformirao u potrebu da se u Shakespeareu zaustavljamo upravo na mjestima koja lakše isklizavaju iz povijesnih odrednica i uklizavaju u kontekst svakodnevice naših glavnih junaka: Živka, Marka i Jerka.\r\nDobrodošli!\r\nW. Shakespeare napisao je 37 komada.\r\nTo ste sigurno već znali?!\r\nOd čega 10 povijesnih drama.\r\nI to ste znali?!\r\nOd čega 18 komedija.\r\nI to?!\r\nOsmislio je i napisao 1.222 lika.\r\nA to?!\r\nSvaki od 37 komada postavljen pojedinačno na scenu traje, zavisno od kraćenja, između 3 i 5 sati. Dakle, 37 x 4 sata (prosječno) iznosi 148 sati.\r\nJeste li i to znali?\r\nA jeste li znali kako je sve to moguće odigrati u manje od 2 sata?!\r\nUpoznajte Romea i Juliju, Hamleta, Ofeliju, Macbetha i njegovu krvavu Lady, Antonija i Kleopatru, Mletačkog trgovca, Tita Andronika, Kralja Leara, Richarda III, Henrika VIII i mnoge druge, kakve ih još nikada niste vidjeli.', '07.05.2016.', '21:00', 65, 2),
(3, 'Ministarka u potrazi', 'Nušićev politički vodvilj lako je prevediv na jezik političkog aktualiteta. Od redatelja čiji se rad nerijetko diskvalificira kao jeftin scenski pamflet (usp. "Politički pamflet Olivera Frljića na rubu kazališta", "Politički teatar ili pamflet", "Plakatska i pamfletska predstava"...), u slučaju ovog komada se gotovo i ne može očekivati nešto drugo. Dakle, jedino pitanje ostaje kako nušićizirati hrvatsku političku scenu? Tko je od članova aktualne ili bivše vlade najzahvalniji za portretiranje kroz jedno od najznačajnijih djela južnoslavenske komediografije? \r\n\r\n"Ministarku u potrazi" potrebno je ipak smjestiti u malo drugačiji društveni kontekst. On počinje devedesetih godina prošlog stoljeća, kad su s procesima stvarnja nacionalnih državica paralelno išli i procesi brisanja svega onoga što je predstavljalo zajedničko kulturno nasljeđe u južnoslavenskoj zajednici, pa je kao žrtva tog brisanja u Hrvatskoj pao i Nušić sam. Kad se danas razmišlja o postavljanju Nušića, nemoguće je ignorirati kulturne politike koje su ovog, kao i mnoge druge srpske autore, izgnale iz hrvatskog kulturnog prostora. Vratiti Nušića u taj prostor znači ući u implicitnu polemiku s normativima koje su te kulturne politike u međuvremenu postavile, a za koje su purifikacija jezika i duha, te eliminaciju nepoćudnih nacionalnih tijela poslužile kao sredstva. Konstituiranje nacionalne kulture, koje se primarno događa kroz proizvođenje razlike u odnosu na jednu nacionalnu zajednicu, njezin jezik i zajedničko kulturno nasljeđe, nažalost se, događa i danas. ', '07.05.2016.', '20:30', 55, 3),
(4, 'Ptičica u krletci', '“Ptičica u krletci” ne postoji samo kao dramsko djelo, vodvilj, boulevard. Krletka je zapravo jedan inspirativan kostur oko kojega se u procesu rada plete predstava. Mi smo prepravljali uloge, ubacivali tekstove, mijenjali scene, dodavali songove,  na svaki način intervenirali u tu, s jedne strane sasvim otvorenu formu-sadržaj malog svijeta kazališnog koji unutar svog kluba, music halla, cabareta, kako hoćete, živi svoj teško stečeni i izboreni život, a s druge strane imali smo vrlo zadanu fejdoovsku strukturu punokrvnog vodvilja koji ne dopušta niti jednu sekundu opuštenosti ili glumačke improvizacije. I tu i počinju  paradoksi rada na ovoj predstavi.\r\n\r\nZadali smo si napraviti i „živi“ program, koji svakako podrazumijeva ad hoc kontakt s publikom, ali i uprizoriti vlastitu dramaturšku strukturu samog komada, ne udaljavajući se od osnovnog. To je naime i najinteresantnije od svega – što smo više intervenirali, što smo se više približavali sebi, ulazili u lica bruseći dijaloge prilagođavajući ih našem kazališno – uličnom – gradskom metieru, što smo više secirali ovu našu ksenofobičnu svakodnevicu, mijenjajući i nazive i imena i cijele situacije, to smo se više približili izvorniku. Jednom nostalgičnom svijetu kojem iza sve te lakoće koju  nesebično daje publici svaku večer iza leđa stoje puno mračnije sile nastojeći sve što je god moguće svesti u okvir nekog sustava, bio on rodno, seksualno, nacionalno, korporativno, religijski, ili kako god postavljen. „Biti drugačiji“, fraza koja  zatiče svakoga od nas u svojoj vlastitoj „drukčijoj stvarnosti“ od one propisane, kazališnim rječnikom više „ne igra“.', '08.05.2016.', '20:00', 50, 4),
(5, 'Kako misliš mene ima?', 'Kroz dva sata "nabrijane" farsične i iskrene, kalamburične i dramatične, istodobno smiješne i gorko-tužne igre, glumci putuju kroz niz svojih unutrašnjih i zamišljenih identiteta i pretvaraju ih alkemijom svoje igre u niz osoba, situacija, realnih i fantastičnih događaja koje prepoznajemo kao naše vlastite, kao stvarnost koja nas okružuje i koju u svom apsurdu, konfliktu i dramatičnosti živimo. Igrom visoke energetike, virtuoznosti i sposobnosti glumačke transformacije predstava ispituje osobne i društvene maske i kontramaske, lažne i istinske vrijednosti i granice životne i scenske realnosti i fikcije.', '08.05.2016.', '21:00', 70, 5),
(6, 'Kaubojke', 'Osam ljudi (mjesto radnje je neodređeno) našli su se zajedno s jednim ciljem: napraviti kaubojsku predstavu.\r\nTih osam likova, osam karaktera pratimo od početka, tj. od audicije pa sve do konačnog proizvoda - premijere. Svi ti akteri (uglavnom gubitnici) tijekom rada na predstavi razvijaju svoje životne priče utječući neminovno jedni na druge; svi se polako hvataju za predstavu i shvaćaju je kao borbu sa samim sobom te ujedno gledaju na nju kao na priliku života. Ne u egzistencijalnom smislu, već kao svoju životnu metaforu: pobijediti život, biti iznad svakodnevnog preživljavanja, tj. možda prvi puta u životu doći do kraja i to kao pobjednik. A pobjeda je sama predstava.\r\nPredstava ima manire najklasičnijeg mjuzikla (i to je urađeno namjerno), a nadamo se da prati (možda čak i nadograđuje) dosadašnju egzitovsku estetiku.\r\n\r\nOn je jahač ledenog pogleda u kojem se zrcali samoće i prerije horizont, a šešir mu miriše na znoj, krv i nešto viskija. Okorjelo srce ovog, samorazumljivo, ubojice bez razloga može zagrijati jedino zanosni glas pun meda i obećanja jedre barske pjevačice.', '09.05.2016.', '20:00', 60, 6),
(7, 'Fantom u ulici', 'Oni se na temelju mnogostrukosti svojih osobnih, profesionalnih i društvenih identiteta u predstavi  transformiraju u niz različitih likova i karaktera iz našega grada.  Vidjet ćete ih  - do grla u problemima, u suludim situacijama  i interakcijama,  sa svakovrsnim unutrašnjim i vanjskim konfliktima… i deliktima! Predstava je prilika da ih upoznate, da čujete njihove sulude, smiješno-gorke i potresne priče… jer i vas se tiču.\r\nU dva sata virtuozne turbo igre  - oni će vam pričati o svojim željama i promašajima, o susretima, mimoilaženju i razilaženju, o samoći i čežnjama, o jalovim savjetima, konceptima i receptima… Predstava je živa vivisekcija problematične stvarnosti koju živimo i načina kako bježimo od nje…\r\nDođite i saznajte tko su ti ljudi što žive pored vas, što im se događa, muči i rastura. Kako su nadrapali i zašto su se raspali.', '04.05.2016.', '21:00', 75, 7);

-- --------------------------------------------------------

--
-- Table structure for table `predstave_t`
--

CREATE TABLE `predstave_t` (
  `id` int(11) NOT NULL,
  `naslov_t` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `oPredstavi_t` text COLLATE utf8_croatian_ci NOT NULL,
  `idLanguage` int(11) NOT NULL,
  `idPredstave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `predstave_t`
--

INSERT INTO `predstave_t` (`id`, `naslov_t`, `oPredstavi_t`, `idLanguage`, `idPredstave`) VALUES
(1, 'The priest friends', '"The priest friends," the work of one of the most interesting Croatian playwrights today, written in 1997, but incredibly precise hit will some of the almost daily actuality which we are surrounded. In a broader sense it is a tragicomedy, in which we find elements of different types and genres (drama, comedy, tragedy, farce, the grotesque). But the underlying tone that encompasses all elements is satirical and through it treats some of the key social issues. First of all, we think that the limitation of power of the Church, that is, question the depth of its interference in the civil sphere and the personal, intimate, which has the right to every individual. Then, in many ways explains the question of patriotism and the position of women in society and relationship to it and its right to freely and autonomously decide everything that has to do with her body. The issue of personal freedom and behavior in the microstructure, later subsequently formed the bigger picture and at the end of the policy of a community. Matišić ironizes need to increase the birth rate and hypertrophied and it shows in all its absurdity. The important thing is that we have every day more and more, and the quality and meaning of our lives is not the state primary. Cruelty Darwinian principle here is in full force. Something is rotten in Denmark, said a long time ago, and the echo of that cry echoed powerfully through every scene of this courageous text.\r\n', 1, 1),
(2, 'Shakespeare''s song', 'In front of you are three young actors who have tried something like that during his times are often stopped due to the above mentioned reasons. In the beginning there was a certain desire to, as previously known theater example, include all Shakespeares dramas through a number of theatrical sketches. The magazine denominator little by little transformed into the need to stop just in Shakespeare in places easier isklizavaju of historical determinants and sliding in the context of everyday life of our main characters: Zivko, Mark and Jerko.\r\nWelcome!\r\nWilliam Shakespeare wrote 37 pieces.\r\nYouve probably already know ?!\r\nOf which 10 historical drama.\r\nAnd did you know ?!\r\nOf which 18 comedy.\r\nAnd that?!\r\nHe devised and wrote 1,222 characters.\r\nOh that?!\r\nEach of the items 37 placed on the stage is individually, depending on the truncation of between 3 and 5 hours. Thus, 37 x 4 hours (average) is 148 hours.\r\nAre you also know that?\r\nAnd did you know that everything is possible to play in less than 2 hours ?!\r\nMeet Romeo and Juliet, Hamlet, Ophelia, Macbeth and his bloody Lady, Antony and Cleopatra, The Merchant of Venice, Titus Andronicus, King Lear, Richard III, Henry VIII and many others, some of them have never see.', 1, 2),
(3, 'Minister looking', 'Nušić''s political vaudeville easily translatable into the language of political circumstances at. From director whose work often disqualified as a cheap theatrical pamphlet (cfr. "Political pamphlet Oliver Frljić on the edge of the theater", "Political theater or pamphlet", "a poster and pamphlet-play" ...), in the case of this play is certainly not can expect something else. So, the only question remains how nušićizirati Croatian political scene? Who is a member of the current or former government most rewarding for portraiture through one of the most important works of the Southern Slavic comedy writing?\r\n\r\n"Minister seeking" necessary, however, to place in a slightly different social context. He begins the nineties, when the processes Development of the national states in parallel processes going and deleting everything that represented the common cultural heritage in the South Slavic community, but as a victim of this deletion in Croatia fell and Nušić himself. When the day is thinking about setting Nušić, it is impossible to ignore the cultural policy that this, like many other Serbian authors, expelled from the Croatian cultural space. Restore Nušića in this space is to enter into an implicit polemic with the norms set by this cultural policy in the meantime set up, for which the purification of language and thought, and the elimination of undesirable national authorities serve as resources. Constituting national culture, which is primarily taking place through the production of differences to a national community, its language and common cultural heritage, unfortunately, is happening today.\r\n', 1, 3),
(4, 'Birdie in cage', '"Birdie in a cage," there is just as dramatic works, vaudeville, boulevard. Cage is actually an inspiring skeleton around which the process of the work going on show. We would re role, threw texts, change the scene, adding the songs, in any way intervene in that, on the one hand very open form-content small world of theater that within his club, music hall, cabaret, how you want, live your hard earned and selection of life, on the other hand we had a default fejdoovsku thoroughbred vaudeville structure that does not allow even one second of relaxation or acting improvisation. And here and paradoxes begin work on this show.\r\n\r\nWe have set up and make a "live" program, which certainly implies ad hoc contact with the audience, but also to stage his own dramatic structure of the piece, not away from the base. This is in fact the most interesting of all - the more we intervene, we are closer to ourselves, entering the face, and polishing dialogue adapting them to our theater - street - city metier, the more we dissect this xenophobic our everyday lives, changing the names and the names and the whole situation, we are closer to the original. Once nostalgic world that behind all this lightness that generously gives the audience every night behind are much darker forces trying everything possible awareness in the framework of a system, be it gender, sexual, national, corporate, religious, or whatever set. "Being different", a phrase which finds each of us in our own "different reality" than the one prescribed, theater vocabulary more "do not play".\r\n', 1, 4),
(5, 'How do you think I am?', 'Throughout the two-hour " kick-ass " farcical and sincere, calamburic and dramatic at the same time funny and bittersweet sad games , actors travel through a number of its internal and imaginary identity and turn them alchemy of their game in a series of people , situations , real and fantastic events that are recognized as our own , as well as the reality that surrounds us and which in its absurdity , conflict and drama live . Playing high- energy , virtuosity and ability acting transformation performance questions of personal and social masks, false and true values and limits environmental and scenic reality and fiction.', 1, 5),
(6, 'Cowgirls', 'Eight people (the setting is unspecified) came together with one goal: to make a cowboy show.\r\nThese eight characters, eight characters follow from the beginning, ie. From auditions through to the final product - the premiere. All these actors (mostly losers) while working on the play develop their life stories inevitably influencing each other; all are slowly coming to the show and realize it as a struggle with himself and also view it as an opportunity of a lifetime. Not in the existential sense, but as a metaphor for his life: to win life, be above the daily survival, that is, perhaps for the first time in their lives come to an end and this is the winner. A victory is the play.\r\nThe show has the manners most classic musicals (and this was done on purpose), and we hope to follow (maybe even upgrades) current aesthetics.\r\n\r\nHe is a cold-eyed rider which reflects loneliness and prairie horizon, a hat, to smell the sweat, blood and some whiskey. Hardened the heart of this, self-explanatory, the killer for no reason can be heated only gorgeous voice full of honey and promises glide bar singer.', 1, 6),
(7, 'Phantom in the street', 'They are based on the multiplicity of their personal , professional and social identity in the present transformed into a variety of different characters and character of our city . You will see them - up to his neck in trouble , in crazy situations and interactions , with all kinds of internal and external conflicts ... and Torts ! The show is an opportunity to meet them , to hear their crazy , funny - bitter and distressing stories ... because you are concerned.\r\nIn two hours virtuoso turbo games - they will talk about their desires and failures , of meetings , passing and divergence , of loneliness and longing , the fruitless advice , concepts and recipes ... The show is live vivisection problematic reality in which we live and the way we run away from her…\r\nCome and find out who are these people who live next to you , what is happening to them , tortures and rocks . How are screwed and why they broke up .\r\n', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `redatelj`
--

CREATE TABLE `redatelj` (
  `id` int(11) NOT NULL,
  `ime` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `prezime` varchar(255) CHARACTER SET utf32 COLLATE utf32_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_croatian_ci;

--
-- Dumping data for table `redatelj`
--

INSERT INTO `redatelj` (`id`, `ime`, `prezime`) VALUES
(1, 'Luka', 'Pavlović'),
(2, 'Mihael', 'Matoš'),
(3, 'A. D. ', 'Miller'),
(4, 'Ante', 'Vidanović'),
(5, 'Josip', 'Radoš'),
(6, 'Marko', 'Jonjić'),
(7, 'Jakov', 'Ivančić');

-- --------------------------------------------------------

--
-- Table structure for table `slike`
--

CREATE TABLE `slike` (
  `id` int(11) NOT NULL,
  `idPredstave` int(11) NOT NULL,
  `slika140` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `slika300` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `slika400` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `slika460` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `slika460x350` varchar(255) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `slike`
--

INSERT INTO `slike` (`id`, `idPredstave`, `slika140`, `slika300`, `slika400`, `slika460`, `slika460x350`) VALUES
(1, 1, 'img/svecenikova140.jpg', 'img/svecenikova300.jpg', 'img/svecenikova400.jpg', 'img/svecenikova460.jpg', 'img/svecenikova460x350.jpg'),
(2, 2, 'img/shake140.jpg', 'img/shake300.jpg', 'img/shake400.jpg', 'img/shake460.jpg', 'img/shake460x350.jpg'),
(3, 3, 'img/ministarka140.jpg', 'img/ministarka300.jpg', 'img/ministarka400.jpg', 'img/ministarka460.jpg', 'img/ministarka460x350.jpg'),
(4, 4, 'img/krletka140.jpg', 'img/krletka300.jpg', 'img/krletka400.jpg', 'img/krletka460.jpg', 'img/krletka460x350.jpg'),
(5, 5, 'img/kakomislis140.jpg', 'img/kakomislis300.jpg', 'img/kakomislis400.jpg', 'img/kakomislis460.jpg', 'img/kakomislis460x350.jpg'),
(6, 6, 'img/kauboji140.jpg', 'img/kauboji300.jpg', 'img/kauboji400.jpg', 'img/kauboji460.jpg', 'img/kauboji460x350.jpg'),
(7, 7, 'img/people-acting140.jpg', 'img/people-acting300.jpg', 'img/people-acting400.jpg', 'img/people-acting460.jpg', 'img/people-acting460x350.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `glumci`
--
ALTER TABLE `glumci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPredstave` (`idPredstave`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `predstave`
--
ALTER TABLE `predstave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idRedatelja` (`idRedatelja`);

--
-- Indexes for table `predstave_t`
--
ALTER TABLE `predstave_t`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idLanguage` (`idLanguage`),
  ADD KEY `idPredstave` (`idPredstave`);

--
-- Indexes for table `redatelj`
--
ALTER TABLE `redatelj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slike`
--
ALTER TABLE `slike`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPredstave` (`idPredstave`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `glumci`
--
ALTER TABLE `glumci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `predstave`
--
ALTER TABLE `predstave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `predstave_t`
--
ALTER TABLE `predstave_t`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `redatelj`
--
ALTER TABLE `redatelj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `slike`
--
ALTER TABLE `slike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
