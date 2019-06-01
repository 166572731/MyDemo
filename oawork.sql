/*
SQLyog Ultimate v8.32 
MySQL - 5.0.24-community-nt : Database - oawork
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`oawork` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `oawork`;

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `DEPLOYMENT_ID_` varchar(64) collate utf8_bin default NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('506',1,'MyProcess.png','505','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0f\0\00\0\0\0K,út\0\04dIDATxœíİlœwa?po´åèÆkÓÄ¡¡Õh£q¡\"Ñ¤-N¥5F\ZÃÒªÖãì´I„ÖUÓft‚fÖ4X4±*lĞYLPŠ%\nóÚ†y]Z¼6MÒ†´îĞƒ4Åmšöºüº8vü|ßÁ}¯gŸ{Î~îÏë¥·¬ç~<?Ïù£|·Î9w%\0\0\04Ñz\0\0\0\0íKe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe2®\\.ßzë­ƒƒƒı?500Ş366V*•B\0hk*YiSJ«Q.—KËRZvî¼óŞ]ß­æ®oç3ŸùìĞĞPww÷úõëGGGC\0hS*Aû÷ïïïïO›RZÎÎÍ¯œİ÷?°yóõõõMNN†8\0ĞvT& kFFFÒşsï®ï¾fYªÏ‡÷nØ°aË–-år9ô\0\0mDe²#m;CCCÃÃÃ«*KõùÇÛoïïïŸ™™	}*\0@»P™€ŒHûÒúõëÇÆÆÎ»/Õ~O/=N±X}B\0@[P™€Œ\Z\Zºğ¾Tû%½´5ù\r=\0 Q™€l¹ßÇ[š;ï}Z\0@x*Ğñöïßß××wûR5ıèÇ¶oßúä\0€ÀT& ã¥}iÏÃ{/ze:üì‘w¾3ï×ó\0 r*ĞÙÆÇÇ/z_ªææ›ÿlÛ¶m¡O\0Ie:[ÿjÿÓªŞhêéé	}Š\0@H*ĞÁJ¥Rww÷%êKÕ¬[·njj*ô‰\0Á¨L@-\n—´2İ¶uëğğpè\0‚Q™€¶eË–íÛ·_ÒÊtï®ïö÷÷‡>Q\0 •	è`w}û;—´2=}èĞ;ß™}¢\0@0*ĞÁ.ÑÇ‹×çø‰“¹\\.ô‰\0Á¨L@ëéé9üì‘KZ™Òtuù§\0âå:\0è`½½½ß?xPe\0.×@»¤”Éÿe\0•	èh…Bá«wÜqI+ÓîûX·n]è\0‚Q™€¶mÛ¶›oş³KZ™ÒJ¶yó…>Q\0 •	è`Åb1ŸÏ_ÒÊ´iÓ¦‰‰‰Ğ\'\n\0£2í’~Äñ\'»»»Ëårè³\0‚Q™€ÎvI7ï_übzğĞ§\0„¤2­\\.çóùKñ×™Ÿ8ùÎwægffBŸ\"\0’Êt¼±±±oºÉ[L\0À¥ 2YğûşğÎw^Ä¾ôıƒ×®]{üÄÉĞg\0¦2YP*•Ö­[w±>âè‹ÇÒ¾ôô¡C¡O\0Oe2bzz:mMiÏ¹ğ¾ôûşğ]ßşNè\0Ú‚ÊdÇşıû×®]»ûş.ä÷ñÒŞ¥/\05*)¥RiÃ†\rŸùÌg¾xlUeéø‰“_øâ«¿İú$\0€6¢2YS.—ÓÊtÕU½iJ‹P+}é«wÜ‘>ÿæ›ÿ,-Z¡‡\0´•	È¦™™™[n¹¥»»û÷?üá´íyxoCMJïÙ±ãßn¼é¦ô9›7ÿQ±X=d\0 ©L@–•ËåñññB¡°víÚ®WKïIûÒØØX©T\n=L\0 }©L@\\òù¼7”\0€Ö©L@\\T&\0`UT& .*\0°**—şşşÉÉÉĞ£\0\0:†ÊÄEe\0VEeâ¢2\0«¢2q\Z\Z\Z=\n\0 c¨L@\\\n…ÂèèhèQ\0\0Ceâ¢2\0«¢2q¹å–[¶mÛz\0@ÇP™€¸ÜZz\0@ÇP™€¸¨L\0Àª¨L@\\FFF†‡‡C\0è*—ÑÑÑB¡z\0@ÇP™€¸¨L\0Àª¨L@\\T&\0`UT& .“““ııı¡G\0t•	ˆ‹Ê\0¬ŠÊÄEe\0VEeâ2==İÛÛz\0@ÇP™€¸‹Å|>z\0@ÇP™€¸¨L\0Àª¨L@\\J¥RwwwèQ\0\0Ce¢ÓÕåŸ>\0 U®€è¨L\0@ë\\7\0ÑÉårår9ô(\0€Î 2ÑÉçóÅb1ô(\0€Î 2ÑQ™\0€Ö©L@tT&\0 u*şşşÉÉÉĞ£\0\0:ƒÊDGe\0Z§2ÑQ™\0€Ö©L@t†††ÆÆÆB\0è*B¡0::\Zz\0@gP™€è¨L\0@ëT& :·ÜrË¶mÛB\0è*[+B\0è*•	\0hÊDgdddxx8ô(\0€Î 2Ñ-\n¡G\0t•	ˆÊ\0´Ne¢£2\0­S™€(Œuuuår¹¾¾¾µk×^qÅéÍ+¯¼rzz:ôĞ\0€¶¦2Qøæ7¿ÙµÄÆÇÇÇC\r\0hk*…r¹üÆ7¾±¾/]}õÕ===¥R)ôĞ\0€¶¦2±øô§?}Ùe—Õ*ÓÇ?şq5\0¼&•	ˆÈš5kª}éç~îçòù|¹\\=\"\0 İ©L@Dî»ï¾Ë/¿ü-oyË›Şô&ÿ‹	\0h…ÊÄåºë®{ßûŞ—§Ğ\0:ƒÊÄeff&ŸÏwuù×\0h‰‹ F*\0Ğ\"\rÀâp\r\r\rõ÷÷Wß¡Ó¥?Çô§9888::êƒÔàB¨L»‰‰‰ôò:íK;vì¸w×®§:;7\'ôç˜ş4wîÜ¹yóæôç›§Ğ\r\0:•Êñ*•J…BaÓ¦M‡Ÿ=|vî¬d5G_<š§ô=33zÒ@çQ™ Ri_êëëûê_9;7+1ä®oßµnİºb±zê@‡Q™ R…B¡Ò—ÎH<¹w×=6üNè©\0Fe‚MLLlÚtıÜ|YbË\'?õ[·~>ô€N¢2AtÊår>ŸöHqnş´Ä–\'_^»öêéééĞÓ\0:†ÊÑ-\nsó§jÙ8ğ{-~tuı^Ò¡ÙºõsÃÃÃ¡§!\0t•	¢388¸óÎ¯]@o¼~Ó“ä‡ç’§æ’Çf“Gf“=\'æ·İùİ»¼òàÙäËÉƒåd÷©ä3É?ì>ğÑ-~Å/˜‡÷Nõõõ…†\0Ğ1T&ˆNooïÁƒûææOVÓÕÕu\"IN.$¯Ì\'/MN%ÉŸÿåg»~öÍë¯<2—MŸIŠåäéùäß{¤òFÓIéèœ8y,—Ë…†\0Ğ1T&ˆNww÷‹ÇÌÍŸ¨&mA§Î%³çš_Xüú­ïüç/ÿÚoşÕm_˜O’ãóÉ+sÉKsI)IîyèÑJe:!ôçv@±jBt*µçx-éÍ“óÉ±ÓÉÙs?yB©Túû/}ùó÷¥ÃÏ-şåÓ¹…äl¥J=ğğ#\rûJ‡Fe€ÖY5!:•Úóµ,V¦sÉÑSÉó\'’¹$9;;Û{ÕU]]oèêÊİğ‡›ëwÜ³w_Ã¾Ò¡Q™\0 uVMˆN¥ö¼RKõóN;¼p&ÙsğkÖ¬yÃeW¼é­ïúÈ«*ÓCïmØW:4*\0´Îª	Ñ©ÔR-éÍÓÉKåÅw™Iv=4ıŞµïÇ/şÒ[»ßöå¯}ãL’œ˜MNÍ.î¸{ê¡†}¥C£2@ë¬šôry~şåZªWÏikze.yùlòÜñ¹×¾ïÚ¿ûÁf“çËÉåäØl’–¦İ>Ô°¯thT&\0hU¢ÓP{ú7nxôñ§ö˜Ú?}ÿŞéû÷=ùÀ£‡şëÁÇ¾wà™ûö>ù?{Ÿ¸ßS<yà©İşOwÜxÓÁ/÷åÂ£2@ë¬šJez©>ŸøÄÇºZğ7ÜĞ°£thT&\0hU¢S©LÇ$æ¨L\0Ğ:«&Dg±2{QbÊ\0­³jBt*•é¨Ä•	\0ZgÕ„èT*ÓsT&\0hU¢S©LÏKÌQ™\0 uVMˆN¥2ÍHÌQ™\0 uVMˆÊ$*\0´Îª	Ñ©T¦KÌQ™\0 uVMˆNz¹|îÜssT&\0hU¢S©LG$æ¨L\0Ğ:«&D§R™•˜£2@ë¬šJe:ÜAYvÀÍÎ¢•³ëª³ªoºìı÷zVÇz\Z@Ç°jBt*—ø?ê”TG»tÌµûÚ|~ÔµDı“—½…\'¬ğ*59øKt~¯jèi\0Ãª	Ñé «üeËÉÒJ³ÂÓV8àÊßhÙ–µ´•­PÃÚ9*\0´Îª	Ñ©\\ßÿ°ı³tœÕ{ê¿ÖßlÒd\ZµìvÃ‘¾uëÇé”¨L\0Ğ:«&Dgñú~¡Øiì??½³ákÃ.\rËŞl¸gÙc.»Ñ´›…~­VûÂ††\0Ğ1¬šÊõı3‘ú¡Ö¶«µ¯?m,Ï,Wc^ã˜\rwÖ]yc…íˆÊ\0­³jBt*×÷?èˆÔµ¶]İXö¡†íÚ=+k8æ\nÇ_ù •	\0ZgÕ„èT®ïuDê‡ZÛ®n,}h¹\Z³Ì—}¨ş˜Í¾®0¶‹Ê\0­³jBt*×úOwDªCıiÉi¼³ákı£+méÓ–=fíû6ÜÓü¦ğ¯Xë/lèi\0Ãª	Ñ©\\Ü?ÕijıÍÚvu£yYşùK¾Â=Ë¾bô2.;øĞÓ\0:†U¢ÓA×ú-V¦eï¯¿§ÙêZm;ê —qÙÁ‡†\0Ğ1¬šôryaáÉNIÃ»FõwV7–}ZÃó¸ò\rÛÍ^®Îz—>ô4€aÕ„èT®õŸ˜£2@ë¬šJeš–˜£2@ë¬šJez\\bÊ\0­³jBtr¹ÜéÓû“h£2@ë¬š|>ÿÌ3w/,”h£2@ë¬šÿ˜Ø¾|_âÌãÓßêíí\r=\r c¨L‘‘‘áá?	~á.¡ò/£·\n…ĞÓ\0:†ÊÑ)‹½½ï:]Ş³38xİøøxèi\0Ce‚İºhËBò¨Ä–¯ıíĞĞ@è	\0De‚•Ëåşşk§¦ş5I‘x23³«·÷]¥ÒîĞ\0:‰Ê‘šîë»jzz<IöKIûRÚ“\'\'¿zê@‡Q™ ^SSSik\ZùÓ$Ù\'ÙÎøø{{ó““ÿzÒ@çQ™ jåryx¸ĞßÿşÑÑ¿™¹\'IöJ–R*ı÷ØØß\rm\ZìO·CO7\0èH*LNN\nêéù….²¥»ûç‡†®O[Sè)\0Lebä\0-R™€uuù×\0h‰‹ :333===¡G\0t•	ˆÎôôtoooèQ\0\0Ae¢399Ùßßz\0@gP™€èŒ\r\r\r…\0ĞT& :Û·oß²eKèQ\0\0Ae¢skEèQ\0\0Ae¢sË-·lÛ¶-ô(\0€Î 2Ñ)\n£££¡G\0t•	ˆNÿäädèQ\0\0Ae¢Ó××·ÿşĞ£\0\0:ƒÊD\'ŸÏ‹ÅĞ£\0\0:ƒÊD§«Ë?}\0@«\\7\0q)—Ë¹\\.ô(\0€¡2q)‹ù|>ô(\0€¡2Ù766ÖÕÕ•Ëåúúú®¹æšË/¿<½yå•WNOO‡\Z\0ĞîT& û¾ùÍov-±qãÆñññĞC\0ÚÊd_¹\\~ãßXß—®¾úêR©zh\0@»S™€(|úÓŸ¾ì²Ëj•éãÿøğğpèA\0@eb±fÍšj_úßø|>_.—C\0è\0*‹ûî»ïòË/¿âŠ+ŞûŞ÷ú_L\0@‹T& \"×]wİÛŞö¶k®¹&ô@\0€¡2™™™Éår_ûÚ×B\0è*—|>_,C\0è*d\\¹\\\Z\ZêïïOÛÂÒ?OD„Ò™Î‡ÁÁÁÑÑQŸ´\0+S™ Ë&&&Ò‹ã´/íØ±ãŞ]»>tèìÜœH:Òù°sçÎÍ›7§3$-N¡§*\0´/•	²©T*\n…M›6~öğÙ¹³\"ÍrôÅ£iqJ§ÊÌÌLèi\0íHe‚JûR__ßWïøÊÙ¹Y‘Vr×·ïZ·nÿå\0K©LA…B¡Ò—Îˆ´{wİ³aÃï„¼\0ĞvT&Èš‰‰‰M›®Ÿ›/‹¬6ŸüÔ_lİúùĞS\0Ú‹Ê™R.—óùü³GŠsó§EV›\'_^»öêéééĞ\0ÚˆÊ™2::Z(ê/‚7ü^‹<üz]Ú![·~nxx8ôD€6¢2A¦î¼óßçæOU³ñúM?N’KšK›M™Möœ˜ßvçwï>òÊƒg“ÿ-\'–“İ§’{Î$ÿ°ûÀG·|¬¶£D›‡÷Nõõõ…È\0ĞFT&È”ŞŞŞƒ÷ÍÍŸ¬¦««ëD’œ\\H^™O^:›œJ’?ÿËÏvıì›×_?xd.9<›>“ËÉÓóÉ7¾÷Hå¦“yNœ<–ËåBOd\0h#*dJww÷‹ÇÌÍŸ¨&mA§Î%³çš_Xüú­ïüç/ÿÚoşÕm_˜O’ãóÉ+sÉKsI)IîyèÑJe:!’Î„°Ó\0ÚŠu2¥R{×’Ş<9Ÿ;œ=÷“\'”J¥¿ÿÒ—?ÿw_:üÜâß-[HÎVªÔ?Ò°¯D•	\0êY!S*µçÿjY¬Lç’£§’çO$sIrvv¶÷ª«ººŞĞÕ•»á7×ï¸gï¾†}%Ú¨L\0PÏº™R©=¯ÔRıÅ¼c§“ç\'/œIöüÁš5kŞpÙozë;†>òªÊôĞÃ{ö•h£2@=ë\"dÊÒÊtz!y©¼ø.ÓÑ3É®‡¦ß»öıïøÅ_zk÷Û¾üµoœI’³É©ÙÅwO=¤2I5*\0Ô³.B¦TjO©–êµoÚš^™K^>›<w|îÅµï»vãï~ğ…ÙäùròB996›¤¥i÷ƒ5ì+ÑFe€zÖEÈ”ôbw~şåZú7nxôñ§ö˜Ú?}ÿŞéû÷=ùÀ£‡şëÁÇ¾wà™ûö>ù?{Ÿ¸ßS<yà©İşOwÜxÓõûJ´Q™\0 u2¥R™^ªÏ\'>ñ±®üÁ\r74ì(ÑFe€zÖEÈ”Je:&r!Q™\0 u2e±2{QäB¢2@=ë\"dJ¥2¹¨L\0PÏº™¢2É…Ge€zÖEÈ”JezAäB¢2@=ë\"dJ¥2=/r!Q™\0 u2¥R™fD.$*\0Ô³.B¦T*ÓE.$*\0Ô³.B¦¤»çÎ=\'r!Q™\0 u2¥R™ˆ\\HT&\0¨g]„LQ™äÂ£2@=ë\"dJ¥2=Û¹YyüµG»–ÓâA\Z¸ÂqZ9àù}ß6Ê\0õ¬‹)•«öÃ˜%½åpÃÍÚÓší¾t{é1ëïlxfıÆ²Uª•ñtîëßp¡\'2\0´ë\"dJå’ıGÙHí\\Z9©•ŸÜpçÒ\'7l¬üë­=¹Zş5<ïW>ôD€6b]„L©\\©ÿ°S?òêví¥Ív_ö™K÷ªÚrUg¥±ÕßÙ°Kç¾øKO-ôD€6b]„LY¼j_(vhªƒ¯BÃÍ†ífûş¤Ã49fÃqVŞhfåC­<ÎˆÊ\0õ¬‹)•‹õg:.ÍËÉ3õg´ÂÙ-û´fw.=ø\n+o×Ó0ìÊ\0õ¬‹)¸^¯¿po¶q~O^ö9Ëö´f54¢eïyÍ¡¶T&\0¨g]„L©\\©ÿ ³¤–ü v.K7–İ½á Ë³ÙqV¾gÙí†A¶8ÎˆÊ\0õ¬‹)•‹õC˜ú‘W·k÷,İXy÷×|¨ş€Ë½‰Ôô¡ú\'4µ•AvJT&\0¨g]„L©\\¯?İ‰©yu»®¢,óœ•w_y¯†\'4{Îkn/{³sõgz\"@±.B¦T®×ŸêÄ,y\'ç©¥ç²ÂÙÕvyÍ½ZyÎj¿oÃvçşjã=‘ X!SÒ‹İ……\';1õ#¯n/=—eÏ®Ö²šİ_ï5ŸĞì[¬<ìeü%½ŸEè‰\0mÄº™R¹RBäB¢2@=ë\"dŠÊ$•	\0êY!S*•iZäB¢2@=ë\"dJ¥2=.r!Q™\0 u2%—Ë>½oaá1‘óÊ\0õ¬‹)ù|ş™gî^X8(rŞQ™\0 u2e``à?&¶/$ß9¿<>ı­ŞŞŞĞ\0ÚˆÊ™2222<ü\'É‘óË¿Œ~¾P(„È\0ĞFT&È”b±ØÛû®Óå=Á¯¼¥C38xİøøxè‰\0mDe‚¬¹uÑ–…äQ‘Õæëc;44z\n@{Q™ kÊårÿµSSÿš$ˆ´™™]½½ï*•v‡Â\0Ğ^T&È ééé¾¾«¦§Ç“d¿H+IûRÚ´\'\'¿zò@ÛQ™ ›¦¦¦ÒÖ42ò§I²OdåŒ±·7?9ùÏ¡§-\0´#•	2«\\.úûß?:ú×33÷$É^‘ú”Jÿ=6ö7CC›ûÓíĞ\0Ú”Ê799Y(|¨§çºàÕº»~hèú´5…¤\0ĞÖT& :[¶l)—Ë¡G\0t•	ˆN>Ÿ/‹¡G\0t•	ˆÎúõë§¦¦B\0è*‰‰‰Ğ£\0\0:ƒÊD§P(Œ†\0ĞT& :ÃÃÃ###¡G\0t•	ˆNÚ—ÒÖz\0@gP™€èŒ\n…Ğ£\0\0:ƒÊDgbbb`` ô(\0€Î 2Ñ™ššZ¿~}èQ\0\0Ae¢S,óù|èQ\0\0Ae¢S.—s¹\\èQ\0\0Aeb”V¦´8…\0ĞT& Fù|¾X,†\0ĞT& Fë×¯Ÿšš\n=\n\0 ¨L@Œ&&&B\0è\0*£B¡0::\Zz\0@P™€\rŒŒ„\0ĞT& Fi_J[SèQ\0\0@eb4::Z(B\0è\0*£‰‰‰Ğ£\0\0:€ÊÄhjjjıúõ¡G\0t\0•	ˆQ±XÌçó¡G\0t\0•	ˆQ¹\\Îår¡G\0t\0•	ˆTZ™Òâz\0@»S™€Håóùb±z\0@»S™€H­_¿~jj*ô(\0€v§2±ëêêÊår}}}6lxãß˜Ş¼òÊ+§§§C\r\0h_*‹o~ó›]KlÜ¸q||<ôĞ\0€ö¥2±(—ËÕw–jz*J¥Rè¡\0íKe\"òéOú²Ë.«U¦÷½ï}ÃÃÃ¡\0´5•	ˆËš5kª}éøÀ›ßüfŸ3\0¬Leârß}÷]~ùåİİİ×^{í5×\\z8\0@»S™€è\\wİuøÀÖW„\0ĞîT& :333ù|~×®]é×Ğc\0ÚÊDª\\.çr¹Ğ£\0\0ÚÊÑI«ÂØØØĞĞP>Ÿ_ú§ŠˆDúÓOçÀàààèè¨OZ€fT&ˆËÄÄDz¡œö¥;vÜ»k×Ó‡›“8“şôÓ9°sçÎÍ›7§³\"-N¡§\'\0´#•	bQ*•\n…Â¦M›?{øìÜY‘ú}ñhZœÒé133zª@{Q™ \ni_êëëûê_9;7+Ò,w}û®uëÖ‹ÅĞ\0ÚˆÊQ(\n•¾tFdåÜ»ë\r~\'ô„€6¢2AöMLLlÚtıÜ|Y¤•|òS±uëçCO[\0h*d\\¹\\ÎçóÏ)ÎÍŸi%\'N¾¼víÕÓÓÓ¡\'/\0´•	2ntt´P(ÌÍŸªeãÀïµø!Ôõ{ITÙºõsÃÃÃ¡\'/\0´•	2npppçÿ^»Şxı¦\'ÉÏ%OÍ%Í&Ì&{NÌo»ó»wyåÁ³Éÿ–“ËÉîSÉ=g’Ø}à£[>üÚ]‚äá½S}}}¡\'/\0´•	2®··÷àÁ}só\'«éêê:‘$\'’Wæ“—Î&§’äÏÿò³]?ûæõ×™KÏ&‡Ï$Åròô|òï=Ry£é¤D˜\'år¹Ğ“\0Ú‚Ê×İİıâ±#só\'ªI[Ğ©sÉì¹Å‡æ¿~ë;ÿùË¿ö›uÛæ“äø|òÊ\\òÒ\\RJ’{z´R™NHœIúa§.\0´	+\"d\\¥ö¯%½yr>9v:9{î\'O(•Jÿ¥/şï¾tø¹Å¿a:·œ­T©~¤a_‰**\0TY!ã*µçÿjY¬Lç’£§’çO$sIrvv¶÷ª«ººŞĞÕ•»á7×ï¸gï¾†}%ª¨L\0PeE„Œ«ÔWj©şbŞ±ÓÉsÇ“Î${ş`Íš5o¸ìŠ7½õCyUezèá½\rûJTQ™\0 ÊŠW©=¥ZÒ›§’—Ê‹ï2=“ìzhú½kßÿ_ü¥·v¿íË_ûÆ™$91›œš]Üq÷ÔC\rûJTQ™\0 ÊŠ—^øÎÏ¿\\Kõ:8mM¯Ì%/ŸM;>÷ÀâÚ÷]»ñw?øÂlò|9y¡œ›MÒÒ´ûÁ‡\Zö•¨¢2@•2®¡öôoÜğèãOí90=µúş½Ó÷ï{òGı×ƒ}ïÀ3÷í}òö>qÿ¾\'¦yòÀS?ºıŸî¸ñ¦ƒ_¸K¨¨L\0PeE„Œ«T¦—êó‰O|¬«pÃ\r\r;JTQ™\0 ÊŠW©LÇDV•	\0ª¬ˆq‹•éÜ‹\"«Ê\0UVDÈ¸Je:*²Ú¨L\0PeE„Œ«T¦DV•	\0ª¬ˆq•Êô¼Èj£2@•2®R™fDV•	\0ª¬ˆq*“œ_T&\0¨²\"BÆU*Ó3™úS[á4[Z<H†_Ò†S=y -X!ãÒßsçËd\ZN­Ù™.}Zí×ü{¾«ı^YŠÊ\0UVDÈ¸ÊÅı‘L¦zjMªNãÓjÏ\\ö¡¿ªï•¥¨L\0PeE„Œ«\\Ó?›±¼º±´úäVÙÊ÷ÊäKºì‰‡¼\0Ğ¬ˆq•ëûÃ™Lı©U·—=Ù•_+o™ƒ,ı¦YÊ\0UVDÈ¸Êeı²—ºbó£ús¬m¯Ğ…j;6Ûwéví-=BV£2@•2.«Wö\r}ié×úg6l,=Î\nêÜ«ëY+ÇÌFT&\0¨²\"BÆU®é˜±TOªşÔ–ŞÓğĞk>Úl»Ù÷jvÀÌDe€*+\"dÜâeıB1“©?µêö²\'»ôi\r6}—iÉAêïÏğ[;ÁĞ“\0Ú‚2®reÿL&ÓpjÍÎ´zíÑöj¶½ìÍ¿°µs=y -X!ã*Wö?ÈdêO­º½ìÉş´Ş¬tÏÒ¾æ÷ZùùˆÊ\0UVDÈ¸Êeı¡L¦zj?í?ÿÿÎ†SnıXá™Ë~¯U¼ã¢2@•2®rMÿ´Èj£2@•2®R™YmT&\0¨²\"BÆ©Lr~Q™\0 ÊŠ—^ø.,<)²Ú¨L\0PeE„Œ«T¦\'DV•	\0ª¬ˆq•Ê4-²Ú¨L\0PeE„Œ«T¦ÇEV•	\0ª¬ˆq¹\\îôé}‰¬**\0TY!ãòùü3ÏÜ½°pPdUQ™\0 ÊŠ700ğÛ’ï‹´Ç§¿ÕÛÛzò@[P™ ãFFF†‡ÿ$ø%¸tVşeô¶B¡zò@[P™ ãŠÅboï»N—÷,$DZÌààuããã¡\'/\0´•	²ïÖE[’GEZÉ×Çşvhh ô´€v¡2Aö•Ëåşşk§¦ş5IY933»z{ßU*í=m ]¨L…ééé¾¾«¦§Ç“d¿H³¤})m×““_	=a ¨L‹©©©´5Œüi’ìYšññ/ööæ\'\'ÿ9ôT€ö¢2ADÊåòğp¡¿ÿı££=3sO’ì)•ş{lìo††6\rö§Û¡\')\0´•	¢399Y(|¨§çº ««»ûç‡†®O[Sè‰	\0mJeb·eË–r¹z\0@›R™€ØõööNOO‡\0Ğ¦T& v¡G\0´)•	ˆİ–-[¶oßz\0@›R™€ØŒŒ‡\0Ğ¦T& vcccCCC¡G\0´)•	ˆİÔÔÔúõëC\0hS*»™™™Ğ£\0\0Ú”ÊtuùÇ\0X«€$ŸÏ‹ÅĞ£\0\0Ú‘Êô÷÷ONN†\0ĞT&€¤P(Œ†\0ĞT&€äÖŠĞ£\0\0Ú‘ÊŒ\n…Ğ£\0\0Ú‘ÊLNNö÷÷‡\0ĞT&€¤X,æóùĞ£\0\0Ú‘Ê°ÈŸf\0–å`QOOÏÌÌLèQ\0\0mGeX´~ıú©©©Ğ£\0\0ÚÊ°hhhhll,ô(\0€¶£2,\Z	=\n\0 í¨L\0‹¶oß¾eË–Ğ£\0\0ÚÊ°hbbb`` ô(\0€¶£2,šîíí\r=\n\0 í¨L@¼J¥ÒG>ò‘·¿ıí}}}¿ıÛ¿ı3?ó3]]]W^yeZŸB\r\0h*¯İ»ww-±qãÆñññĞC\0Ú…ÊÄ«T*5ô¥_ÿõ_ïééIï=4\0 ]¨L@Ô.¿üòúÊôÁ~pxx8ô \0€6¢2QÛ±cÇ•W^Y{‹éío{¹\\=(\0 ¨L@ìnºé¦Ë.»¬»»û=ïyÏ‡>ô¡ĞÃ\0Ú‹ÊÄ®\\.¿ûİïŞ´iÓ5×\\388z8\0@{Q™\0’b±˜ÏçÇÇÇûúúB\0h/*ÀO”J¥îîîĞ£\0\0Ú‹Ê,şfÚØØØĞĞP>Ÿ_ú§ŠˆJ:Ò™0888::êóÖ@e‚ØMLL¤—Èi_Ú±cÇ½»v=}èĞÙ¹9‰9éHgÂÎ;7oŞœÎ´8…¤\0’Êñ*•J…BaÓ¦M‡Ÿ=|vî¬ÈÒ}ñhZœÒI233zÂ@*D*íK}}}_½ã+gçfEVÎ]ß¾kİºuÅb1ô´€\0T&ˆT¡P¨ô¥3\"­äŞ]÷lØğ;¡§-\0 2AŒ&&&6mº~n¾,Òz>ù©¿Øºõó¡\'/\0¼ŞT&ˆN¹\\ÎçóÏ)ÎÍŸi=\'N¾¼víÕÓÓÓ¡§0\0¼®T&ˆÎèèh¡P˜›?UËÆßkñã§ë÷’³uëç†‡‡COa\0x]©LÁÁÁwş{í\"xãõ›~œ$?<—<5—<6›<2›ì91¿íÎïŞ}ä•Ï&ÿ[N,\'»O%÷œIşa÷nùXğ«v	˜‡÷Nõõõ…Â\0ğºR™ :½½½î››?YMWW×‰$9¹¼2Ÿ¼t69•$ş—ŸíúÙ7¯¿~ğÈ\\rx69|&)–“§ç“o|ï‘ÊM\'%Úœ8y,—Ë…Â\0ğºR™ :İİİ/;27¢š´:—Ì[|h~añë·¾óŸ¿ük¿ùW·}a>IÏ\'¯Ì%/Í%¥$¹ç¡G+•é„Äœt„À\0ğ:³òAt*µçx-éÍ“óÉ±ÓÉÙs?yB©Túû/}ùó÷¥ÃÏ-şõÒ¹…äl¥J=ğğ#\rûJ„Q™\0ˆ•¢S©=ÿWËbe:—=•<\"™K’³³³½W]ÕÕõ†®®Ü\r¸¹~Ç={÷5ì+Fe 6V>ˆN¥ö¼RKõóN;¼p&ÙsğkÖ¬yÃeW¼é­ïúÈ«*ÓCïmØW\"ŒÊ@l¬|Jí)Õ’Ş<½¼T^|—éè™d×CÓï]ûşwüâ/½µûm_şÚ7Î$É‰ÙäÔìâ»§jØW\"ŒÊ@l¬|ô’w~şåZªWÀikze.yùlòÜñ¹×¾ïÚ¿ûÁf“çËÉåäØl’–¦İ>Ô°¯D•	€ØXù :\rµ§ã†GjÏé©ıÓ÷ï¾ß“<zè¿|ì{¹oï“ÿ³÷‰û÷=1õÈ“úÑíÿtÇ7İü’]ÂFe 6V>ˆN¥2½TŸO|âc]-øƒnhØQ\"ŒÊ@l¬|Je:&r~Q™\0ˆ•¢³X™Î½(r~Q™\0ˆ•¢S©LGEÎ/*\0±±òAt*•é‘ó‹Ê@l¬|Jez^äü¢2+D§R™fDÎ/*\0±±òAtT&¹¨L\0ÄÆÊÑ©T¦‹œ_T&\0bcåƒè¤—¼çÎ=\'r~Q™\0ˆ•¢S©LGDÎ/*\0±±òAt*•éY‘ó‹Ê@l¬|Je:U–rë/Â\nÏ¬(WUe 6V>ˆNåâşGÙK×«5<´Â3¿ì£Í¹ÂwÉjT&\0bcåƒèdõÊ¾Å2Sİ>ïæ³ì¡V¨UÙ‹Ê@l¬|Êı³—êy5|}ui|ş²÷/{ØfûÖÍê«ºì¹‡Â\0ğº²òAt/îŠÙKõ¼ê¿6<T³ş†›µ{–ûh¹Ã6-øKq©_çĞS\0^WV>ˆNåšş™ì¥z^õ_k÷×n6l7ì¾ìC+l×¾×«;Uø—âR¿Î¡§0\0¼®¬|Êeı²—êyÕ­İ¿ì)¯ğ:¬ø.Sãs–0«¯píìBOa\0x]Yù :•úCÙKõ¼ê¿.½YİnÒ…\ZµÂö²‡]úüLFe 6V>ˆNåšşéì¥z^K¿Öo4<y…›Í›Õ2ßq…o”½¨L\0ÄÆÊÑ©\\Ö?•ÕÔÎ®ş4—rÃ=+Ü\\á8Kofûµ­fè)\0¯++D\'Ã—õÕS[mAZöÕ>´lUËdT&\0bcåƒè¤—¼Of/õçÕ°İì¡¥®|ØeZz„¬¾Âµ³=…àueåƒèT.èŸ9¿¨L\0ÄÆÊÑ©T¦i‘ó‹Ê@l¬|Jez\\äü¢2+D\'—Ë>½oaá1‘óˆÊ@l¬||>ÿÌ3w/,9¨L\0ÄÆÊÑø‰íÉ÷EV›Ç§¿ÕÛÛz\nÀëJe‚èŒŒŒÿIğ‹oéÄüËèm…B!ô€×•ÊÑ)‹½½ï:]Ş³YU¯=…àu¥2AŒn]´e!yT¤õ|}ìo‡†BO^\0x½©L£r¹ÜßíÔÔ¿&É#\"­dffWoï»J¥İ¡\'/\0¼ŞT&ˆÔôôt_ßUÓÓãI²_då¤})íØ““_	=m \0•	â555•¶¦‘‘?M’}\"Í2>şÅŞŞüää?‡°\0†ÊQ+—ËÃÃ…şş÷şõÌÌ=I²W¤šRé¿ÇÆşfhhÓà`ºzª@0*LNN\nêéù….ø©îîŸ\Zº>mM¡§\'\0¦2,oË–-år9ô(\0€ÀT&€åõõõíß¿?ô(\0€ÀT&€å\r\r\r…\0˜Ê°¼Êü½5ô(\0€ÀT&€å\r\r\r…\0˜Ê°¼ıû÷÷õõ…\0˜Ê°¼r¹œËåB\0Lehª§§gff&ô(\0€T&€¦&&&B\0Iehê–[nÙ¶m[èQ\0\0!©L\0M¥})mM¡G\0„¤24511100z\0@H*@S333===¡G\0„¤2¬$—Ë•ËåĞ£\0\0‚Q™\0VÒ××·ÿşĞ£\0\0‚Q™\0V244466z\0@0*ÀJn­¸ûî»o¾ùæR©z8\0ÀëMeh”V£|ä#oûÛûúúŞó÷är¹®®®o7@„T&€F»wïîzµŞŞŞ|>?33zh\0ÀëMehT*•\Z*Óÿñû›¶\0\'•	`—_~y­/¥Û¿ú«¿ê-&\0ˆ“Ê°Œ;v\\yå•ÕÊô+¿ò+ƒƒƒ¡G\0„¡2,ï¦›nºì²Ë®¾úê·¼å-ŸûÜçB\0CeX^¹\\~÷»ß}İu×mØ°Ád€h©L\0M‹Å|>ÿõ¯}`` ôX\0€0T&€e”Ëåñññ[o½uppğ·~ë·®¸âŠşşş´8¥÷Œú(\0ˆ‡Êğ*iSJkR×kéëëÛ¾}{Ú¬B\0¸´T&€Ÿ˜œœ\\¿~ık–¥zù|>­X¡\0\\B*Àâ¯á\n…¥ï#}ò“ŸÚ¹óÎ{w}·–Ï|æ³›6mjxæàà`©T\n}\0À%¡2±›™™ixséæ›ÿìéC‡ÎÎÍ7ËÑıãí·÷ôôÔ¿İ´ÿşĞ§\0\\|*µêgâÕšÏÀÀÀÊe©¡8}æ3Ÿ­í›Ëå¦¦¦BŸ\0p‘©L@¼ÊårıûK·mİÚbYªÏÿ––¥Ú{M>L\02Feâ544TëK;wŞy}©š=ïíîî®§¿¿?ôi\0“ÊDj||üß_ªÏ]ßşNíhÛ¶m}r\0ÀE£2‘êëë«ıÿ¥ìKÕÔş_SOO¿×\0™¡21\Z«}fÃág\\”ÊtüÄÉÚgèİrË-¡O\0¸8T& FıııµÏ¿(}©š¯ŞqGõ°İİİ¡O\0¸8T& :¥R©öÿ.Ö[Lµ¼ó?ùÈòÉÉÉĞ\'\n\0\\*ÑÑÑÚ§Û]Ü¾”æ£ıXõàÃÃÃ¡O\0¸T& :[¶l¹X”·4÷îúnõàë×¯}¢\0ÀE 2Ñ¨¶š»¾ı‹^™>t¨ögmCŸ(\0p¨L@tj/¾çá½½2¥©ıG©Ğ\'\n\0\\Vt :µúĞ¡KQ™jÇ}¢\0ÀE`E¢ÓÛÛ[­4ß?xğRT¦\\.§2@fXÑèÔş(Ó½»¾{ÑûÒÑùÓL\0%*B¡Pm5ÿxûí½2}ÿàÁêÁûúúBŸ(\0p¨L@tFFFª­fóæ?ºè•é¶­[«\Z\Z\n}¢\0ÀE 2Ñ™®ıîÜñ\'/neÚ°aCõà£££¡O\0¸T& Fù|¾Zlvî¼ó\"ö¥ÚeJ•J¥Ğg	\0\\*£áááj±Y»víE|£é÷?üáêaCŸ\"\0pq¨L@ŒJ¥Rí¯\'İ¶uëEéK»ï öÓşıûCŸ\"\0pq¨L@¤¶mÛV­7¹\\îÂ?müéC‡jlË–-¡O\0¸hT& ^ë×¯¯–œ´í¤ç¼ûÒñ\'×®][;ÔÌÌLè3\0.\Z•	ˆW±Xìîî®U=ï=¾tøÙ#µ¾”Ëå&\'\'CŸ\0p1©L@ÔÒ†SûHiáYí·İ}ÿµßÇKmÛ¶-ô	\0™ÊÄn||¼ö^Sõ3ôîúöwZyséÆ›nêª£/@&©L\0‹Ü¶···¾ÿ¤Åé3Ÿùì÷\\Ú”şñöÛ7mÚTÿä´qù}<\0È*•	`Q©TºõÖ[s¹\\×rÖ­[×ì¡¡¡!Ÿ÷\0\0¦2üiù)\nËV£¥úûû§¦¦B\0¸´T&€Fåryll,íN}}}\r5)ŸÏnß¾İ;K\0	•	\0\0 )•	\0\0 )•	\0\0 )•	\0\0 )•	\0\0 ©ÿ®+ kõä!ê\0\0\0\0IEND®B`‚',0),('507',1,'MyProcess.bpmn','505','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"createOrder\" name=\"åˆ›å»ºé‡‡è´­å•\" activiti:assignee=\"maguo\"></userTask>\n    <userTask id=\"firstAudit\" name=\"éƒ¨é—¨ç»ç†å®¡æ ¸\" activiti:assignee=\"xufen\"></userTask>\n    <userTask id=\"secondAudit\" name=\"æ ¡é•¿å®¡æ ¸\" activiti:assignee=\"zengjie\"></userTask>\n    <userTask id=\"thirdAudit\" name=\"è´¢åŠ¡å®¡æ ¸\" activiti:assignee=\"zhoulu\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"createOrder\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"createOrder\" targetRef=\"firstAudit\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" sourceRef=\"firstAudit\" targetRef=\"secondAudit\"></sequenceFlow>\n    <sequenceFlow id=\"flow4\" sourceRef=\"secondAudit\" targetRef=\"thirdAudit\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" sourceRef=\"thirdAudit\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"406.0\" y=\"94.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"424.0\" y=\"520.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"createOrder\" id=\"BPMNShape_createOrder\">\n        <omgdc:Bounds height=\"55.0\" width=\"173.0\" x=\"338.0\" y=\"180.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"firstAudit\" id=\"BPMNShape_firstAudit\">\n        <omgdc:Bounds height=\"56.0\" width=\"195.0\" x=\"326.0\" y=\"260.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"secondAudit\" id=\"BPMNShape_secondAudit\">\n        <omgdc:Bounds height=\"55.0\" width=\"191.0\" x=\"332.0\" y=\"352.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"thirdAudit\" id=\"BPMNShape_thirdAudit\">\n        <omgdc:Bounds height=\"55.0\" width=\"193.0\" x=\"338.0\" y=\"440.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"423.0\" y=\"129.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"424.0\" y=\"180.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"424.0\" y=\"235.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"423.0\" y=\"260.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"423.0\" y=\"316.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"427.0\" y=\"352.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"427.0\" y=\"407.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"434.0\" y=\"440.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"434.0\" y=\"495.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"441.0\" y=\"520.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) collate utf8_bin NOT NULL default '',
  `VALUE_` varchar(300) collate utf8_bin default NULL,
  `REV_` int(11) default NULL,
  PRIMARY KEY  (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','601',7),('schema.history','create(5.14)',1),('schema.version','5.14',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) collate utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `CALL_PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `ACT_NAME_` varchar(255) collate utf8_bin default NULL,
  `ACT_TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) collate utf8_bin default NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime default NULL,
  `DURATION_` bigint(20) default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `USER_ID_` varchar(255) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `DESCRIPTION_` varchar(4000) collate utf8_bin default NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `URL_` varchar(4000) collate utf8_bin default NULL,
  `CONTENT_ID_` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `ACTION_` varchar(255) collate utf8_bin default NULL,
  `MESSAGE_` varchar(4000) collate utf8_bin default NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `ACT_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) collate utf8_bin default NULL,
  `REV_` int(11) default NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) collate utf8_bin default NULL,
  `DOUBLE_` double default NULL,
  `LONG_` bigint(20) default NULL,
  `TEXT_` varchar(4000) collate utf8_bin default NULL,
  `TEXT2_` varchar(4000) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `GROUP_ID_` varchar(255) collate utf8_bin default NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  `USER_ID_` varchar(255) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) collate utf8_bin default NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime default NULL,
  `DURATION_` bigint(20) default NULL,
  `START_USER_ID_` varchar(255) collate utf8_bin default NULL,
  `START_ACT_ID_` varchar(255) collate utf8_bin default NULL,
  `END_ACT_ID_` varchar(255) collate utf8_bin default NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) collate utf8_bin default NULL,
  `DELETE_REASON_` varchar(4000) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  UNIQUE KEY `ACT_UNIQ_HI_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  `TASK_DEF_KEY_` varchar(255) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `PARENT_TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `DESCRIPTION_` varchar(4000) collate utf8_bin default NULL,
  `OWNER_` varchar(255) collate utf8_bin default NULL,
  `ASSIGNEE_` varchar(255) collate utf8_bin default NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime default NULL,
  `END_TIME_` datetime default NULL,
  `DURATION_` bigint(20) default NULL,
  `DELETE_REASON_` varchar(4000) collate utf8_bin default NULL,
  `PRIORITY_` int(11) default NULL,
  `DUE_DATE_` datetime default NULL,
  `FORM_KEY_` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) collate utf8_bin default NULL,
  `REV_` int(11) default NULL,
  `BYTEARRAY_ID_` varchar(64) collate utf8_bin default NULL,
  `DOUBLE_` double default NULL,
  `LONG_` bigint(20) default NULL,
  `TEXT_` varchar(4000) collate utf8_bin default NULL,
  `TEXT2_` varchar(4000) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `USER_ID_` varchar(64) collate utf8_bin default NULL,
  `TYPE_` varchar(64) collate utf8_bin default NULL,
  `KEY_` varchar(255) collate utf8_bin default NULL,
  `VALUE_` varchar(255) collate utf8_bin default NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `GROUP_ID_` varchar(64) collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `FIRST_` varchar(255) collate utf8_bin default NULL,
  `LAST_` varchar(255) collate utf8_bin default NULL,
  `EMAIL_` varchar(255) collate utf8_bin default NULL,
  `PWD_` varchar(255) collate utf8_bin default NULL,
  `PICTURE_ID_` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `CATEGORY_` varchar(255) collate utf8_bin default NULL,
  `DEPLOY_TIME_` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`DEPLOY_TIME_`) values ('505',NULL,NULL,'2019-06-01 11:53:42');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `KEY_` varchar(255) collate utf8_bin default NULL,
  `CATEGORY_` varchar(255) collate utf8_bin default NULL,
  `CREATE_TIME_` timestamp NULL default NULL,
  `LAST_UPDATE_TIME_` timestamp NULL default NULL,
  `VERSION_` int(11) default NULL,
  `META_INFO_` varchar(4000) collate utf8_bin default NULL,
  `DEPLOYMENT_ID_` varchar(64) collate utf8_bin default NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) collate utf8_bin default NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `CATEGORY_` varchar(255) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `KEY_` varchar(255) collate utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) collate utf8_bin default NULL,
  `RESOURCE_NAME_` varchar(4000) collate utf8_bin default NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) collate utf8_bin default NULL,
  `DESCRIPTION_` varchar(4000) collate utf8_bin default NULL,
  `HAS_START_FORM_KEY_` tinyint(4) default NULL,
  `SUSPENSION_STATE_` int(11) default NULL,
  PRIMARY KEY  (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`SUSPENSION_STATE_`) values ('myProcess:1:508',1,'http://www.activiti.org/test','My process','myProcess',1,'505','MyProcess.bpmn','MyProcess.png',NULL,0,1);

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `EVENT_TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) collate utf8_bin default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `ACTIVITY_ID_` varchar(64) collate utf8_bin default NULL,
  `CONFIGURATION_` varchar(255) collate utf8_bin default NULL,
  `CREATED_` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `BUSINESS_KEY_` varchar(255) collate utf8_bin default NULL,
  `PARENT_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  `SUPER_EXEC_` varchar(64) collate utf8_bin default NULL,
  `ACT_ID_` varchar(255) collate utf8_bin default NULL,
  `IS_ACTIVE_` tinyint(4) default NULL,
  `IS_CONCURRENT_` tinyint(4) default NULL,
  `IS_SCOPE_` tinyint(4) default NULL,
  `IS_EVENT_SCOPE_` tinyint(4) default NULL,
  `SUSPENSION_STATE_` int(11) default NULL,
  `CACHED_ENT_STATE_` int(11) default NULL,
  PRIMARY KEY  (`ID_`),
  UNIQUE KEY `ACT_UNIQ_RU_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `GROUP_ID_` varchar(255) collate utf8_bin default NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  `USER_ID_` varchar(255) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL default NULL,
  `LOCK_OWNER_` varchar(255) collate utf8_bin default NULL,
  `EXCLUSIVE_` tinyint(1) default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  `RETRIES_` int(11) default NULL,
  `EXCEPTION_STACK_ID_` varchar(64) collate utf8_bin default NULL,
  `EXCEPTION_MSG_` varchar(4000) collate utf8_bin default NULL,
  `DUEDATE_` timestamp NULL default NULL,
  `REPEAT_` varchar(255) collate utf8_bin default NULL,
  `HANDLER_TYPE_` varchar(255) collate utf8_bin default NULL,
  `HANDLER_CFG_` varchar(4000) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `PARENT_TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `DESCRIPTION_` varchar(4000) collate utf8_bin default NULL,
  `TASK_DEF_KEY_` varchar(255) collate utf8_bin default NULL,
  `OWNER_` varchar(255) collate utf8_bin default NULL,
  `ASSIGNEE_` varchar(255) collate utf8_bin default NULL,
  `DELEGATION_` varchar(64) collate utf8_bin default NULL,
  `PRIORITY_` int(11) default NULL,
  `CREATE_TIME_` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime default NULL,
  `SUSPENSION_STATE_` int(11) default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `NAME_` varchar(255) collate utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `BYTEARRAY_ID_` varchar(64) collate utf8_bin default NULL,
  `DOUBLE_` double default NULL,
  `LONG_` bigint(20) default NULL,
  `TEXT_` varchar(4000) collate utf8_bin default NULL,
  `TEXT2_` varchar(4000) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

/*Table structure for table `attachment_list` */

