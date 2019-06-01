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

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('506',1,'MyProcess.png','505','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0f\0\00\0\0\0K,�t\0\04dIDATx���l�wa?po����k�ġ��h�q�\"Ѥ-N�5F\Z�Ҫ���I��U�ft�f�4X4�*l�YL�P�%\n�چy]Z�6M҆��Ѓ4�m�����8v�|��}�g�{Ώ~��륷��~<�?���|���9w%\0\0\04�z\0\0\0\0�Ke\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe\0\0hJe2�\\.����z뭃���?500��366V*�B\0hk*�YiSJ�Q.�K�RZ�v���]߭�o�3�����Pww����GGGC\0hS*�A������O�RZ���ͯ���?�y����MNN�8\0�vT& kFFF��s��fY�Ϟ��nذa˖-�r9�\0\0mDe�#m;CCC��ë*K����o���	}*\0@�P���H��������λ/�~O/=N�X}B\0@[P���\Z\Z��T�%��5�\r=\0 Q��l����[��;�}Z\0@x*��������w�R5��Ƕo���\0��T&��}i��{/ze:��w�3���\0 r*�����/z_����l۶m�O\0Ie:[�j�Ӫ�h���	}�\0@H*��J�Rww�%�Kլ[�njj*�\0��L@-\n��2ݶu���p�\0�Q���e˖�۷_��t������>Q\0 �	�`w}�;��2=}��;ߙ}�\0@0*��.�ǋ������\\.�\0��L@���9��KZ��tu��\0��:\0�`����?xPe\0.�@�����e\0�	�h�B�w�qI+���X�n]�\0�Q���m۶�o��KZ��J�y��>Q\0 �	�`�b1��_�ʴiӦ����\'\n\0�2��~��\'�����r�\0�Q���vI7�_�bz�Ч\0��2��\\.���K�י��8��w�gffB�\"\0��t����o��[L\0���2Y����Νw^ľ���׮]{����g\0�2YP*�֭[w�>���Ҿ���C�O\0Oe2bzz:mMiϹ�����]��N�\0ڂ�d����׮]���.����ޥ/\05*�)�RiÆ\r���g��xlUe����_������$\0�6�2YS.���t�U�iJ�P+}�wܑ>���,-Z��\0��	Ȧ���[n������?���yxoCMJ�ٱ��n���9�7�Q�X=d\0��L@�������B��v�ڮWK�I����X�T\n=L\0�}�L@\\���7�\0�֩L@\\T&\0`UT& .*\0�**�������У\0\0:���Ee\0VEe�2\0��2q\Z\Z\Z=\n\0�c�L@\\\n����h�Q\0\0Ce�2\0��2q��[�m�z\0@�P����Zz\0@�P����L\0���L@\\FFF���C�\0�*����B�z\0@�P����L\0���L@\\T&\0`UT& .�������G\0t�	���\0����Ee\0VEe�2==���z\0@�P�����|>z\0@�P����L\0���L@\\J�Rwww�Q\0\0Ce����>\0�U���L\0@�\\7\0���r�r9�(\0�Π2�����b1�(\0�Π2�Q�\0�֩L@tT&\0�u*�������У\0\0:��DGe\0Z�2�Q�\0�֩L@t������B�\0�*�B�0::\Zz\0@gP���L\0@�T& :��r˶m�B�\0�*�[+B�\0�*�	\0h��Dgdddxx8�(\0�Π2�-\n�G\0t�	���\0�Ne��2\0�S��(���uuu�r�����k�^q���+��rzz:��\0���2Q��7�ٵ�ƍ���C\r\0hk*�r���7���/]}��===�R)��\0���2����?}�e��*��?�q5\0�&�	�Ț5k�}��~����|�\\=\"\0�ݩL@D���/��-oy˛��&��	\0h�����{��ޗ��\0:���eff&��wu��\0h�� F*\0�\"\r��p���\r\r\r���W߁�ӥ?���9888::���B�L������:�K;v�w׮�:;7\'�����4w�ܹy������\r\0:���*�J�BaӦM��=|v�d5G_<���=33z�@�Q� Ri_�����_9;7+1�oߵnݺb�z�@�Q� R�B�җ�H<�w�=6�N�\0Fe�MLLl�t��|Yb�\'?�[�~>��N�2At��r>��Hqn��Ė\'_^��������\0:���-\ns�j�8�{-~tu�^ҡٺ�s��á�!\0t�	�388����]@o�~ӏ��璧��f�Gf�=\'���ݻ�������Ƀ�d���3�?�>��-~�/���N������\0�1T&�Noo������OV���u\"IN.$��\'/�MN%ɟ��g�~���<2��M�I�������{��F�I��8y,�˅��\0�1T&�Nww��ǎ�͟�&mA��%���_X������/��o��m_�O����+s�KsI)I�y��Je:!����v@�jBt*��x-�͓�ɱ���s?yB�T��/}������-��ӹ��l�J=��#\r�J�Fe��Y5!:����,V�s��S��\'��$9;;�{�U]]o��������wܳw_þҡQ�\0�uVM�N���RK��N�;��p&�s�k֬y�eW����ȫ*�C�m�W:4*\0�Ϊ	ѩԞR-����K��w���Iv=4�޵��/��[����}�L���MN�.�{ꡆ}�C�2@묚��ry~��Z�W�ikze.y�l���׾�ڍ���f�������l����>԰�thT&\0h�U��P{�7nx������?}�����=�������Ǿw����>�?{���S�<y���Ow�xӍ�/��£2@묚�Jez�>���ǺZ�7�а�thT&\0h�U�S�L�$�L\0�:�&Dg�2�{Qb��\0��jBt*����	\0ZgՄ�T*�sT&\0h�U�S�L�K�Q�\0�uVM�N�2�H�Q�\0�uVM���$*\0�Ϊ	ѩT�K�Q�\0�uVM�Nz�|��ssT&\0h�U�S�LG$�L\0�:�&D�R�����2@묚�Je:�AYv��΢��몳�o����zV�z\Z@ǰjBt*��?�TG�t̵��|~ԵD�����\'��*59�Kt~�j�i\0ê	�頫�e���J���V8���hٖ����P��9*\0�Ϊ	ѩ\\�����t��{���l�d\Z��vÑ�u��锨L\0�:�&Dg��~��i�??���k�.\r��l�g�c.�Ѵ��~�V���\0�1������3���ֶ���?m,�,Wc^�\rw�]yc�펈�\0��jBt*��?����]�X�����=+k8�\n�_� �	\0ZgՄ�T��uD�Zۮn,}h�\Z���}���;�0����\0��jBt*��OwD�C�i�i���k��+m�Ӗ=f��6������X�/l�i\0ê	ѩ\\�?�ij���vu�y�Y��K��=˾b�2.;���\0:�U��A��-V�eﯿ���Zm;ꠗq�����\0�1����rya��NIûF�wV7�}Z����\r��^��z�>�4��aՄ�T������2@묚�Je����2@묚�Jez\\b��\0��jBtr������h�2@묚�|>��3w/,�h�2@묚������ؾ�|_��������\r=\r�c�L������?	~�.��/��\n���\0:���)����:]޳��38x���x�i\0Ce�ݺh�B�Ė������@�	\0�De������k���5I�x23����]����\0:��������jzz<I�KI�Rړ\'\'�z�@�Q� ^SSSik\Z��$�\'����{{��z�@�Q� j�ryx������ѿ���\'I�J�R*�����\rm\Z�O�CO7\0�H*�LNN\n����.����燆�O[S�)\0Leb�\0-R��uu��\0h�� :333===�G\0t�	����tooo�Q\0\0�Ae�399���z\0@gP��茍�\r\r\r�\0�T& :۷o߲eK�Q\0\0�Ae�skE�Q\0\0�Ae�s�-�l۶-�(\0�Π2�)\n����G\0t�	�N���d�Q\0\0�Ae���׷��У\0\0:��D\'����У\0\0:��D���?}\0@�\\7\0q)�˹\\.�(\0���2q)��|>�(\0���2�766��Օ���������/�<�y�WNOO�\Z\0��T& ����ov-�q������C\0ڝ�d_�\\~��Xߗ���Ꞟ�R�zh\0@�S��(|�ӟ���j�������p�A\0@eb�f͚j_�����|>_.�C�\0�\0*������/��+�����_L\0@�T& \"�]w�����k��&�@\0���2�����r_���B\0�*�|>_,C�\0�*d\\�\\\Z\Z���O���?OD�ҙ�·�����Q��\0+S� �&&&ҋ�/�ر��]��>t��ܜH:���s��͛7�3$-N��*\0�/�	��T*\n�M�6~��ٹ�\"�r�ţiqJ����L�i\0�He�J�R__�W���ٹY�Vr׷�Z�n���\0K�L�A�B�җΈ��{wݳa��\0�vT&Ț���M����/��6���_l����S\0ڋ��R.�����G�s�EV�\'_^�������\0ڈ��2::Z(�/�7�^�<�z]�![�~nxx8�D�6�2A������OU���M?N��K��K�M�M����v�w�>�ʃg��-\'��ݧ�{�$����G�|���D���N������\0�FT&Ȕ��ރ��͟�����D��\\H^�O^:��J�?���v���_?xd.9<�>������7��H卦�yN�<���BOd\0h#*dJww��ǎ�͟�&mA��%���_X������/��o��m_�O����+s�KsI)I�y��Je:!�΄��\0ڊu2�R{�ג�<9�;��=��\'�J���җ?�w_:����-�[H�V��?Ұ�D�	\0�Y!S*���jY�L璣���O$sIrvv��������Օ��7��gﾆ}%ڨL\0PϺ�R�=��R�żc���\'/�I����5k�p�oz�;�>�����{��h�2@=�\"d���tz!y���.��3ɮ��߻�����_zk�۾��o�I��ɩ��wO=�2I5*\0Գ.B�TjO���oښ^�K^>�<w|�ŵ�v��~�����r�B996���i��5�+�Fe�z�EȔ�bw~��Z�7nx������?}�����=�������Ǿw����>�?{���S�<y���Ow�xӍ��J�Q�\0��u2�R�^��\'>���\r74�(�Fe�z�EȔJe:&r!Q�\0��u2e�2�{Q�B�2@=�\"dJ�2���L\0PϺ��2ɅGe�z�EȔJezA�B�2@=�\"dJ�2=/r!Q�\0��u2�R�fD.$*\0Գ.B�T*ӏE.$*\0Գ.B�����=\'r!Q�\0��u2�R���\\HT&\0�g]�LQ��£2@=�\"dJ�2=۹Yy��G����A\Z��qZ9��}�6��\0����)���Ý�%��p���Ӛ�t{�1��lxf�ƲU���t���p�\'2\0��\"dJ��G�H�\\Z9����p��\'7l����=�Z�5<�W>�D�6b]�L�\\���S?��v힥�v_��K���rUg����ٰK��KO-�D�6b]�LY�j_(vh����B�͆�f����49f�qV�hf�C�<Ύ��\0����)���g:.���3�g���-��fw.=�\n+o׎�0쎎�\0����)�^��po�q~O^�9���f54�e�y͡�T&\0�g]�L�\\��������v.K7�ݽ� ���qV�g��A�8Ύ��\0����)���C����W�k�,�Xy��|���˽�����\'4��AvJT&\0�g]�L�\\�?݉�yu���,�w_y��\'4{�kn/{�s�gz\"@�.B�T�ן��,y\'穥����vyͽZy�j�o�v��j�=���X!Sҋ݅�\';1�#�n/=�eϮֲ��_�5���[�<�e�%���E�\0mĺ�R�RB�B�2@=�\"d��$�	\0�Y!S*�iZ�B�2@=�\"dJ�2=.r!Q�\0��u2%�˝>�oa�1���\0����)�|��g�^X8(r�Q�\0��u2e``�?&�/$�9�<>������\0ڈ��2222<�\'���˿�~�P(���\0�FT&Ȕb�������=����C38x���x�\0mDe���uі��Q����c;44z\n@{Q� k��r��SS��$������]���*�v���\0�^T&Ƞ��龾���Ǔd�H+I�Rڴ\'\'�z�@�Q� ������42�I�Od匏��7?9�ϡ�-\0�#�	2�\\.���?:��33�$�^���J�=6�7CC�����\0ڔ�799Y(|�����պ�~h���5���\0��T& :[�l)�ˡG\0t�	�N>�/��G\0t�	����맦�B�\0�*�������У\0\0:��D�P(����\0�T& :���###�G\0t�	�Nڗ��z\0@gP��茎�\n�У\0\0:��Dgbbb`` �(\0�Π2љ��Z�~}�Q\0\0�Ae�S,��|�Q\0\0�Ae�S.�s�\\�Q\0\0�Aeb�V��8�\0�T& F�|�X,�\0�T& F�ׯ���\n=\n\0��L@�&&&B�\0�\0*�B�0::\Zz\0@P��\r����\0�T& Fi_J[S�Q\0\0@eb4::Z(B�\0�\0*�������У\0\0:���hjjj����G\0t\0�	�Q�X���G\0t\0�	�Q�\\��r�G\0t\0�	�TZ���z\0@�S��H���b�z\0@�S��H�_�~jj*�(\0�v�2������r}}}6lx�ߘ޼��+���C\r\0h_*�o~�]Klܸq||<��\0���2�(���w�jz*J�R�\0�Ke\"��O���.�U����}��á\0�5�	�˚5k�}������f�3\0�Le�r�}�]~������^{�5�\\z8\0@�S���\\w�u���W�\0��T& :333�|~׮]���c\0ڝ�D�\\.�r�У\0\0ڝ��I�������P>�_����D��O�������OZ�fT&����Dz����;vܻk�Ӈ����8����9�s��͛7��\"-N��\'\0�#�	bQ*�\n�¦M�?{���Y��}�hZ���133z�@{Q� \ni_�����_9;7+�,w}��u�����\0ڈ�Q(\n��tFd�ܻ�\r~\'��6�2A�MLLl�t��|Y��|�S�u��CO[\0h*d\\�\\����)�͟i%\'N��v����ӡ\'/\0��	2ntt�P(�͟�e����!��{ITٺ�s��á\'/\0��	2nppp��^��x��\'��%O�%��&��&{N�o��wy����������S�=g��}�[>��]���S}}}�\'/\0��	2������}s�\'����:�$\'�W擗�&������]?�����K�&��$�r��|��=Ry��D�\'��r�Г\0ڂ������#s�\'�I[Щs��Ň��~�;��˿��u����|��\\��\\RJ�{z�R�NH�I�a�.\0�	+\"d\\���%�yr>9v:9{�\'O(�J��/��t��ſa:����T�~�a_�**\0TY!�*���jY�L璣���O$sIrvv��������Օ��7��gﾆ}%��L\0PeE���ԞWj��bޱ��sǓ�${�`͚5o��7��CyUez��\r�JTQ�\0�ʊW�=�Zқ���ʋ�2=��zh��k���_���v���_�ƙ$91���]�q��C\r�JTQ�\0�ʊ�^��Ͽ\\K�:8mM��%/�M�;>������]��w?��l�|9y���M�Ҵ���\Z����2@�2����o����O�90=�������{�G�׃�}��3��}��>q��\'�y��S?������_�K��L\0PeE���T����O|��p�\r\r;JTQ�\0�ʊW�L�DV�	\0����q���܋\"���\0UVDȸJe:*�ڨL\0PeE���T�DV�	\0����q�����j�2@�2�R�fDV�	\0����q*��_T&\0��\"B�U*ӏ3��S[�4[Z<H�_҆S=y�-X!���s��d\ZN�ٙ.}Z���{���^Y��\0UVDȸ����L�zjM�N��j�\\������L\0PeE���\\�?��������V������K�쉇��\0����q���ÙL��U��=ٕ_�+o��,��Y��\0UVDȸ�e�����b��s�m�Ѕj;6�w�v�-=BV�2@�2.�W�\r}i���g6l,=�\n��ܫ�Y+��FT&\0��\"B�U����TO��Ԗ����k>�l���jv��De�*+\"d��e�B1��?����\'��i\r�6}�i�A����[;�Г\0ڂ2�re�L&�pj�δz���j�������s=y�-X!�*W�?�d�O�������ެt�����Z����\0UVDȸ�e��L�zj?�?��ΆSn�X��~�U��2@�2�rM���j�2@�2�R��YmT&\0��\"BƩLr~Q�\0�ʊ�^�.,<)�ڨL\0PeE���T�\'DV�	\0����q��4-�ڨL\0PeE���T��EV�	\0����q�\\���}���**\0TY!����3�ܽ�pPdUQ�\0�ʊ700����ǧ����z�@[P� �FFF���$�%�tV�e��B�z�@[P� ��bo�N��,$DZ���u���\'/\0��	���E[�GEZ����vhh ���v�2A������k���5IY933�z{�U*�=m�]�L���龾���Ǔd�H��})mד�_	=a���L�����5���i��Y���/���\'\'�9�T���2AD����p������=3sO��)��{l�o��6\r��ۡ\')\0��	�399Y(|���������燆�O[S�	\0mJeb�e˖r�z\0@�R������NOO�\0ЦT& v�G\0�)�	�ݖ-[�o�z\0@�R��؍���\0ЦT& vcccCCC�G\0�)�	��������C�\0hS*�������У\0\0ڔ��tu��\0X���$����У\0\0ڑ�����ONN�\0ЎT&��P(����\0ЎT&��֊У\0\0ڑ�����\n�У\0\0ڑ��LNN����\0ЎT&��X,���У\0\0ڑ��ȟf\0��`QOO���L�Q\0\0mGeX�~�����У\0\0ڎ��hhhhll,�(\0���2,\Z	=\n\0��L\0��o߾e˖У\0\0ڎ��hbbb`` �(\0���2,������\r=\n\0��L@�J��G>򑷿��}}}��ۿ�3?�3]]]W^yeZ�B\r\0h*�ݻww-�q������C\0څ�īT*5��_��_���I�=4\0�]�L@�.�������~pxx8��\0�6�2Q۱cǕW^Y{���o{�\\=(\0���L@�n���.�����=�yχ>����\0ڋ�Į\\.����޴i�5�\\388z8\0@{Q�\0�b����������B�\0h/*�O�J����У\0\0ڋ�,�f������P>�_����J:ҙ0888::���@e��MLL���i_ڱcǽ�v=}��ٹ9�9�Hg�Ν;7oޜ΍�8���\0���*�J�BaӦM��=|v���}�hZ��I233z�@*D*�K}}}_��+g�fEV�]߾kݺu�b1���\0T&�T�P���3\"���]�l��;��-\0�2A�&&&6m�~n�,�z>���غ��\'/\0��T&�N�\\����)�͟i=\'N��v����ӡ�0\0��T&����h�P��?U�Ɓ�k������u�熇�COa\0x]�L�����w�{�\"x���~�$?<�<5�<6�<2��91�����}��&�[N,\'�O%��I�a���n�X�v	���N������\0�R� :���?YMWW׉$9���2��t69�$������7��~��\\rx69|&)����o|��M\'%ڜ8y,�˅��\0�R� :���/;27����:�̞[|h~a�뷾��k��W�}a>I��\'��%/�%�$��G+��Ĝt���\0�:��At*��x-�͓�ɱ���s?yB�T��/}������-��ҹ��l�J=��#\r�J�Q�\0����S�=�W�be:�=�<\"�K�����W]�������\r��~�={�5�+Fe 6V>�N���RK��N�;��p&�s�k֬y�eW����ȫ*�C�m�W\"��@l�|�J�)Ւ�<���T^|���d�C��]��w��/���m_��7�$ɉ����⎻�j�W\"��@l�|���w~��Z�W�ikze.y�l���׾�ڍ���f�������l����>԰�D�	��X� :\r���Gjρ����ߓ<z�|�{��o�������=1�ȓ�����tǍ7���]�Fe 6V>�N�2�T�O|�c]-��nh�Q\"��@l�|�Je:&r~Q�\0�����X�ν(r~Q�\0����S�LGE�/*\0���At*�����@l�|�Jez^���2+D�R�fD�/*\0���AtT&���L\0���ѩT���_T&\0bc�褗���=\'r~Q�\0����S�LGD�/*\0���At*��Y���@l�|�Je:U��r�/�\nϬ(�WUe 6V>�N���G�K׫5<��3���͞��w�jT&\0bc��d�ʾ�2S�>���V�Uً�@l�|������y5|}u�i|���/{�f���꫺칇��\0��At/���K���6<T������{��h��6-�Kq�_��S\0^WV>�N����z^�_k��n6l7��C+l׾׫;U���R�Ρ�0\0���|��e����y��ݿ�)��:��.S�s�0��p��BOa\0x]Y� :��C�K���.�Y�n҅\Z�����]��LFe 6V>�N����z^K��o4<y��͛�2�q�o���L\0���ѩ\\�?���ή�4��r�=+�\\�8Kof����f�)\0�++D\'×��S[mAZ���>�lU�dT&\0bc�褗�Of/��հ�졥��|�eZz���µ�=��ue��T.�9��L\0���ѩT�i���@l�|�Jez\\���2+D\'�˝>�oa�1���@l�|�|>��3w/,9��L\0����������EV�ǧ����z\n��Je�茌��I��o�����m�B!��ו��)����:]޳�YU�=��u�2A�n]�e!yT��|}�o��BO^\0x��L�r�����Կ&�#\"�dffWo�J�ݡ\'/\0��T&����t_�U���I�_d�})�ؓ�_	=m \0�	�555�����?M�}\"�2>�������?���\0��Q+���Å���������=I�W��R����fhh��`�z�@0*�LNN\n����.����\Z�>mM��\'\0�2,o˖-�r9�(\0��T&������߿?�(\0��T&��\r\r\r����\0�������5�(\0��T&�卍�\r\r\r�\0�����������\0����r����B�\0Leh���gff&�(\0��T&��&&&B�\0Ieh�[nٶm[�Q\0\0!�L\0M�})mM�G\0��24511100z\0@H*@S333===�G\0��2�$�˕��У\0\0�Q�\0V��׷��У\0\0�Q�\0V244466z\0@0*�Jn����o���R�z8\0��Meh�V��|�#o���������r������o7@�T&�F�w��z����|>?33zh\0��MehT*�\Z*������\0\'�	`�_~y�/�ۿ����-&\0�����;v\\y����+��+����G\0��2,鍊n��ˮ��근�-����B\0CeX^�\\~���}�u�mذ�d�h�L\0M��|>���}`` �X\0�0T&�e������[o�upp�~뷮������8������(\0����*iSJkR�k���۾}{ڬB�\0��T&�����\\�~�k��z�|>�X�\0\\B*���\n���#}�ڹ��{w}���|泛6mjx���`�T\n}\0�%�2����ixs�����C����7���������Կݴ��Ч\0\\|*��g�՚�����e��8}�3����妦�B�\0p��L@���r��K�m��bY�ώ�����{M>L\02Fe�544T�K;w�y}��=�������?�i\0��Dj||��_��]��N�h۶m}r\0�E�2��������K���_SOO���\0��21\Z�}f��g�\\��t����g��r�-�O\0�8T& F������(}����qG����ݡO\0�8T& :�R����.�[L���?�������\'\n\0\\*����ڧ�]ܾ���X����áO\0�T& :[�l�X��4���n���ׯ}�\0�E�2���������^��>t��gmC�(\0p�L@tj/����2���G��\'\n\0\\Vt :���СKQ�j�}�\0�E`E����[�4�?x�RT�\\.�2@fXс���(ӽ��{�������L\0�%*�B�Pm5�x���2}��������B�(\0p�L@tFFF��f��?��鶭[�\Z\Z\n}�\0�E�2љ�������\'/neڰaC�ࣣ��O\0�T& F�|�Zlv��\"���eJ�J��g	\0\\*����j�Y�v�E|���?���aC�\"\0pq�L@�J�R�\'ݶu�E�K��������C�\"\0pq�L@��m�V�7�\\��?m��C�jl˖-�O\0�hT& ^�ׯ���������\'׮][;���L�3\0.\Z�	�W�X���U�=�=��t��#�����&\'\'C�\0p1�L@�҆S�Hi�Y���}����Km۶-�	\0���n||��^S�3����wZys�ƛnꪣ/@&�L\0�ܶ��������3����\\ڔ����7m�T��q�}<\0�*�	`Q�T���[s�\\�r֭[�졡�!��\0\0�2�i�)\n�V��������B\0��T&�F�ryll,�N}}}\r5)��n߾�;K\0	�	\0\0�)�	\0\0�)�	\0\0�)�	\0\0�)�	\0\0����+�k��!�\0\0\0\0IEND�B`�',0),('507',1,'MyProcess.bpmn','505','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"createOrder\" name=\"创建采购单\" activiti:assignee=\"maguo\"></userTask>\n    <userTask id=\"firstAudit\" name=\"部门经理审核\" activiti:assignee=\"xufen\"></userTask>\n    <userTask id=\"secondAudit\" name=\"校长审核\" activiti:assignee=\"zengjie\"></userTask>\n    <userTask id=\"thirdAudit\" name=\"财务审核\" activiti:assignee=\"zhoulu\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"createOrder\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"createOrder\" targetRef=\"firstAudit\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" sourceRef=\"firstAudit\" targetRef=\"secondAudit\"></sequenceFlow>\n    <sequenceFlow id=\"flow4\" sourceRef=\"secondAudit\" targetRef=\"thirdAudit\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" sourceRef=\"thirdAudit\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"406.0\" y=\"94.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"424.0\" y=\"520.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"createOrder\" id=\"BPMNShape_createOrder\">\n        <omgdc:Bounds height=\"55.0\" width=\"173.0\" x=\"338.0\" y=\"180.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"firstAudit\" id=\"BPMNShape_firstAudit\">\n        <omgdc:Bounds height=\"56.0\" width=\"195.0\" x=\"326.0\" y=\"260.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"secondAudit\" id=\"BPMNShape_secondAudit\">\n        <omgdc:Bounds height=\"55.0\" width=\"191.0\" x=\"332.0\" y=\"352.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"thirdAudit\" id=\"BPMNShape_thirdAudit\">\n        <omgdc:Bounds height=\"55.0\" width=\"193.0\" x=\"338.0\" y=\"440.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"423.0\" y=\"129.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"424.0\" y=\"180.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"424.0\" y=\"235.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"423.0\" y=\"260.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"423.0\" y=\"316.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"427.0\" y=\"352.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"427.0\" y=\"407.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"434.0\" y=\"440.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"434.0\" y=\"495.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"441.0\" y=\"520.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

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
  `pk_Attachment` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(50) default NULL COMMENT '描述',
  `FileName` varchar(20) default NULL COMMENT '原始档名',
  `FilePath` varchar(20) default NULL COMMENT '文件路径',
  `FileType` varchar(20) default NULL COMMENT '后缀名',
  `FileSize` double default NULL COMMENT '文件大小',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `attachment_list` */

/*Table structure for table `attendance_list` */

DROP TABLE IF EXISTS `attendance_list`;

CREATE TABLE `attendance_list` (
  `pk_Attendance` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Description` varchar(30) default NULL COMMENT '描述',
  `shangbantime` datetime default NULL COMMENT '上班时间',
  `xaibantime` datetime default NULL COMMENT '下班时间',
  `month` date default NULL COMMENT '考勤月份',
  PRIMARY KEY  (`pk_Attendance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `attendance_list` */

/*Table structure for table `calendar_list` */

DROP TABLE IF EXISTS `calendar_list`;

CREATE TABLE `calendar_list` (
  `pk_Calendar` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(50) default NULL COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `UserList` varchar(20) default NULL COMMENT '相关用户',
  `DepartmentList` varchar(20) default NULL COMMENT '相关部门',
  `StartDate` datetime default NULL COMMENT '开始时间',
  `EndDate` datetime default NULL COMMENT '结束时间',
  `IsRemind` int(11) default NULL COMMENT '是否提醒',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Calendar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `calendar_list` */

/*Table structure for table `car_list` */

DROP TABLE IF EXISTS `car_list`;

CREATE TABLE `car_list` (
  `pk_Car` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `fk_Set` int(11) default NULL COMMENT '车辆ID',
  `NumberID` varchar(20) default NULL COMMENT '单号',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(30) default NULL COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  `IsCheck` int(11) default NULL COMMENT '是否审核',
  `CheckUser` int(11) default NULL COMMENT '审核人ID',
  `CheckDate` datetime default NULL COMMENT '审核时间',
  `CheckDepartment` int(11) default NULL COMMENT '审核部门',
  `StartDate` datetime default NULL COMMENT '开始时间',
  `EndDate` datetime default NULL COMMENT '结束时间',
  `Driver` varchar(30) default NULL COMMENT '司机',
  `Passengers` varchar(30) default NULL COMMENT '乘客',
  `Destination` varchar(30) default NULL COMMENT '目的地',
  `Mileage` varchar(30) default NULL COMMENT '里程数',
  `IsBack` int(11) default NULL COMMENT '是否归还',
  `BackDate` datetime default NULL COMMENT '归还时间',
  PRIMARY KEY  (`pk_Car`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_list` */

/*Table structure for table `car_set` */

DROP TABLE IF EXISTS `car_set`;

CREATE TABLE `car_set` (
  `pk_Set` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(20) default NULL COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `BuyDate` datetime default NULL COMMENT '购买时间',
  `IsUse` int(11) default NULL COMMENT '是否使用',
  `Mileage` varchar(20) default NULL COMMENT '里程数',
  `LastMaintenance` datetime default NULL COMMENT '上次保养时间',
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

insert  into `classification`(`class_id`,`class_name`) values (1,'好友'),(14,'家人'),(15,'同学'),(16,'基友');

/*Table structure for table `communication` */

DROP TABLE IF EXISTS `communication`;

CREATE TABLE `communication` (
  `comm_id` int(11) NOT NULL auto_increment COMMENT '通讯编号',
  `pk_user` int(11) default NULL COMMENT '外键用户编号',
  `comm_thedegreeof` int(11) default NULL COMMENT '重要||一般',
  `comm_typeid` int(11) default NULL COMMENT '类型',
  `comm_sex` int(11) default NULL COMMENT '性别',
  `comm_name` varchar(20) default NULL COMMENT '联系人名称',
  `comm_phone` varchar(11) default NULL COMMENT '联系电话',
  `comm_landline` varchar(20) default NULL COMMENT '公司电话',
  `comm_fax` varchar(20) default NULL COMMENT '传真',
  `comm_email` varchar(20) default NULL COMMENT '邮箱',
  `comm_address` varchar(50) default NULL COMMENT '地址',
  `comm_note` varchar(20) default NULL COMMENT '备注',
  `comm_headportrait` varchar(200) default NULL COMMENT '头像',
  `comm_class_id` int(11) default NULL COMMENT '外键分类',
  `comm_Shared` int(11) default NULL,
  PRIMARY KEY  (`comm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `communication` */

insert  into `communication`(`comm_id`,`pk_user`,`comm_thedegreeof`,`comm_typeid`,`comm_sex`,`comm_name`,`comm_phone`,`comm_landline`,`comm_fax`,`comm_email`,`comm_address`,`comm_note`,`comm_headportrait`,`comm_class_id`,`comm_Shared`) values (4,2,2,2,2,'马王爷','123456789','324234','','32423','给对方','士大夫但是',NULL,1,NULL),(5,2,2,2,1,'父亲','4561515634','324234','','','','','upload/123.jpg',14,NULL),(6,2,2,1,1,'田老师','123456789','123465789','','','','',NULL,14,NULL),(7,2,2,1,2,'张同学','2342352345','2323','','','','',NULL,15,NULL);

/*Table structure for table `finance_account` */

DROP TABLE IF EXISTS `finance_account`;

CREATE TABLE `finance_account` (
  `pk_Account` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `AccountName` varchar(30) default NULL COMMENT '账号',
  `Owner` varchar(20) default NULL COMMENT '开户人',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(50) default NULL COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `finance_account` */

/*Table structure for table `finance_list` */

DROP TABLE IF EXISTS `finance_list`;

CREATE TABLE `finance_list` (
  `pk_Finance` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `fk_Account` int(11) default NULL COMMENT '账号ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(50) default NULL COMMENT '描述',
  `HandleName` varchar(20) default NULL COMMENT '经手人',
  `HandleDate` datetime default NULL COMMENT '经手时间',
  `Amount` double default NULL COMMENT '金额',
  PRIMARY KEY  (`pk_Finance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `finance_list` */

/*Table structure for table `group_list` */

DROP TABLE IF EXISTS `group_list`;

CREATE TABLE `group_list` (
  `pk_group` int(11) NOT NULL auto_increment COMMENT '自增列ID',
  `fk_user` int(11) default NULL COMMENT '创建人ID',
  `creatTime` date default NULL COMMENT '创建时间',
  `headUrl` varchar(20) default NULL COMMENT '群头像',
  `groupName` varchar(20) default NULL COMMENT '群名称',
  `conmment` varchar(50) default NULL COMMENT '简介',
  PRIMARY KEY  (`pk_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `group_list` */

insert  into `group_list`(`pk_group`,`fk_user`,`creatTime`,`headUrl`,`groupName`,`conmment`) values (1,2,'2019-05-25','1.jpg','总经办管理群','总经理办公室专用群'),(2,2,'2019-05-25','2.jpg','管理员群','哈哈哈哈哈哈哈');

/*Table structure for table `groupuser_list` */

DROP TABLE IF EXISTS `groupuser_list`;

CREATE TABLE `groupuser_list` (
  `pk_groupuser` int(11) NOT NULL auto_increment COMMENT '自增',
  `fk_user` int(11) default NULL COMMENT '用户ID',
  `fk_group` int(11) default NULL COMMENT '群ID',
  `jointime` date default NULL COMMENT '加入时间',
  PRIMARY KEY  (`pk_groupuser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `groupuser_list` */

insert  into `groupuser_list`(`pk_groupuser`,`fk_user`,`fk_group`,`jointime`) values (1,2,1,'2019-05-25'),(2,2,2,'2019-05-25'),(3,1,1,'2019-05-26'),(4,3,2,'2019-05-26');

/*Table structure for table `mail_list` */

DROP TABLE IF EXISTS `mail_list`;

CREATE TABLE `mail_list` (
  `pk_Mail` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_Account` int(11) default NULL COMMENT '账号ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `MailType` int(11) default NULL COMMENT '邮件类型（0-收件箱 1-发件箱 2-草稿箱 3-垃圾箱 4-回收站）',
  `MailFrom` varchar(20) default NULL COMMENT '发件人',
  `MailTo` varchar(20) default NULL COMMENT '收件人',
  `Subject` varchar(20) default NULL COMMENT '主题',
  `Body` text COMMENT '主体内容',
  `IsSent` int(11) default NULL COMMENT '是否已送',
  `SentDate` datetime default NULL COMMENT '发送时间',
  `IsAttachment` int(11) default NULL COMMENT '是否有附件',
  `AttachmentList` varchar(20) default NULL COMMENT '附件地址',
  `IsRead` int(11) default NULL COMMENT '是否已读',
  `ReadDate` datetime default NULL COMMENT '读取时间',
  `Priority` int(11) default NULL COMMENT '优先级别',
  `IsReply` int(11) default NULL COMMENT '是否回复',
  `ReplyDate` datetime default NULL COMMENT '回复时间',
  PRIMARY KEY  (`pk_Mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mail_list` */

/*Table structure for table `memo_list` */

DROP TABLE IF EXISTS `memo_list`;

CREATE TABLE `memo_list` (
  `pk_Memo` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` text COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `FilePath` varchar(20) default NULL COMMENT '附件地址',
  `IsStar` int(11) default NULL COMMENT '是否星标',
  `Tags` varchar(20) default NULL COMMENT '标签',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Memo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `memo_list` */

/*Table structure for table `notice_list` */

DROP TABLE IF EXISTS `notice_list`;

CREATE TABLE `notice_list` (
  `pk_Notice` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID\r\n',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` text COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `FilePath` varchar(20) default NULL COMMENT '附件地址',
  `UserList` varchar(20) default NULL COMMENT '相关用户',
  `DepartmentList` varchar(20) default NULL COMMENT '相关部门',
  `RoleList` varchar(20) default NULL COMMENT '相关权限',
  `Url` varchar(20) default NULL COMMENT '链接地址',
  `StartDate` datetime default NULL COMMENT '开始时间',
  `EndDate` datetime default NULL COMMENT '结束时间',
  `IsTop` int(11) default NULL COMMENT '是否置顶',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  `IsRead` int(11) default NULL COMMENT '是否已读',
  `ReadDate` datetime default NULL COMMENT '已读时间',
  PRIMARY KEY  (`pk_Notice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notice_list` */

/*Table structure for table `process_list` */

DROP TABLE IF EXISTS `process_list`;

CREATE TABLE `process_list` (
  `pk_process` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `ProcessName` varchar(20) default NULL COMMENT '流程定义名称',
  `RoleList` varchar(20) default NULL COMMENT '相关权限',
  `MattersName` varchar(20) default NULL COMMENT '事项名称',
  `Visible` int(11) default NULL COMMENT '是否显示',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_process`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `process_list` */

insert  into `process_list`(`pk_process`,`ProcessName`,`RoleList`,`MattersName`,`Visible`,`CreateDate`) values (1,'啊啊啊','奥术大师','as',1,'2019-05-31 22:53:00');

/*Table structure for table `role_list` */

DROP TABLE IF EXISTS `role_list`;

CREATE TABLE `role_list` (
  `pk_Role` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `pk_Department` int(11) default NULL COMMENT '部门编号ID',
  `fk_RoleName` int(11) default NULL COMMENT '权限名称ID',
  `fk_Menu` int(50) default NULL COMMENT '菜单ID',
  `role_name` varchar(50) default NULL COMMENT '权限字段',
  PRIMARY KEY  (`pk_Role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role_list` */

insert  into `role_list`(`pk_Role`,`pk_Department`,`fk_RoleName`,`fk_Menu`,`role_name`) values (1,1000,3,33,'role:add,role:delete,role:query,role:update,'),(11,1000,3,34,'role:add,role:delete,role:update,role:query,'),(12,1000,3,35,'role:query,role:update,role:delete,role:add,'),(13,1000,3,36,'role:add,role:delete,role:update,role:query,'),(14,1001,4,25,'role:query,'),(15,1001,4,24,'role:query,'),(16,1001,4,23,'role:query,role:update,role:delete,role:add,'),(18,1001,4,4,'role:query,'),(24,1001,5,4,'role:query,'),(25,1000,3,14,'role:add,role:delete,role:update,role:query,'),(26,1000,3,15,'role:query,role:update,role:delete,role:add,'),(27,1000,3,10,'role:add,role:delete,role:update,role:query,'),(28,1000,3,11,'role:query,'),(29,1000,3,20,'role:add,role:delete,role:update,role:query,'),(30,1000,3,29,'role:query,'),(31,1000,3,12,'role:add,role:delete,role:update,role:query,'),(32,1000,1,3,'role:query,role:delete,'),(33,1000,1,4,'role:query,'),(34,1000,1,6,'role:add,role:delete,role:update,role:query,'),(35,1000,1,7,'role:query,role:update,role:delete,role:add,'),(36,1000,1,8,'role:query,'),(37,1000,1,10,'role:add,role:delete,role:update,role:query,'),(38,1000,1,11,'role:query,'),(39,1000,1,14,'role:add,role:delete,role:update,role:query,'),(40,1000,1,15,'role:query,role:update,role:delete,role:add,'),(41,1000,1,17,'role:add,role:delete,role:update,role:query,'),(42,1000,1,18,'role:query,role:update,role:delete,role:add,'),(43,1000,1,20,'role:add,role:delete,role:update,role:query,'),(44,1000,1,21,'role:query,'),(45,1000,1,23,'role:query,'),(46,1000,1,25,'role:query,'),(47,1000,1,28,'role:add,role:delete,role:update,role:query,'),(48,1000,1,27,'role:query,role:update,role:delete,role:add,'),(49,1000,1,29,'role:query,'),(50,1000,1,32,'role:add,role:delete,role:update,role:query,'),(51,1000,2,2,'role:query,'),(52,1000,2,3,'role:query,'),(53,1000,2,4,'role:query,'),(54,1000,2,6,'role:add,role:query,'),(55,1000,2,7,'role:query,'),(56,1000,2,8,'role:query,'),(57,1000,2,10,'role:query,role:update,role:delete,role:add,'),(58,1000,2,11,'role:query,'),(59,1000,2,14,'role:query,role:update,role:add,role:delete,'),(60,1000,2,15,'role:add,role:update,role:query,role:delete,'),(61,1000,2,20,'role:add,role:delete,role:update,role:query,'),(62,1000,2,21,'role:query,'),(63,1000,2,18,'role:query,role:add,role:delete,role:update,'),(64,1000,2,17,'role:query,role:update,role:delete,role:add,'),(65,1000,2,28,'role:add,role:delete,role:update,role:query,'),(66,1000,2,27,'role:query,'),(67,1000,2,32,'role:add,role:delete,role:update,role:query,'),(68,1000,2,29,'role:query,'),(69,1000,3,17,'role:query,'),(70,1000,3,18,'role:query,role:update,role:delete,role:add,'),(71,1000,3,21,'role:query,'),(74,1000,3,31,'role:add,role:delete,role:update,role:query,'),(75,1000,3,32,'role:query,'),(90,1000,3,2,'role:query,'),(91,1000,3,8,'role:query,'),(92,1000,3,7,'role:query,'),(93,1000,3,6,'role:query,'),(96,1002,6,10,'role:query,role:update,role:delete,role:add,'),(97,1002,6,11,'role:add,role:delete,role:update,role:query,'),(98,1002,6,14,'role:add,role:delete,role:update,role:query,'),(99,1002,6,15,'role:query,role:update,role:delete,role:add,'),(100,1002,6,17,'role:add,role:delete,role:update,role:query,'),(101,1002,6,18,'role:query,role:update,role:delete,role:add,'),(103,1002,6,20,'role:query,role:update,role:delete,role:add,'),(104,1002,6,29,'role:query,role:update,'),(105,1000,3,27,'role:query,'),(106,1000,3,28,'role:query,'),(107,1002,6,36,'role:query,'),(108,1002,6,2,'role:query,');

/*Table structure for table `role_name` */

DROP TABLE IF EXISTS `role_name`;

CREATE TABLE `role_name` (
  `pk_Name` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `RoleName_CHS` varchar(30) default NULL COMMENT '中文名称',
  `RoleName_EN` varchar(30) default NULL COMMENT '英文名称',
  `pk_Department` int(11) default NULL COMMENT '部门ID',
  PRIMARY KEY  (`pk_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role_name` */

insert  into `role_name`(`pk_Name`,`RoleName_CHS`,`RoleName_EN`,`pk_Department`) values (1,'总经理','CEO',1000),(2,'助理','ASSISTANT',1000),(3,'超级管理员','ADMIN',1000),(4,'经理','MANAGER',1001),(5,'会计','ACCOUNTANT',1001),(6,'经理','MANAGER',1002),(7,'主管','DIRECTOR',1002),(8,'文员','CLERTK',1002),(9,'经理',NULL,1003),(10,'文员',NULL,1003),(11,'经理',NULL,1004),(17,'组长',NULL,1004),(18,'文员',NULL,1001);

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `pk_Menu` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `ParentID` varchar(20) default NULL COMMENT '父ID',
  `Name_CHS` varchar(20) default NULL COMMENT '中文名称',
  `Name_EN` varchar(20) default NULL COMMENT '英文名称（预留）',
  `Url` varchar(20) default NULL COMMENT '链接地址',
  `Icon` varchar(20) default NULL COMMENT '图标',
  `SortID` int(11) default NULL COMMENT '排序ID',
  `LevelID` int(11) default NULL COMMENT '层级ID',
  PRIMARY KEY  (`pk_Menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`pk_Menu`,`ParentID`,`Name_CHS`,`Name_EN`,`Url`,`Icon`,`SortID`,`LevelID`) values (1,'0','考勤管理','main',NULL,'fa-calendar',1,1001),(2,'1001','考勤管理','child','kaoqin_manager','fa-laptop',NULL,NULL),(3,'1001','考勤周报表','child','kaoqin_weekchart','fa-laptop',NULL,NULL),(4,'1001','考勤月报表','child','kaoqin_monthchart','fa-laptop',NULL,NULL),(5,'0','用户管理','main',NULL,'fa-users',2,1002),(6,'1002','部门管理','child','user_bumen_manager','fa-book',NULL,NULL),(7,'1002','职位管理','child','user_zhiwei_manager','fa-book',NULL,NULL),(8,'1002','用户管理','child','user_yonghu_manager','fa-book',NULL,NULL),(9,'0','公告通知','main',NULL,'fa-bullhorn',3,1003),(10,'1003','通知管理','child','gonggao_manager','fa-cogs',NULL,NULL),(11,'1003','通知列表','child','gonggao_list','fa-cogs',NULL,NULL),(13,'0','邮件管理','main',NULL,'fa-envelope',5,1005),(14,'1005','邮件管理','child','mail_mymail','fa-envelope',NULL,NULL),(15,'1005','发送邮件','child','mail_sendmail','fa-envelope',NULL,NULL),(16,'0','任务管理','main',NULL,'fa-tasks',6,1006),(17,'1006','任务管理','child','task_manager','fa-tasks',NULL,NULL),(18,'1006','我的任务','child','task_mytask','fa-tasks',NULL,NULL),(19,'0','车辆管理','main',NULL,'fa-truck',7,1007),(20,'1007','用车管理','child','car_usemanager','fa-bar-chart-o',NULL,NULL),(21,'1007','车辆管理','child','car_manager','fa-bar-chart-o',NULL,NULL),(22,'0','财务管理','main',NULL,'fa-money',8,1008),(23,'1008','账号管理','child','caiwu_numbermanager','fa-th-list',NULL,NULL),(24,'1008','财务管理','child','caiwu_manager','fa-th-list',NULL,NULL),(25,'1008','财务报表','child','caiwu_chart','fa-th-list',NULL,NULL),(26,'0','流程管理','main',NULL,'fa-gavel',9,1009),(27,'1009','流程汇总','child','flow_list','fa-th-list',NULL,NULL),(28,'1009','流程审核','child','flow_shenhe','fa-th-list',NULL,NULL),(29,'0','通讯录','main','phone_number','fa-credit-card',10,1010),(30,'0','工作流','main',NULL,'fa-tint',11,1011),(31,'1011','步骤管理','child','workflow_manager','fa-file-text',NULL,NULL),(32,'1011','我的工作','child','workflow_mywork','fa-file-text',NULL,NULL),(36,'0','权限管理','main','role/role_manager','fa-cogs',15,1015);

/*Table structure for table `sys_statusid` */

DROP TABLE IF EXISTS `sys_statusid`;

CREATE TABLE `sys_statusid` (
  `pk_StatusID` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `StatusName` varchar(20) default NULL COMMENT '名称',
  `ID` int(11) default NULL COMMENT 'ID',
  `Visual` varchar(20) default NULL COMMENT '显示颜色',
  `TableName` varchar(20) default NULL COMMENT '表名',
  `Description` varchar(50) default NULL COMMENT '描述',
  PRIMARY KEY  (`pk_StatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_statusid` */

/*Table structure for table `sys_typeid` */

DROP TABLE IF EXISTS `sys_typeid`;

CREATE TABLE `sys_typeid` (
  `pk_TypeID` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `TypeName` varchar(20) default NULL COMMENT '名称',
  `ID` int(11) default NULL COMMENT 'ID',
  `Visual` varchar(20) default NULL COMMENT '显示颜色',
  `TableName` varchar(20) default NULL COMMENT '表名',
  `Description` varchar(50) default NULL COMMENT '描述',
  PRIMARY KEY  (`pk_TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_typeid` */

/*Table structure for table `talk_list` */

DROP TABLE IF EXISTS `talk_list`;

CREATE TABLE `talk_list` (
  `pk_talk` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `talk_frominfo` varchar(100) default NULL COMMENT '消息来源信息',
  `talk_to` varchar(20) default NULL COMMENT '消息目标',
  `talk_content` text COMMENT '消息内容',
  `talk_time` date default NULL COMMENT '发送时间',
  `talk_from` varchar(20) default NULL COMMENT '消息来源',
  `talk_code` int(11) default NULL COMMENT '读取状态',
  PRIMARY KEY  (`pk_talk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `talk_list` */

insert  into `talk_list`(`pk_talk`,`talk_frominfo`,`talk_to`,`talk_content`,`talk_time`,`talk_from`,`talk_code`) values (1,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','阿诗丹顿','2019-05-31','2',0),(2,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','是的的v从','2019-05-31','2',0),(3,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','删除','2019-05-31','2',0),(4,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','哈哈哈','2019-05-31','2',0),(5,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','好好','2019-05-31','2',0),(6,'{\"headimg\":\"5.jpg\",\"isgroup\":\"管理员群group2\",\"userName\":\"陈磊\",\"pk_user\":2}','group2','真的呀','2019-05-31','2',0),(7,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','阿萨德','2019-05-31','2',0),(8,'{\"headimg\":\"5.jpg\",\"isgroup\":\"管理员群group2\",\"userName\":\"陈磊\",\"pk_user\":2}','group2','sad','2019-05-31','2',0),(9,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','ad深V','2019-05-31','2',0),(10,'{\"headimg\":\"5.jpg\",\"isgroup\":\"管理员群group2\",\"userName\":\"陈磊\",\"pk_user\":2}','group2','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊','2019-05-31','2',0),(11,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表v           ','2019-05-31','2',0),(12,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','xcc','2019-05-31','1',0),(13,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','才','2019-05-31','2',0),(14,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','是大V','2019-05-31','2',0),(15,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','dfdgf ','2019-05-31','1',0),(16,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','撒地方规划','2019-05-31','2',0),(17,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','ZXcvb','2019-05-31','1',0),(18,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','qwef ','2019-05-31','1',0),(19,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','asdfgbaaaaaaaaaaaaaa','2019-05-31','1',0),(20,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','撒地方个','2019-05-31','2',0),(21,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','sadf ','2019-05-31','1',0),(22,'{\"headimg\":\"5.jpg\",\"isgroup\":\"管理员群group2\",\"userName\":\"陈磊\",\"pk_user\":2}','group2','aaaaaa啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊','2019-05-31','2',0),(23,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊','2019-05-31','1',0),(24,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊','2019-05-31','1',0),(25,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','啊啊啊啊啊啊啊','2019-05-31','1',0),(26,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','哒哒哒哒哒','2019-05-31','1',0),(27,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','大师傅','2019-05-31','1',0),(28,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','在不在','2019-05-31','1',0),(29,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','阿萨德','2019-05-31','1',0),(30,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','咋的','2019-05-31','2',0),(31,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','地方','2019-05-31','1',0),(32,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','啥','2019-05-31','2',0),(33,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','斯蒂芬','2019-05-31','1',0),(34,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','撒地方个','2019-05-31','2',0),(35,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','我二哥','2019-05-31','2',0),(36,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','撒地方个','2019-05-31','2',0),(37,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','asdf','2019-05-31','1',0),(38,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','撒旦法','2019-05-31','1',0),(39,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','阿斯顿法国','2019-05-31','1',0),(40,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','撒旦法','2019-05-31','2',0),(41,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','阿萨德','2019-05-31','2',0),(42,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','问问','2019-05-31','1',0),(43,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','asdf','2019-05-31','1',0),(44,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','山东','2019-05-31','1',0),(45,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','萨顶顶','2019-05-31','1',0),(46,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','大师傅','2019-05-31','1',0),(47,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','阿撒的v从','2019-05-31','1',0),(48,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','asdf','2019-05-31','1',0),(49,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','杀多少次','2019-05-31','2',0),(50,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','啊啊啊啊啊啊啊啊啊啊啊啊啊啊','2019-05-31','2',0),(51,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','撒地方v','2019-05-31','1',0),(52,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','地方VB','2019-05-31','1',0),(53,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','阿斯顿法国','2019-05-31','2',0),(54,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','是的反腐败','2019-05-31','2',0),(55,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','沙地柏','2019-05-31','1',0),(56,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','阿斯顿法国','2019-05-31','2',0),(57,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','asdf','2019-05-31','1',0),(58,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','沙地柏v','2019-05-31','1',0),(59,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','DVB','2019-05-31','2',0),(60,'{\"headimg\":\"5.jpg\",\"isgroup\":\"管理员群group2\",\"userName\":\"陈磊\",\"pk_user\":2}','group2','阿斯顿法国','2019-05-31','2',0),(61,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','阿斯顿法国混','2019-05-31','2',0),(62,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','撒旦法','2019-05-31','1',0),(63,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','撒地方个','2019-05-31','1',0),(64,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','斯蒂芬规划局','2019-05-31','2',0),(65,'{\"headimg\":\"5.jpg\",\"isgroup\":\"宋江3\",\"userName\":\"陈磊\",\"pk_user\":2}','3','斯蒂芬','2019-06-01','2',0),(66,'{\"headimg\":\"4.jpg\",\"isgroup\":\"管理员群group2\",\"userName\":\"张三\",\"pk_user\":1}','group2','第三方','2019-06-01','1',0),(67,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','撒大声地','2019-06-01','2',0),(68,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','订餐','2019-06-01','1',0),(69,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','撒地方的 ','2019-06-01','1',0),(70,'{\"headimg\":\"4.jpg\",\"isgroup\":\"宋江3\",\"userName\":\"张三\",\"pk_user\":1}','3','是的VB你','2019-06-01','1',0),(71,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1',' 水电费功夫','2019-06-01','2',0),(72,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','啊','2019-06-01','2',0),(73,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','奥术大师','2019-06-01','1',0),(74,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','阿打算吃','2019-06-01','2',0),(75,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','爱上大城市','2019-06-01','1',0),(76,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','第三次许昌','2019-06-01','2',0),(77,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','持续吃','2019-06-01','1',0),(78,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','阿是大V','2019-06-01','1',0),(79,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','ad深V','2019-06-01','2',0),(80,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','啥的副本云','2019-06-01','1',0),(81,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','撒豆成兵v','2019-06-01','2',0),(82,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','AV初步v','2019-06-01','1',0),(83,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','阿萨德','2019-06-01','1',0),(84,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','第三方','2019-06-01','2',0),(85,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','才 ','2019-06-01','1',0),(86,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','阿是大V','2019-06-01','1',0),(87,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','删除VC','2019-06-01','2',0),(88,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','许昌','2019-06-01','1',0),(89,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','ad市场部','2019-06-01','1',0),(90,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','程序','2019-06-01','1',0),(91,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','程序','2019-06-01','2',0),(92,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','是持续','2019-06-01','2',0),(93,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','徐才不能','2019-06-01','2',0),(94,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','是持续','2019-06-01','2',0),(95,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','撒旦法','2019-06-01','2',0),(96,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','威多福','2019-06-01','2',0),(97,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','虚词 ','2019-06-01','2',0),(98,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','主程序','2019-06-01','2',0);

/*Table structure for table `task_feedback` */

DROP TABLE IF EXISTS `task_feedback`;

CREATE TABLE `task_feedback` (
  `id` int(11) NOT NULL COMMENT '编号',
  `fe_list` varchar(200) default NULL COMMENT '反馈',
  `fe_type` varchar(200) default NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task_feedback` */

insert  into `task_feedback`(`id`,`fe_list`,`fe_type`) values (10,'我已经接受了','陈磊Tue May 28 06:34:52 CST 2019将状态改为新已接收'),(10,'我去','陈磊Tue May 28 06:46:52 CST 2019将状态改为新已接收'),(10,'快弄好了','陈磊Tue May 28 06:47:56 CST 2019将状态改为进行中'),(10,'已经弄完了','陈磊Tue May 28 06:48:18 CST 2019将状态改为已完成'),(10,'','陈磊Tue May 28 12:33:49 CST 2019将状态改为已完成'),(10,'','陈磊Fri May 31 02:28:16 CST 2019将状态改为已完成');

/*Table structure for table `task_list` */

DROP TABLE IF EXISTS `task_list`;

CREATE TABLE `task_list` (
  `pk_Task` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` text COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `FilePath` varchar(200) default NULL COMMENT '附件地址',
  `UserList` varchar(20) default NULL COMMENT '相关用户',
  `DepartmentList` varchar(20) default NULL COMMENT '相关部门',
  `RoleList` varchar(20) default NULL COMMENT '相关权限',
  `Url` varchar(20) default NULL COMMENT '链接地址',
  `StartDate` datetime default NULL COMMENT '开始时间',
  `EndDate` datetime default NULL COMMENT '结束时间',
  `IsComplete` int(11) default NULL COMMENT '是否完成',
  `CompleteDate` datetime default NULL COMMENT '完成时间',
  `IsCancel` int(11) default NULL COMMENT '是否取消',
  `CancelDate` datetime default NULL COMMENT '取消时间',
  `IsTop` int(11) default NULL COMMENT '是否置顶',
  `IsDistribution` int(11) default NULL COMMENT '是否分配',
  `Feedback_id` int(11) default NULL COMMENT '反馈信息编号',
  `task_schedule` varchar(20) default NULL COMMENT '任务进度',
  PRIMARY KEY  (`pk_Task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task_list` */

insert  into `task_list`(`pk_Task`,`fk_User`,`fk_Department`,`TypeID`,`StatusID`,`Title`,`Description`,`ImagePath`,`FilePath`,`UserList`,`DepartmentList`,`RoleList`,`Url`,`StartDate`,`EndDate`,`IsComplete`,`CompleteDate`,`IsCancel`,`CancelDate`,`IsTop`,`IsDistribution`,`Feedback_id`,`task_schedule`) values (10,2,1000,1,4,'改好发给','回家看了',NULL,'D:\\AO\\OA_Project\\target\\OA_Project\\upload/timg.jpg','张三,陈磊,','null总经办总经办',NULL,NULL,'2019-05-19 00:00:00','2019-06-01 00:00:00',NULL,NULL,0,NULL,1,1,NULL,'100%'),(11,1,1000,2,1,'奥术大师','阿萨德是的VB',NULL,'upload/1473732823152.jpeg','张三,','null总经办',NULL,NULL,'2019-04-28 00:00:00','2019-06-01 00:00:00',NULL,NULL,0,NULL,0,1,NULL,'0%');

/*Table structure for table `task_receiver` */

DROP TABLE IF EXISTS `task_receiver`;

CREATE TABLE `task_receiver` (
  `pk_Receiver` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_Task` int(11) default NULL COMMENT '任务ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `IsRead` int(11) default NULL COMMENT '是否已读',
  `ReadDate` datetime default NULL COMMENT '读取时间',
  `IsReceive` int(11) default NULL COMMENT '是否接收',
  `ReceiveDate` datetime default NULL COMMENT '接收时间',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  PRIMARY KEY  (`pk_Receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task_receiver` */

insert  into `task_receiver`(`pk_Receiver`,`fk_Task`,`fk_User`,`fk_Department`,`IsRead`,`ReadDate`,`IsReceive`,`ReceiveDate`,`StatusID`) values (11,10,1,1000,0,NULL,0,NULL,4),(12,10,2,1000,0,NULL,0,NULL,4),(13,11,1,1000,0,NULL,0,NULL,1);

/*Table structure for table `user_department` */

DROP TABLE IF EXISTS `user_department`;

CREATE TABLE `user_department` (
  `pk_Department` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `DepartmentName` varchar(20) default NULL COMMENT '部门名称',
  `Phone` varchar(11) default NULL COMMENT '电话',
  `Email` varchar(30) default NULL COMMENT '邮件',
  `Address` varchar(20) default NULL COMMENT '地址',
  `ParentID` int(11) default NULL COMMENT '父ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `Manager` int(11) default NULL COMMENT '部门经理',
  `LevelID` int(11) default NULL COMMENT '层级ID',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  `Monday` datetime default NULL COMMENT '周一考勤时间',
  `Tuesday` datetime default NULL COMMENT '周二考勤时间',
  `Wednesday` datetime default NULL COMMENT '周三考勤时间',
  `Thursday` datetime default NULL COMMENT '周四考勤时间',
  `Friday` datetime default NULL COMMENT '周五考勤时间',
  `Saturday` datetime default NULL COMMENT '周六考勤时间',
  `Sunday` datetime default NULL COMMENT '周日考勤时间',
  `headUrl` varchar(20) default NULL COMMENT '部门头像地址',
  PRIMARY KEY  (`pk_Department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_department` */

insert  into `user_department`(`pk_Department`,`DepartmentName`,`Phone`,`Email`,`Address`,`ParentID`,`TypeID`,`Manager`,`LevelID`,`CreateDate`,`Monday`,`Tuesday`,`Wednesday`,`Thursday`,`Friday`,`Saturday`,`Sunday`,`headUrl`) values (1000,'总经办','0712-666666',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.jpg'),(1001,'财务部','0712-666999',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.jpg'),(1002,'行政部','0712-666888',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.jpg'),(1003,'人力资源部','0712-666777',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.jpg'),(1004,'销售部','0712-666222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.jpg'),(1005,'市场部','0712-666111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6.jpg'),(1006,'营销部','0712-666555',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'7.jpg');

/*Table structure for table `user_list` */

DROP TABLE IF EXISTS `user_list`;

CREATE TABLE `user_list` (
  `pk_user` int(11) NOT NULL auto_increment COMMENT '自增id',
  `userName` varchar(20) default NULL COMMENT '用户名',
  `password` varchar(50) default NULL COMMENT '密码',
  `typeId` int(11) default NULL COMMENT '类型id',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `RoleValue` int(11) default NULL COMMENT '权限ID',
  `RoleList` varchar(30) default NULL COMMENT '相关权限',
  `Position` int(11) default NULL COMMENT '职位ID',
  `Number` varchar(20) default NULL COMMENT '员工号',
  `IsLock` int(11) default NULL COMMENT '是否锁定',
  `LastLoginTime` datetime default NULL COMMENT '最后登录时间',
  `FullName` varchar(11) default NULL COMMENT '真实姓名',
  `Phone` varchar(20) default NULL COMMENT '电话',
  `Email` varchar(20) default NULL COMMENT '邮件',
  `Wechat` varchar(20) default NULL COMMENT '微信',
  `QQ` varchar(15) default NULL COMMENT 'QQ',
  `ZipCode` varchar(10) default NULL COMMENT '邮编',
  `Place` varchar(20) default NULL COMMENT '所在城市',
  `Address` varchar(30) default NULL COMMENT '家庭地址',
  `Sex` int(11) default NULL COMMENT '性别（0-男 1-女）',
  `Height` int(11) default NULL COMMENT '身高',
  `Weight` int(11) default NULL COMMENT '体重',
  `Birthday` datetime default NULL COMMENT '生日',
  `Education` varchar(20) default NULL COMMENT '教育程度',
  `School` varchar(20) default NULL COMMENT '毕业院校',
  `ImagePath1` varchar(20) default NULL COMMENT '图片',
  `IDCardPath` varchar(20) default NULL COMMENT '身份证图片',
  `ResumePath` varchar(20) default NULL COMMENT '简历文档',
  `Wages` bigint(20) default NULL COMMENT '工资',
  `BankAccount` varchar(20) default NULL COMMENT '银行账户',
  `IDNumber` varchar(20) default NULL COMMENT '身份证号',
  `Remark` varchar(30) default NULL COMMENT '备注',
  `EntryTime` datetime default NULL COMMENT '入职时间',
  `IsQuit` int(11) default NULL COMMENT '是否离职',
  `QuitTime` datetime default NULL COMMENT '离职时间',
  PRIMARY KEY  (`pk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_list` */

insert  into `user_list`(`pk_user`,`userName`,`password`,`typeId`,`fk_Department`,`RoleValue`,`RoleList`,`Position`,`Number`,`IsLock`,`LastLoginTime`,`FullName`,`Phone`,`Email`,`Wechat`,`QQ`,`ZipCode`,`Place`,`Address`,`Sex`,`Height`,`Weight`,`Birthday`,`Education`,`School`,`ImagePath1`,`IDCardPath`,`ResumePath`,`Wages`,`BankAccount`,`IDNumber`,`Remark`,`EntryTime`,`IsQuit`,`QuitTime`) values (1,'张三','ab3f511502b1ca973d4e5dddf3bfbf77',NULL,1000,1,NULL,NULL,'10000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'4.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'陈磊','ab3f511502b1ca973d4e5dddf3bfbf77',NULL,1000,3,NULL,NULL,'10001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'5.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'宋江','ab3f511502b1ca973d4e5dddf3bfbf77',NULL,1002,6,NULL,NULL,'10002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'6.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `user_position` */

DROP TABLE IF EXISTS `user_position`;

CREATE TABLE `user_position` (
  `pk_Position` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `PositionName` varchar(20) default NULL COMMENT '职位名称',
  `ParentID` int(11) default NULL COMMENT '父ID',
  `LevelID` int(11) default NULL COMMENT '层级ID',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_position` */

/*Table structure for table `workflow_list` */

DROP TABLE IF EXISTS `workflow_list`;

CREATE TABLE `workflow_list` (
  `pk_Workflow` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `fk_process` int(11) default NULL COMMENT '流程定义ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `CurrentStepID` varchar(20) default NULL COMMENT '当前步骤',
  `NextStepID` varchar(20) default NULL COMMENT '下一步骤',
  `Number` varchar(50) default NULL COMMENT '流水编号',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(50) default NULL COMMENT '描述',
  `StartDate` datetime default NULL COMMENT '开始时间',
  `EndDate` datetime default NULL COMMENT '结束时间',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Workflow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `workflow_list` */

/*Table structure for table `workflow_receiver` */

DROP TABLE IF EXISTS `workflow_receiver`;

CREATE TABLE `workflow_receiver` (
  `pk_Receiver` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_Workflow` int(11) default NULL COMMENT '工作流ID',
  `fk_process` int(11) default NULL COMMENT '流程定义ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `IsCheck` int(11) default NULL COMMENT '是否审核',
  `CheckDate` datetime default NULL COMMENT '审核时间',
  `Note` varchar(50) default NULL COMMENT '审批意见',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `workflow_receiver` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
