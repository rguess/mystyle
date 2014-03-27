-- MySQL dump 10.13  Distrib 5.6.12, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.6.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
INSERT INTO `act_ge_bytearray` VALUES ('2',1,'leave/leave.png','1','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0×\0\0E\0\0\0™BLB\0\0T`IDATxœìİ	xUºÿq—áŸ™+Ì…QÇ{GæŞqñªwQPFÙ‘E6Aö}MØ’°Ë\"\nn#›Ã&ˆÀ„-	IXÂ’ !b€,İş¿]•4M¡iNWŸïç©§ÓÕ\'•:UoşÑé„\nN\0\0\0*¨>\0\0\0 )R\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …\0\0\05H!\0\0@\rR\0\0Pƒ\0\0Ô …Ü@ttôèÑ£k×®}ß}÷İqÇt%c—3 çAÎ†œÕ—~„{ÄÄ=b-Ô­Iyİ’B®+))©E‹?üğğáÃwîŒ:–—oË·Éb7wãšKn·vÿ¼ü|9r†É9iŞ¼ybb¢êKÅ¸G¸G¬ˆºõ«º%…\\Ûîİ»+Uª4yòäË99RŸÆs­m6³X¯±Øìîv€÷—s2eÊ”jÕª­[·Nõ…‚2Ü#Ü#VDİú[İ’B®A.@…\n\"##«•o¤d×%+jk»-ÿê-‹ı7lÜ gIniÕ—\nppXuë‡uK\n).))é÷¿ÿıÆëómy6[^¾-W³Qì¡«ƒ=ÏìænhÕ?2rË¯ıkŞvÖ\r÷÷ˆQ·şY·¤âZ´h1yò$ãòÈµÉq5ì¹E¬°]´%ÇÜ^ØMËşS¦LnözSÕ\r·÷÷ˆQ·şY·¤«ÄÄÄ<ôĞC9¹å\ZØdq]!YçäµÍÅf®íîF®¶ı/çd×¬ù¿ îî+¢nı¶nI!W				¶Ù.Wë²,õşŞØËßw2û»®_Ñ—_iØf{çş PĞÑ£G«¾t¸M¸G¸G¬ˆºõÛº%…\\¥víÚ;vDæÛ.WåÒ‹/7üÑé<îp¶9æ9÷æ9c³í3Vş°!ãBL¾3:Ç“ãÜvÉ¹1×ùá¶„î=z\Z—ğ²ûË=ÛæÃ+m[áSĞçÎ­O>ù„êKç[‘‘‘ÿñÿ±eËÕ¢÷Hàİ#:”7uë·uK\n¹JõêÕ?b³_2IÁÙNçÅç»óç|ç%§sÈ¨°\nólÃæ6gz3=×y,ÇyÄî\\¶s¯t¶¹®âEók]\r›±Û%³‘ï~X´ÿÀèŸ–rï½÷ª¾t>$³óï~÷»+WÊL½yófÕ‡£÷H€İ#š”7uë·u[)dÏ=cÆŒiÒ¤I:uî»ï¾»îºKÖÒnÜ¸±l—goı[Ü6wÜqG^~¶Íu‘.Ê5â»äpæ9\\OÙ\\ëo¾[ÍGGOœnw:±;/Øœ?ÛœçÎ»ö¹*Õn\\f×Å¾h\\òÂı>ôlm€şùùÙ+VT{á|Çœ£#\"~È·Ùøa“fê”””;vìÚµ+...Ş•œœ\\¬§<Vîà=î‘@ºG|TŞ~XÏÔ­ßÖíÍ§.Œ1âÁ¬Y³æĞ¡C×®]}<-=7Ïõ‡Ø¤½zÍ\ZÙ.Ïşñ”Ò¿ÛGŒÌû‹Í.Åš-kyxÑî<{Ù™ï(ìpşüù>5á½ÓO’‡¶g¾QÁ;âö~­ñ……;)Ùpu¸²ÿ€é/cWwÑ|Ès6‘áÃ‡Ïš5kõÕæÌ™Ó¯_?÷‘Œ9²K—.ï½÷4&MšÔ¨Q£àààÛÿ™Gî‘€¹G|WŞ~XÏÔ­ßÖíÍ|ƒœœœ3fT«V­gÏ{öî»Î_‡½²ìİ—Ğ­{wéÿÁÈ×–ûÊ‘‘yåìg™kW¥:œ?]rÎvÚœÎü¼¼?×ªU¡Â*Tzó­N_¿ûÊ×^N÷~<\ZvÏíYÓßgØ[WrvÏÔ²½|ˆ.ñÖ­[e¦^¿~ıÆe-ímÛ¶\r6LÍÌÌ”2îß¿¿uëÖò}§L™\"÷öìÙsîÜ¹r<’â	Œ{Ä§åí‡õLİúmİ–ùdddÔ­[·I“&’-n˜?Še‘Æ›<ıôÓ²_Œ¤\\Õ–eœ}¹Yæ»v’—Oşâ<“ëŒ=zï½÷ŞqçİÿïªmÛ]U©»ââ¥³İu!³ìö,ÏØí…\rY›<\nşş6ÃŞºëÍÑæ\"ÛË÷Ó|2kÇÄÄDEEÉ,¼oß>YËÃØØXù×¡Óx{É’%cÆŒ‘b.\"í±cÇ.^¼8--­¼ÃÜ#pøº¼ı°©[¿­Û²}ƒôôôjÕª½÷Ş{eÊËäÉSªW¯î·¿:o¼óvÁu1ìÌp¹Àùs+/ÿ”ëŒØ•øØOU­öû{*W™µpY®Ó™ç¼”çúÂmQ»\n¿Öõå…kã’_Ùb\\òû˜ş~5ÃŞºÒçh_™µSSS—.]:jÔ¨°°0™”—/_~üøqsÖ6µk×n£ù÷eûöíËå»—	÷ˆÕï‘ÛPŞ~XÏÔ­ßÖm¾D9 )¦› æ²båJÙ\Zßê¦ÕvŞîº0çe1/€ë›ó\\¾¤fÛ„cOÔ©ûÒ+¯ÉsÎqÉqÍsJ­n‹1*Õn^`×b\\]cWöÂµÍs£±ÿ€éï?3ì­óf.÷ bÎÚƒÎÌÌt\Zº\Z:thÉYû]“&MêØ±ã­ë²â±ô=r{ÊÛë™ºõÛºõödddT¯^}õêÕ·AÌeÉÒ¥ÕªUóÃÍÕvŞ¸6r%Î½Pï…}‡Ç&$FíIÜŸ¸}wò})›bîL8\ZŸ¼5>iûî¤¨½É	‡Ó>ıù›­Z™_e3×¶óvÑÃ¢ıL?™ao÷stùsÖ\n\n*eÖ0`À„	Ü³öøñãe–¿Åï{¸G¬{Ü¶òöÃz¦nı¶n½ú999uëÖ½•Ä”\\&OòôÓOûÛ‡UŸÿÉ8g\\¹çúöíéÍ×{ã–f{ÑbóØg£Øş£¿?Ì°·®¬st9sÖ7oŞ¸qãÌyşüù³vzzúªU«BCCsss{öìi¾•(Ï&%%•ÃÈË‚{Ä¢÷Èí,o?¬gêÖoëÖ«o0cÆŒ&Mš”c1—Æ›|ğÁ¾a™•ú³Í~ÖîZ~6Û6›«m¬Í…[\\\rcı•Ï°·®ä}úÌO¥T¯ç³·DdşMII)¶Qfä#F˜í:$\'\'›oYŸ={6<<|îÜ¹¯¾úêÉ“\'oúûŞî+Ş#·¹¼ı°©[¿­Ûƒ¬¬¬ªU«–õ7b¼YdŸ²g¿ú;\"Æ»v™Æe«’i³¶İ[<\Z—0“ş²X=…”œ£CBCï¿ÿşC‰I×,]Ù.ÏJŸò\n\"C†IHHğÜ\"óu½zõÌ¿Ü‘‘ñÉ\'ŸHCR{Ÿ>}äšÃ†\rëÜ¹óåË—O:e³Ùnù”÷ˆåî‘Û_Ş~XÏÔ­ßÖí¿”HÏ=Ë=‚˜K·îİİéØy9óš‹Íİ°]»ƒÎı-B®9G›oÆ^s¦6çh³C9«à±Ö=By›¨[¿­Ûƒ?şñ¾x#ÄıvÈ<àëAzÏ¨ÔŸl¶ŸdíjØÍF¦½°áng^ÕMûşÖM!¥ÌÑ×œ©=çèÀ›©½Á=b¡{„òv£nı¶noğ\röìÙS³fMEsyè¡‡üçÿš1*õŒqöÏ]ª3Æ%qo<sÍš÷·h\n¹æË‹ÍÂ3uÉ9Ú|¶|?#âç¸G¬rPŞ¨[¿­Û|ƒ1cÆ:Ô§)dĞàÁò]|=N7›Í6uêÔ˜¿BVLQ¥šËicñ|x¦Äršş²øU\n)ı»]ïW®7‡¯ßPÊî¹Xw¦6qøó=By_uëÏu[Š|ƒ&Mš¬]»Ö§)dõš57öõ8İV\Z3MÜyçƒÎËËó|Ö¨ÔSE×Àİ(¹¸r8ŠuÓ·¿_¥Ò/±©ôßZ¼æL]±bEoæh?Ÿ©½Á=âÏ÷å}=Ô­?×m)nğ\rzê©;£|šB¢¢¢k×®íëqºeee¹ï7iT©ReÍš5îgJıQ®ÃqÊáº?š‹<,Ş0-ê£{¿J!¥_b§w8áš3µ—s´?ÏÔŞàñç{„ò¾êÖŸë¶7øÕ«W?v<Í§)äxZú½÷Şëëqzªåú¿¯àüì³Ïšÿ…’Q©\'³/ë“×¥úÑ½Åá±İÜènhŞß¯Rˆ³ÔKìıßn*e¦¾áí·3µ—¸Güù¡¼¯‡ºõçº½|ƒ»îº+7/ß§)Dö/µ2vìØR‚ùíäº\0ó2œ,¼%:®lÏ ¿<”óæ?W°teúó‘áë7”|§Z¶Èv/÷ğÃ›d¦¶ÊÉñ’%jÒßúW¸-÷å]\nKÔ‰¿õ¯ <…ä{!•+W6‹²R¥JíÛ·è¡‡Z´háÎË‡\\ŒŒÂµëÂ.Å¶8ŠÖô—å6Tj™”r‰###e¦ş>\"â†•ÿXô÷ˆ?ß#”÷õP·ş\\·×£İçBöìÙc–iÃ†\r_yå•š5k†‡‡»ŸuUªı„İX¤!×Ã½.Üè0/’4Šzô¿p!iğ îæÆÌÌıII[NLÜš}XúŸ>½¯uë¦çÏ²ÙÒ32â3Jøùçƒ²>{ö€{\'²½}û7¤±sç77.İ¼yÅæMË¥¿Aú<¸eÔÈşaaƒÇŒ\"‹4BCM\ZRòx¾ıöËiÓBJÿ™3	;¾)o¾YpèP¤<%û‘Ã»¹ñºûûU\n)ı;½›©òç^òé=â}ÿ=:äæ-¥ÿ‹/>WÊş¿3n’ûwİZJcÍš‰E·ÀÅ‹GÊıø}tPŞ×ã\'u{½ş½{w’—ƒK—RRRvÈÃ¿ÿıÅœË©Gìp½:={õìñ¯;¾‘É_¶Ëœ¿wï÷löÑñøÏÜ~ãß‘ùºœşİë-²ÿFnßïÈDDDÈi­[·î=÷Ü3qâÄk}:]®Š£ğÚ¤»®OÛÛEİÒÍ†İ–Ş£Gû‘#û¿òÊzöìøLnß¾Åôé¡=öç‹®—ùôÜÜ£1ÑkenÍÉIíß¯Kppï#úõë×EŠÏ½ÿaC{¶k×âØÑh)Ç•+ç6løÂÒ¥ÿX±bÎíkäÙ\rüñÄü¼cyyÇòóçç—ö›o66çäÉøúõÿ:`@×aÃzõnŞüÕ  ŞÒ2¸{½zÏÌˆ—=ØòËş¥ÿèÑRSwÊñ·iÓì&Æ[¬¿_¥Ò/±©ô™:P‰ÀK>ºGÊÚÿ…-ÖÿàÍ-[6’ûeÈ#†÷­U«æğá}¤¼åv“íÉI[¯ÜC{·€ÜeAÃz\r6nŒŒ¸+·€ãDÈèrØÍ[ÀÇï£{„ò¾?©ÛköÏÌLøË_Y¸pæËš4yùçŸ¼ñÆkòŠ %z`ÿ&WYÚÒš6}e}ø\"©íåËæŒÙoåŠ¹_}õÉ[m›ûâxüjn¿Á7;vìÀAƒ|šB\r\ZêëqzZ·nİ¬Y³Î=[ò)#/§9ivYÂµÃ£]l]Ô?=-fÎœ©òpîÜiß~»`íÚù‹}tşüİÛ™=û÷ï²;>¼Øş3Nì’íæş#¾_2qbpÖ…C2¥îŠùvïŞ\rM›¾œ°ïûİ»Ã/_–«¥mÜøUƒÏÒ½pÜ}Ğ ®’BòóÊ³éé1ıúvvï¿KçÖîãìÚµ­<ûÍš/ÂÂ=ñÄÿŒİ?,tPjêvy¶­+…È×î*ëx=·ûU\nq–z‰İd¦®R¥ŠVPÁ{>ºGÊÔ¿qã%û\'\'EøÎ´i£gÌ#•,)òäC‡ôpßƒıúuv÷ïÒ¥µ{®[ -æ›o¾Ê7oP¹R¶Ë³æ-pâÄ®ò=~ßİ#”÷õøCİ^³¿DáåËgEí\\“’²-v×·;v|-“¼d­[W˜ıen—WŠM›şµ`ÁçÎí=ª¿¹‡=Úùâxüjnço§^Å¨Ôã®Åa®Ó\nm´_i»òxèZ‡†ü%ëĞÛŞ´å]ûÍ‹}øá‡ã¶l^fö—Ğ`¼ğ_µW\nqÍ›Ç·o[Ù¶m3)ÁU+çdş´wÅŠÙ¯½öÒ—_Î”¥Q£—ÒÒ¢¤Ï÷ß/9slÉãéÔ±åáÃ[¥!Á¥ë;m†÷9²ïŸÿü°¬¥İùíV	û6Ê!eeÌÎN’Ãûùì>‰#K–|²}ûªÖ­šÈ„ŞªUã“»Ê:^wK!^âKŞ„[¼G¼ì1;éñÇÿ»dÿ¸¸o»u{+rËrYêÕ{VÖ[¶,oØğ÷ş÷íÛXxŒ(¼‚İ·€íXÖÏ[` ÜòzPx¼iŞåsüşpPŞnOİ^³|Üwÿó?’W‡1cË<ß¼ùßCF÷oİºiXèÀW^ùÛ/¿’>’¹])ä‡¥×6´‡üƒ6(¨—Ôp÷no•ûñø[İ*şdöìİ\'û÷õ ½çªT‡y9ÇŒõqW£pKÑvÏ†±l\\Ş³g» a=‡ïİ¯ßÛ½zuèÛ§“¤·Ú6KJÚdö2¤ÛÑ£Û‹í?#cWÿşeKÊ‘­§NÅÉ–Y³ŞµÙ¦ß9th÷ˆˆÅ_=wØ°é’BÇd–ìÔ©¥ô—oÑ¯ïÛ²–	·C‡2‡š;ŒıvÜ¸¡æşÛ¶mj³t;~|§ûøß~»åÊ•³‡÷š={ò†\r‹¤èwìXUÖñëoÑâä?Ú(»›¾GÊÔ_*ÿOª¹¬Xÿ˜˜oæÍ›&üÍ7_üßÿ=µjÕì¯¾úèÓO\'fg\'Ş»Ö\Z·€«Û6MÍ¯ò¸\\Ûß~ûÍ+·ÀúŞåzü~rPŞn·§n¯×ÿÌ™İowjyèPÄ¹s	M›¾œ““œ“sX–fÍ^±Û.^üÑ˜1ƒzôh·iÓù‡¨ôÿé§=‡“·¤¦nKJÚlËO-÷ãñ«ºõêÿÔíÖ½»Rˆì9(8Ø×ƒôQ©rÊºÀq¬°m<ôh+±ÅµŞ»gİŒaŸ|2^Ö;w®ZûÍç‹Í<>¡E‹¿çæ$K‡!ƒ»MİVlÿ\'¢û÷{ÛÜ8p@	ÁA½|ğşõë¿:¤Ûºï,_şÙ°¡İÓÓ£N¤Gmß¾2>î[ùF{÷†»Ö{ÖMŸ\"»İ¹c•t=ÄîúæÅŸ\r\ré\Z:à/yDÖÒ®[÷qóYÙÃ´i£jÖüÏÏ?Ÿ6jTßÔ”­²Ñ+73^ÏşÖM!NşÓÑ2º•{Äûş]:·Ú¿c›6Ml¶TÏşáëJìX¾ì³U+g?÷\\Õ_Ï‘¥uë&Go1÷»öª[Àh¸n´ÒÁ¸Fºoó~t…•ò>~ÿ¹G(oÓí©Ûkö¿|)qÒ¤ ¿şµîÄ‰Aß®ıâ…™0a¨±ûïÿ~X:Øm©òJÑ£û[›~XÒ°á}zwœ3grƒ?ú/üo¹¿Õí¿AVVVÕªU}ñvˆìSö|áÂ_Ò{Æ»v<^³í8Z`¬+d´íî-©îş2¯-X0==}ç†\r_NoÔÚµ®\"O}òñ¸õá¥¿ë½Ô­ÅöŸ‘İ¿ÿÛû_÷İüO?ğãÉ˜¡C»Í;eÇöÃ†uO;¾#aßúY³&M<|üø!æOŸo,òµ]»¶™=ûİı	ëåkcw­7n°¹+cnu}¯~ı:H—)øèÖÈeáá»ti%Ï†…\rH5Æø÷âÍŒ×³¿¥Sˆó:3u)ŸÎ3gê@š£½w+÷ˆ—ı·o[>hĞ;²eÍê¹cÆt÷ÿæ›y!£ûM:ò½i#%L<öØŸ§—_şë€e~7‚¸ÜCÌşE	ÛuH\n‘-[·._· Kç7ecXè\0#ˆ§ºº•ëñûÛ=By;oKİ^¯¿Í–rè`DÇ-öîùNrğ+¯<ÿí·_|»ösY$I›ı³9Ğ£Ç[›6-Y¸à}s\'ò0ñP„Ti¹¿Õ­Wß`ÆŒ\Z5.÷\"ûœ>ı}_°LŒ¼,g?µÀX»–Âkã±öxèî&/¾˜öí·ŸËö=»¿›>}ôÚoæ-Z4CæÄ·Ú6Ûµkµl2¤ë±£[‹í?ãD”ñ^ˆk‡+Vüã³Ï&vìĞÂnO9s:Vâ°ü[0.î›ùóß;sz—Ù?5%òµ×^Ü¸ñKó\0V­œ%Ïº\'jçÊzõ	\r•ÿõ7Şéo¼òØ‘#›İ‡mLÁ©®)85òç³»)85çò¡_~Ù_¦ñz«§çu~ˆ^JõÆËoÂ­Ü#Şôß³ûÛ¦Mdg0û\ZÕGB¶»Ã‡9¢·üËRÂÇãÿùı÷Gğşh™ÖÛfößiŞ!×½¤[—.Æ-à\nâ‘gå0òúe¹²®q”õøıó¡¼}]·7ìß§w‡s?ï=ztë«¯Ö‹‰ùzWÌ×²–Z5ûKÁï…,–é}ØĞîòjr`ÿ†Zµ’úôÑñøOİzõ\rrrrê<õÔ”)SË1‚ÈŞdŸ¿d_ôõËÄ¨Ô‡=EÖ®‹án8RÌÅln±n4ŸÏ›òVÛ¦¡¡ı$ÃN:|Íš9’BÆ„\rX·î³ÿàAï=\ZYlÿ\'Nìèßÿm÷şçº’Gã_²rr\rĞ9<|ş´i#dº´Ù»çò¥C½{·ÏËK’öòeŸÎŸ?Í}<§OÇ:´Ñìöæ›¯™Ô”-ÙÙûİÇß¹sKYüÄààÒÍn;²iÓWÆ)Óx=ÏO\0¤gYşúµçs´÷nå)½¿İ~döìI\Z½xîÜw7)Î·ß~#$¤ŸÜÅú7oşŠÙmÛ¶eşgn<}Êu˜}\\·€±1%eóÅìîÃ[@\Z®[ c‹à æ\"·ÀøñƒoåøıüÑ¼¼}W·^öïĞ¡ùë¯¿òÏ/?µ»¿«mt;÷ó=Úş±hÁùWeÊ/¿$têôF¯^í\rê’››è‹ãñŸºõödddT­ZuÉÒ¥åAV¬\\yß}÷;æÓ±İ£RåõşˆÃîZ»…k£Q¼CÑÃo×Îİõµ4~<¹3âû/ıóıE‹>ğìß½{›cG·x~ùÚoæ¼øâ3æOóÜTÔò¥K>|õÕ¢£V˜û_¾ìã9s&;S?F=óÌ“O>ùß»w¯¹æñÔ¯ÿ\\±ãÿå—}ÿûß>ú(LÚƒuÙŸ°N\Zÿüçû]»¶êÕó-9ì2×óx”Ï°å¥¬3uÀÌÑŞ»•{¤ôş[#—uÏË=T¬¿İ–<&¬ÿömÿr÷ÿä“±õêıoXXÿÒ÷/·@±ãÉ¾Ñ-p+Çïÿ÷ˆÎåí»ºõ¦¿İ~¸Kç–ÇGJ»E‹†²ÎÏKìØ±ùÓO?nvH;¾µG÷¶«¿5şÔM?,zíµz{v#;üâó)Ëşõq¹_Õm¾Azºë˜H€¸Å\"QFö³}ûßê¦É¸®„kq8Ì‹T´¶_Ù^rcÉş¹9óóyö¿t1AæSÏş¹¹mù‰×ÜNÎÒ÷oL©{K9#G\"nåøËÔßfØòâıLHs´÷Êñ¹éş/&ÈİtÃşGGÜã±Ğ=¢myûCİ–Ò???1ëÂnó)[~’Ã¬Oİ–íDGGßwß}·ò£ùÚªU«¦=æ“ÑÜ2ãLÉ‡T@²QF£äº°Ïa¶Öııd†-/ŞÌÔ6G{{Äê÷ˆåMİúmİ–ùdddÔyê©F\Z—õ·f¤¿|•|­ş ÆÍÈËIÆb^É¤…İ\rwÇÕuîï?3ly)}¦¼9Ú{Ü#phXŞÔ­ßÖíÍ|ƒœœœéÓß—2íÖ½»7YDúHOé/_åoG-ÆøÙa¢q%‹\ZIf£ØöbÏjŞß¯fØòr½™: çhïqÆ=¢[yS·~[·7ÿ\r²²²FùÀ<ôĞC\rúzõê;£OËÍË—µ´eË ÁƒåYé<|¸ô/Çãö#/\'z¿8‡è_à3ly)9Sêí=î‘€¹G´*oêÖoë¶¾Á={ÆëúiK:÷İwßwŞ)kiË–ĞPÿù?b¼qÇw8ì\\×ãÃQØp/î-%ŸÒ¹¿œ±Š+ª¾t¾â9Sğí=î‘@ºGô)oêÖoëÖïâ¹ZÕ«W?‘¾©ÀqÀ\\œÆAc9puû`Q‡ƒš÷Ï8±ùŞ{«ª¾t>dÎÔ+V®à9Ú{Ü#vhRŞÔ­ßÖ-)ä*µk×‰^â¾ı‹\\÷F×Úy¥ƒÖıåŒ=ùäŸU_:ßŠŒŒ”9ZÖªD=î‘À»G:wîğåMİúmİ’B®ÔÅY  Á}Íœ²x^Âb4ï?<øÑ£º«¾t>7vìXÕ‡à¸GïñÃÏ¬”;êÖoë6ğ‹¯LbbbjÔx ?o·Óu%ä’$—¤pñ|Xü)]ûË¹ªYóQ;©¾t>§ÃLí\rî‘À»Gt¨mêÖoë6ğ‹¯¬Z´h1mêàÇ>§cŸk]àj×©h‹±± ğÙcÙ§m9W-š×W}Ñnfj/qØ=¢ImS·şY·Z_™$%%ıú×wïØ¶ÀuÍ\\—d¯,Ncíj¸·\\yjŸÙAÃş?DÌ©V­Ê¡ƒ_«¾h·ƒ&3µ7¸GÊz$Z­ú¢•F“Ú¦nısn×¢øÊj÷îİr[F|?»À±ÇY`^×âzè(jm1ÛfC«şÛ·Í—³´î»OT_®ÛD“™ÚKÜ#tèSÛÔ­Ö­.ÅWVëÖ­û}µ*Ó¦´åí*pìvì6×NÇî«\Z[®jëˆımù»äÌTúõİ»ã«¾P·>3µ—¸GæÑª¶©[«[Š¯¬’’’š7é¡\Zz{Wô—éá8ãRÅ›ëi¸ÚW7\n\nŸuz¶­ß¿Àw\"=<&japP§\Z5şĞ¢ùKI‰+U_¢ÛJ«™ÚKÜ#qèVÛÔ­_Õ­^ÅwbbbBFw}òÉZÕï«zGÅŠt%c—3PûÉZr6b¢ª¾,\nTĞl¦ö÷ˆÉº÷H-k›º5)¯[‹Ï¢ø{jUĞr¦†¨mµ4ŸÛ)>køüóÏe¦HKKS} úb¦F ¢¶ÕÒüük=x«ÈÉÉù·û7©Ô¦M›ª>}i>S €QÛji~şµ¼U´oßŞü^•*UÂÃÃU¦4Ÿ)À¨mµ4?ÿZŞõ«_™)ä®»îzğÁóòòT”4Ÿ)À¨mµ4?ÿZŞjÕªåùyæûî»oÂ„	ªJGšÏ`Ô¶ZšŸ­ïÿÌ¿ôWÌoûÛÌÌLÕ‡¦Íg\n0j[-ÍÏ¿Öƒ÷\'N”}ì±Ç\Z4h x@Ö>úègŸ}¦úĞ´£ùL\0Fm«¥ùù×zğş/\"\"B\nôßÿıßÍ¨Êú7¿ù4Ö­[§úĞ´£ùL\0Fm«¥ùù×zğ–“••å,ªTioŞ¼Yñ1iIó™ŒÚVKóó¯õà­EóJUó@Em«¥ùù×zğÖ¢y¥*ÇùG ¢¶ÕÒüük=xkÑ¼R•ãü#PQÛji~şµ¼µh^©Êqş¨¨mµ4?ÿZŞZ4¯Tå8ÿTÔ¶ZšŸ­o-¿úÕ¯T‚Ö4Ÿ)À¨mµ4?ÿZŞZ4¯Tå8ÿTÔ¶ZšŸ­o-šWªrœ*j[-ÍÏ¿Öƒ·Í+U9Î?µ­–æç_ëÁ[‹æ•ªçŠÚVKóó¯õà­EóJUó@Em«¥ùù×zğÖ¢y¥*ÇùG ¢¶ÕÒüük=xkÑ¼R•ãü#PQÛji~şµ¼µh^©ÊİúùOIIÙ±cÇ®]»ââââ\r±±±QQQÉÉÉÅzÊSaaa·øí\0/1·¨¥ùù×zğÖ¢y¥*WúùÏÎÎnÚ´i—.]zõêÕ§OŸ×_½M›6½{÷îÖ­[ëÖ­×¬Y#}†>kÖ¬ÕW›3gN¿~ıÌlÙ²eäÈ‘²“÷Ş{O\Z“&MjÔ¨Qpppttôí!tÅÜ¢–æç_ëÁ[‹æ•ªœ÷ç¿  àùçŸ?ş|±í,¶nİ*Écıúõ7n”µ´·mÛ6lØ0y6333>>~ÿşı’Z$$&&N™2E‚ÈöìÙsîÜ¹rP„¹E-ÍÏ¿Öƒ·Í+U9ïÏÿ„	şğ‡?dee%$$xn—%©bß¾}²–‡±±±ÁÁÁNãç5K–,3fÌğáÃG‘öØ±c/^œ––VşCÌ-ji~şµ¼µh^©Êyyş§M›Ö§OŸ-Zœ9sæ…^ˆˆˆp?%)$55uéÒ¥£F\n“±|ùòãÇ›)ÄÔ®]»Ö¯_ß¾}ûòà¹E-ÍÏ¿Öƒ·Í+U¹ÉÍš5“HQPP )D¶deeÕ¯__’„ÙÁL!ƒÎÌÌ”‡.\\:thÉò®‡I“&uìØÑgc\\˜[ÔÒüük=xkÑ¼R•+ıü§¥¥=òÈ#k×®5š)Dœ;w®nİºÎ¢TJ\n0`À„	Ü)düøñ’Z|5$ÀÀÜ¢–æç_ëÁ[‹æ•ªÜ\rÏ~~¾»íN!ââÅ‹fÃL!óæÍ7nœ™0æÏŸï™BÒÓÓW­Z\Z\Zš››Û³gOy(åÙ¤¤¤rà¹E-ÍÏ¿Öƒ·Í+U¹2ÿ×_½äFÉ)))Å6JÂ1b„ÙîĞ¡Crr²ù#˜³gÏ†‡‡Ï;7\"\"âÕW_=yòäÍ8pÌ-ji~şµ¼µh^©Ê•éü?÷Üs%72¤ØoÍHş¨W¯ŞæÍ›¥‘‘ñÉ\'ŸHãƒ>èÓ§ÏÈ‘#‡\rÖ¹sçË—/Ÿ:uÊf³İÒÑ×ÇÜ¢–æç_ëÁ[‹æ•ªçŠÚVKóó¯õà­EóJUó@Em«¥ùù×zğÖ¢y¥*ÇùG ¢¶ÕÒüük=xkÑ¼R•ãü#PQÛji~şµ¼µh^©Êqş¨¨mµ4?ÿZŞZ4¯Tå8ÿTÔ¶ZšŸ­o-šWªrœ*j[-ÍÏ¿Öƒ·Í+U9Î?µ­–æç_ëÁ[‹æ•ªçŠÚVKóó¯õà­EóJUó@Em«¥ùù×zğÖ¢y¥*ÇùG ¢¶ÕÒüük=xkÑ¼R•ãü#PQÛji~şµ¼µh^©JØl¶E‹eee9‹Îÿ={vìØ¡ú¸€òÄÜ¢–æç_ëÁ[‹æ•ªÄøñãå´W¬X±V­ZÒ¨\\¹rƒù¿à¹E-ÍÏ¿Öƒ·Í+U‰‰\'V(á™g	W}h@¹anQKóó¯õà­EóJUâìÙ³wŞy§giØ°á=÷Ü“™™©úĞ€rÃÜ¢–æç_ëÁ[‹æ•ªÊ!C*V¬hFJ•*I\n™0a‚êƒÊs‹ZšŸ­o-šWª*yyyUªT1SHûöí~øáÜÜ\\Õ”\'æµ4?ÿZŞZ4¯T…Ö¬Ycş\\¦F\Z|\"‡¹E-ÍÏ¿Öƒ·Í+U­gŸ}VÎóæÍUPş˜[ÔÒüük=xkÑ¼RÕJKK“ó/kÕ”?æµ4?ÿZŞZ4¯Tå8ÿTÔ¶ZšŸ­o-zVjttôèÑ£k×®}ß}÷İqÇ%ÿz‡&dìrä<ÈÙs¢ú²  TĞrnñšŸ­o-ºUjRRR‹-~øááÃ‡ïÜu<-=/ß–o“Ån,îÆ5–Üníşyùùrä<\n’sÒ¼yóÄÄDÕ—B·¹Åßh~şµ¼µhU©»wï®T©ÒäÉ“/çäHö0^Œ]k›Í\"×Xlvw;ÀûË9™2eJµjÕÖ­[§úB!h5·ø!ÍÏ¿Öƒ·}*U^\\e°‘‘‘Æ+q¾ñˆëå¸¨m¬í¶ü«·x.:ôß°qƒœ%‰kª/,OŸ¹Å?i~şµ¼µhR©III¿ÿıï7n\\ŸoË³Ùòòm¹²˜b]ìyf7wC«ş‘‘[~ıë_ó£Ü\"Mæ¿¥ùù×zğÖ¢I¥¶hÑbòäIÆK¯¼îæ¸\ZöÜ¢ãÂvÑ–s{a7-ûO™2¹ÙëMU_4X›&s‹ßÒüük=xkÑ¡Rcbbzè¡œÜ‹òúj“Åõê+ëœü¢¶¹ØÌµİİÈÕ¶ÿåœìš5â·fp+t˜[ü™æç_ëÁ[‹•\Zl³]6^‰/ËRïï½ü]V³¿ëµ¹èË¯4ìÆF³ƒ=ÇsÿĞ?(hÈèÑ£U_:X˜s‹?Óüük=xkÑ¡Rk×®½cGd¾í’ñŠ{éÅ—şètw8Ûœóœ{óœ±Ùö+Øq!&ßãŒÉqn»äÜ˜ëüp[B÷=—çËî/÷l›¯´m…O@ÿ;·>ùäª/,L‡¹ÅŸi~şµ¼µèP©Õ«W?~üˆÍ~É\\dÈÙNçÅç»óç|ç%§sÈ¨°\nólÃæ6gz3=×y,ÇyÄî\\¶s¯t¶¹^¡/š_ëjØŒıØ.™|÷Ã¢ıFÿ´ô”{ï½Wõ¥ƒ…é0·ø3ÍÏ¿Öƒ·*õ;îÈËÏ¶¹^€/Êë«ù’Ã™çp=e/p­¿ùnıı5=qºİéüÅî¼`sşlsw:7îÚçJ!vã%ÜõB~Ñx9/ÜOáCÏFÑö\0èŸŸŸ]±bEµ–¦ÃÜâÏ4?ÿZŞZt¨TãıŒ_lv	\"Ù²–‡íÎ³—ùÂçÏŸÿàãYŞû8ıä)yh+pæédGÜŞÂ¯5¾°p\'%®Wö0ıu¨\røõ£–æç_ëÁ[‹•j¼Ÿ!¯¬YæÚ•BÎŸ.9Og;mNg~^ŞŸkÕªPá\n*½ùV\'Ï/Œß}åk_ªİûñhØ=·gLj¾ó«_ıJõ!hMóûWëÁ[‹•j$‰,ã•U^b³ÌŸÈœ½ì<ù‹óL®3ö@ê½÷Ş{Çwÿ¿{ª¶mwU\nÙ/í®é,»=Ës\'v{aCÖf§¤¿µ9wî\\åÊ•U…Ö4¿µ¼µèP©ÆOU.¸^híÌ×ËÎŸs\\ï…ü”ëŒØ•øØOU­öû{*W™µpY®Ó™ç¼”çúÂmQ»\n¿Öõå…kãåüÊãåü‚çş¦¿µIMM­Q£†ê£Ğšæ÷¯Öƒ·*ÕHçí®İó²˜C– rÁæ<—ï<ù‹mGÂ±\'êÔ}é•×Îä9Oç8Ïä8Ïæ9%‡l‹1Rˆİ|ñv-Æ+·±+{áÚæ¹ÑØÀô×¡6à#qqquêÔQ}ZÓüşÕzğÖ¢C¥\ZIâ¼ñº+¯²ç^¨÷Â¾C‡c£ö$nOÜ¾;yÇ¾”M1w&ŒOŞ\ZŸ´}wRÔŞä„ÃiŸÎşüÍV­Ì¯²™kÛyÏ‡F»èaÑş¦¿µY´hQëÖ­U…Ö4¿µ¼µèP©Æg;äÅõœñ+¯¯çúöíéÍN}ã–f{ÑbóØg£Øş£¿µéÕ«×Ì™3U…Ö4¿µ¼µèP©F\nùÙf?kw-?›m›ÍÕ6ÖæÆÂ-®†±…ş:Ô|ä±Ç‹U}ZÓüşÕzğÖ¢C¥\Z?‘É4^bå7Óf+l»·x>4^3é/‹µ_Ø¿ÿı÷ßo³ÙTˆÖ4¿µ¼µèP©Æ{!™×\\lî†íÚtî¯CmÀ:tè0uêTÕG¡;Íï_­o-:Tª‘B~²Ù~’µ«a7™öÂ†»yU7íûëP(wÇûİï~wúôiÕ¢;Íï_­o-:Tª‘BÎ¯¬gŠ^†Ï/·îg®ÙAóş:ÔÊWVVÖİwßıÕW_©>h1·—BëÁ[‹•Z”BÌå´±x><Sb9MY®Yñññıúõ[»víí¿ğsAxâ‰·ß~[õÀE‡¹½ZŞZt¨T#…œ*z}u7J.®§bİôí_¬6:TËõîÚ¼y³¢ë	tìØ±š5köíÛ·  @õ±ÀE‡¹½ZŞZt¨T#…ü(¯¯Ç)‡ëUöGs‘‡ÅÆ³E}tïï®œœœöíÛÿêW¿2óÇ£>úïÿşïò_µ—~bÿşıR¿ûİïøAŒ_Ñan/…Öƒ·*ÕH!\'WVYŸt¸^†toqxl77ºš÷7kãóÏ?ÿ·û7Ï?æÖ AƒvíÚ©¾ªPãÜ¹s©©©qqq’9z÷îıøãßÿıÓ¦Mãã¨şF‡¹½ZŞZt¨T3…8æKìÉÂ×ÚW¶gĞ_Êy;v¬7dÖä~³J.ño~ó›Ê•+×©S§U«V3fÌØµkÄ?UĞ`n/…Öƒ·*UÆèpÈmFáÚõ¢[¸Ûâ(ZÓ_³6ÒÒÒš5kV¥J•»îºË|)zàx/ÄB²³³›6mÚ¥K—^½zõéÓçõ×_oÓ¦MïŞ½»uëÖºuë5kÖHŸáÃ‡Ïš5kõÕæÌ™Ó¯_?s\'[¶l9r¤ìä½÷Ş“Æ¤I“\Z5j­tp¸.æöRh=xkÑ¡R])Ä~Ân,Ò×Z÷ºp£Ã|–FÑC¯ûÏœ9nãÆ¥òTZÚ®øø\r	û\"Ø,ë¸¸õ?Ÿ=àîß³g‡ÜÜcæş;v|ózûúé\'óóÓŠÏÇO:œ¼Íİ?<ü«?_^Ç_JÏÚğÁï½÷^3ˆÈ?ˆù\\ˆ<ÿüóçÏŸ/¶]‚ÅÖ­[%y¬_¿~ãÆ²–ö¶mÛ†\r&ÏfffÆÇÇïß¿_R‹Ä‘ÄÄÄ)S¦H9pàÀ={Î;§b(¸æöRh=xkÑ¡R+¸~\"“.¯¸Â×İt×ÃÂõ	c{a»¨[º÷ıóòu}§íÖ­«ÂÂOœ8üóÏß6¬×‚3:vh¹aÃâè¨µƒuT·îãcÆ	î3nÜ°úõÿ:aBĞØ±C%[ÈŞÙ±cÍîøõ{÷~/Oíİ»1>.|çÎo‹1ã§3ûşş÷zgÎì\r2°S§VM›¾\Z2pÀ€®·~ü¥ô/Vyyy\'Nüíoûè£ÊS111ª.(nÚ„	şğ‡?H‚LHHğÜ.)D.hTT”¤Š}ûöÉZÆÆÆË³)))K–,3fÌğáÃG‘öØ±c/^œ––¦h4(s{)´¼µèP©Æ{!iGš]ÖF£píğh[—¥¿İv\\\Zaaƒ¾ûîËõá‹^xá™o×.øè£ñ›7/“gß}wÄ¸qCŸ~ú‰ñã‡õîØñÌŸö}³æ‹åËgåæ¦ÊÎ;mğ nsæL•¥NÇÌF¿¾?ûl²û»¤§Åäçİ´iYĞ°^²‡&M\ZŒİÙ²ÏÊåø¯×ÿšµqöìYù‡2¿¦kEÓ¦MëÓ§O‹-Îœ9óÂ/DDD¸Ÿ’’ššºtéÒQ£F………IÈX¾|ùñãÇÍbj×®İFRíÛ·W1xE‡¹½ZŞZt¨T#…w-sVø°h£ıJÛõ”ÇÃôß¶meÇotíÚVÚa¡¿ûnÁºï6jT_Ö’B¶H\n±ïÔ©å?,mÚôåM?,mİºÉ\'cƒ‚zId9õcœ¹ÿ/¾xÃúEæ[¶|ÍÜÿšÕŸñÅtùÖq±ßÎ=eÙ¿>;÷sÂš5Ÿ¯ÿçÔ©£ôï\"µß|‘xhÓ­éıu¨\rMHhÖ¬™DŠ‚‚I!Nã/ŒÕ¯__’„ÙÁL!ƒÎÌÌ”‡.\\:thÉò®‡I“&uìØQÉpà\rÍï_­o-:TªñéTó%ö˜ÃqÌXw5\n·m÷l”¥¿di‡…\rœ4)xèĞîo¼ñê€]îºe‹¤cqqß6iÒà¥—“«VÎ–ş!!ı_{í¥œœÃæ—ñÅ{­Z5\nê)ËŸşTÃÕÖ³E‹¿»RˆıXròæİ»×É>³²JìXµjö:É:ë®Y3OBÉ±£Ûoıø¯×_‡ÚĞAZZÚ#<âşs·f\nq\Z¿s[·nİŒŒgQ\n	\n\n*%…0`Â„	î2~üxI-·}4ğ–æ÷¯Öƒ·*ÕH!òâzTÖc…mã¡GãX‰-ŞöoÛ¦©4‚†õˆ];bDoÉ\"ï¾üÑGc·lùW|Ü·-[¾vèPÄë¯¿rætÜÂ…ôîÕaxp¯¯¿óüóOKÿ#…lXÿ¥¹7×{!FcÍêy²İıÛ¶m*ëE‹>|çÖ<şãÇ…†ô5ªo¹ÿõúëPšÈÏÏw·İ)D\\¼xÑl˜)dŞ¼yãÆ3Æüùó=SHzzúªU«BCCsss{öì)e£<›””tÇ2ĞüşÕzğÖ¢C¥\Z?‘Iu8¾âšmÇÑcm¼ú\Zm»{Kj™úK\nÉÍIêÖ­Í¡ƒC‡t“ş’$…DnY*Ï®Y=·OŸıúu\nĞ¥K«áÃ{ÕwĞÀ.3gÉË=,;ùâ‹iC†t›3gòÜ9“ëÔyT\Z²ôïÿ¶¤÷ñAçè²}úæ›ÆŒ8fÌ ×Ã”Ëñ_¯¿µ¡¡×_½äFÉ)))Å6JÂ1b„ÙîĞ¡Crr²ù#˜³gÏ†‡‡Ï;7\"\"âÕW_=yò¤¯7AóûWëÁ[‹•j¼\"¯¬©ÆÚµ¾îz¬=º»yÓ?//ùÉ\'ÿ§wïö/¿ü×Ó§bš4©?ztß·Ú63ŞYjvKJŒX¾ìSi´nÕxÍš¹_¯šµzõ÷ş?ùdüìÙïîÛ»nß¾uõëÿŸ¬¥ıé§ãgÍšä>¶m›~ùå²I\'ÿüçY¦NáJ!·|ü¥ô×¡64ôÜsÏ•Ü8dÈb¿5#ù£^½zæÇ322>ùäi|ğÁ}úô9rä°aÃ:wî|ùòåS§NñWËü“æ÷¯Öƒ·*ÕH!){Š¬]/´î†#Å\\Ìvá{áF/ûÇÅ®iĞàÿ¢¢V¶z³‘gÿ>³eË³¿¤ŠéÓGÉSmÚ4Z%e¹æş7~©äñ¤¦n¹çß~öÙÄeË>ùpfXrRDrrÄúğ¡¡ınıøKé¯Cm\0JóûWëÁ[‹•j¤Ã#»kín®FñeéŸ›s°wïvûö~ëîß¥sË‡şÏcG·,_öqÇÍ{toÛ¹óÁÁ=Ú¶iÔ}ğà.Ò_ÉšÕ³‹íÿ™g,¹ÿ„}ß-[ö±4æÏŸú¯¥IãÂùİ/½ôìâÅ3Êåø¯×_‡Ú\0•æ÷¯Öƒ·*UÆXàz•u-‡ù\\´¶_Ù^rãM÷wØ“onÿI‰KéŸ›s /ï¹ÑfKòİñ›\rjTšß¿ZŞZt¨TãÓ©’ÉÒ(0%×…}{´µî¯Cm\0JóûWëÁ[‹•j¼’d,æKl’Ã^øĞİpwp\\ıPçş:Ô¨4¿µ¼µèP©ÆçBWÙÄ¢F’Ù(¶½Ø³š÷×¡6€@¥ùı«õà­E‡J5ŞIô~q8Ñ¿€X™æ÷¯Öƒ·*õ;îpØ¸^k9…\r÷âŞRò)ûË«X±¢êKà&é0·—BëÁ[‹•Z½zõé›\nÌÅYpĞh4–W·u8¨yÿŒ›ï½·ªêKà&é0·—BëÁ[‹•Z»ví˜è%îWÙÇ~E^tİ]kç•Z÷—3öä“V}é\0Ü$æöRh=xkÑ¡RCBB‚‚º8äÅ5Áızì”¥Àóå¹ØÃÍû~gô¨îª/€›¤ÃÜ^\n­o-:TjLLL\Zäçívº^eåå6Áx¹-\\<J×şr®jÖücÔÎEª/€›¤ÃÜ^\n­o-šTj‹-¦M\\àØçtìs­\\\rã5¸h‹±± ğÙcÙ§m9W-š×W}Ñ\0Ü<MæöëÑzğÖ¢I¥&%%ıú×wïØ¶Àõzìz¹İ+‹ÓX»\Zî-WÚgvĞ°ÿsªU«’xhµê‹àæi2·_Öƒ·}*u÷îİ2Øˆïg8ö8ÌW\\×âzè(jm1ÛfC«şÛ·Í—³´î»OT_.\0·DŸ¹ıš´¼µhU©ëÖ­û}µ*Ó¦´åí*pìvì6×NÇî«\Z[®jëˆımù»äÌTúõİ»ã«¾P\0n•Vs{IZŞZt«Ô¤¤¤æÍ_z¨Æ‚ƒŞŞıeFzx#Îx7×Òpµ¯n>ëôl[¿=îDzxLÔÂà N5jü¡Eó—’Wª¾D\0Êns{1ZŞZô¬Ô˜˜˜Ñ]Ÿ|²VõûªŞQ±b]ÉØåÔ~²–œ˜è…ª/€rSAË¹İMëÁ[‹æ•ªÜØ±cU€\0¤ùÜ®õà­EóJUóÀ4Ÿ[´¼µh^©Êqşø‚æs‹Öƒ·Í+U9Î?\0_Ğ|nÑzğÖ¢y¥*ÇùàšÏ-ZŞZ4¯Tå8ÿ\0|Aó¹EëÁ[‹æ•ªç€/h>·h=xkÑ¼R•ãüğÍç­o-šWªrœ\0¾ ùÜ¢õà­EóJUóÀ4Ÿ[´¼µh^©Êqşø‚æs‹Öƒ·Í+U9Î?\0_Ğ|nÑzğÖ¢y¥*ÇùàšÏ-ZŞZ4¯Tå8ÿ\0|Aó¹EëÁ[‹æ•ªç€/h>·h=xkÑ¼R•ãüğÍç­o-šWªrœ\0¾ ùÜ¢õà­EóJUóÀ4Ÿ[´¼µh^©Êqşø‚æs‹Öƒ·Í+U9Î?\0_Ğ|nÑzğÖ¢y¥*ÇùàšÏ-ZŞZ4¯Tå8ÿ\0|Aó¹EëÁ[‹æ•ªç€/h>·h=xkÑ¼R•ãüğÍç­o-šWªrœ\0¾ ùÜ¢õà­EóJUóÀ4Ÿ[´¼µÜ°RSSS£££ãããe½iÓ¦+VLŸ>½gÏÙÙÙî>ãÇ—íî‡™™™ÿüç?»uëVroÿû¿ÿëp8ŠmüôÓOSRRÜ7lØğñÇßÌ`,Âf³-Z´(++ËYtş÷ìÙ³cÇÕÇ pB`\r7¬Ô£GÎ={áÂ…Ë—/ÿÛßş&YD¶üüóÏv»]=xğ`¿~ıBCC»té2xğàÖ­[K(‘×T³ƒ8qâ„|ÕŞ½{÷ïßß Aƒ„„yÑ‰‰IOO7;œ={öÕW_•ì&»êÜ¹s³fÍ¤=hĞ Ÿ]9?rÚ+V¬X«V-iT®\\¹‚aóæÍª\r@€ …À\ZJ¯ÔØØØ·ß~;88X2Á¸qã}ôQYKP\n\n’íqqqIIIÒyàÀçÏŸ—8’››ë¹“Ï?ÿ|È!óO=õ”Ùèß¿¿„wŸŒŒI-‘‘‘ò½:uêÔ´iSÉ4ï¯’‰\'V(á™g	W}h\0,Œ÷YİH!–áM^~ã7$yŒ3FRÈØ±c%‘´oßşâÅ‹òÔåË—%yŒ=:>>ş½÷Ş“êïİ»÷Î;%¾˜ïšHŸ|ÿı÷æ®Ş|óM³±víZÙ.İ»wÏ;WÇ…dãÆe?h¤ñİwß%\'\'ûjäêœ={öÎ;ïôŒ \r6¼ç{233U\Z\0ã}V7Rˆex“Bä5r§¡AƒfCrÉ¥K—ä))îI“&M›6íé§Ÿ2eŠ$•=z|ıõ×/¿üòªU«öîİë4RHëÖ­ƒ\r<òˆÙ=˜)äÈ‘#Ò­eË–ÙÙÙ;V¯^½Ş°Ö––æë3 Ä!Cd¦0\'ˆJ•*É0a‚êƒ`m¼ÏêF\n±/SÈ6CıúõÍFóæÍÍO§feeIVØ´iÓk¯½öı÷ßKŒèŞ½»lïÒ¥‹ûS¨¥¿bzë­·d½xñâ®]»~j=zt¹ÕäååU©RÅœ#Ú·oÿğÃû1\0”ï³º‘B,Ã›Ò­[7ÉcÇıË_şbşD¦GçÏŸw\Z)döìÙ«W¯nÔ¨‘¬×­[\'ùÃY\"…:´ØçBP2…¬X±¢U«Vãıû÷3fŒ/†ì\'Ö¬YcÎ5jÔĞğ_*\0|÷YM¤Ë¸a\n9xğ $É“\'O:õñÇŸ2eÊ»ï¾+[8`vèÕ«×±cÇŞyçáÃ‡GEEµnİÚyu\nùÇ?ş1wîÜı†\r\Z˜Ï>ûlÎœ9îï\")dÑ¢E’B$|exï½÷;…ˆgŸ}VÎóæÍU€\0Áû¬&Rˆe”B$IüòË/™™™YYY/^lÙ²¥¬¥-[²³³åÙíÛ·›aBRHNNdˆyóæ9âşM]OMš4)¹QBLåÊ•gÏ-)ä£>:bØ°aCXXX9ÒO¥¥¥ÉùÔÏ¾\0P‚÷Y¤)=…$$$ôíÛ7((hÔ¨Q!!!#FŒõÈ‘#‡j¾â4~M¦uëÖ&LHIIiØ°a~~¾ltÿM1ò¯ÿ’÷ïßoşRîÂ…—-[&\r‰>õë×_ºtiyÑ¯iş;ı\0|÷Y™X-£|_óòòÌ†Äˆ‚‚‚’>\\ú—Ûl6³]òO¬ÈÈÈÿøÿØ²e‹êPxŸ•bü[\\	¿ûİïV¬\\)ADÃßæàSšÏíZŞZ4¯TUÌñC¾ÍşÃ›\"\0nÑŞ½{ÇÛ´iÓ§zªzõêwß}·¬¥-[d»ù×›ôÁ›eT¬Xñš?:ïxFs!ˆ\0¸9YYY¡¡¡ÿùŸÿYòï•#}¤§ù÷İ)Ä2*W®|îÜ9ÕG¡‘’ÄDd;Ÿà¥¼¼¼™3gV­Zõ†ùÃ“ô—¯r†/P‘B,£F\Z©©©ªB×‹ æ\"Ûù°*\0oddd<õÔSñBfN:}µxIttLZú‰‹—.ËZÚ²¥C‡ò¬gçºuëÊTÂ‡H!–Q§N¸¸8ÕG¡…Ò#A€—¢££«W¯î?üğâ%KsróJ™[äYéS³fM÷WÉd?ª‡â+¤Ëhİºõ¢E‹TEàó&‚D\0ÜD‡J•*™Iâî»ï1cÆ¥Ë97œXÌEzNŸş¾|•ùå²Ÿ@\r\"¤Ë˜9sf¯^½TE€ó>‚D\0”\"##Ãı.HµjÕ6oŞâå¬â¹ÈW¹?M\"{ÈÍB,#66ö±ÇS}¬¬„ àšòòòÜŸ‘’”|ø&\"ˆ¹È×ºƒHİºuïÃª¤Ë°Ùl÷ßÿşıûUH`*ANŸù©”©ÁóY‚\0O3gÎtÿ ææŞ)öÈ]wİeîPö¬zpåŒb%Ó¦Mkß¾½ê£@%#HHh¨d¾C‰I×œd»<+}\"\0ŠÉÊÊrÿËŒ3n1‚˜Ëôéï»}7Àş)ÄJNŸ>-/–æM‡òrÍbŞğ×\"f1;D\0bÎúÓŸ¼ÿ8jé‹ìÇı[3¡¡¡ª‡XH!óÕW_I-XV¨”rÍ âA\"\0JrÿuÔÅK––K1Ù›¹[Ù¿ê!–\'RˆõôíÛ÷‰\' ˆÜºk~¤XÈğ\"%#ˆù,Ÿ`Ú³g93È<Púß)ë\"{“ùÊÜy ı_3¤ë)((èÔ©ÓİwßÍfnÅõ~#æzQ#|ı†RŠçB˜Íf›:uê‚233K>;vìXsrYº#ˆ¹tèĞÁÜ¹|—Û?p!…XÕW_}%/¢íÛ·ç·fnBé¿”{Í R±bEo\"Al+W®4g€;ï¼sğàÁÅ~u¶iÓ¦æ³_-^Rî)Döiî\\¾‹ªá—;Rˆ…>}zÚ´iòZøØcõêÕkÑ¢Eqqq©©©çÎãß-…7äšAÄËBXVV–ûß$Ò¨R¥Êš5kÜÏºÿLHttL¹§Ù§¹sù.\nÏ@ù\"…XÍf‹9sfëÖ­ëÔ©S£FÊ•+—ü‡;LŞÿi²R‚È\r#A`µjÕòœî¼óÎgŸ}6--Mrÿ½Ô´ôåBdŸæÎå»¨>å†½”é¯£†¯ßP2ÏÉÙîå~øa“÷Š6÷ÿürñÒårO!²O÷wQ=•–Rô)AäûˆŞZÇëÚµ«4ö¢¢¢Ş|óÍÄÄÄİ»wgddœ;wî­·Şê×¯ßğáÃCBBäß£G8p`ÇÍÏE~ÿı÷7şğÃ¥[ß¾}k×®-}‚‚‚ºuëvòäÉ‹/¶oßşÑG7oŞÑ£G›5k¶ºÈ«¯¾ªzôÖV¹res*¨T©’œä‡z¨E‹¼rsH!Ğ7A„Ï…À×z÷î}êÔ©¯¿şZ²Å\'Ÿ|2sæÌçŸ~Îœ9’*víÚå4ş/’äää\'Nüøã¯½öšt–öáÃ‡srrÜ;ùå—_G~~~=l6[zzº´=¿ËàÁƒ%ĞH£sçÎîü	æ[áş]Ü†\r¾òÊ+5kÖw?ËçBÊŠ•DøøÚ†\rüñ‘#G6kÖÌL’Ì·FÜNŸ>ıÜsÏıÃğÄO˜_|ñÈ‘#òlBBÂ°aÃ²³³¥=zôèÄÄDiÄÄÄÈNÌ§ÇÇÇ÷éÓ§víÚ}ûöıøã›7o.İBCCeÍ{!·\"\"\"¢‚ñËİsÏ=\'Näwdn)š’ R¥Jş^”¸xñâ?ş8|øğäääÙ³gwëÖmĞ Aİ»w0`@›6mN:%}233»téböoÑ¢…Ùèß¿ÿñãÇÍvttt¿~ı6mÚôÌ3ÏHcèĞ¡k$yŒ3Æışüç?GEEÉ·;|øğ‰\'N<)ë”””.ÜÖ–uëÖÍš5ëìÙ³%Ÿr¬C‡åBø{!@@áo§B¡­[·~öÙgÒ¸|ùr||üşıû8””dv8sæL“&M‚ƒƒ_ıõGyD‚HPPP£FRSSİ;9vì˜ÃáX±bÅÑ£G?øàù’/¾øBÚæ³kÖ¬‘²wíÚuéÒ¥3fÌNy8gÎœ>úèĞ¡C·È:Ø»w¯93ğ·S½D\nÖød Ä‰\'|ğÁ¾}ûöêÕKb‡d‹iÕª•gÏÈÈÈ‰\'J‘èğõ×_Ûl¿téÒĞ¡Ce‡]ºt9}útXX˜ùTvvv›6m\r\Z”‘‘qüøñ¸¸¸ƒ¾öÚk’ubbbnÓ8µäëÿGæ¿şë¿T±<‘B ;şO](a·ÛÇşıû%6Ì½½C‡îöÊ•+»wï.İÌŸÈ„„„L<Y¾Ğ|6<<üÿø‡Óø´i~~ş;ï¼#)Äıã˜E‹mß¾İıéÔyóæ}õÕWÏ=÷Ü’%KæÎ{»F©£Ğ¢	¤fÍšüŸº7D\n®DJùğ©Dˆ ¸i‡ªW¯iÓ¦íØ±ãoûÛ»EZ·n-Ûµk7aÂó£¦îO#.\\¸ğ¯ıkTTTnnnƒ\ròòòRSSÛ´iã4~æÌ™3ò%édİºufÿ={VÒÉÉ“\'333›7o.ki›=/deeU­ZÕLÓ§¿_.)DöcîPö`ÿ•))p¹ægDJ™ø,n…Ãáp¿¥!cøğáç‹ôîİ[6şôÓOp÷şùçİmÉÒ-66vÎœ9			õë×ÏÈÈíÃ†\rËÏÏoÙ²¥äs‹èŞ½û‰\'–,Y\"ùæı÷ßŸ1c†¬¥½hÑ¢Û7ZıÌœ9Ó\rwß}÷æÍ[n1‚Èîºë.s‡²gÕƒ+g¤ ÷Üİs!‚à6pà´$wš¹¦Ó§Oû\"¸\ròòòÜ8¤jÕªIÉ‡o:‚È×ºßY©[·n±_\0¤àŠ²\"€kÊÈÈpÿU‰7÷ˆ|•;‚ÈŞÜoqRpïƒ@)¢££+Uªdfˆ»îºkúô÷½ÿ°ªô”şîÄÈ~doªä¤ 8o‚À\rItp¿#\"~øáÅK––şwDäYéãşó]@ NRpM¥\"\0/eddÔ­[×óÉÜÒ¡C‡¯/‰IK?qñÒeYK[¶Èv÷Ÿ&s$ ãF\n®ízA„ LòòòfÎœéş„‡—¤¿|Uà}µRp]%ƒÀÍÉÊÊ\n\r\ruÿeÕRHé`äzH!@i<ƒÀ­Û³gÏØ±c›6múÔSOU¯^ıî»ï–µ´e‹l—gUàmE\nnÀ\"+V®$‚\0@ù\"…\07)DÖª\0\n)\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )\0\0¨A\n\0\0jB\0\0€\Z¤\0\0 )äÿ·[Ç\0\0\0\0ƒü­‡±§(\0\0<,\0xX\0ğ°\0àa!\0ÀÃB\0€‡…\0\0\0\0<,\0xX\0ğ°\0àa!\0ÀÃB\0€‡…\0\0\0AöwFá¤4\0\0\0\0IEND®B`‚',0),('3',1,'leave/leave.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\"\r\n	xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\"\r\n	xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\"\r\n	xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\"\r\n	expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.rguess.org/demo/activiti/leave\">\r\n	<process id=\"leave\" name=\"è¯·å‡æµç¨‹\">\r\n		<documentation>è¯·å‡æµç¨‹æ¼”ç¤º</documentation>\r\n		<startEvent id=\"startevent1\" name=\"Start\"\r\n			activiti:initiator=\"applyUserId\"></startEvent>\r\n		<userTask id=\"deptLeaderAudit\" name=\"éƒ¨é—¨é¢†å¯¼å®¡æ‰¹\"\r\n			activiti:candidateGroups=\"deptLeader\"></userTask>\r\n		<exclusiveGateway id=\"exclusivegateway5\" name=\"Exclusive Gateway\"></exclusiveGateway>\r\n		<userTask id=\"modifyApply\" name=\"è°ƒæ•´ç”³è¯·\" activiti:assignee=\"${applyUserId}\">\r\n			<extensionElements>\r\n				<activiti:taskListener event=\"complete\"\r\n					delegateExpression=\"${afterModifyApplyContentProcessor}\"></activiti:taskListener>\r\n			</extensionElements>\r\n		</userTask>\r\n		<userTask id=\"hrAudit\" name=\"äººäº‹å®¡æ‰¹\" activiti:candidateGroups=\"hr\"></userTask>\r\n		<exclusiveGateway id=\"exclusivegateway6\" name=\"Exclusive Gateway\"></exclusiveGateway>\r\n		<userTask id=\"reportBack\" name=\"é”€å‡\" activiti:assignee=\"${applyUserId}\">\r\n			<extensionElements>\r\n				<activiti:taskListener event=\"complete\"\r\n					delegateExpression=\"${reportBackEndProcessor}\"></activiti:taskListener>\r\n			</extensionElements>\r\n		</userTask>\r\n		<endEvent id=\"endevent1\" name=\"End\"></endEvent>\r\n		<exclusiveGateway id=\"exclusivegateway7\" name=\"Exclusive Gateway\"></exclusiveGateway>\r\n		<sequenceFlow id=\"flow2\" name=\"\" sourceRef=\"startevent1\"\r\n			targetRef=\"deptLeaderAudit\"></sequenceFlow>\r\n		<sequenceFlow id=\"flow3\" name=\"\" sourceRef=\"deptLeaderAudit\"\r\n			targetRef=\"exclusivegateway5\"></sequenceFlow>\r\n		<sequenceFlow id=\"flow4\" name=\"ä¸åŒæ„\" sourceRef=\"exclusivegateway5\"\r\n			targetRef=\"modifyApply\">\r\n			<conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${!deptLeaderPass}]]></conditionExpression>\r\n		</sequenceFlow>\r\n		<sequenceFlow id=\"flow5\" name=\"åŒæ„\" sourceRef=\"exclusivegateway5\"\r\n			targetRef=\"hrAudit\">\r\n			<conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${deptLeaderPass}]]></conditionExpression>\r\n		</sequenceFlow>\r\n		<sequenceFlow id=\"flow6\" name=\"\" sourceRef=\"hrAudit\"\r\n			targetRef=\"exclusivegateway6\"></sequenceFlow>\r\n		<sequenceFlow id=\"flow7\" name=\"åŒæ„\" sourceRef=\"exclusivegateway6\"\r\n			targetRef=\"reportBack\">\r\n			<conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${hrPass}]]></conditionExpression>\r\n		</sequenceFlow>\r\n		<sequenceFlow id=\"flow8\" name=\"\" sourceRef=\"reportBack\"\r\n			targetRef=\"endevent1\"></sequenceFlow>\r\n		<sequenceFlow id=\"flow9\" name=\"ä¸åŒæ„\" sourceRef=\"exclusivegateway6\"\r\n			targetRef=\"modifyApply\">\r\n			<conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${!hrPass}]]></conditionExpression>\r\n		</sequenceFlow>\r\n		<sequenceFlow id=\"flow10\" name=\"é‡æ–°ç”³è¯·\" sourceRef=\"exclusivegateway7\"\r\n			targetRef=\"deptLeaderAudit\">\r\n			<conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${reApply}]]></conditionExpression>\r\n		</sequenceFlow>\r\n		<sequenceFlow id=\"flow11\" name=\"\" sourceRef=\"modifyApply\"\r\n			targetRef=\"exclusivegateway7\"></sequenceFlow>\r\n		<sequenceFlow id=\"flow12\" name=\"ç»“æŸæµç¨‹\" sourceRef=\"exclusivegateway7\"\r\n			targetRef=\"endevent1\">\r\n			<conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${!reApply}]]></conditionExpression>\r\n		</sequenceFlow>\r\n	</process>\r\n	<bpmndi:BPMNDiagram id=\"BPMNDiagram_leave\">\r\n		<bpmndi:BPMNPlane bpmnElement=\"leave\" id=\"BPMNPlane_leave\">\r\n			<bpmndi:BPMNShape bpmnElement=\"startevent1\"\r\n				id=\"BPMNShape_startevent1\">\r\n				<omgdc:Bounds height=\"35\" width=\"35\" x=\"10\" y=\"90\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"deptLeaderAudit\"\r\n				id=\"BPMNShape_deptLeaderAudit\">\r\n				<omgdc:Bounds height=\"55\" width=\"105\" x=\"90\" y=\"80\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"exclusivegateway5\"\r\n				id=\"BPMNShape_exclusivegateway5\">\r\n				<omgdc:Bounds height=\"40\" width=\"40\" x=\"250\" y=\"87\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"modifyApply\"\r\n				id=\"BPMNShape_modifyApply\">\r\n				<omgdc:Bounds height=\"55\" width=\"105\" x=\"218\" y=\"190\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"hrAudit\" id=\"BPMNShape_hrAudit\">\r\n				<omgdc:Bounds height=\"55\" width=\"105\" x=\"358\" y=\"80\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"exclusivegateway6\"\r\n				id=\"BPMNShape_exclusivegateway6\">\r\n				<omgdc:Bounds height=\"40\" width=\"40\" x=\"495\" y=\"87\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"reportBack\" id=\"BPMNShape_reportBack\">\r\n				<omgdc:Bounds height=\"55\" width=\"105\" x=\"590\" y=\"80\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\r\n				<omgdc:Bounds height=\"35\" width=\"35\" x=\"625\" y=\"283\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"exclusivegateway7\"\r\n				id=\"BPMNShape_exclusivegateway7\">\r\n				<omgdc:Bounds height=\"40\" width=\"40\" x=\"250\" y=\"280\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\r\n				<omgdi:waypoint x=\"45\" y=\"107\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"90\" y=\"107\"></omgdi:waypoint>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\r\n				<omgdi:waypoint x=\"195\" y=\"107\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"250\" y=\"107\"></omgdi:waypoint>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\r\n				<omgdi:waypoint x=\"270\" y=\"127\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"270\" y=\"190\"></omgdi:waypoint>\r\n				<bpmndi:BPMNLabel>\r\n					<omgdc:Bounds height=\"11\" width=\"100\" x=\"10\" y=\"0\"></omgdc:Bounds>\r\n				</bpmndi:BPMNLabel>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\r\n				<omgdi:waypoint x=\"290\" y=\"107\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"358\" y=\"107\"></omgdi:waypoint>\r\n				<bpmndi:BPMNLabel>\r\n					<omgdc:Bounds height=\"11\" width=\"100\" x=\"-24\" y=\"-17\"></omgdc:Bounds>\r\n				</bpmndi:BPMNLabel>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\r\n				<omgdi:waypoint x=\"463\" y=\"107\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"495\" y=\"107\"></omgdi:waypoint>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow7\" id=\"BPMNEdge_flow7\">\r\n				<omgdi:waypoint x=\"535\" y=\"107\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"590\" y=\"107\"></omgdi:waypoint>\r\n				<bpmndi:BPMNLabel>\r\n					<omgdc:Bounds height=\"11\" width=\"100\" x=\"-22\" y=\"-17\"></omgdc:Bounds>\r\n				</bpmndi:BPMNLabel>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\r\n				<omgdi:waypoint x=\"642\" y=\"135\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"642\" y=\"283\"></omgdi:waypoint>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow9\" id=\"BPMNEdge_flow9\">\r\n				<omgdi:waypoint x=\"515\" y=\"127\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"514\" y=\"217\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"323\" y=\"217\"></omgdi:waypoint>\r\n				<bpmndi:BPMNLabel>\r\n					<omgdc:Bounds height=\"11\" width=\"100\" x=\"10\" y=\"0\"></omgdc:Bounds>\r\n				</bpmndi:BPMNLabel>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow10\" id=\"BPMNEdge_flow10\">\r\n				<omgdi:waypoint x=\"250\" y=\"300\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"142\" y=\"299\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"142\" y=\"135\"></omgdi:waypoint>\r\n				<bpmndi:BPMNLabel>\r\n					<omgdc:Bounds height=\"11\" width=\"100\" x=\"10\" y=\"0\"></omgdc:Bounds>\r\n				</bpmndi:BPMNLabel>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow11\" id=\"BPMNEdge_flow11\">\r\n				<omgdi:waypoint x=\"270\" y=\"245\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"270\" y=\"280\"></omgdi:waypoint>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow12\" id=\"BPMNEdge_flow12\">\r\n				<omgdi:waypoint x=\"290\" y=\"300\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"625\" y=\"300\"></omgdi:waypoint>\r\n				<bpmndi:BPMNLabel>\r\n					<omgdc:Bounds height=\"11\" width=\"100\" x=\"10\" y=\"0\"></omgdc:Bounds>\r\n				</bpmndi:BPMNLabel>\r\n			</bpmndi:BPMNEdge>\r\n		</bpmndi:BPMNPlane>\r\n	</bpmndi:BPMNDiagram>\r\n</definitions>',0);
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('next.dbid','1001',11),('schema.history','create(5.14)',1),('schema.version','5.14',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
INSERT INTO `act_hi_actinst` VALUES ('103','leave:1:4','15','15','exclusivegateway5',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-24 14:59:34','2014-03-24 14:59:34',3),('104','leave:1:4','15','15','hrAudit','105',NULL,'äººäº‹å®¡æ‰¹','userTask','user2','2014-03-24 14:59:34','2014-03-24 21:04:20',21886362),('110','leave:1:4','5','5','exclusivegateway5',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-24 15:20:40','2014-03-24 15:20:40',0),('111','leave:1:4','5','5','modifyApply','112',NULL,'è°ƒæ•´ç”³è¯·','userTask','admin','2014-03-24 15:20:40','2014-03-25 21:00:49',106809427),('117','leave:1:4','113','113','startevent1',NULL,NULL,'Start','startEvent',NULL,'2014-03-24 15:22:13','2014-03-24 15:22:13',0),('12','leave:1:4','5','5','deptLeaderAudit','13',NULL,'éƒ¨é—¨é¢†å¯¼å®¡æ‰¹','userTask','depman','2014-03-24 09:57:31','2014-03-24 15:20:40',19389184),('120','leave:1:4','113','113','deptLeaderAudit','121',NULL,'éƒ¨é—¨é¢†å¯¼å®¡æ‰¹','userTask','depman','2014-03-24 15:22:13','2014-03-25 21:03:44',106891178),('19','leave:1:4','15','15','startevent1',NULL,NULL,'Start','startEvent',NULL,'2014-03-24 10:02:04','2014-03-24 10:02:04',0),('22','leave:1:4','15','15','deptLeaderAudit','23',NULL,'éƒ¨é—¨é¢†å¯¼å®¡æ‰¹','userTask','depman','2014-03-24 10:02:04','2014-03-24 14:59:34',17850464),('303','leave:1:4','15','15','exclusivegateway6',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-24 21:04:20','2014-03-24 21:04:20',7),('304','leave:1:4','15','15','reportBack','305',NULL,'é”€å‡','userTask','depman','2014-03-24 21:04:20',NULL,NULL),('703','leave:1:4','5','5','exclusivegateway7',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:00:49','2014-03-25 21:00:49',0),('704','leave:1:4','5','5','endevent1',NULL,NULL,'End','endEvent',NULL,'2014-03-25 21:00:49','2014-03-25 21:00:49',0),('707','leave:1:4','113','113','exclusivegateway5',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:03:44','2014-03-25 21:03:44',0),('708','leave:1:4','113','113','modifyApply','709',NULL,'è°ƒæ•´ç”³è¯·','userTask','admin','2014-03-25 21:03:44','2014-03-25 21:07:18',214153),('712','leave:1:4','113','113','exclusivegateway7',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:07:18','2014-03-25 21:07:18',1),('713','leave:1:4','113','113','endevent1',NULL,NULL,'End','endEvent',NULL,'2014-03-25 21:07:18','2014-03-25 21:07:18',0),('805','leave:1:4','801','801','startevent1',NULL,NULL,'Start','startEvent',NULL,'2014-03-25 21:20:02','2014-03-25 21:20:02',23),('808','leave:1:4','801','801','deptLeaderAudit','809',NULL,'éƒ¨é—¨é¢†å¯¼å®¡æ‰¹','userTask','depman','2014-03-25 21:20:02','2014-03-25 21:20:47',45611),('814','leave:1:4','801','801','exclusivegateway5',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:20:47','2014-03-25 21:20:47',0),('815','leave:1:4','801','801','modifyApply','816',NULL,'è°ƒæ•´ç”³è¯·','userTask','admin','2014-03-25 21:20:47','2014-03-25 21:21:53',66536),('819','leave:1:4','801','801','exclusivegateway7',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:21:53','2014-03-25 21:21:53',0),('820','leave:1:4','801','801','deptLeaderAudit','821',NULL,'éƒ¨é—¨é¢†å¯¼å®¡æ‰¹','userTask','admin','2014-03-25 21:21:53','2014-03-25 21:24:37',164818),('824','leave:1:4','801','801','exclusivegateway5',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:24:37','2014-03-25 21:24:37',0),('825','leave:1:4','801','801','hrAudit','826',NULL,'äººäº‹å®¡æ‰¹','userTask','user2','2014-03-25 21:24:37','2014-03-25 21:25:09',32429),('831','leave:1:4','801','801','exclusivegateway6',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:25:09','2014-03-25 21:25:09',0),('832','leave:1:4','801','801','modifyApply','833',NULL,'è°ƒæ•´ç”³è¯·','userTask','admin','2014-03-25 21:25:09','2014-03-25 21:31:17',368446),('835','leave:1:4','801','801','exclusivegateway7',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:31:17','2014-03-25 21:31:17',0),('836','leave:1:4','801','801','deptLeaderAudit','837',NULL,'éƒ¨é—¨é¢†å¯¼å®¡æ‰¹','userTask','depman','2014-03-25 21:31:17','2014-03-25 21:34:24',187683),('840','leave:1:4','801','801','exclusivegateway5',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:34:24','2014-03-25 21:34:24',0),('841','leave:1:4','801','801','hrAudit','842',NULL,'äººäº‹å®¡æ‰¹','userTask','user2','2014-03-25 21:34:24','2014-03-25 21:35:43',79554),('845','leave:1:4','801','801','exclusivegateway6',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:35:43','2014-03-25 21:35:43',0),('846','leave:1:4','801','801','reportBack','847',NULL,'é”€å‡','userTask','admin','2014-03-25 21:35:43',NULL,NULL),('9','leave:1:4','5','5','startevent1',NULL,NULL,'Start','startEvent',NULL,'2014-03-24 09:57:30','2014-03-24 09:57:31',91),('905','leave:1:4','901','901','startevent1',NULL,NULL,'Start','startEvent',NULL,'2014-03-27 13:40:14','2014-03-27 13:40:14',7),('908','leave:1:4','901','901','deptLeaderAudit','909',NULL,'éƒ¨é—¨é¢†å¯¼å®¡æ‰¹','userTask','depman','2014-03-27 13:40:14',NULL,NULL);
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
INSERT INTO `act_hi_detail` VALUES ('102','VariableUpdate','15','15',NULL,'22','deptLeaderPass','boolean',0,'2014-03-24 14:59:34',NULL,NULL,1,NULL,NULL),('109','VariableUpdate','5','5',NULL,'12','deptLeaderPass','boolean',0,'2014-03-24 15:20:40',NULL,NULL,0,NULL,NULL),('11','VariableUpdate','5','5',NULL,'9','sponsor','string',0,'2014-03-24 09:57:30',NULL,NULL,NULL,'è¶…çº§ç®¡ç†å‘˜',NULL),('115','VariableUpdate','113','113',NULL,NULL,'applyUserId','string',0,'2014-03-24 15:22:13',NULL,NULL,NULL,'admin',NULL),('119','VariableUpdate','113','113',NULL,'117','sponsor','string',0,'2014-03-24 15:22:13',NULL,NULL,NULL,'è¶…çº§ç®¡ç†å‘˜',NULL),('17','VariableUpdate','15','15',NULL,NULL,'applyUserId','string',0,'2014-03-24 10:02:04',NULL,NULL,NULL,'depman',NULL),('21','VariableUpdate','15','15',NULL,'19','sponsor','string',0,'2014-03-24 10:02:04',NULL,NULL,NULL,'éƒ¨é—¨ç»ç†',NULL),('302','VariableUpdate','15','15',NULL,'104','hrPass','boolean',0,'2014-03-24 21:04:19',NULL,NULL,1,NULL,NULL),('7','VariableUpdate','5','5',NULL,NULL,'applyUserId','string',0,'2014-03-24 09:57:30',NULL,NULL,NULL,'admin',NULL),('702','VariableUpdate','5','5',NULL,'111','reApply','boolean',0,'2014-03-25 21:00:48',NULL,NULL,0,NULL,NULL),('706','VariableUpdate','113','113',NULL,'120','deptLeaderPass','boolean',0,'2014-03-25 21:03:44',NULL,NULL,0,NULL,NULL),('711','VariableUpdate','113','113',NULL,'708','reApply','boolean',0,'2014-03-25 21:07:07',NULL,NULL,0,NULL,NULL),('803','VariableUpdate','801','801',NULL,NULL,'applyUserId','string',0,'2014-03-25 21:20:02',NULL,NULL,NULL,'admin',NULL),('807','VariableUpdate','801','801',NULL,'805','sponsor','string',0,'2014-03-25 21:20:02',NULL,NULL,NULL,'è¶…çº§ç®¡ç†å‘˜',NULL),('813','VariableUpdate','801','801',NULL,'808','deptLeaderPass','boolean',0,'2014-03-25 21:20:47',NULL,NULL,0,NULL,NULL),('818','VariableUpdate','801','801',NULL,'815','reApply','boolean',0,'2014-03-25 21:21:43',NULL,NULL,1,NULL,NULL),('823','VariableUpdate','801','801',NULL,'820','deptLeaderPass','boolean',1,'2014-03-25 21:24:37',NULL,NULL,1,NULL,NULL),('830','VariableUpdate','801','801',NULL,'825','hrPass','boolean',0,'2014-03-25 21:25:09',NULL,NULL,0,NULL,NULL),('834','VariableUpdate','801','801',NULL,'832','reApply','boolean',1,'2014-03-25 21:30:56',NULL,NULL,1,NULL,NULL),('839','VariableUpdate','801','801',NULL,'836','deptLeaderPass','boolean',2,'2014-03-25 21:34:24',NULL,NULL,1,NULL,NULL),('844','VariableUpdate','801','801',NULL,'841','hrPass','boolean',1,'2014-03-25 21:35:43',NULL,NULL,1,NULL,NULL),('903','VariableUpdate','901','901',NULL,NULL,'applyUserId','string',0,'2014-03-27 13:40:13',NULL,NULL,NULL,'admin',NULL),('907','VariableUpdate','901','901',NULL,'905','sponsor','string',0,'2014-03-27 13:40:14',NULL,NULL,NULL,'è¶…çº§ç®¡ç†å‘˜',NULL);
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
INSERT INTO `act_hi_identitylink` VALUES ('106','hr','candidate',NULL,'105',NULL),('107',NULL,'participant','user2',NULL,'15'),('116',NULL,'starter','admin',NULL,'113'),('122','deptLeader','candidate',NULL,'121',NULL),('123',NULL,'participant','depman',NULL,'113'),('14','deptLeader','candidate',NULL,'13',NULL),('18',NULL,'starter','depman',NULL,'15'),('24','deptLeader','candidate',NULL,'23',NULL),('25',NULL,'participant','depman',NULL,'5'),('8',NULL,'starter','admin',NULL,'5'),('804',NULL,'starter','admin',NULL,'801'),('810','deptLeader','candidate',NULL,'809',NULL),('811',NULL,'participant','depman',NULL,'801'),('822','deptLeader','candidate',NULL,'821',NULL),('827','hr','candidate',NULL,'826',NULL),('828',NULL,'participant','user2',NULL,'801'),('838','deptLeader','candidate',NULL,'837',NULL),('843','hr','candidate',NULL,'842',NULL),('904',NULL,'starter','admin',NULL,'901'),('910','deptLeader','candidate',NULL,'909',NULL),('911',NULL,'participant','depman',NULL,'901');
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  UNIQUE KEY `ACT_UNIQ_HI_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
INSERT INTO `act_hi_procinst` VALUES ('113','113','4','leave:1:4','2014-03-24 15:22:13','2014-03-25 21:07:18',107105157,'admin','startevent1','endevent1',NULL,NULL),('15','15','3','leave:1:4','2014-03-24 10:02:04',NULL,NULL,'depman','startevent1',NULL,NULL,NULL),('5','5','2','leave:1:4','2014-03-24 09:57:30','2014-03-25 21:00:49',126199469,'admin','startevent1','endevent1',NULL,NULL),('801','801','5','leave:1:4','2014-03-25 21:20:02',NULL,NULL,'admin','startevent1',NULL,NULL,NULL),('901','901','6','leave:1:4','2014-03-27 13:40:14',NULL,NULL,'admin','startevent1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
INSERT INTO `act_hi_taskinst` VALUES ('105','leave:1:4','hrAudit','15','15','äººäº‹å®¡æ‰¹',NULL,NULL,NULL,'user2','2014-03-24 14:59:34','2014-03-24 15:15:35','2014-03-24 21:04:20',21886331,'completed',50,NULL,NULL),('112','leave:1:4','modifyApply','5','5','è°ƒæ•´ç”³è¯·',NULL,NULL,NULL,'admin','2014-03-24 15:20:40',NULL,'2014-03-25 21:00:49',106809394,'completed',50,NULL,NULL),('121','leave:1:4','deptLeaderAudit','113','113','éƒ¨é—¨é¢†å¯¼å®¡æ‰¹',NULL,NULL,NULL,'depman','2014-03-24 15:22:13','2014-03-24 15:23:55','2014-03-25 21:03:44',106891173,'completed',50,NULL,NULL),('13','leave:1:4','deptLeaderAudit','5','5','éƒ¨é—¨é¢†å¯¼å®¡æ‰¹',NULL,NULL,NULL,'depman','2014-03-24 09:57:31','2014-03-24 12:51:57','2014-03-24 15:20:40',19389181,'completed',50,NULL,NULL),('23','leave:1:4','deptLeaderAudit','15','15','éƒ¨é—¨é¢†å¯¼å®¡æ‰¹',NULL,NULL,NULL,'depman','2014-03-24 10:02:04','2014-03-24 11:29:06','2014-03-24 14:59:34',17850455,'completed',50,NULL,NULL),('305','leave:1:4','reportBack','15','15','é”€å‡',NULL,NULL,NULL,'depman','2014-03-24 21:04:20',NULL,NULL,NULL,NULL,50,NULL,NULL),('709','leave:1:4','modifyApply','113','113','è°ƒæ•´ç”³è¯·',NULL,NULL,NULL,'admin','2014-03-25 21:03:44',NULL,'2014-03-25 21:07:18',214146,'completed',50,NULL,NULL),('809','leave:1:4','deptLeaderAudit','801','801','éƒ¨é—¨é¢†å¯¼å®¡æ‰¹',NULL,NULL,NULL,'depman','2014-03-25 21:20:02','2014-03-25 21:20:33','2014-03-25 21:20:47',45607,'completed',50,NULL,NULL),('816','leave:1:4','modifyApply','801','801','è°ƒæ•´ç”³è¯·',NULL,NULL,NULL,'admin','2014-03-25 21:20:47',NULL,'2014-03-25 21:21:53',66532,'completed',50,NULL,NULL),('821','leave:1:4','deptLeaderAudit','801','801','éƒ¨é—¨é¢†å¯¼å®¡æ‰¹',NULL,NULL,NULL,'admin','2014-03-25 21:21:53','2014-03-25 21:23:30','2014-03-25 21:24:37',164815,'completed',50,NULL,NULL),('826','leave:1:4','hrAudit','801','801','äººäº‹å®¡æ‰¹',NULL,NULL,NULL,'user2','2014-03-25 21:24:37','2014-03-25 21:25:00','2014-03-25 21:25:09',32426,'completed',50,NULL,NULL),('833','leave:1:4','modifyApply','801','801','è°ƒæ•´ç”³è¯·',NULL,NULL,NULL,'admin','2014-03-25 21:25:09',NULL,'2014-03-25 21:31:17',368443,'completed',50,NULL,NULL),('837','leave:1:4','deptLeaderAudit','801','801','éƒ¨é—¨é¢†å¯¼å®¡æ‰¹',NULL,NULL,NULL,'depman','2014-03-25 21:31:17','2014-03-25 21:34:08','2014-03-25 21:34:24',187679,'completed',50,NULL,NULL),('842','leave:1:4','hrAudit','801','801','äººäº‹å®¡æ‰¹',NULL,NULL,NULL,'user2','2014-03-25 21:34:24','2014-03-25 21:35:07','2014-03-25 21:35:43',79551,'completed',50,NULL,NULL),('847','leave:1:4','reportBack','801','801','é”€å‡',NULL,NULL,NULL,'admin','2014-03-25 21:35:43',NULL,NULL,NULL,NULL,50,NULL,NULL),('909','leave:1:4','deptLeaderAudit','901','901','éƒ¨é—¨é¢†å¯¼å®¡æ‰¹',NULL,NULL,NULL,'depman','2014-03-27 13:40:14','2014-03-27 13:46:44',NULL,NULL,NULL,50,NULL,NULL);
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
INSERT INTO `act_hi_varinst` VALUES ('10','5','5',NULL,'sponsor','string',0,NULL,NULL,NULL,'è¶…çº§ç®¡ç†å‘˜',NULL),('101','15','15',NULL,'deptLeaderPass','boolean',0,NULL,NULL,1,NULL,NULL),('108','5','5',NULL,'deptLeaderPass','boolean',0,NULL,NULL,0,NULL,NULL),('114','113','113',NULL,'applyUserId','string',0,NULL,NULL,NULL,'admin',NULL),('118','113','113',NULL,'sponsor','string',0,NULL,NULL,NULL,'è¶…çº§ç®¡ç†å‘˜',NULL),('16','15','15',NULL,'applyUserId','string',0,NULL,NULL,NULL,'depman',NULL),('20','15','15',NULL,'sponsor','string',0,NULL,NULL,NULL,'éƒ¨é—¨ç»ç†',NULL),('301','15','15',NULL,'hrPass','boolean',0,NULL,NULL,1,NULL,NULL),('6','5','5',NULL,'applyUserId','string',0,NULL,NULL,NULL,'admin',NULL),('701','5','5',NULL,'reApply','boolean',0,NULL,NULL,0,NULL,NULL),('705','113','113',NULL,'deptLeaderPass','boolean',0,NULL,NULL,0,NULL,NULL),('710','113','113',NULL,'reApply','boolean',0,NULL,NULL,0,NULL,NULL),('802','801','801',NULL,'applyUserId','string',0,NULL,NULL,NULL,'admin',NULL),('806','801','801',NULL,'sponsor','string',0,NULL,NULL,NULL,'è¶…çº§ç®¡ç†å‘˜',NULL),('812','801','801',NULL,'deptLeaderPass','boolean',1,NULL,NULL,1,NULL,NULL),('817','801','801',NULL,'reApply','boolean',0,NULL,NULL,1,NULL,NULL),('829','801','801',NULL,'hrPass','boolean',1,NULL,NULL,1,NULL,NULL),('902','901','901',NULL,'applyUserId','string',0,NULL,NULL,NULL,'admin',NULL),('906','901','901',NULL,'sponsor','string',0,NULL,NULL,NULL,'è¶…çº§ç®¡ç†å‘˜',NULL);
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!50001 DROP VIEW IF EXISTS `act_id_group`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `act_id_group` (
  `ID_` tinyint NOT NULL,
  `REV_` tinyint NOT NULL,
  `NAME_` tinyint NOT NULL,
  `TYPE_` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!50001 DROP VIEW IF EXISTS `act_id_membership`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `act_id_membership` (
  `USER_ID_` tinyint NOT NULL,
  `GROUP_ID_` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!50001 DROP VIEW IF EXISTS `act_id_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `act_id_user` (
  `ID_` tinyint NOT NULL,
  `REV_` tinyint NOT NULL,
  `FIRST_` tinyint NOT NULL,
  `LAST_` tinyint NOT NULL,
  `EMAIL_` tinyint NOT NULL,
  `PWD_` tinyint NOT NULL,
  `PICTURE_ID_` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('1','SpringAutoDeployment',NULL,'2014-03-24 01:57:01');
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('leave:1:4',1,'http://www.rguess.org/demo/activiti/leave','è¯·å‡æµç¨‹','leave',1,'1','leave/leave.bpmn','leave/leave.png','è¯·å‡æµç¨‹æ¼”ç¤º',0,1);
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_RU_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
INSERT INTO `act_ru_execution` VALUES ('15',3,'15','3',NULL,'leave:1:4',NULL,'reportBack',1,0,1,0,1,2),('801',8,'801','5',NULL,'leave:1:4',NULL,'reportBack',1,0,1,0,1,2),('901',1,'901','6',NULL,'leave:1:4',NULL,'deptLeaderAudit',1,0,1,0,1,2);
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
INSERT INTO `act_ru_identitylink` VALUES ('107',1,NULL,'participant','user2',NULL,'15',NULL),('18',1,NULL,'starter','depman',NULL,'15',NULL),('804',1,NULL,'starter','admin',NULL,'801',NULL),('811',1,NULL,'participant','depman',NULL,'801',NULL),('828',1,NULL,'participant','user2',NULL,'801',NULL),('904',1,NULL,'starter','admin',NULL,'901',NULL),('910',1,'deptLeader','candidate',NULL,'909',NULL,NULL),('911',1,NULL,'participant','depman',NULL,'901',NULL);
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
INSERT INTO `act_ru_task` VALUES ('305',1,'15','15','leave:1:4','é”€å‡',NULL,NULL,'reportBack',NULL,'depman',NULL,50,'2014-03-24 13:04:20',NULL,1),('847',1,'801','801','leave:1:4','é”€å‡',NULL,NULL,'reportBack',NULL,'admin',NULL,50,'2014-03-25 13:35:43',NULL,1),('909',2,'901','901','leave:1:4','éƒ¨é—¨é¢†å¯¼å®¡æ‰¹',NULL,NULL,'deptLeaderAudit',NULL,'depman',NULL,50,'2014-03-27 05:40:14',NULL,1);
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
INSERT INTO `act_ru_variable` VALUES ('101',1,'boolean','deptLeaderPass','15','15',NULL,NULL,NULL,1,NULL,NULL),('16',1,'string','applyUserId','15','15',NULL,NULL,NULL,NULL,'depman',NULL),('20',1,'string','sponsor','15','15',NULL,NULL,NULL,NULL,'éƒ¨é—¨ç»ç†',NULL),('301',1,'boolean','hrPass','15','15',NULL,NULL,NULL,1,NULL,NULL),('802',1,'string','applyUserId','801','801',NULL,NULL,NULL,NULL,'admin',NULL),('806',1,'string','sponsor','801','801',NULL,NULL,NULL,NULL,'è¶…çº§ç®¡ç†å‘˜',NULL),('812',2,'boolean','deptLeaderPass','801','801',NULL,NULL,NULL,1,NULL,NULL),('817',1,'boolean','reApply','801','801',NULL,NULL,NULL,1,NULL,NULL),('829',2,'boolean','hrPass','801','801',NULL,NULL,NULL,1,NULL,NULL),('902',1,'string','applyUserId','901','901',NULL,NULL,NULL,NULL,'admin',NULL),('906',1,'string','sponsor','901','901',NULL,NULL,NULL,NULL,'è¶…çº§ç®¡ç†å‘˜',NULL);
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_leave`
--

DROP TABLE IF EXISTS `oa_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_leave` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `endTime` datetime DEFAULT NULL,
  `leaveDays` double DEFAULT NULL,
  `leaveType` varchar(255) DEFAULT NULL,
  `processInstanceId` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `sponsorLoginId` varchar(255) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `depAuditOpinion` varchar(255) DEFAULT NULL,
  `hrAuditOpinion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_leave`
--

LOCK TABLES `oa_leave` WRITE;
/*!40000 ALTER TABLE `oa_leave` DISABLE KEYS */;
INSERT INTO `oa_leave` VALUES (2,'2014-03-06 09:03:00',1,'äº‹å‡','5','rrrrrrrrrr',NULL,'2014-03-12 09:03:00','ä¸è¡Œ',''),(3,'2014-03-11 00:00:00',2,'äº‹å‡','15','22222','depman','2014-02-26 00:00:00','æ‰¹å‡†','åŒæ„ï¼Œè¯·åˆç†å®‰æ’æ—¶é—´'),(4,'2014-03-12 00:00:00',8,'äº‹å‡','113','é¢è¯•',NULL,'2014-03-04 00:00:00','è‚¯å®šä¸åŒæ„',''),(5,'2014-03-01 00:03:44',11,'éœ¸ç‹å‡','801','22222',NULL,'2014-03-01 00:03:44','å¥½','å°±è¿™æ ·'),(6,'2014-03-21 10:50:00',6,'äº‹å‡','901','66666','admin','2014-03-12 00:00:00',NULL,NULL);
/*!40000 ALTER TABLE `oa_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_icon`
--

DROP TABLE IF EXISTS `sys_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_icon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mark_UNIQUE` (`mark`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_icon`
--

LOCK TABLES `sys_icon` WRITE;
/*!40000 ALTER TABLE `sys_icon` DISABLE KEYS */;
INSERT INTO `sys_icon` VALUES (1,NULL,'icon-adjust','css'),(2,NULL,'icon-exclamation-sign','css'),(3,NULL,'icon-money','css'),(4,NULL,'icon-signal','css'),(5,NULL,'icon-asterisk','css'),(6,NULL,'icon-external-link','css'),(7,NULL,'icon-move','css'),(8,NULL,'icon-signin','css'),(9,NULL,'icon-ban-circle','css'),(10,NULL,'icon-eye-close','css'),(11,NULL,'icon-music','css'),(12,NULL,'icon-signout','css'),(13,NULL,'icon-bar-chart','css'),(14,NULL,'icon-eye-open','css'),(15,NULL,'icon-off','css'),(16,NULL,'icon-sitemap','css'),(20,NULL,'icon-barcode','css'),(21,NULL,'icon-facetime-video','css'),(22,NULL,'icon-ok','css'),(23,NULL,'icon-sort','css'),(24,NULL,'icon-beaker','css'),(25,NULL,'icon-film','css'),(26,NULL,'icon-ok-circle','css'),(27,NULL,'icon-sort-down','css'),(28,NULL,'icon-bell','css'),(29,NULL,'icon-filter','css'),(30,NULL,'icon-ok-sign','css'),(31,NULL,'icon-sort-up','css'),(32,NULL,' icon-bolt','css'),(33,NULL,'icon-fire','css'),(34,NULL,'icon-pencil','css'),(35,NULL,'icon-star','css'),(36,NULL,'icon-book','css'),(37,NULL,'icon-flag','css'),(38,NULL,'icon-picture','css'),(39,NULL,'icon-star-empty','css'),(40,NULL,'icon-bookmark','css'),(41,NULL,'icon-folder-close','css'),(42,NULL,'icon-plane','css'),(43,NULL,'icon-star-half','css'),(44,NULL,'icon-bookmark-empty','css'),(45,NULL,'icon-folder-open','css'),(46,NULL,'icon-plus','css'),(47,NULL,'icon-tag','css'),(48,NULL,'icon-briefcase','css'),(49,NULL,'icon-gift','css'),(50,NULL,'icon-plus-sign','css'),(51,NULL,'icon-tags','css'),(52,NULL,'icon-bullhorn','css'),(53,NULL,'icon-glass','css'),(54,NULL,'icon-print','css'),(55,NULL,'icon-tasks','css'),(56,NULL,'icon-calendar','css'),(57,NULL,'icon-globe','css'),(58,NULL,'icon-pushpin','css'),(59,NULL,'icon-thumbs-down','css'),(60,NULL,'icon-camera','css'),(61,NULL,'icon-group','css'),(62,NULL,'icon-qrcode','css'),(63,NULL,'icon-thumbs-up','css'),(64,NULL,'icon-camera-retro','css'),(65,NULL,'icon-certificate','css'),(66,NULL,'icon-check','css'),(67,NULL,'icon-check-empty','css'),(68,NULL,'icon-cloud','css'),(69,NULL,'icon-cog','css'),(70,NULL,'icon-cogs','css'),(71,NULL,'icon-comment','css'),(72,NULL,'icon-comment-alt','css'),(73,NULL,'icon-comments','css'),(74,NULL,'icon-comments-alt','css'),(75,NULL,'icon-credit-card','css'),(76,NULL,'icon-dashboard','css'),(77,NULL,'icon-download','css'),(78,NULL,'icon-download-alt','css'),(79,NULL,'icon-edit','css'),(80,NULL,'icon-envelope','css'),(81,NULL,'icon-envelope-alt','css'),(82,NULL,'icon-hdd','css'),(83,NULL,'icon-headphones','css'),(84,NULL,'icon-heart','css'),(85,NULL,'icon-heart-empty','css'),(86,NULL,'icon-home','css'),(87,NULL,'icon-inbox','css'),(88,NULL,'icon-info-sign','css'),(89,NULL,'icon-key','css'),(90,NULL,'icon-leaf','css'),(91,NULL,'icon-legal','css'),(92,NULL,'icon-lemon','css'),(93,NULL,'icon-lock','css'),(94,NULL,'icon-unlock','css'),(95,NULL,'icon-magic','css'),(96,NULL,'icon-magnet','css'),(97,NULL,'icon-map-marker','css'),(98,NULL,'icon-minus','css'),(99,NULL,'icon-minus-sign','css'),(100,NULL,'icon-question-sign','css'),(101,NULL,'icon-random','css'),(102,NULL,'icon-refresh','css'),(103,NULL,'icon-remove','css'),(104,NULL,'icon-remove-circle','css'),(105,NULL,'icon-remove-sign','css'),(106,NULL,'icon-reorder','css'),(107,NULL,'icon-resize-horizontal','css'),(108,NULL,'icon-resize-vertical','css'),(109,NULL,'icon-retweet','css'),(110,NULL,'icon-road','css'),(111,NULL,'icon-rss','css'),(112,NULL,'icon-screenshot','css'),(113,NULL,'icon-search','css'),(114,NULL,'icon-share','css'),(115,NULL,'icon-share-alt','css'),(116,NULL,'icon-shopping-cart','css'),(117,NULL,'icon-time','css'),(118,NULL,'icon-tint','css'),(119,NULL,'icon-trash','css'),(120,NULL,'icon-trophy','css'),(121,NULL,'icon-truck','css'),(122,NULL,'icon-umbrella','css'),(123,NULL,'icon-upload','css'),(124,NULL,'icon-upload-alt','css'),(125,NULL,'icon-user','css'),(126,NULL,'icon-user-md','css'),(127,NULL,'icon-volume-off','css'),(128,NULL,'icon-volume-down','css'),(129,NULL,'icon-volume-up','css'),(130,NULL,'icon-warning-sign','css'),(131,NULL,'icon-wrench','css'),(132,NULL,'icon-zoom-in','css'),(133,NULL,'icon-zoom-out','css'),(134,NULL,'ztree_edit','png'),(135,NULL,'ztree_root_close','png'),(136,NULL,'ztree_root_open','png'),(137,NULL,'ztree_star','png'),(138,NULL,'ztree_calendar','png'),(139,NULL,'ztree_heart','png'),(140,NULL,'ztree_save','png'),(141,NULL,'ztree_msg','png'),(142,NULL,'ztree_report','png'),(143,NULL,'ztree_setting','png'),(148,NULL,'ztree_folder_open','png'),(149,NULL,'ztree_folder_close','png'),(150,NULL,'ztree_file2','png'),(151,NULL,'ztree_edit2','png'),(152,NULL,'ztree_delete','png'),(153,NULL,'ztree_arrow','png'),(154,NULL,'ztree_plus','png'),(155,NULL,'ztree_minus','png'),(156,NULL,'ztree_add','png'),(157,NULL,'ztree_cicle_arrow_left1','png'),(158,NULL,'ztree_cicle_arrow_right1','png'),(159,NULL,'ztree_cicle_arrow_left2','png'),(160,NULL,'ztree_cicle_arrow_right2','png'),(161,NULL,'ztree_cicle_arrow','png'),(162,NULL,'ztree_star_light','png'),(163,NULL,'ztree_star_dark','png'),(164,NULL,'diy_icon_01_01','png'),(165,NULL,'diy_icon_01_02','png'),(166,NULL,'diy_icon_01_03','png'),(167,NULL,'diy_icon_01_04','png'),(168,NULL,'diy_icon_01_05','png'),(169,NULL,'diy_icon_01_06','png'),(170,NULL,'diy_icon_01_07','png'),(171,NULL,'diy_icon_01_08','png'),(172,NULL,'diy_icon_01_09','png'),(173,NULL,'diy_icon_01_10','png'),(174,NULL,'diy_icon_01_11','png'),(175,NULL,'diy_icon_01_12','png'),(176,NULL,'diy_icon_01_13','png'),(177,NULL,'diy_icon_01_14','png'),(178,NULL,'diy_icon_01_15','png'),(179,NULL,'diy_icon_01_16','png'),(180,NULL,'diy_icon_01_17','png'),(181,NULL,'diy_icon_01_18','png'),(182,NULL,'diy_icon_01_19','png'),(183,NULL,'diy_icon_01_20','png'),(184,NULL,'diy_icon_01_21','png'),(185,NULL,'diy_icon_01_22','png'),(186,NULL,'diy_icon_01_23','png'),(187,NULL,'diy_icon_01_24','png'),(188,NULL,'diy_icon_01_25','png'),(189,NULL,'diy_icon_01_26','png'),(190,NULL,'diy_icon_01_27','png'),(191,NULL,'diy_icon_01_28','png'),(192,NULL,'diy_icon_01_29','png'),(193,NULL,'diy_icon_01_30','png'),(194,NULL,'diy_icon_01_31','png'),(195,NULL,'diy_icon_01_32','png'),(196,NULL,'diy_icon_01_33','png'),(197,NULL,'diy_icon_01_34','png'),(198,NULL,'diy_icon_01_35','png'),(199,NULL,'diy_icon_01_36','png'),(200,NULL,'diy_icon_01_37','png'),(201,NULL,'diy_icon_01_38','png'),(202,NULL,'diy_icon_01_39','png'),(203,NULL,'diy_icon_01_40','png'),(204,NULL,'diy_icon_01_41','png'),(205,NULL,'diy_icon_01_42','png'),(206,NULL,'diy_icon_01_43','png'),(207,NULL,'diy_icon_01_44','png'),(208,NULL,'diy_icon_01_45','png'),(209,NULL,'diy_icon_01_46','png'),(210,NULL,'diy_icon_01_47','png'),(211,NULL,'diy_icon_01_48','png'),(212,NULL,'diy_icon_01_49','png'),(213,NULL,'diy_icon_01_50','png'),(214,NULL,'diy_icon_02_01','png'),(215,NULL,'diy_icon_02_02','png'),(216,NULL,'diy_icon_02_03','png'),(217,NULL,'diy_icon_02_04','png'),(218,NULL,'diy_icon_02_05','png'),(219,NULL,'diy_icon_02_06','png'),(220,NULL,'diy_icon_02_07','png'),(221,NULL,'diy_icon_02_08','png'),(222,NULL,'diy_icon_02_09','png'),(223,NULL,'diy_icon_02_10','png'),(224,NULL,'diy_icon_02_11','png'),(225,NULL,'diy_icon_02_12','png'),(226,NULL,'diy_icon_02_13','png'),(227,NULL,'diy_icon_02_14','png'),(228,NULL,'diy_icon_02_15','png'),(229,NULL,'diy_icon_02_16','png'),(230,NULL,'diy_icon_02_17','png'),(231,NULL,'diy_icon_02_18','png'),(232,NULL,'diy_icon_02_19','png'),(233,NULL,'diy_icon_02_20','png'),(234,NULL,'diy_icon_02_21','png'),(235,NULL,'diy_icon_02_22','png'),(236,NULL,'diy_icon_02_23','png'),(237,NULL,'diy_icon_02_24','png'),(238,NULL,'diy_icon_02_25','png'),(239,NULL,'diy_icon_02_26','png'),(240,NULL,'diy_icon_02_27','png'),(241,NULL,'diy_icon_02_28','png'),(242,NULL,'diy_icon_02_29','png'),(243,NULL,'diy_icon_02_30','png'),(244,NULL,'diy_icon_02_31','png'),(245,NULL,'diy_icon_02_32','png'),(246,NULL,'diy_icon_02_33','png'),(247,NULL,'diy_icon_02_34','png'),(248,NULL,'diy_icon_02_35','png'),(249,NULL,'diy_icon_02_36','png'),(250,NULL,'diy_icon_02_37','png'),(251,NULL,'diy_icon_02_38','png'),(252,NULL,'diy_icon_02_39','png'),(253,NULL,'diy_icon_02_40','png'),(254,NULL,'diy_icon_02_41','png'),(255,NULL,'diy_icon_02_42','png'),(256,NULL,'diy_icon_02_43','png'),(257,NULL,'diy_icon_02_44','png'),(258,NULL,'diy_icon_02_45','png'),(259,NULL,'diy_icon_02_46','png'),(260,NULL,'diy_icon_02_47','png'),(261,NULL,'diy_icon_02_48','png'),(262,NULL,'diy_icon_02_49','png'),(263,NULL,'diy_icon_02_50','png'),(264,NULL,'diy_icon_03_01','png'),(265,NULL,'diy_icon_03_02','png'),(266,NULL,'diy_icon_03_03','png'),(267,NULL,'diy_icon_03_04','png'),(268,NULL,'diy_icon_03_05','png'),(269,NULL,'diy_icon_03_06','png'),(270,NULL,'diy_icon_03_07','png'),(271,NULL,'diy_icon_03_08','png'),(272,NULL,'diy_icon_03_09','png'),(273,NULL,'diy_icon_03_10','png'),(274,NULL,'diy_icon_03_11','png'),(275,NULL,'diy_icon_03_12','png'),(276,NULL,'diy_icon_03_13','png'),(277,NULL,'diy_icon_03_14','png'),(278,NULL,'diy_icon_03_15','png'),(279,NULL,'diy_icon_03_16','png'),(280,NULL,'diy_icon_03_17','png'),(281,NULL,'diy_icon_03_18','png'),(282,NULL,'diy_icon_03_19','png'),(283,NULL,'diy_icon_03_20','png'),(284,NULL,'diy_icon_03_21','png'),(285,NULL,'diy_icon_03_22','png'),(286,NULL,'diy_icon_03_23','png'),(287,NULL,'diy_icon_03_24','png'),(288,NULL,'diy_icon_03_25','png'),(289,NULL,'diy_icon_03_26','png'),(290,NULL,'diy_icon_03_27','png'),(291,NULL,'diy_icon_03_28','png'),(292,NULL,'diy_icon_03_29','png'),(293,NULL,'diy_icon_03_30','png'),(294,NULL,'diy_icon_03_31','png'),(295,NULL,'diy_icon_03_32','png'),(296,NULL,'diy_icon_03_33','png'),(297,NULL,'diy_icon_03_34','png'),(298,NULL,'diy_icon_03_35','png'),(299,NULL,'diy_icon_03_36','png'),(300,NULL,'diy_icon_03_37','png'),(301,NULL,'diy_icon_03_38','png'),(302,NULL,'diy_icon_03_39','png'),(303,NULL,'diy_icon_03_40','png'),(304,NULL,'diy_icon_03_41','png'),(305,NULL,'diy_icon_03_42','png'),(306,NULL,'diy_icon_03_43','png'),(307,NULL,'diy_icon_03_44','png'),(308,NULL,'diy_icon_03_45','png'),(309,NULL,'diy_icon_03_46','png'),(310,NULL,'diy_icon_03_47','png'),(311,NULL,'diy_icon_03_48','png'),(312,NULL,'diy_icon_03_49','png'),(313,NULL,'diy_icon_03_50','png'),(314,NULL,'diy_icon_04_01','png'),(315,NULL,'diy_icon_04_02','png'),(316,NULL,'diy_icon_04_03','png'),(317,NULL,'diy_icon_04_04','png'),(318,NULL,'diy_icon_04_05','png'),(319,NULL,'diy_icon_04_06','png'),(320,NULL,'diy_icon_04_07','png'),(321,NULL,'diy_icon_04_08','png'),(322,NULL,'diy_icon_04_09','png'),(323,NULL,'diy_icon_04_10','png'),(324,NULL,'diy_icon_04_11','png'),(325,NULL,'diy_icon_04_12','png'),(326,NULL,'diy_icon_04_13','png'),(327,NULL,'diy_icon_04_14','png'),(328,NULL,'diy_icon_04_15','png'),(329,NULL,'diy_icon_04_16','png'),(330,NULL,'diy_icon_04_17','png'),(331,NULL,'diy_icon_04_18','png'),(332,NULL,'diy_icon_04_19','png'),(333,NULL,'diy_icon_04_20','png'),(334,NULL,'diy_icon_04_21','png'),(335,NULL,'diy_icon_04_22','png'),(336,NULL,'diy_icon_04_23','png'),(337,NULL,'diy_icon_04_24','png'),(338,NULL,'diy_icon_04_25','png'),(339,NULL,'diy_icon_04_26','png'),(340,NULL,'diy_icon_04_27','png'),(341,NULL,'diy_icon_04_28','png'),(342,NULL,'diy_icon_04_29','png'),(343,NULL,'diy_icon_04_30','png'),(344,NULL,'diy_icon_04_31','png'),(345,NULL,'diy_icon_04_32','png'),(346,NULL,'diy_icon_04_33','png'),(347,NULL,'diy_icon_04_34','png'),(348,NULL,'diy_icon_04_35','png'),(349,NULL,'diy_icon_04_36','png'),(350,NULL,'diy_icon_04_37','png'),(351,NULL,'diy_icon_04_38','png'),(352,NULL,'diy_icon_04_39','png'),(353,NULL,'diy_icon_04_40','png'),(354,NULL,'diy_icon_04_41','png'),(355,NULL,'diy_icon_04_42','png'),(356,NULL,'diy_icon_04_43','png'),(357,NULL,'diy_icon_04_44','png'),(358,NULL,'diy_icon_04_45','png'),(359,NULL,'diy_icon_04_46','png'),(360,NULL,'diy_icon_04_47','png'),(361,NULL,'diy_icon_04_48','png'),(362,NULL,'diy_icon_04_49','png'),(363,NULL,'diy_icon_04_50','png');
/*!40000 ALTER TABLE `sys_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `operName` varchar(255) DEFAULT NULL,
  `operTime` datetime DEFAULT NULL,
  `result` int(11) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC3427A92D8327538` (`userId`),
  CONSTRAINT `FKC3427A92D8327538` FOREIGN KEY (`userId`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (29,'é€€å‡ºç³»ç»Ÿ','ç³»ç»Ÿç™»å‡º','2014-03-27 17:20:42',1,5),(30,'ç™»å½•ç³»ç»Ÿ','ç³»ç»Ÿç™»å½•','2014-03-27 17:27:08',1,5),(31,'é€€å‡ºç³»ç»Ÿ','ç³»ç»Ÿç™»å‡º','2014-03-27 17:43:52',1,5),(32,'ç™»å½•ç³»ç»Ÿ','ç³»ç»Ÿç™»å½•','2014-03-27 17:45:40',1,5);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_res`
--

DROP TABLE IF EXISTS `sys_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_res` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authorize` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `orderNo` int(11) NOT NULL,
  `permsString` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `resString` varchar(255) DEFAULT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC3428FEED6C7D0A5` (`PARENT_ID`),
  CONSTRAINT `FKC3428FEED6C7D0A5` FOREIGN KEY (`PARENT_ID`) REFERENCES `sys_res` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_res`
--

LOCK TABLES `sys_res` WRITE;
/*!40000 ALTER TABLE `sys_res` DISABLE KEYS */;
INSERT INTO `sys_res` VALUES (1,NULL,1,'ztree_root_close','ç³»ç»Ÿç®¡ç†',1,'sys','ç³»ç»Ÿç®¡ç†','/sys',5),(2,NULL,2,'diy_icon_01_05','ç”¨æˆ·ç®¡ç†',1,'sys:user','ç”¨æˆ·ç®¡ç†','/sys/user/list',1),(3,NULL,2,'diy_icon_01_10','è§’è‰²ç®¡ç†',2,'sys:role','è§’è‰²ç®¡ç†','/sys/role/list',1),(4,NULL,2,'ztree_report','èµ„æºèœå•',3,'sys:resource','èµ„æºç®¡ç†','/sys/resource/list',1),(5,NULL,0,'','system',1,'system','æœ€é«˜çš„èŠ‚ç‚¹åªèƒ½æœ‰ä¸€ä¸ª','/system',NULL),(7,NULL,3,'icon-tasks','ç”¨æˆ·åˆ—è¡¨',1,'sys:user:list','ç”¨æˆ·åˆ—è¡¨','/sys/user/list',2),(8,NULL,3,'icon-plus','æ·»åŠ ç”¨æˆ·',2,'sys:user:add','æ·»åŠ ç”¨æˆ·','/sys/user/add',2),(9,NULL,3,'icon-minus','åˆ é™¤ç”¨æˆ·',3,'sys:user:delete','','/sys/user/delete',2),(10,NULL,3,'icon-pencil','ä¿®æ”¹ç”¨æˆ·',4,'sys:user:update','','/sys/user/update',2),(11,NULL,3,'icon-tasks','è§’è‰²åˆ—è¡¨',1,'sys:role:list','','/sys/role/list',3),(12,NULL,3,'icon-plus','æ·»åŠ è§’è‰²',2,'sys:role:add','','/sys/role/add',3),(13,NULL,3,'icon-minus','åˆ é™¤è§’è‰²',3,'sys:role:delete','','/sys/role/delete',3),(14,NULL,3,'icon-pencil','ä¿®æ”¹è§’è‰²',4,'sys:role:update','','/sys/role/update',3),(15,NULL,3,'icon-tasks','èµ„æºåˆ—è¡¨',1,'sys:resource:list','','/sys/resource/list',4),(16,NULL,3,'icon-plus','æ·»åŠ èµ„æº',2,'sys:resource:add','','/sys/resource/add',4),(17,NULL,3,'icon-minus','åˆ é™¤èµ„æº',3,'sys:resource:delete','','/sys/resource/delete',4),(18,NULL,3,'icon-pencil','ä¿®æ”¹èµ„æº',4,'sys:resource:update','','/sys/resource/update',4),(19,NULL,2,'diy_icon_01_02','å›¾æ ‡ç®¡ç†',4,'sys:user:list','','/sys/icon/list',1),(20,NULL,3,'icon-tasks','å›¾æ ‡åˆ—è¡¨',1,'sys:icon:list','','/sys/icon/list',19),(21,NULL,3,'icon-plus','æ·»åŠ å›¾æ ‡',2,'sys:icon:add','','/sys/icon/add',19),(22,NULL,3,'icon-minus','åˆ é™¤å›¾æ ‡',3,'sys:icon:delete','','/sys/icon/delete',19),(23,NULL,3,'icon-pencil','ä¿®æ”¹å›¾æ ‡',4,'sys:icon:update','','/sys/icon/update',19),(24,NULL,3,'ztree_file2','è¯¦ç»†ä¿¡æ¯',5,'sys:user:show','','/sys/user/show',2),(25,NULL,3,'ztree_file2','è¯¦ç»†ä¿¡æ¯',5,'sys:role:show','','/sys/role/show',3),(26,NULL,3,'ztree_file2','è¯¦ç»†ä¿¡æ¯',5,'sys:resource:show','','/sys/resource/show',4),(27,NULL,3,'icon-cog','è¯¦ç»†ä¿¡æ¯',5,'sys:icon:show','','sys/icon/show',19),(28,NULL,1,'diy_icon_01_48','ç»ˆç«¯æœåŠ¡',1,'mobile','ç»ˆç«¯æœåŠ¡','/mobile',5),(29,NULL,2,'diy_icon_01_29','æ¶ˆæ¯æ¨é€',1,'mobile:push','','/mobile/push',28),(30,NULL,1,'diy_icon_04_20','OAåŠå…¬',1,'workflow','','/workflow',5),(31,NULL,3,'icon-key','æ›´æ”¹ç”¨æˆ·çŠ¶æ€',6,'sys:user:changeUserStatus','','/sys/user/changeUserStatus',2),(32,NULL,2,'ztree_edit2','å¾…åŠ',1,'workflow:todoTasks','','/workflow/todoTasks',30),(33,NULL,2,'diy_icon_01_42','å·²åŠ',2,'workflow:hasTodo','','/workflow/hasTodo',30),(34,NULL,2,'diy_icon_04_41','å‘èµ·æµç¨‹',3,'workflow:process','','/workflow/process',30),(35,NULL,2,'diy_icon_02_33','æˆ‘çš„æµç¨‹',4,'workflow:myprocess','','/workflow/myprocess',30),(36,NULL,2,'diy_icon_04_19','ç³»ç»Ÿæ—¥å¿—',5,'sys:log:list','','/sys/log/list',1),(37,NULL,3,'icon-tasks','æ—¥å¿—åˆ—è¡¨',1,'sys:log:list','','/sys/log/list',36);
/*!40000 ALTER TABLE `sys_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authorize` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,NULL,'superAdmin','è¶…çº§ç®¡ç†å‘˜','æ‹¥æœ‰æ‰€æœ‰æƒé™'),(6,NULL,'deptLeader','éƒ¨é—¨ç»ç†','111'),(7,NULL,'hr','äººåŠ›ç»ç†','');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_res`
--

DROP TABLE IF EXISTS `sys_role_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_res` (
  `ROLE_ID` bigint(20) NOT NULL,
  `RES_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`RES_ID`),
  KEY `FK9A255A8923AE94EF` (`RES_ID`),
  KEY `FK9A255A895C176D41` (`ROLE_ID`),
  CONSTRAINT `FK9A255A895C176D41` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK9A255A8923AE94EF` FOREIGN KEY (`RES_ID`) REFERENCES `sys_res` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_res`
--

LOCK TABLES `sys_role_res` WRITE;
/*!40000 ALTER TABLE `sys_role_res` DISABLE KEYS */;
INSERT INTO `sys_role_res` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(6,5),(7,5),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(6,28),(1,29),(6,29),(1,30),(6,30),(7,30),(1,31),(1,32),(6,32),(7,32),(1,33),(6,33),(7,33),(1,34),(6,34),(7,34),(1,35),(6,35),(7,35),(1,36),(1,37);
/*!40000 ALTER TABLE `sys_role_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `createDate` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `loginId` varchar(255) NOT NULL,
  `mobilePhone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginId` (`loginId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (4,'æˆéƒ½','2013-03-07 00:00:00','sa@ww.cc','user2','15222233426','äººåŠ›ç»ç†','8d2209bf7ec9ac2eec597eb378a7cbf5','','1'),(5,'æˆéƒ½','2014-03-14 00:00:00','502876941@qq.com','admin','15108276486','è¶…çº§ç®¡ç†å‘˜','bd2e01edc57144999856d77571151dda','å¸…æ°”çš„å¼€å‘è€…','1'),(7,'æˆéƒ½','2014-03-23 00:00:00','sa@ww.cc','depman','15369654627','éƒ¨é—¨ç»ç†','1fa11d49afc1479d1392df32c9cd7dd4','ä½ å¥½','1');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `USER_ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`ROLE_ID`),
  KEY `FKAABB7D585C176D41` (`ROLE_ID`),
  KEY `FKAABB7D581423121` (`USER_ID`),
  CONSTRAINT `FKAABB7D585C176D41` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKAABB7D581423121` FOREIGN KEY (`USER_ID`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (5,1),(7,6),(4,7);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `act_id_group`
--

/*!50001 DROP TABLE IF EXISTS `act_id_group`*/;
/*!50001 DROP VIEW IF EXISTS `act_id_group`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `act_id_group` AS select `ar`.`name` AS `ID_`,NULL AS `REV_`,`ar`.`name` AS `NAME_`,'assignment' AS `TYPE_` from `sys_role` `ar` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `act_id_membership`
--

/*!50001 DROP TABLE IF EXISTS `act_id_membership`*/;
/*!50001 DROP VIEW IF EXISTS `act_id_membership`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `act_id_membership` AS select (select `u`.`loginId` from `sys_user` `u` where (`u`.`id` = `ur`.`USER_ID`)) AS `USER_ID_`,(select `r`.`name` from `sys_role` `r` where (`r`.`id` = `ur`.`ROLE_ID`)) AS `GROUP_ID_` from `sys_user_role` `ur` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `act_id_user`
--

/*!50001 DROP TABLE IF EXISTS `act_id_user`*/;
/*!50001 DROP VIEW IF EXISTS `act_id_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `act_id_user` AS select `au`.`loginId` AS `ID_`,0 AS `REV_`,`au`.`name` AS `FIRST_`,'' AS `LAST_`,`au`.`email` AS `EMAIL_`,`au`.`passwd` AS `PWD_`,'' AS `PICTURE_ID_` from `sys_user` `au` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-27 18:01:10