DROP TABLE IF EXISTS `attachment_list`;

CREATE TABLE `attachment_list` (
  `pk_Attachment` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `Title` varchar(20) default NULL COMMENT 'æ ‡é¢˜',
  `Description` varchar(50) default NULL COMMENT 'æè¿°',
  `FileName` varchar(20) default NULL COMMENT 'åŸå§‹æ¡£å',
  `FilePath` varchar(20) default NULL COMMENT 'æ–‡ä»¶è·¯å¾„',
  `FileType` varchar(20) default NULL COMMENT 'åç¼€å',
  `FileSize` double default NULL COMMENT 'æ–‡ä»¶å¤§å°',
  `CreateDate` datetime default NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY  (`pk_Attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `attachment_list` */

/*Table structure for table `attendance_list` */

DROP TABLE IF EXISTS `attendance_list`;

CREATE TABLE `attendance_list` (
  `pk_Attendance` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `fk_User` int(11) default NULL COMMENT 'ç”¨æˆ·ID',
  `fk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ID',
  `TypeID` int(11) default NULL COMMENT 'ç±»å‹ID',
  `StatusID` int(11) default NULL COMMENT 'çŠ¶æ€ID',
  `Description` varchar(30) default NULL COMMENT 'æè¿°',
  `shangbantime` datetime default NULL COMMENT 'ä¸Šç­æ—¶é—´',
  `xaibantime` datetime default NULL COMMENT 'ä¸‹ç­æ—¶é—´',
  `month` date default NULL COMMENT 'è€ƒå‹¤æœˆä»½',
  PRIMARY KEY  (`pk_Attendance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `attendance_list` */

/*Table structure for table `calendar_list` */

DROP TABLE IF EXISTS `calendar_list`;

CREATE TABLE `calendar_list` (
  `pk_Calendar` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `fk_User` int(11) default NULL COMMENT 'ç”¨æˆ·ID',
  `fk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ID',
  `TypeID` int(11) default NULL COMMENT 'ç±»å‹ID',
  `StatusID` int(11) default NULL COMMENT 'çŠ¶æ€ID',
  `Title` varchar(20) default NULL COMMENT 'æ ‡é¢˜',
  `Description` varchar(50) default NULL COMMENT 'æè¿°',
  `ImagePath` varchar(20) default NULL COMMENT 'å›¾ç‰‡åœ°å€',
  `UserList` varchar(20) default NULL COMMENT 'ç›¸å…³ç”¨æˆ·',
  `DepartmentList` varchar(20) default NULL COMMENT 'ç›¸å…³éƒ¨é—¨',
  `StartDate` datetime default NULL COMMENT 'å¼€å§‹æ—¶é—´',
  `EndDate` datetime default NULL COMMENT 'ç»“æŸæ—¶é—´',
  `IsRemind` int(11) default NULL COMMENT 'æ˜¯å¦æé†’',
  `CreateDate` datetime default NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY  (`pk_Calendar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `calendar_list` */

/*Table structure for table `car_list` */

DROP TABLE IF EXISTS `car_list`;

CREATE TABLE `car_list` (
  `pk_Car` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `fk_User` int(11) default NULL COMMENT 'ç”¨æˆ·ID',
  `fk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ID',
  `fk_Set` int(11) default NULL COMMENT 'è½¦è¾†ID',
  `NumberID` varchar(20) default NULL COMMENT 'å•å·',
  `TypeID` int(11) default NULL COMMENT 'ç±»å‹ID',
  `StatusID` int(11) default NULL COMMENT 'çŠ¶æ€ID',
  `Title` varchar(20) default NULL COMMENT 'æ ‡é¢˜',
  `Description` varchar(30) default NULL COMMENT 'æè¿°',
  `ImagePath` varchar(20) default NULL COMMENT 'å›¾ç‰‡åœ°å€',
  `CreateDate` datetime default NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `IsCheck` int(11) default NULL COMMENT 'æ˜¯å¦å®¡æ ¸',
  `CheckUser` int(11) default NULL COMMENT 'å®¡æ ¸äººID',
  `CheckDate` datetime default NULL COMMENT 'å®¡æ ¸æ—¶é—´',
  `CheckDepartment` int(11) default NULL COMMENT 'å®¡æ ¸éƒ¨é—¨',
  `StartDate` datetime default NULL COMMENT 'å¼€å§‹æ—¶é—´',
  `EndDate` datetime default NULL COMMENT 'ç»“æŸæ—¶é—´',
  `Driver` varchar(30) default NULL COMMENT 'å¸æœº',
  `Passengers` varchar(30) default NULL COMMENT 'ä¹˜å®¢',
  `Destination` varchar(30) default NULL COMMENT 'ç›®çš„åœ°',
  `Mileage` varchar(30) default NULL COMMENT 'é‡Œç¨‹æ•°',
  `IsBack` int(11) default NULL COMMENT 'æ˜¯å¦å½’è¿˜',
  `BackDate` datetime default NULL COMMENT 'å½’è¿˜æ—¶é—´',
  PRIMARY KEY  (`pk_Car`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_list` */

/*Table structure for table `car_set` */

DROP TABLE IF EXISTS `car_set`;

CREATE TABLE `car_set` (
  `pk_Set` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `TypeID` int(11) default NULL COMMENT 'ç±»å‹ID',
  `StatusID` int(11) default NULL COMMENT 'çŠ¶æ€ID',
  `Title` varchar(20) default NULL COMMENT 'æ ‡é¢˜',
  `Description` varchar(20) default NULL COMMENT 'æè¿°',
  `ImagePath` varchar(20) default NULL COMMENT 'å›¾ç‰‡åœ°å€',
  `BuyDate` datetime default NULL COMMENT 'è´­ä¹°æ—¶é—´',
  `IsUse` int(11) default NULL COMMENT 'æ˜¯å¦ä½¿ç”¨',
  `Mileage` varchar(20) default NULL COMMENT 'é‡Œç¨‹æ•°',
  `LastMaintenance` datetime default NULL COMMENT 'ä¸Šæ¬¡ä¿å…»æ—¶é—´',
  PRIMARY KEY  (`pk_Set`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_set` */

/*Table structure for table `classification` */

DROP TABLE IF EXISTS `classification`;

CREATE TABLE `classification` (
  `class_id` int(11) NOT NULL auto_increment,
  `class_name` varchar(20) default NULL,
  PRIMARY KEY  (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `classification` */

insert  into `classification`(`class_id`,`class_name`) values (1,'å¥½å‹'),(14,'å®¶äºº'),(15,'åŒå­¦'),(16,'åŸºå‹');

/*Table structure for table `communication` */

DROP TABLE IF EXISTS `communication`;

CREATE TABLE `communication` (
  `comm_id` int(11) NOT NULL auto_increment COMMENT 'é€šè®¯ç¼–å·',
  `pk_user` int(11) default NULL COMMENT 'å¤–é”®ç”¨æˆ·ç¼–å·',
  `comm_thedegreeof` int(11) default NULL COMMENT 'é‡è¦||ä¸€èˆ¬',
  `comm_typeid` int(11) default NULL COMMENT 'ç±»å‹',
  `comm_sex` int(11) default NULL COMMENT 'æ€§åˆ«',
  `comm_name` varchar(20) default NULL COMMENT 'è”ç³»äººåç§°',
  `comm_phone` varchar(11) default NULL COMMENT 'è”ç³»ç”µè¯',
  `comm_landline` varchar(20) default NULL COMMENT 'å…¬å¸ç”µè¯',
  `comm_fax` varchar(20) default NULL COMMENT 'ä¼ çœŸ',
  `comm_email` varchar(20) default NULL COMMENT 'é‚®ç®±',
  `comm_address` varchar(50) default NULL COMMENT 'åœ°å€',
  `comm_note` varchar(20) default NULL COMMENT 'å¤‡æ³¨',
  `comm_headportrait` varchar(200) default NULL COMMENT 'å¤´åƒ',
  `comm_class_id` int(11) default NULL COMMENT 'å¤–é”®åˆ†ç±»',
  `comm_Shared` int(11) default NULL,
  PRIMARY KEY  (`comm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `communication` */

insert  into `communication`(`comm_id`,`pk_user`,`comm_thedegreeof`,`comm_typeid`,`comm_sex`,`comm_name`,`comm_phone`,`comm_landline`,`comm_fax`,`comm_email`,`comm_address`,`comm_note`,`comm_headportrait`,`comm_class_id`,`comm_Shared`) values (4,2,2,2,2,'é©¬ç‹çˆ·','123456789','324234','','32423','ç»™å¯¹æ–¹','å£«å¤§å¤«ä½†æ˜¯',NULL,1,NULL),(5,2,2,2,1,'çˆ¶äº²','4561515634','324234','','','','','upload/123.jpg',14,NULL),(6,2,2,1,1,'ç”°è€å¸ˆ','123456789','123465789','','','','',NULL,14,NULL),(7,2,2,1,2,'å¼ åŒå­¦','2342352345','2323','','','','',NULL,15,NULL);

/*Table structure for table `finance_account` */

DROP TABLE IF EXISTS `finance_account`;

CREATE TABLE `finance_account` (
  `pk_Account` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `fk_User` int(11) default NULL COMMENT 'ç”¨æˆ·ID',
  `fk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ID',
  `TypeID` int(11) default NULL COMMENT 'ç±»å‹ID',
  `StatusID` int(11) default NULL COMMENT 'çŠ¶æ€ID',
  `AccountName` varchar(30) default NULL COMMENT 'è´¦å·',
  `Owner` varchar(20) default NULL COMMENT 'å¼€æˆ·äºº',
  `Title` varchar(20) default NULL COMMENT 'æ ‡é¢˜',
  `Description` varchar(50) default NULL COMMENT 'æè¿°',
  `ImagePath` varchar(20) default NULL COMMENT 'å›¾ç‰‡åœ°å€',
  `CreateDate` datetime default NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY  (`pk_Account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `finance_account` */

/*Table structure for table `finance_list` */

DROP TABLE IF EXISTS `finance_list`;

CREATE TABLE `finance_list` (
  `pk_Finance` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `fk_User` int(11) default NULL COMMENT 'ç”¨æˆ·ID',
  `fk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ID',
  `fk_Account` int(11) default NULL COMMENT 'è´¦å·ID',
  `TypeID` int(11) default NULL COMMENT 'ç±»å‹ID',
  `StatusID` int(11) default NULL COMMENT 'çŠ¶æ€ID',
  `Title` varchar(20) default NULL COMMENT 'æ ‡é¢˜',
  `Description` varchar(50) default NULL COMMENT 'æè¿°',
  `HandleName` varchar(20) default NULL COMMENT 'ç»æ‰‹äºº',
  `HandleDate` datetime default NULL COMMENT 'ç»æ‰‹æ—¶é—´',
  `Amount` double default NULL COMMENT 'é‡‘é¢',
  PRIMARY KEY  (`pk_Finance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `finance_list` */

/*Table structure for table `group_list` */

DROP TABLE IF EXISTS `group_list`;

CREATE TABLE `group_list` (
  `pk_group` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢åˆ—ID',
  `fk_user` int(11) default NULL COMMENT 'åˆ›å»ºäººID',
  `creatTime` date default NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `headUrl` varchar(20) default NULL COMMENT 'ç¾¤å¤´åƒ',
  `groupName` varchar(20) default NULL COMMENT 'ç¾¤åç§°',
  `conmment` varchar(50) default NULL COMMENT 'ç®€ä»‹',
  PRIMARY KEY  (`pk_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `group_list` */

insert  into `group_list`(`pk_group`,`fk_user`,`creatTime`,`headUrl`,`groupName`,`conmment`) values (1,2,'2019-05-25','1.jpg','æ€»ç»åŠç®¡ç†ç¾¤','æ€»ç»ç†åŠå…¬å®¤ä¸“ç”¨ç¾¤'),(2,2,'2019-05-25','2.jpg','ç®¡ç†å‘˜ç¾¤','å“ˆå“ˆå“ˆå“ˆå“ˆå“ˆå“ˆ');

/*Table structure for table `groupuser_list` */

DROP TABLE IF EXISTS `groupuser_list`;

CREATE TABLE `groupuser_list` (
  `pk_groupuser` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢',
  `fk_user` int(11) default NULL COMMENT 'ç”¨æˆ·ID',
  `fk_group` int(11) default NULL COMMENT 'ç¾¤ID',
  `jointime` date default NULL COMMENT 'åŠ å…¥æ—¶é—´',
  PRIMARY KEY  (`pk_groupuser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `groupuser_list` */

insert  into `groupuser_list`(`pk_groupuser`,`fk_user`,`fk_group`,`jointime`) values (1,2,1,'2019-05-25'),(2,2,2,'2019-05-25'),(3,1,1,'2019-05-26'),(4,3,2,'2019-05-26');

/*Table structure for table `mail_list` */

DROP TABLE IF EXISTS `mail_list`;

CREATE TABLE `mail_list` (
  `pk_Mail` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `fk_Account` int(11) default NULL COMMENT 'è´¦å·ID',
  `fk_User` int(11) default NULL COMMENT 'ç”¨æˆ·ID',
  `fk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ID',
  `TypeID` int(11) default NULL COMMENT 'ç±»å‹ID',
  `StatusID` int(11) default NULL COMMENT 'çŠ¶æ€ID',
  `MailType` int(11) default NULL COMMENT 'é‚®ä»¶ç±»å‹ï¼ˆ0-æ”¶ä»¶ç®± 1-å‘ä»¶ç®± 2-è‰ç¨¿ç®± 3-åƒåœ¾ç®± 4-å›æ”¶ç«™ï¼‰',
  `MailFrom` varchar(20) default NULL COMMENT 'å‘ä»¶äºº',
  `MailTo` varchar(20) default NULL COMMENT 'æ”¶ä»¶äºº',
  `Subject` varchar(20) default NULL COMMENT 'ä¸»é¢˜',
  `Body` text COMMENT 'ä¸»ä½“å†…å®¹',
  `IsSent` int(11) default NULL COMMENT 'æ˜¯å¦å·²é€',
  `SentDate` datetime default NULL COMMENT 'å‘é€æ—¶é—´',
  `IsAttachment` int(11) default NULL COMMENT 'æ˜¯å¦æœ‰é™„ä»¶',
  `AttachmentList` varchar(20) default NULL COMMENT 'é™„ä»¶åœ°å€',
  `IsRead` int(11) default NULL COMMENT 'æ˜¯å¦å·²è¯»',
  `ReadDate` datetime default NULL COMMENT 'è¯»å–æ—¶é—´',
  `Priority` int(11) default NULL COMMENT 'ä¼˜å…ˆçº§åˆ«',
  `IsReply` int(11) default NULL COMMENT 'æ˜¯å¦å›å¤',
  `ReplyDate` datetime default NULL COMMENT 'å›å¤æ—¶é—´',
  PRIMARY KEY  (`pk_Mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mail_list` */

/*Table structure for table `memo_list` */

DROP TABLE IF EXISTS `memo_list`;

CREATE TABLE `memo_list` (
  `pk_Memo` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `fk_User` int(11) default NULL COMMENT 'ç”¨æˆ·ID',
  `TypeID` int(11) default NULL COMMENT 'ç±»å‹ID',
  `StatusID` int(11) default NULL COMMENT 'çŠ¶æ€ID',
  `Title` varchar(20) default NULL COMMENT 'æ ‡é¢˜',
  `Description` text COMMENT 'æè¿°',
  `ImagePath` varchar(20) default NULL COMMENT 'å›¾ç‰‡åœ°å€',
  `FilePath` varchar(20) default NULL COMMENT 'é™„ä»¶åœ°å€',
  `IsStar` int(11) default NULL COMMENT 'æ˜¯å¦æ˜Ÿæ ‡',
  `Tags` varchar(20) default NULL COMMENT 'æ ‡ç­¾',
  `CreateDate` datetime default NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY  (`pk_Memo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `memo_list` */

/*Table structure for table `notice_list` */

DROP TABLE IF EXISTS `notice_list`;

CREATE TABLE `notice_list` (
  `pk_Notice` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `fk_User` int(11) default NULL COMMENT 'ç”¨æˆ·ID\r\n',
  `fk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ID',
  `TypeID` int(11) default NULL COMMENT 'ç±»å‹ID',
  `StatusID` int(11) default NULL COMMENT 'çŠ¶æ€ID',
  `Title` varchar(20) default NULL COMMENT 'æ ‡é¢˜',
  `Description` text COMMENT 'æè¿°',
  `ImagePath` varchar(20) default NULL COMMENT 'å›¾ç‰‡åœ°å€',
  `FilePath` varchar(20) default NULL COMMENT 'é™„ä»¶åœ°å€',
  `UserList` varchar(20) default NULL COMMENT 'ç›¸å…³ç”¨æˆ·',
  `DepartmentList` varchar(20) default NULL COMMENT 'ç›¸å…³éƒ¨é—¨',
  `RoleList` varchar(20) default NULL COMMENT 'ç›¸å…³æƒé™',
  `Url` varchar(20) default NULL COMMENT 'é“¾æ¥åœ°å€',
  `StartDate` datetime default NULL COMMENT 'å¼€å§‹æ—¶é—´',
  `EndDate` datetime default NULL COMMENT 'ç»“æŸæ—¶é—´',
  `IsTop` int(11) default NULL COMMENT 'æ˜¯å¦ç½®é¡¶',
  `CreateDate` datetime default NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `IsRead` int(11) default NULL COMMENT 'æ˜¯å¦å·²è¯»',
  `ReadDate` datetime default NULL COMMENT 'å·²è¯»æ—¶é—´',
  PRIMARY KEY  (`pk_Notice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notice_list` */

/*Table structure for table `process_list` */

DROP TABLE IF EXISTS `process_list`;

CREATE TABLE `process_list` (
  `pk_process` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `ProcessName` varchar(20) default NULL COMMENT 'æµç¨‹å®šä¹‰åç§°',
  `RoleList` varchar(20) default NULL COMMENT 'ç›¸å…³æƒé™',
  `MattersName` varchar(20) default NULL COMMENT 'äº‹é¡¹åç§°',
  `Visible` int(11) default NULL COMMENT 'æ˜¯å¦æ˜¾ç¤º',
  `CreateDate` datetime default NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY  (`pk_process`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `process_list` */

insert  into `process_list`(`pk_process`,`ProcessName`,`RoleList`,`MattersName`,`Visible`,`CreateDate`) values (1,'å•Šå•Šå•Š','å¥¥æœ¯å¤§å¸ˆ','as',1,'2019-05-31 22:53:00');

/*Table structure for table `role_list` */

DROP TABLE IF EXISTS `role_list`;

CREATE TABLE `role_list` (
  `pk_Role` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `pk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ç¼–å·ID',
  `fk_RoleName` int(11) default NULL COMMENT 'æƒé™åç§°ID',
  `fk_Menu` int(50) default NULL COMMENT 'èœå•ID',
  `role_name` varchar(50) default NULL COMMENT 'æƒé™å­—æ®µ',
  PRIMARY KEY  (`pk_Role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role_list` */

insert  into `role_list`(`pk_Role`,`pk_Department`,`fk_RoleName`,`fk_Menu`,`role_name`) values (1,1000,3,33,'role:add,role:delete,role:query,role:update,'),(11,1000,3,34,'role:add,role:delete,role:update,role:query,'),(12,1000,3,35,'role:query,role:update,role:delete,role:add,'),(13,1000,3,36,'role:add,role:delete,role:update,role:query,'),(14,1001,4,25,'role:query,'),(15,1001,4,24,'role:query,'),(16,1001,4,23,'role:query,role:update,role:delete,role:add,'),(18,1001,4,4,'role:query,'),(24,1001,5,4,'role:query,'),(25,1000,3,14,'role:add,role:delete,role:update,role:query,'),(26,1000,3,15,'role:query,role:update,role:delete,role:add,'),(27,1000,3,10,'role:add,role:delete,role:update,role:query,'),(28,1000,3,11,'role:query,'),(29,1000,3,20,'role:add,role:delete,role:update,role:query,'),(30,1000,3,29,'role:query,'),(31,1000,3,12,'role:add,role:delete,role:update,role:query,'),(32,1000,1,3,'role:query,role:delete,'),(33,1000,1,4,'role:query,'),(34,1000,1,6,'role:add,role:delete,role:update,role:query,'),(35,1000,1,7,'role:query,role:update,role:delete,role:add,'),(36,1000,1,8,'role:query,'),(37,1000,1,10,'role:add,role:delete,role:update,role:query,'),(38,1000,1,11,'role:query,'),(39,1000,1,14,'role:add,role:delete,role:update,role:query,'),(40,1000,1,15,'role:query,role:update,role:delete,role:add,'),(41,1000,1,17,'role:add,role:delete,role:update,role:query,'),(42,1000,1,18,'role:query,role:update,role:delete,role:add,'),(43,1000,1,20,'role:add,role:delete,role:update,role:query,'),(44,1000,1,21,'role:query,'),(45,1000,1,23,'role:query,'),(46,1000,1,25,'role:query,'),(47,1000,1,28,'role:add,role:delete,role:update,role:query,'),(48,1000,1,27,'role:query,role:update,role:delete,role:add,'),(49,1000,1,29,'role:query,'),(50,1000,1,32,'role:add,role:delete,role:update,role:query,'),(51,1000,2,2,'role:query,'),(52,1000,2,3,'role:query,'),(53,1000,2,4,'role:query,'),(54,1000,2,6,'role:add,role:query,'),(55,1000,2,7,'role:query,'),(56,1000,2,8,'role:query,'),(57,1000,2,10,'role:query,role:update,role:delete,role:add,'),(58,1000,2,11,'role:query,'),(59,1000,2,14,'role:query,role:update,role:add,role:delete,'),(60,1000,2,15,'role:add,role:update,role:query,role:delete,'),(61,1000,2,20,'role:add,role:delete,role:update,role:query,'),(62,1000,2,21,'role:query,'),(63,1000,2,18,'role:query,role:add,role:delete,role:update,'),(64,1000,2,17,'role:query,role:update,role:delete,role:add,'),(65,1000,2,28,'role:add,role:delete,role:update,role:query,'),(66,1000,2,27,'role:query,'),(67,1000,2,32,'role:add,role:delete,role:update,role:query,'),(68,1000,2,29,'role:query,'),(69,1000,3,17,'role:query,'),(70,1000,3,18,'role:query,role:update,role:delete,role:add,'),(71,1000,3,21,'role:query,'),(74,1000,3,31,'role:add,role:delete,role:update,role:query,'),(75,1000,3,32,'role:query,'),(90,1000,3,2,'role:query,'),(91,1000,3,8,'role:query,'),(92,1000,3,7,'role:query,'),(93,1000,3,6,'role:query,'),(96,1002,6,10,'role:query,role:update,role:delete,role:add,'),(97,1002,6,11,'role:add,role:delete,role:update,role:query,'),(98,1002,6,14,'role:add,role:delete,role:update,role:query,'),(99,1002,6,15,'role:query,role:update,role:delete,role:add,'),(100,1002,6,17,'role:add,role:delete,role:update,role:query,'),(101,1002,6,18,'role:query,role:update,role:delete,role:add,'),(103,1002,6,20,'role:query,role:update,role:delete,role:add,'),(104,1002,6,29,'role:query,role:update,'),(105,1000,3,27,'role:query,'),(106,1000,3,28,'role:query,'),(107,1002,6,36,'role:query,'),(108,1002,6,2,'role:query,');

/*Table structure for table `role_name` */

DROP TABLE IF EXISTS `role_name`;

CREATE TABLE `role_name` (
  `pk_Name` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `RoleName_CHS` varchar(30) default NULL COMMENT 'ä¸­æ–‡åç§°',
  `RoleName_EN` varchar(30) default NULL COMMENT 'è‹±æ–‡åç§°',
  `pk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ID',
  PRIMARY KEY  (`pk_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role_name` */

insert  into `role_name`(`pk_Name`,`RoleName_CHS`,`RoleName_EN`,`pk_Department`) values (1,'æ€»ç»ç†','CEO',1000),(2,'åŠ©ç†','ASSISTANT',1000),(3,'è¶…çº§ç®¡ç†å‘˜','ADMIN',1000),(4,'ç»ç†','MANAGER',1001),(5,'ä¼šè®¡','ACCOUNTANT',1001),(6,'ç»ç†','MANAGER',1002),(7,'ä¸»ç®¡','DIRECTOR',1002),(8,'æ–‡å‘˜','CLERTK',1002),(9,'ç»ç†',NULL,1003),(10,'æ–‡å‘˜',NULL,1003),(11,'ç»ç†',NULL,1004),(17,'ç»„é•¿',NULL,1004),(18,'æ–‡å‘˜',NULL,1001);

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `pk_Menu` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `ParentID` varchar(20) default NULL COMMENT 'çˆ¶ID',
  `Name_CHS` varchar(20) default NULL COMMENT 'ä¸­æ–‡åç§°',
  `Name_EN` varchar(20) default NULL COMMENT 'è‹±æ–‡åç§°ï¼ˆé¢„ç•™ï¼‰',
  `Url` varchar(20) default NULL COMMENT 'é“¾æ¥åœ°å€',
  `Icon` varchar(20) default NULL COMMENT 'å›¾æ ‡',
  `SortID` int(11) default NULL COMMENT 'æ’åºID',
  `LevelID` int(11) default NULL COMMENT 'å±‚çº§ID',
  PRIMARY KEY  (`pk_Menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`pk_Menu`,`ParentID`,`Name_CHS`,`Name_EN`,`Url`,`Icon`,`SortID`,`LevelID`) values (1,'0','è€ƒå‹¤ç®¡ç†','main',NULL,'fa-calendar',1,1001),(2,'1001','è€ƒå‹¤ç®¡ç†','child','kaoqin_manager','fa-laptop',NULL,NULL),(3,'1001','è€ƒå‹¤å‘¨æŠ¥è¡¨','child','kaoqin_weekchart','fa-laptop',NULL,NULL),(4,'1001','è€ƒå‹¤æœˆæŠ¥è¡¨','child','kaoqin_monthchart','fa-laptop',NULL,NULL),(5,'0','ç”¨æˆ·ç®¡ç†','main',NULL,'fa-users',2,1002),(6,'1002','éƒ¨é—¨ç®¡ç†','child','user_bumen_manager','fa-book',NULL,NULL),(7,'1002','èŒä½ç®¡ç†','child','user_zhiwei_manager','fa-book',NULL,NULL),(8,'1002','ç”¨æˆ·ç®¡ç†','child','user_yonghu_manager','fa-book',NULL,NULL),(9,'0','å…¬å‘Šé€šçŸ¥','main',NULL,'fa-bullhorn',3,1003),(10,'1003','é€šçŸ¥ç®¡ç†','child','gonggao_manager','fa-cogs',NULL,NULL),(11,'1003','é€šçŸ¥åˆ—è¡¨','child','gonggao_list','fa-cogs',NULL,NULL),(13,'0','é‚®ä»¶ç®¡ç†','main',NULL,'fa-envelope',5,1005),(14,'1005','é‚®ä»¶ç®¡ç†','child','mail_mymail','fa-envelope',NULL,NULL),(15,'1005','å‘é€é‚®ä»¶','child','mail_sendmail','fa-envelope',NULL,NULL),(16,'0','ä»»åŠ¡ç®¡ç†','main',NULL,'fa-tasks',6,1006),(17,'1006','ä»»åŠ¡ç®¡ç†','child','task_manager','fa-tasks',NULL,NULL),(18,'1006','æˆ‘çš„ä»»åŠ¡','child','task_mytask','fa-tasks',NULL,NULL),(19,'0','è½¦è¾†ç®¡ç†','main',NULL,'fa-truck',7,1007),(20,'1007','ç”¨è½¦ç®¡ç†','child','car_usemanager','fa-bar-chart-o',NULL,NULL),(21,'1007','è½¦è¾†ç®¡ç†','child','car_manager','fa-bar-chart-o',NULL,NULL),(22,'0','è´¢åŠ¡ç®¡ç†','main',NULL,'fa-money',8,1008),(23,'1008','è´¦å·ç®¡ç†','child','caiwu_numbermanager','fa-th-list',NULL,NULL),(24,'1008','è´¢åŠ¡ç®¡ç†','child','caiwu_manager','fa-th-list',NULL,NULL),(25,'1008','è´¢åŠ¡æŠ¥è¡¨','child','caiwu_chart','fa-th-list',NULL,NULL),(26,'0','æµç¨‹ç®¡ç†','main',NULL,'fa-gavel',9,1009),(27,'1009','æµç¨‹æ±‡æ€»','child','flow_list','fa-th-list',NULL,NULL),(28,'1009','æµç¨‹å®¡æ ¸','child','flow_shenhe','fa-th-list',NULL,NULL),(29,'0','é€šè®¯å½•','main','phone_number','fa-credit-card',10,1010),(30,'0','å·¥ä½œæµ','main',NULL,'fa-tint',11,1011),(31,'1011','æ­¥éª¤ç®¡ç†','child','workflow_manager','fa-file-text',NULL,NULL),(32,'1011','æˆ‘çš„å·¥ä½œ','child','workflow_mywork','fa-file-text',NULL,NULL),(36,'0','æƒé™ç®¡ç†','main','role/role_manager','fa-cogs',15,1015);

/*Table structure for table `sys_statusid` */

DROP TABLE IF EXISTS `sys_statusid`;

CREATE TABLE `sys_statusid` (
  `pk_StatusID` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `StatusName` varchar(20) default NULL COMMENT 'åç§°',
  `ID` int(11) default NULL COMMENT 'ID',
  `Visual` varchar(20) default NULL COMMENT 'æ˜¾ç¤ºé¢œè‰²',
  `TableName` varchar(20) default NULL COMMENT 'è¡¨å',
  `Description` varchar(50) default NULL COMMENT 'æè¿°',
  PRIMARY KEY  (`pk_StatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_statusid` */

/*Table structure for table `sys_typeid` */

DROP TABLE IF EXISTS `sys_typeid`;

CREATE TABLE `sys_typeid` (
  `pk_TypeID` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `TypeName` varchar(20) default NULL COMMENT 'åç§°',
  `ID` int(11) default NULL COMMENT 'ID',
  `Visual` varchar(20) default NULL COMMENT 'æ˜¾ç¤ºé¢œè‰²',
  `TableName` varchar(20) default NULL COMMENT 'è¡¨å',
  `Description` varchar(50) default NULL COMMENT 'æè¿°',
  PRIMARY KEY  (`pk_TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_typeid` */

/*Table structure for table `talk_list` */

DROP TABLE IF EXISTS `talk_list`;

CREATE TABLE `talk_list` (
  `pk_talk` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `talk_frominfo` varchar(100) default NULL COMMENT 'æ¶ˆæ¯æ¥æºä¿¡æ¯',
  `talk_to` varchar(20) default NULL COMMENT 'æ¶ˆæ¯ç›®æ ‡',
  `talk_content` text COMMENT 'æ¶ˆæ¯å†…å®¹',
  `talk_time` date default NULL COMMENT 'å‘é€æ—¶é—´',
  `talk_from` varchar(20) default NULL COMMENT 'æ¶ˆæ¯æ¥æº',
  `talk_code` int(11) default NULL COMMENT 'è¯»å–çŠ¶æ€',
  PRIMARY KEY  (`pk_talk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `talk_list` */

insert  into `talk_list`(`pk_talk`,`talk_frominfo`,`talk_to`,`talk_content`,`talk_time`,`talk_from`,`talk_code`) values (1,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','é˜¿è¯—ä¸¹é¡¿','2019-05-31','2',0),(2,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','æ˜¯çš„çš„vä»','2019-05-31','2',0),(3,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','åˆ é™¤','2019-05-31','2',0),(4,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','å“ˆå“ˆå“ˆ','2019-05-31','2',0),(5,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','å¥½å¥½','2019-05-31','2',0),(6,'{\"headimg\":\"5.jpg\",\"isgroup\":\"ç®¡ç†å‘˜ç¾¤group2\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group2','çœŸçš„å‘€','2019-05-31','2',0),(7,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','é˜¿è¨å¾·','2019-05-31','2',0),(8,'{\"headimg\":\"5.jpg\",\"isgroup\":\"ç®¡ç†å‘˜ç¾¤group2\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group2','sad','2019-05-31','2',0),(9,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','adæ·±V','2019-05-31','2',0),(10,'{\"headimg\":\"5.jpg\",\"isgroup\":\"ç®¡ç†å‘˜ç¾¤group2\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group2','å•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Š','2019-05-31','2',0),(11,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨è¡¨v           ','2019-05-31','2',0),(12,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','xcc','2019-05-31','1',0),(13,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','æ‰','2019-05-31','2',0),(14,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','æ˜¯å¤§V','2019-05-31','2',0),(15,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','dfdgf ','2019-05-31','1',0),(16,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','æ’’åœ°æ–¹è§„åˆ’','2019-05-31','2',0),(17,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','ZXcvb','2019-05-31','1',0),(18,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','qwef ','2019-05-31','1',0),(19,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','asdfgbaaaaaaaaaaaaaa','2019-05-31','1',0),(20,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','æ’’åœ°æ–¹ä¸ª','2019-05-31','2',0),(21,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','sadf ','2019-05-31','1',0),(22,'{\"headimg\":\"5.jpg\",\"isgroup\":\"ç®¡ç†å‘˜ç¾¤group2\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group2','aaaaaaå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Š','2019-05-31','2',0),(23,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','å•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Š','2019-05-31','1',0),(24,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','å•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Š','2019-05-31','1',0),(25,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','å•Šå•Šå•Šå•Šå•Šå•Šå•Š','2019-05-31','1',0),(26,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','å“’å“’å“’å“’å“’','2019-05-31','1',0),(27,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','å¤§å¸ˆå‚…','2019-05-31','1',0),(28,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','åœ¨ä¸åœ¨','2019-05-31','1',0),(29,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','é˜¿è¨å¾·','2019-05-31','1',0),(30,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','å’‹çš„','2019-05-31','2',0),(31,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','åœ°æ–¹','2019-05-31','1',0),(32,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','å•¥','2019-05-31','2',0),(33,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','æ–¯è’‚èŠ¬','2019-05-31','1',0),(34,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','æ’’åœ°æ–¹ä¸ª','2019-05-31','2',0),(35,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','æˆ‘äºŒå“¥','2019-05-31','2',0),(36,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','æ’’åœ°æ–¹ä¸ª','2019-05-31','2',0),(37,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','asdf','2019-05-31','1',0),(38,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','æ’’æ—¦æ³•','2019-05-31','1',0),(39,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','é˜¿æ–¯é¡¿æ³•å›½','2019-05-31','1',0),(40,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','æ’’æ—¦æ³•','2019-05-31','2',0),(41,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','é˜¿è¨å¾·','2019-05-31','2',0),(42,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','é—®é—®','2019-05-31','1',0),(43,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','asdf','2019-05-31','1',0),(44,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','å±±ä¸œ','2019-05-31','1',0),(45,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','è¨é¡¶é¡¶','2019-05-31','1',0),(46,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','å¤§å¸ˆå‚…','2019-05-31','1',0),(47,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','é˜¿æ’’çš„vä»','2019-05-31','1',0),(48,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','asdf','2019-05-31','1',0),(49,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','æ€å¤šå°‘æ¬¡','2019-05-31','2',0),(50,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','å•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Šå•Š','2019-05-31','2',0),(51,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','æ’’åœ°æ–¹v','2019-05-31','1',0),(52,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','åœ°æ–¹VB','2019-05-31','1',0),(53,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','é˜¿æ–¯é¡¿æ³•å›½','2019-05-31','2',0),(54,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','æ˜¯çš„åè…è´¥','2019-05-31','2',0),(55,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','æ²™åœ°æŸ','2019-05-31','1',0),(56,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','é˜¿æ–¯é¡¿æ³•å›½','2019-05-31','2',0),(57,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','asdf','2019-05-31','1',0),(58,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','æ²™åœ°æŸv','2019-05-31','1',0),(59,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','DVB','2019-05-31','2',0),(60,'{\"headimg\":\"5.jpg\",\"isgroup\":\"ç®¡ç†å‘˜ç¾¤group2\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group2','é˜¿æ–¯é¡¿æ³•å›½','2019-05-31','2',0),(61,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','é˜¿æ–¯é¡¿æ³•å›½æ··','2019-05-31','2',0),(62,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','æ’’æ—¦æ³•','2019-05-31','1',0),(63,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','æ’’åœ°æ–¹ä¸ª','2019-05-31','1',0),(64,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','æ–¯è’‚èŠ¬è§„åˆ’å±€','2019-05-31','2',0),(65,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å®‹æ±Ÿ3\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','3','æ–¯è’‚èŠ¬','2019-06-01','2',0),(66,'{\"headimg\":\"4.jpg\",\"isgroup\":\"ç®¡ç†å‘˜ç¾¤group2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group2','ç¬¬ä¸‰æ–¹','2019-06-01','1',0),(67,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','æ’’å¤§å£°åœ°','2019-06-01','2',0),(68,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','è®¢é¤','2019-06-01','1',0),(69,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','æ’’åœ°æ–¹çš„ ','2019-06-01','1',0),(70,'{\"headimg\":\"4.jpg\",\"isgroup\":\"å®‹æ±Ÿ3\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','3','æ˜¯çš„VBä½ ','2019-06-01','1',0),(71,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1',' æ°´ç”µè´¹åŠŸå¤«','2019-06-01','2',0),(72,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','å•Š','2019-06-01','2',0),(73,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','å¥¥æœ¯å¤§å¸ˆ','2019-06-01','1',0),(74,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','é˜¿æ‰“ç®—åƒ','2019-06-01','2',0),(75,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','çˆ±ä¸Šå¤§åŸå¸‚','2019-06-01','1',0),(76,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','ç¬¬ä¸‰æ¬¡è®¸æ˜Œ','2019-06-01','2',0),(77,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','æŒç»­åƒ','2019-06-01','1',0),(78,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','é˜¿æ˜¯å¤§V','2019-06-01','1',0),(79,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','adæ·±V','2019-06-01','2',0),(80,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','å•¥çš„å‰¯æœ¬äº‘','2019-06-01','1',0),(81,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','æ’’è±†æˆå…µv','2019-06-01','2',0),(82,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','AVåˆæ­¥v','2019-06-01','1',0),(83,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','é˜¿è¨å¾·','2019-06-01','1',0),(84,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','ç¬¬ä¸‰æ–¹','2019-06-01','2',0),(85,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','æ‰ ','2019-06-01','1',0),(86,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','é˜¿æ˜¯å¤§V','2019-06-01','1',0),(87,'{\"headimg\":\"5.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','group1','åˆ é™¤VC','2019-06-01','2',0),(88,'{\"headimg\":\"4.jpg\",\"isgroup\":\"æ€»ç»åŠç®¡ç†ç¾¤group1\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','group1','è®¸æ˜Œ','2019-06-01','1',0),(89,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','adå¸‚åœºéƒ¨','2019-06-01','1',0),(90,'{\"headimg\":\"4.jpg\",\"isgroup\":\"é™ˆç£Š2\",\"userName\":\"å¼ ä¸‰\",\"pk_user\":1}','2','ç¨‹åº','2019-06-01','1',0),(91,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','ç¨‹åº','2019-06-01','2',0),(92,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','æ˜¯æŒç»­','2019-06-01','2',0),(93,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','å¾æ‰ä¸èƒ½','2019-06-01','2',0),(94,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','æ˜¯æŒç»­','2019-06-01','2',0),(95,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','æ’’æ—¦æ³•','2019-06-01','2',0),(96,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','å¨å¤šç¦','2019-06-01','2',0),(97,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','è™šè¯ ','2019-06-01','2',0),(98,'{\"headimg\":\"5.jpg\",\"isgroup\":\"å¼ ä¸‰1\",\"userName\":\"é™ˆç£Š\",\"pk_user\":2}','1','ä¸»ç¨‹åº','2019-06-01','2',0);

/*Table structure for table `task_feedback` */

DROP TABLE IF EXISTS `task_feedback`;

CREATE TABLE `task_feedback` (
  `id` int(11) NOT NULL COMMENT 'ç¼–å·',
  `fe_list` varchar(200) default NULL COMMENT 'åé¦ˆ',
  `fe_type` varchar(200) default NULL COMMENT 'çŠ¶æ€'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task_feedback` */

insert  into `task_feedback`(`id`,`fe_list`,`fe_type`) values (10,'æˆ‘å·²ç»æ¥å—äº†','é™ˆç£ŠTue May 28 06:34:52 CST 2019å°†çŠ¶æ€æ”¹ä¸ºæ–°å·²æ¥æ”¶'),(10,'æˆ‘å»','é™ˆç£ŠTue May 28 06:46:52 CST 2019å°†çŠ¶æ€æ”¹ä¸ºæ–°å·²æ¥æ”¶'),(10,'å¿«å¼„å¥½äº†','é™ˆç£ŠTue May 28 06:47:56 CST 2019å°†çŠ¶æ€æ”¹ä¸ºè¿›è¡Œä¸­'),(10,'å·²ç»å¼„å®Œäº†','é™ˆç£ŠTue May 28 06:48:18 CST 2019å°†çŠ¶æ€æ”¹ä¸ºå·²å®Œæˆ'),(10,'','é™ˆç£ŠTue May 28 12:33:49 CST 2019å°†çŠ¶æ€æ”¹ä¸ºå·²å®Œæˆ'),(10,'','é™ˆç£ŠFri May 31 02:28:16 CST 2019å°†çŠ¶æ€æ”¹ä¸ºå·²å®Œæˆ');

/*Table structure for table `task_list` */

DROP TABLE IF EXISTS `task_list`;

CREATE TABLE `task_list` (
  `pk_Task` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `fk_User` int(11) default NULL COMMENT 'ç”¨æˆ·ID',
  `fk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ID',
  `TypeID` int(11) default NULL COMMENT 'ç±»å‹ID',
  `StatusID` int(11) default NULL COMMENT 'çŠ¶æ€ID',
  `Title` varchar(20) default NULL COMMENT 'æ ‡é¢˜',
  `Description` text COMMENT 'æè¿°',
  `ImagePath` varchar(20) default NULL COMMENT 'å›¾ç‰‡åœ°å€',
  `FilePath` varchar(200) default NULL COMMENT 'é™„ä»¶åœ°å€',
  `UserList` varchar(20) default NULL COMMENT 'ç›¸å…³ç”¨æˆ·',
  `DepartmentList` varchar(20) default NULL COMMENT 'ç›¸å…³éƒ¨é—¨',
  `RoleList` varchar(20) default NULL COMMENT 'ç›¸å…³æƒé™',
  `Url` varchar(20) default NULL COMMENT 'é“¾æ¥åœ°å€',
  `StartDate` datetime default NULL COMMENT 'å¼€å§‹æ—¶é—´',
  `EndDate` datetime default NULL COMMENT 'ç»“æŸæ—¶é—´',
  `IsComplete` int(11) default NULL COMMENT 'æ˜¯å¦å®Œæˆ',
  `CompleteDate` datetime default NULL COMMENT 'å®Œæˆæ—¶é—´',
  `IsCancel` int(11) default NULL COMMENT 'æ˜¯å¦å–æ¶ˆ',
  `CancelDate` datetime default NULL COMMENT 'å–æ¶ˆæ—¶é—´',
  `IsTop` int(11) default NULL COMMENT 'æ˜¯å¦ç½®é¡¶',
  `IsDistribution` int(11) default NULL COMMENT 'æ˜¯å¦åˆ†é…',
  `Feedback_id` int(11) default NULL COMMENT 'åé¦ˆä¿¡æ¯ç¼–å·',
  `task_schedule` varchar(20) default NULL COMMENT 'ä»»åŠ¡è¿›åº¦',
  PRIMARY KEY  (`pk_Task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task_list` */

insert  into `task_list`(`pk_Task`,`fk_User`,`fk_Department`,`TypeID`,`StatusID`,`Title`,`Description`,`ImagePath`,`FilePath`,`UserList`,`DepartmentList`,`RoleList`,`Url`,`StartDate`,`EndDate`,`IsComplete`,`CompleteDate`,`IsCancel`,`CancelDate`,`IsTop`,`IsDistribution`,`Feedback_id`,`task_schedule`) values (10,2,1000,1,4,'æ”¹å¥½å‘ç»™','å›å®¶çœ‹äº†',NULL,'D:\\AO\\OA_Project\\target\\OA_Project\\upload/timg.jpg','å¼ ä¸‰,é™ˆç£Š,','nullæ€»ç»åŠæ€»ç»åŠ',NULL,NULL,'2019-05-19 00:00:00','2019-06-01 00:00:00',NULL,NULL,0,NULL,1,1,NULL,'100%'),(11,1,1000,2,1,'å¥¥æœ¯å¤§å¸ˆ','é˜¿è¨å¾·æ˜¯çš„VB',NULL,'upload/1473732823152.jpeg','å¼ ä¸‰,','nullæ€»ç»åŠ',NULL,NULL,'2019-04-28 00:00:00','2019-06-01 00:00:00',NULL,NULL,0,NULL,0,1,NULL,'0%');

/*Table structure for table `task_receiver` */

DROP TABLE IF EXISTS `task_receiver`;

CREATE TABLE `task_receiver` (
  `pk_Receiver` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `fk_Task` int(11) default NULL COMMENT 'ä»»åŠ¡ID',
  `fk_User` int(11) default NULL COMMENT 'ç”¨æˆ·ID',
  `fk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ID',
  `IsRead` int(11) default NULL COMMENT 'æ˜¯å¦å·²è¯»',
  `ReadDate` datetime default NULL COMMENT 'è¯»å–æ—¶é—´',
  `IsReceive` int(11) default NULL COMMENT 'æ˜¯å¦æ¥æ”¶',
  `ReceiveDate` datetime default NULL COMMENT 'æ¥æ”¶æ—¶é—´',
  `StatusID` int(11) default NULL COMMENT 'çŠ¶æ€ID',
  PRIMARY KEY  (`pk_Receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task_receiver` */

insert  into `task_receiver`(`pk_Receiver`,`fk_Task`,`fk_User`,`fk_Department`,`IsRead`,`ReadDate`,`IsReceive`,`ReceiveDate`,`StatusID`) values (11,10,1,1000,0,NULL,0,NULL,4),(12,10,2,1000,0,NULL,0,NULL,4),(13,11,1,1000,0,NULL,0,NULL,1);

/*Table structure for table `user_department` */

DROP TABLE IF EXISTS `user_department`;

CREATE TABLE `user_department` (
  `pk_Department` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `DepartmentName` varchar(20) default NULL COMMENT 'éƒ¨é—¨åç§°',
  `Phone` varchar(11) default NULL COMMENT 'ç”µè¯',
  `Email` varchar(30) default NULL COMMENT 'é‚®ä»¶',
  `Address` varchar(20) default NULL COMMENT 'åœ°å€',
  `ParentID` int(11) default NULL COMMENT 'çˆ¶ID',
  `TypeID` int(11) default NULL COMMENT 'ç±»å‹ID',
  `Manager` int(11) default NULL COMMENT 'éƒ¨é—¨ç»ç†',
  `LevelID` int(11) default NULL COMMENT 'å±‚çº§ID',
  `CreateDate` datetime default NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  `Monday` datetime default NULL COMMENT 'å‘¨ä¸€è€ƒå‹¤æ—¶é—´',
  `Tuesday` datetime default NULL COMMENT 'å‘¨äºŒè€ƒå‹¤æ—¶é—´',
  `Wednesday` datetime default NULL COMMENT 'å‘¨ä¸‰è€ƒå‹¤æ—¶é—´',
  `Thursday` datetime default NULL COMMENT 'å‘¨å››è€ƒå‹¤æ—¶é—´',
  `Friday` datetime default NULL COMMENT 'å‘¨äº”è€ƒå‹¤æ—¶é—´',
  `Saturday` datetime default NULL COMMENT 'å‘¨å…­è€ƒå‹¤æ—¶é—´',
  `Sunday` datetime default NULL COMMENT 'å‘¨æ—¥è€ƒå‹¤æ—¶é—´',
  `headUrl` varchar(20) default NULL COMMENT 'éƒ¨é—¨å¤´åƒåœ°å€',
  PRIMARY KEY  (`pk_Department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_department` */

insert  into `user_department`(`pk_Department`,`DepartmentName`,`Phone`,`Email`,`Address`,`ParentID`,`TypeID`,`Manager`,`LevelID`,`CreateDate`,`Monday`,`Tuesday`,`Wednesday`,`Thursday`,`Friday`,`Saturday`,`Sunday`,`headUrl`) values (1000,'æ€»ç»åŠ','0712-666666',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.jpg'),(1001,'è´¢åŠ¡éƒ¨','0712-666999',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.jpg'),(1002,'è¡Œæ”¿éƒ¨','0712-666888',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.jpg'),(1003,'äººåŠ›èµ„æºéƒ¨','0712-666777',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.jpg'),(1004,'é”€å”®éƒ¨','0712-666222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.jpg'),(1005,'å¸‚åœºéƒ¨','0712-666111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6.jpg'),(1006,'è¥é”€éƒ¨','0712-666555',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'7.jpg');

/*Table structure for table `user_list` */

DROP TABLE IF EXISTS `user_list`;

CREATE TABLE `user_list` (
  `pk_user` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢id',
  `userName` varchar(20) default NULL COMMENT 'ç”¨æˆ·å',
  `password` varchar(50) default NULL COMMENT 'å¯†ç ',
  `typeId` int(11) default NULL COMMENT 'ç±»å‹id',
  `fk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ID',
  `RoleValue` int(11) default NULL COMMENT 'æƒé™ID',
  `RoleList` varchar(30) default NULL COMMENT 'ç›¸å…³æƒé™',
  `Position` int(11) default NULL COMMENT 'èŒä½ID',
  `Number` varchar(20) default NULL COMMENT 'å‘˜å·¥å·',
  `IsLock` int(11) default NULL COMMENT 'æ˜¯å¦é”å®š',
  `LastLoginTime` datetime default NULL COMMENT 'æœ€åç™»å½•æ—¶é—´',
  `FullName` varchar(11) default NULL COMMENT 'çœŸå®å§“å',
  `Phone` varchar(20) default NULL COMMENT 'ç”µè¯',
  `Email` varchar(20) default NULL COMMENT 'é‚®ä»¶',
  `Wechat` varchar(20) default NULL COMMENT 'å¾®ä¿¡',
  `QQ` varchar(15) default NULL COMMENT 'QQ',
  `ZipCode` varchar(10) default NULL COMMENT 'é‚®ç¼–',
  `Place` varchar(20) default NULL COMMENT 'æ‰€åœ¨åŸå¸‚',
  `Address` varchar(30) default NULL COMMENT 'å®¶åº­åœ°å€',
  `Sex` int(11) default NULL COMMENT 'æ€§åˆ«ï¼ˆ0-ç”· 1-å¥³ï¼‰',
  `Height` int(11) default NULL COMMENT 'èº«é«˜',
  `Weight` int(11) default NULL COMMENT 'ä½“é‡',
  `Birthday` datetime default NULL COMMENT 'ç”Ÿæ—¥',
  `Education` varchar(20) default NULL COMMENT 'æ•™è‚²ç¨‹åº¦',
  `School` varchar(20) default NULL COMMENT 'æ¯•ä¸šé™¢æ ¡',
  `ImagePath1` varchar(20) default NULL COMMENT 'å›¾ç‰‡',
  `IDCardPath` varchar(20) default NULL COMMENT 'èº«ä»½è¯å›¾ç‰‡',
  `ResumePath` varchar(20) default NULL COMMENT 'ç®€å†æ–‡æ¡£',
  `Wages` bigint(20) default NULL COMMENT 'å·¥èµ„',
  `BankAccount` varchar(20) default NULL COMMENT 'é“¶è¡Œè´¦æˆ·',
  `IDNumber` varchar(20) default NULL COMMENT 'èº«ä»½è¯å·',
  `Remark` varchar(30) default NULL COMMENT 'å¤‡æ³¨',
  `EntryTime` datetime default NULL COMMENT 'å…¥èŒæ—¶é—´',
  `IsQuit` int(11) default NULL COMMENT 'æ˜¯å¦ç¦»èŒ',
  `QuitTime` datetime default NULL COMMENT 'ç¦»èŒæ—¶é—´',
  PRIMARY KEY  (`pk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_list` */

insert  into `user_list`(`pk_user`,`userName`,`password`,`typeId`,`fk_Department`,`RoleValue`,`RoleList`,`Position`,`Number`,`IsLock`,`LastLoginTime`,`FullName`,`Phone`,`Email`,`Wechat`,`QQ`,`ZipCode`,`Place`,`Address`,`Sex`,`Height`,`Weight`,`Birthday`,`Education`,`School`,`ImagePath1`,`IDCardPath`,`ResumePath`,`Wages`,`BankAccount`,`IDNumber`,`Remark`,`EntryTime`,`IsQuit`,`QuitTime`) values (1,'å¼ ä¸‰','ab3f511502b1ca973d4e5dddf3bfbf77',NULL,1000,1,NULL,NULL,'10000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'4.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'é™ˆç£Š','ab3f511502b1ca973d4e5dddf3bfbf77',NULL,1000,3,NULL,NULL,'10001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'5.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'å®‹æ±Ÿ','ab3f511502b1ca973d4e5dddf3bfbf77',NULL,1002,6,NULL,NULL,'10002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'6.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `user_position` */

DROP TABLE IF EXISTS `user_position`;

CREATE TABLE `user_position` (
  `pk_Position` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `PositionName` varchar(20) default NULL COMMENT 'èŒä½åç§°',
  `ParentID` int(11) default NULL COMMENT 'çˆ¶ID',
  `LevelID` int(11) default NULL COMMENT 'å±‚çº§ID',
  `CreateDate` datetime default NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY  (`pk_Position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_position` */

/*Table structure for table `workflow_list` */

DROP TABLE IF EXISTS `workflow_list`;

CREATE TABLE `workflow_list` (
  `pk_Workflow` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `fk_User` int(11) default NULL COMMENT 'ç”¨æˆ·ID',
  `fk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ID',
  `fk_process` int(11) default NULL COMMENT 'æµç¨‹å®šä¹‰ID',
  `TypeID` int(11) default NULL COMMENT 'ç±»å‹ID',
  `StatusID` int(11) default NULL COMMENT 'çŠ¶æ€ID',
  `CurrentStepID` varchar(20) default NULL COMMENT 'å½“å‰æ­¥éª¤',
  `NextStepID` varchar(20) default NULL COMMENT 'ä¸‹ä¸€æ­¥éª¤',
  `Number` varchar(50) default NULL COMMENT 'æµæ°´ç¼–å·',
  `Title` varchar(20) default NULL COMMENT 'æ ‡é¢˜',
  `Description` varchar(50) default NULL COMMENT 'æè¿°',
  `StartDate` datetime default NULL COMMENT 'å¼€å§‹æ—¶é—´',
  `EndDate` datetime default NULL COMMENT 'ç»“æŸæ—¶é—´',
  `CreateDate` datetime default NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY  (`pk_Workflow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `workflow_list` */

/*Table structure for table `workflow_receiver` */

DROP TABLE IF EXISTS `workflow_receiver`;

CREATE TABLE `workflow_receiver` (
  `pk_Receiver` int(11) NOT NULL auto_increment COMMENT 'è‡ªå¢ID',
  `fk_Workflow` int(11) default NULL COMMENT 'å·¥ä½œæµID',
  `fk_process` int(11) default NULL COMMENT 'æµç¨‹å®šä¹‰ID',
  `fk_User` int(11) default NULL COMMENT 'ç”¨æˆ·ID',
  `fk_Department` int(11) default NULL COMMENT 'éƒ¨é—¨ID',
  `IsCheck` int(11) default NULL COMMENT 'æ˜¯å¦å®¡æ ¸',
  `CheckDate` datetime default NULL COMMENT 'å®¡æ ¸æ—¶é—´',
  `Note` varchar(50) default NULL COMMENT 'å®¡æ‰¹æ„è§',
  `CreateDate` datetime default NULL COMMENT 'åˆ›å»ºæ—¶é—´',
  PRIMARY KEY  (`pk_Receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `workflow_receiver` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
