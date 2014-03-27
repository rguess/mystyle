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
INSERT INTO `act_ge_bytearray` VALUES ('2',1,'leave/leave.png','1','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0E\0\0\0�BLB\0\0T`IDATx���	xU��q����+̅Q�{G��q�wQPF��E6A�}Mؒ��\"\nn#��&���-	IX !b�,ݝ��]�4M�iNW��穧���\'�:Uo����\nN\0\0\0*�>\0\0\0�)R\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� �\0\0\05H!\0\0@\rR\0\0P�\0\0� ��@tt��ѣk׮}�}��q�t%c�3 �AΆ�՗~�{��=b-ԭIyݒB�+))�E�?�����w�:����o˷�b7w�Kn�v���|9r��9i޼ybb��KŸG�G������%�\\��ݻ+U�4y���99R��s�m6�X�����v���s2eʔjժ�[�N���2�#�#VD��[ݒB�A.@�\n\"##���o�d�%+jk�-��-���7l� gIni՗\np�p�Xu�uK\n).))�����ƍ��my6[^�-W�Q졫�=���nh�?2r˯�k�v�\r���Q��Y����Z�h1y�$��ȵ�q5�E��]�%��^�M��S�Ln�zS�\r����Q��Y�������<��C9��\Z�dq]!Y�����f���F���/�d׬�����+�n��nI!W				��.W�,������w2���_ї_i؍�f{����PАѣG��t�M�G�G����ۺ%�\\�v��;vD��.W�ҋ/7���<�p�9�9��9c��3V��!�BL�3:����vɹ1��ᶄ�=z\Z����=���+m[�S��έO>���K�[�������e����H��#:�7u�uK\n�J��Տ?b�_2I��N������|�%�sȨ�\n�l��6gz�3=�y,�y��\\�s�t����E�k]\r���%���~X���蟖�r����t>$���~��+W�L�y�fՇ��H��#��7u�u[)dϞ=cƌiҤI�:u�ﾻ�K��nܸ�l�go�[�6w�qG^~��u�.�5���p�9\\O�\\�o�[�GGO�nw:�;/؜?ۜ�΍���*�n\\f�žh\\���>�lm�����+VT{�|ǜ�#\"~ȷ��a��fꔔ�;v�ڵ+...����\\��<V��=�@�G|T�~X�ԭ���ͧ�.�1���Y��СC׮]}<-=7���ؤ�z�\Z�.�����ҿ��G�����.Ś-kyx��<{ٙ�(�p���>�5὏�O����g�Q�;��~��;)�pu�����/cWw�|�s�6��ÇϚ5k���̙ӯ_?���9�K�.���4&M�ԨQ�������G�G|W�~X�ԭ����|����3fT�V�gϞ{���_����ݗЭ{w����ז�ʑ�y��g�kW�:�?]r��vڜ����?תU��*Tz�N�_����^N�~<\Zv��Y��g�[Wr�v�Բ�|�.�֭[e�^�~�ƍe-�m۶\r6L���̔2�߿�u���}�L�\"�����s�ܹr<��	�{ħ���L��mݖ�dddԭ[�I�&�-n�?�e�ƍ�<��Ӳ_��\\Ֆe�}�Y�v��O��<��=�z���q���m�]U���⥳�u!���,ϝ��\rY�<�\n���6�޺����\"����|2k���DEE�,�o�>Y����X�ס�x{ɒ%cƌ�b�.\"�c�.^�8--����#p��������[��۲}����jժ���{e�����S�W�:o��v�u1��p���s�+/���ؕ��OU���{*W��pY�ә�缔���mQ�\n����k�_�b\\�����~5�޺��h_��SSS�.]:jԨ��0���/_~��qs�6�k�n���e����廗	�����P�~X�ԭ��m��D9 )��� �b�Jُ\Zߍ��v��0�e1/����\\��fێ�cOԩ��+���s��q��q��sJ�n�1*�n^`�b\\]cW�µ�s������?3��f�.� b�ڃ���t\Z�\Z:th�Y�]�&M�ر�����=r{��뙺�ۺ��dddT�^}��շA�e�ҥժU����v޸6r%νP�}��&$F�I���}w�})�b�L8\Z��5>i���	��>�����Z�_e3׶��v�â�L?�ao��st�s�\n\n*e�0`��	ܳ����e����{�G�{�ܶ���z�n��n��999u�ֽ�Ĕ\\&O����O�ۇU����8g\\��������{㍖f{�b�؏g�����?̰���st9s֞7o޸q��y�����vzz��U�BCCsss{��i��(�&%%���˂{Ģ���,o?�g��o�֫o0cƌ&M��c1�ƍ�|���a�����~��Z~6�6��m�͍�[\\\rc��ϰ���}��O�T�糷Dd�MII)�Qf�#F��:$\'\'�oY�={6<<|�ܹ����ɓ\'o����+�#�������[��������U���7b�Yd��g��;\"ƻv��e���i���[<\Z�0���X=����CBC���C�I�,]�.�J��\n\"C�IHH��\"�u�z�̿ܐ����\'�HCR{�>}��Æ\r�ܹ��˗O�:e��n�������_�~X�ԭ��퍿��HϞ=�=��K������y9��ݰ]����-�B�9G�o�^s�6�h�C9����=By��[����?��x#��v�<��AzϨԟl��d�j��F����ng^�M���M!���ל�=�������=b�{��v�n��no�\r���S�fMEsy衇����1*��q��]�3�%qo<s����h\n��ˋ�3u�9�|�|?#��G�r�Pޞ�[���|�1c�:ԧ)d����]|=N7��6u����BVLQ���ic�|x��r����U\n)��]�W�7���P��Xw�6q���=By_u��u[�|�&M��]�֧)d��5�7��8�V\Z3M�y睃����|֨�SE���(���r8�uӷ�_���/����Z��L]�bEo�h?����=����}=ԭ?�m)n�\r�z꩝;�|�B���k׮��q�eee��7iT�Re͚5�g�J�Q���q��?��<,�0�-�{�J!�_b�w8�3��s�?������{���֟�7�իW?v<ͧ)�xZ������qz���������Ϛ���Q�\'��/�ץ�ѽ�����nh�߯R���K���n*e����3���G��������纽�|���+7/ߧ)D�/�2v��R����\0�2�,�%:�lϠ�<���?W�te����7�|�Z��v/����d�����%j���W�-��]\nKԉ����<��{!�+W6��R�J�۷衇Z�h����\\��µ��.Ŷ8�����6Tj��r�###e��>\"↕��X���?�#���P��\\�ף��B���c�iÆ\r_y啚5k�����uU����X�!�ý.��0/�4�z��p!i�������II[��NLܚ�}X��>��u������32�3J��烲>{��{\'��}�7��s�77.ݼy��M˥�A�<�e���aa�ǌ\"�4BCM�\ZR�x����i�BJ��3	;�)�o�Yp�P�<%��û����U\n)�;�����^��=�}�=:��-���/>W���3n���w�ZJc͚�E��ŋG���}t�P���\'u{���{w���K�RRRv�ÿ��Ŝ˩G��p�:={���;���_�˜�w��l������~�ߑ������-��F�n���DDD�i�[��=��3q��k}�:]����ڤ��O��E��͆ݖޣG��#����z����Ln߾��顏=�狮����ܣ1�ken��I�߯Kpp�#����E�Ͻ�aC{�k����h)Ǖ+�6l��ҥ�X�bΎ�k��\r�����cyy��������o66��������:`@�a�z�n��ՠ���2�{�zϞ̈�=��������RSw��i��&�[��_���/����:P��K>�G�����-�����-[6��eȐ#���U����}���v���I[��C{���eA�z\r6n����+���D��r��[���{��?��k���L��_Y�p�˚4y�����k� %z`�&WY�Қ6}e}�\"������o効_}��[m���x�jn��7;v��A�|�B\r\Z��qzZ�nݬY�Ξ=[�)#/�9ivY�µã]l]�?=-fΜ��p��i�~�`����}t����ۙ=���;>���3N����#�_2qbpօC2���v��\rM������ݻ�/_���m��U��ҽp�}Р��B��ʳ��1��vv�K�����ڵ�<�͚/��=�����?,tPj�vy��+����*�x=��U\nq�z��d��R��VP�{>�G�Կq�%�\'\'E�δi�g�#�,)��C��p߃��uv��ҥ�{�[ -�o���7o�P�R�˳�-p�Į�=~��#����C�^��D���gE�\\���-v׷;v|-��d��[W��en�W�M���`����=����=���x�jn�o�^Ũ���a��\nm�_i���x�Z���%��۝޴�]���}���l^f���`��_�W\nq͛Ƿo[ٶm3)�U+�d��wŊٯ��җ_Δ�Q���Ң����/�9sl���Ա���[�!���;m��9����������V	�6�!ee��N�����>�#K�|�}��֭�ȄުU���:^wK!^�Kބ[�G��1;�����d���o�u{+r�rY��{V�[�,o�������Xx�(��ݷ��X��[`���zPx�i��s��p�PޞnO�^�|�w��?�W�1c�<߼��CF�oݺiX��W^��/��>��])䇥��6����6(���p�no����[�*�d���\'��� ��T�y�9ǌ�qW�pK�vφ�l�\\޳g��a=��ݯ�۽zu�ۧ�����6KJ�d�2��ѣۋ�?#cW���eKʑ��N�ɖY�޵َ��9th����_=wذ�B�d��ԩ���oѯ�۲�	�C�2��;���vܸ���۶mj�t;~|����~��ʕ����={�\r���w�XU���o���?�(���G��_*�O���X���o�͛&��7_���=�j�쯾���O\'fg\'���\Z����6Mͯ�\\��~��+�����z�~r�P�n��n���̙�owjy�PĹs	M�������sX�f�^�ێ.^�ј1�z�h�i�������=�����nKJ�l�O-��������ֽ��R��9(8�׃��Q�r�ʺ�q��m<�h+�ŵ޻g݌a�|2^�;w�Z����<>�E����$K�!��M�Vl�\'���{��8p@	�A�|����:�ۺ�,_�ٰ���ӣN�Gm߾2>�[�F{����{�M�\"�ݹc�t�=������\r\r�\Z:�/yD�Ү[�q�Y�ôi�j����?�6jT�Ԕ���+73^���M!N���2��{���]:�ڿc�6Ml�T����J�X��U+g?�\\��_ϑ�u�&Go1����[�h�n������F�o�~t���>~��G(o���k��|)qҤ�����ĉA߮����0a�����~X:�m��Jѣ�[�~XҰ�}zw�3gr��?�/�o����퍿AVVVժU}�v��S�|��_�{ƻv<�^��8Z`��+d���-���2�-X0==}�\r_No�ڵ�\"O}������뽐ԭ����ݿ�۞�_���O?���ɘ�C�͝;e��ÆuO;�#a��Y�&M�<|��!�O�o,�]���=���	��kcw�7n��+cnu}�~�:�H�)����e���ti%φ�\rH5����͌׳��S��:3u)��3g�@���w+�����o[>h�;�e��c�t���y!��M�:�i#%L<�؟���_���e~7���C��E	�uH\n�-[�._��K�7ecX�\0#���������=By;oK�^��͖r�`Dǎ-���Nr�+�<��_|��sY$I���9У�[�6-Y��}s\'�0�P�Ti���խW�`ƌ�\Z5.�\"��>�}_��L��,g?��X���k��x��&�/������=���>}��o�-Z4C�ķ�6۵k�l2�뱣[��?�D��^�k�+V���&v���nO9s:V��[0.����;sz��?5%��^ܸ�K�\0V��%Ϻ�\'j��z��	\r���7��o��ؑ#�݇mL���)85�系�)85��_~�_��z����u~�^J���o­�#��߳�ۦMdg0��\Z�GB��Ç�9����R�������G��h�֏�f��i�!׽�[�.�-�\n�g�0��e���q�������}]�7�ߧw�s?�=zt뫯֋��zW�ײ�Z5�K��,��}����jr`��Z�������O�z�\rrrr�<�Ԕ)S�1���d��d_���Ĩ��=E֮��n8R��ln�n4�ϛ�Vۦ���$�N�:|͚9�BƄ\rX�����A�=\ZYl�\'N����m��纒G�_�rr\r�9<|��i#d�������C�{���K���e�Ο?�}<�O�:����曯��Ԕ-�����߹sKY��ĝ����n;�i�W�)�x=�O\0�gY����s��n�)���~d��I�\Z�x��w7)η�~#$�����7o���m۶e�gn<}�u�}\\���1%e����Ð[@\Z�[�c���\"����o����Ѽ�}W�^��С�믿��/?�����mt;��=���h��We�/�$t��F�^�\r꒛������dddT�Zu�ҥ�AV�\\y�}�;��ӱ��R������Z��k�Q�C��o�΍���4~<�3��/���E�>��߽{�cG�x~��o���3�O��T��K>|����V��_���9s&;�S?F=�̓O>�߻w����ԯ�\\����}���>�(Lڃuٟ�N\Z����]�����-9�2���x�ϰ奬3u���޻�{���[#�u��=T��ݖ<&���m�r��䓱���oXX���/�@��ɾ�-p+������������~�K�ǏGJ�E�����K�ر��O?nvH;��G�����5��M?,z�z{v#;���)���q��_�m�Az���H���\"QF��}�ߍ�Ɂ���kq8̋T��_�^rc���9��y��t1A�S����m����N΁��oL�{K9�#G\"n�����f����LHs�������/&��t��GGܞ��=�my�Cݖ�???1��n�)[~�Þ�Oݖ�DGG�w�}���ڪU��=���2�L��T@�QF�亰�a�����d�-/���6G{�{������M��mݖ�ddd�y�F�\Z���f��|�|�� ����I�b^ɤ��\rw��u��?3ly)}��9�{�#p�hX�ԭ����|������ߗ2�ֽ�7YD�HO�/_�oG-���a�q%�\ZIf���b�j�߯f��r��: �h�q��=�[yS�~[�7�\r���F���<��C\r�z��;��O��˗��eˠ���Y�<|��/���#/\'z�8��_�3ly)9S��=�G�*o��o����={Ǝ��iK�:��wߝw�)ki˖��P��?b�q�w8�\\���Q�p/�-%�ҹ����+��t��9S��=�@�G�)o��o����ZիW?����q�\\���Ac9pu�`Q�����8���{���t>d��+V��9�{�#v�hR�ԭ��-)�*�k׎�^����\\�F��y�����=��U_:ߊ���9Z֪D=���G:w���M��mݒB���Y  �}͜�x^�b4�?<��ѣ���t>7v�XՇ��G���Ϭ�;��o�6���Lbbbj�x ?o��u%�$��p�|X�)]�˹�Y�Q;��t>��L�\r���Gt�m��o�6����Z�h1m���>�c�k]�jשh������c٧m9W-��W}�nfj/q��=�ImS��Y�Z_�$%%���w�ض�u�\\�d�,Nc�j��\\yj��A��?D̩V�ʡ�_��h��&3�7�G�z�$Z����F�ڦn�snע��j���r[F|?����Y`^��z�(jm1�fC��۷͗���OT_��D���K�#�t��S�ԭ֭.�WV�֭�}�*Ӧ���*p�v�6�N��\Z[�j���m����T��ݻ���P��>3���G�Ѫ��[�[��������7�\Zz{W�����8�Rś�i��W7\n\n�uz��߿�w\"=<&japP�\Z5�Т�KI�+U_��J���K�#�q��V�ԭ_խ^�wbbbBFw}��Z��zGŊt%c�3P��Zr6b���,\nT�l����ɺ�H-k��5)�[�Ϣ�{jU�r���m�4��)>k����e�HKKS} �b�F�������k=x�������7�ԦM��>}i>S �Q�ji~���U�o���^�*U���U��4�)��m�4?�Z���_�)䮻�z�����T��4�)��m�4?�Z�jժ��y���o	�JG��`ԶZ�����̿�W�o����LՇ��g\n0j[-�Ͽփ�\'N�}��\Z4h �x@֏>��g�}��д��L�\0Fm�����z��/\"\"B\n���������7���4֭[��д��L�\0Fm�����z�����,�Tio޼Y�1iI���VK����E�JU��@Em�����z�֢y�*��G�������k=xkѼR���#PQ�ji~����h^��q���m�4?�Z�Z4�T�8�TԶZ���o-��կT��4�)��m�4?�Z�Z4�T�8�TԶZ���o-�W�r�*j[-�Ͽփ��+U9�?�����_��[�敪����VK����E�JU��@Em�����z�֢y�*��G�������k=xkѼR���#PQ�ji~����h^�����OIIٱcǮ]�����\r���QQQ����z�Saaa���\0/1������z�֢y�*W�����nڴi�.]z��էO��_�M�6�{��֭[�֭׬Y#}�>k֬�W�3gN�~�̝lٲe�ȑ����{O\Z�&MjԨQppptt��!t�ܢ���_��[�敪��翠����?�|��,�n�*�c���7n����m�6l�0y6333>>~����Z$�$&&N�2E�ȁ���s�ܹrP��E-�Ͽփ��+U9����	���?dee%$$xn�%�b߾}���������N��5K�,3f����G��رc/^���V�C�-ji~����h^��yy��M�֧O�-Z�9s�^���p?%)$55u�ҥ�F�\n���|���Ǐ�)�Ԯ]��֯_߾}�����E-�Ͽփ��+U���͚5�HQPP )D�deeկ__����L!���̔�.\\:th��I�&u���gc\\�[����k=xkѼR�+�����=��#k׮5�)D�;w�nݺ΢TJ\n0`��	�)d���Z|5$��ܢ���_��[�敪�\r�~~���N!��ŋf�L!���7n��0�ϟ�B���W�Z\Z\Z���۳gOy(�٤��r���E-�Ͽփ��+U�2���_��F�)))�6J�1b���СCrr��#��gφ��ϝ;7\"\"��W_=y���8p�-ji~����h^�ʕ��?��s%72��o�H��W���͛������\'�H�>�ӧ�ȑ#�\rֹs�˗/�:u�f������ܢ���_��[�敪����VK����E�JU��@Em�����z�֢y�*��G�������k=xkѼR���#PQ�ji~����h^��q���m�4?�Z�Z4�T�8�TԶZ���o-�W�r�*j[-�Ͽփ��+U9�?�����_��[�敪����VK����E�JU��@Em�����z�֢y�*��G�������k=xkѼR���#PQ�ji~����h^�J�l�E�eee9����={v�ء�����ܢ���_��[�敪�����W�X�V�ZҨ\\�r�������E-�Ͽփ��+U��\'V(�g�	W}h@�anQK����E�JU��ٳw�y�giذ�=�ܓ����Ѐr�ܢ���_��[�敪ʐ!C*V�hF�J�*I\n�0a���s�Z���o-�W�*yyyU�T1SH���~����\\��\'��4?�Z�Z4�T�֬Yc�\\�F�\Z|\"���E-�Ͽփ��+U�g�}V����UP��[����k=xkѼR�JKK��/k��?��4?�Z�Z4�T�8�TԶZ���o-zVjtt��ѣk׮}�}��q�%�z�&d�r�<�ِs��� �T�rn����o-�UjRRR�-~���Ç��u<-=/ߖo��n,��5��n��y��r�<\n�sҼy���D՗B����h~����hU��w�T���ɓ/��H�0^�]k��\"�Xlvw;���9�2eJ�j�֭[��B!h5��!�Ͽփ�}*U^\\e�����+q����帨m�����x.:�߰q��%�k�/,O���?i~����hR�III����7n\\�o˳���m����b]�yf7wC����[~��_��\"M������z�֢I��h�b��I�K����\Z�ܢ��vіs{a7-�O�2���MU_4X�&s�����k=xkѡRcbbz衜܋��j����+������̵���ն���5�fp+t�[����_��[��\Zl�]6^�/�R��]V��뵹�˯4��F��=�s��?(h��ѣU_:X�s�?���k=xkѡRk׮�cGd���{�ŗ��tw8ۜ�{���+ؐq!&����qn��ܘ��p[B�=�����/�l���m�O@��;�>���/,L��şi~�����P�իW?~���~�\\d��N������|�%�sȨ�\n�l��6gz�3=�y,�y��\\�s�t��^�/�_�j،��.��|�â�F����{�W�����0��3�Ͽփ�*��;���϶�^�/����Ù�p=e/p���n��5=q������`s�ls�w:7���J!v�%��B~�x9/�O�C�F��\0蟟�]�bE�������4?�Z�Zt�T���_lv	\"ٲ���γ������ϟ���Y��8��)yh+p��dG��¯5��p\'%�W�0�u�\r������_��[��j��!��Y�ڕBΟ.9Og;mNg~^ޟkժP�\n*��V\'�/���}�k_����h�=�gLj��_�J�!hM��W��[��j$�,�U^b�̟Ȝ��<���L�3�@���{ǝw��{��mwU\n�/���,�=�s\'v{aC�f�����9w�\\�ʕU��4�����P��OU.�^h����Οs\\����ؕ��OU���{*W��pY�ә�缔���mQ�\n����k�������������IMM�Q���К���փ�*�H����C� r��<��<��mG±\'��}����9O�8��8��9%�l�1R��|�v-�+��+{�������ס6�#qqqu��Q}Z����z�֢C�\ZI��+���^��¾C�c��$n�Oܾ;yǾ�M1w&��O�\Z��}wR����i�����V�̯��k�yχF��a�����Y�hQ�֭U��4�����P��g;�����+��������N}㍖f{�b�؏g�������ի�̙3U��4�����P�F\n��f?kw-?�m���6����-�����:�|�����U}Z����z�֢C�\Z?��4^b�7�f+l��x>4^�3�/��_ؿ����o��T��4�����P��{!��\\l���t�Cm�:t�0u�T�G�;��_�o-:T��B~��~���a7����yU7���P(wǎ���~w��i��;��_�o-:T��B���g�^��/��g��A��:��WVV��w���W_�>h1��B��[��Z�B�崱x><Sb9MY�Y������[�v���sA�x≷�~[���E���Z�Zt�T#��*z}u7J.���b���_�6:T���ڼy���	t�ر�5k��۷��@���E���Z�Zt�T#��(���)��U�Gs���ƳE}t�ﮍ��������W�2�ǣ�>������_��~b���R�����A�_�an/�փ�*�H!\'�WVY�t�^�toqxl77���7k���?���7�?�֠A�v�ک��P�ܹs���qqq�9z��������ӦM���F���Z�Zt�T3�8�K�����W�g�_�y;v�7d��~��J.�o~�ʕ+שS�U�V3f�صk�?U�`n/�փ�*U��p�mF����[���(Z�_�6��Қ5kV�J����|)z��x/�B����6mڥK�^�z������_oӦM�޽�u�ֺu�5k�H��ÇϚ5k���̙ӯ_?s\'[�l9r����ޓƤI�\Z5j�tp�.��Rh=xkѡR])�~�n,Ґ�Z��p��|�F�C��Ϝ9n�ƥ�TZڮ��\r	�\"�,븸�?�=��߳g���c��;v|�z���\'��ӊ��O:����?<��?_^�_J������^3��?��\\�<����ϟ/�]��֭[%y�_�~�ƍ����mۆ\r&�fff����߿_R�đ���)S�H9p���={Ν;�b(���Rh=xkѡR+�~\"�.������t����	c{a��[�����u}��֭���O�8����6�ׂ3:vh�a��訵�uT���c�	�3nܰ���:aB�رC%[�ގ�ٱc����{�~/O�ݻ1>.|��o��1�3����zg��\r2�S�VM��\Z2p����~���/Vyyy\'N��o�裏�S111�.(nڄ	���?H�LHH��.)D.hTT���}���Z���˳)))K�,3f����G��رc/^����h4(�s{)����P��{!iG�]�F�p��h[����v\\\Zaa�������^x�o�.���7/�g�}wĸqC�~��������̟�}����g���Ν;m�ns�L��N���F���?�l��������ݴiYа^��&M\Z��ٲ���������q��Y��2��kEӦM�ӧO�-Μ9��/DDD�������t��Q�F���I�X�|�����bj׮�FR�۷W1xE���Z�Zt�T#�w-s�V��h��J������߶me�ot��V�a���n���6jT_֒B�H\n��ԩ�?,m���M?,mݺɏ\'c��zId9�c���/�x��E�[�|����՟��t��q��Ξ=eٿ>;�s5����ԩ���\"���|�xhӭ��u�\rMH�h֬�D���I!N�/�կ__����L!���̔�.\\:th��I�&u��Q�p�\r��_�o-:T���T�%���q�Xw5\n�m�l���di��\r�4)x���o���]�e���cqq�6i�ॗ����VΖ�!!�_{������{�Z5\n�)˟�T��ֳE���R��Xr��ݻ��>��J�X�j�:�:��Y3OBɱ��o����_���AZZ�#�<��s�f\nq\Z�s[�n݌�gQ\n	\n\n*%�0`	�2~�xI-�}4����փ�*�H!��zT��c�m�G�X�-��oۦ�4�����];bDo�\"���Gc�l�W|ܷ-[�v�P�믿r�t����axp�������OK�#�lX���7�{!Fc��y���۶m*�E�>|��<��ǅ��5�o�����P����w��)D\\�x�l�)d޼y�ƍ3����=SHzz��U�BCCsss{��)e�<���tǁ2����z�֢C�\Z?�Iu8���m��cm��\Zm�{Kj��K\n��I�֭͡�C�t���$�DnY*ϮY=�O����u\nХK���{��w��.3g���=,;��iC�t�3g��9���yT\Z��������A��}�曍ƌ8f� �����_������_��F�)))�6J�1b���СCrr��#��gφ��ϝ;7\"\"��W_=y򤯏7A��W��[��j�\"����ڵ��z�=��y�?//��\'��w��/���ӧb�4�?zt߷�63�YjvKJ�X��Si�n�x͚�_���z���?�d�����ۻn߾u���������g͚�>��m�~���I\'���Y�N�J!�|���ס64��sϕ�8dȐb�5#��^�z�ǐ322>��i|��}��9r�a�:w�|���S�N�W������փ�*�H!){��]/��#�\\�v�{�F/��Ůi�����V�z��g��>�e�������G�Sm�4��Z%�e���7~���n���~���e�>�pfXrRDrr������n��K�Cm\0�J��W��[��j����#�k�n��F�e韛s�w�v��~��ߥsˇ��cG�,_�qǎ�{to۹���=ڶi�}��.�_ɚճ����g�,���}�-[��4�ϟ���I����/�����3�����_��\0����փ�*U�X�z�u-��\\��_�^r�M�wؓon�I�K韛s /�fK���\rjT�߿Z�Zt�T�ө���(0%ׅ}{���Cm\0�J��W��[��j��d,�Kl��^���pwp\\�P��:��4�����P���B�W�ĢF��(��س��ס6�@������E�J5�I�~q8ѿ�X����փ�*��;�p��^k9�\r���R�)����X���K�&�0��B��[��Z�z��\n��Yp�h4�W�u8�y���ｷ��K�&�0��B��[��Z�v��%�W��~�E^t�]k�Z��3��V}�\0�$��Rh=xkѡRCBB���8��5��z씥�������~g���/�����^\n�o-:TjLLL�\Z���v�^e��6�x�-\\<J��r�j��c��E�/�����^\n�o-�Tj�-�M\\���t�s�\\\r�5�h������c٧m9W-��W}�\0�<M����z�֢I�&%%���w�ض��z�z��+��X�\Z�-W��gvа�s�U��xh����i2�_�փ�}*u���2؈�g8�8�W\\��z�(jm1�fC��۷͗���OT_.\0�D�������hU��֭�}�*Ӧ���*p�v�6�N��\Z[�j���m����T��ݻ���P\0n�Vs{IZ�Zt�Ԥ����_z�������eFzx�#�x�7��p��n>��l[��=�DzxL���N5j��E�W��D\0ʁns{1Z�Z��Ԙ����]�|�V����Q�b]����~�����腪/�rSA˹�M��[�敪�رcU�\0��ܮ��E�JU���4�[���h^��q����s�փ��+U9�?\0_�|n�z�֢y�*�����-Z�Z4�T�8�\0|A�E��[�敪��/h>�h=xkѼR�������o-�W�r�\0���ܢ��E�JU���4�[���h^��q����s�փ��+U9�?\0_�|n�z�֢y�*�����-Z�Z4�T�8�\0|A�E��[�敪��/h>�h=xkѼR�������o-�W�r�\0���ܢ��E�JU���4�[���h^��q����s�փ��+U9�?\0_�|n�z�֢y�*�����-Z�Z4�T�8�\0|A�E��[�敪��/h>�h=xkѼR�������o-�W�r�\0���ܢ��E�JU���4�[���ܰRSSS������e�iӦ+VL�>�gϞ����>�Ǐ�������?�u�Vro�����p8�m���OSRR�7l������`,�f�-Z�(++�Yt���ٳc��� p�B`\r7�ԣG�Ξ={�˗/����&YD�����v�]�=x�`�~�BCC�t�2x��֭[K(��T��8q�|�޽{���ߠA���yэ��IOO7;�={��W_��&��ܹs�fͤ=h� ��]9?r�+V�X�V-iT�\\��a��ͪ\r@� ��\ZJ����ط�~;88X2��q�}�QYKP\n\n��qqqIII�y����ϟ�8���빓�?�|Ȑ!�O=����߿��w���I-����:u�ԴiS�4����\'V(�g�	W}h\0,��Y�H!��M^~�7$y�3FR�رc%��o���ŋ���˗%y�=:>>���ޓ��ݻ�Ν;%���H�|�����|�M��v�Z�.�ݻwϝ;Wǅd�ƍe?h���w�%\'\'�j��={��;�� \r6��{233U\Z\0�}V7R�ex�B�5r��A�fCrɥK��))�I�&M�6�駟�2e�$�=z|���/���U�����4RH�֭�\r�<�ِ=�)�ȑ#ҭe˖���;V�^�ް֐����3�Đ!Cd�0\'�J�*��0a��`m���F\n�/S�6C����F����O�feeIVشi�k������K��޽�l�ҥ��S���bz뭷d�x��]�~j=zt��Տ���U�RŜ#ڷo����1\0�ﳺ�B,Ûҭ[7�cǎ��_�b�D�G��ϟw\Z)d��٫W�nԨ��׭[\'��Y\"�:���BP2��X��U�V����3f�/��\'֬Yc�5j���_*\0|��YM�˸a\n9x�$�ɓ\'O�:����2eʻ�+[8`v�իױc��y��ÇGEE�n��yu\n��?�1w����\r\Z���>�lΜ9��\")dѢE�B$�|ex��;��g�}V����U�\0���&R�e��B$I���/���YYY/^lٲ���-[������۷�aBRHNN�d�y��9���M]OM�4)�QBL�ʕgϞ-)䣏>:bذaCXXX9��O������Ͼ\0P��Y��)=�$$$���7((hԨQ!!!#F���ȑ#�j��4~M�u��&LHIIiذa~~�lt�M1������o�R��-[&\r�>���_�tiyѯi�;�\0|��Y�X-�|_���̆Ĉ����>\\���l6�]�O���������زe��Px��b�[\\	����V�\\)AD����S���Z�Z4�TU��C�����\"\0n�޽{ǎ۴iӧ�z�z��w�}���-[d��כ���eT�X�?:��xFs!�\0�9YYY�������Y��#}�����)�2*W�|��9�G����Dd;�ॼ���3gV�Z���Ó���r�/P�B,�F�\Z�����B׋ �\"���*\0oddd<��S��Bf�N�:}�xIttLZ����.�Zڲ�C��g�u��TH!�Q�N���8�G���#A������W��?���%Ksr�J�[�Y�S�fM�W�d?���+��hݺ��E�TE��&�D\0ܐD�J�*�I���1cƥ�97�X�EzN���|��岟@\r\"�˘9sf�^�TE��>�D\0�\"##��.H�j�6o�����W�?M\"{�͐B,#66���S}���� �����ܟ���|�&\"���׺�Hݺu�ê�˰�l������UH`*AN�������Y�\0O3g�t� ���)���]w�e�P��zp�b%ӦMk߾��@%#HHh�d�C�Iלd�<+}\"\0����r��ˌ3n1������}7���)�JN�>-/��M��r�b���\"f1;D\0b��ӟ��8j����[3�����X�H!��W_I-XV��r� �A\"\0Jr�u��K��K1ٛ�[ٿ�!�\'R�������\'� �ܺk~�X��\"%#��,�`ڳg�93�<P��)�\"{����y �_3��)((�ԩ��w�͏fn��~#�zQ#|��R��B��f�:u�233K>;v�Xsr�Y�#��t���ܹ|��?p!�X�W_}%/��۷�fnB鿔{� R�bEo\"Al+W�4g�;�s����~u�iӦ�_-^R�)D�i�\\����;R���>}zڴi�Z��c����kѢEqqq����Ν��-�7�A��BXVV���$ҨR�ʚ5k�Ϻ�LHttL��٧�s�.\n�@�\"�X��f����9sf�֭�ԩS�F�ʕ+���;L��i�R��\r#A`�j�����g�}6--M�r��Դ��Bd���廨>���鯣���P2�����~�a����6���r���rO!�O�wQ=��R�)A�����Zǎ�ڵ�4�����|�����ݻwgdd�;w��ׯ����CBB�ߣG�8p`ǎ��E~����7����[߾}k׮-}����u�v��ɋ/�o���G�7o�ѣG�5k��ȫ���z��V�res*�T����z�E��rsH!Ў7A�υ��z��}�ԩ���Z��\'�|2s���~Μ9�*v���4�/����\'N��㏯���t���Çsrr�;��_G~~~�=l6[zz��=�����%�H�s����	�[��]܆\r���+5k�w?��Bʊ�D��چ\r��#G6k��L�̷F�N�>��s�����O��_|�ȑ#�lBB°aò���=z����Di����N�������ӧv��}����㏛7o.�BCCe�{!�\"\"\"�����s�=\'N�wdn)�� R�J�^��x��?�8|�����ٳgw��mРAݻw0`@�6mN�:%}233�t�b�oѢ���߿�����vttt�~�6m���3�Hc�Сk$y�3������?GEEɷ;|���\'N�<)디�.���u��͚5��ٳ%�r�C��B�{!@@�o�B��[�~��gҸ|�r||����8������dv8s�L�&M���_��GyD�HPPP�F�RSS�;9v���X�b�ѣG?����/��B��k֬��w��u�ҥ3f̐Ny8gΜ�>��СC��:ػw�93�S�D\n���d�ĉ\'|���}����Kb�d�iժ�g���ȉ\'J�����_ۏl�t��СCe�]�t9}�tXX��Tvvv�6m\r\Z���q��񸸸����k�ubbbn�8����G���T�<�B�;�O](a������%6̽�C���ʕ+�w�.�̟Ȅ��L�<Y��|6<<�������i~~�;�#)���E�m߾����y��}��W�=�ܒ%K�Ν{�F��Т	�f͚���7D\n�DJ��D� �i��W���iӦ�ر�o�ۻEZ�n-۵k7a���O#.\\���kTTTnnn�\r���RSS۴i�4~�̙3�%�dݺuf���={V��ɓ\'333�7o.ki�=�/deeU�Z�Lӧ�_.)D�c�P�`��))p��gDJ��,n���p��!�c�������[6���Op�����m��-66vΜ9			�����Ȑ�Æ\r���oٲ��s��޽��\'�,Y\"����ߟ1c����hѢ�7Z�̜9�\rw�}���[n1����.s��gՃ+g������s!��6p�$w���ӧO�\"�\r����8�jժIɇo:��׺�Y�[�n�_\0����\"�k���p�U�7���|�;����oqRp�@)���+U�df���k�������������~do����8o��\rItp�#\"~���K���wD�Y�����]�@� NRpM�\"\0/eddԭ[����ҡC��/���IK?q��eYK[��v��&s$ �F\n��zA��L���fΜ�������|U�}�Rp]%������\n\r\ru�e�RH�`�zH!@i<���۳g�رc�6m��SOU�^���e�l�gU�mE\nn�\"+V�$�\0@�\"�\07)D֪\0\n)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)\0\0�A\n\0\0j�B\0\0�\Z�\0\0�)���[�\0\0\0\0������(\0\0<,\0xX\0�\0�a!\0��B\0���\0\0\0\0<,\0xX\0�\0�a!\0��B\0���\0\0\0A�wF�4\0\0\0\0IEND�B`�',0),('3',1,'leave/leave.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\"\r\n	xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\"\r\n	xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\"\r\n	xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\"\r\n	expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.rguess.org/demo/activiti/leave\">\r\n	<process id=\"leave\" name=\"请假流程\">\r\n		<documentation>请假流程演示</documentation>\r\n		<startEvent id=\"startevent1\" name=\"Start\"\r\n			activiti:initiator=\"applyUserId\"></startEvent>\r\n		<userTask id=\"deptLeaderAudit\" name=\"部门领导审批\"\r\n			activiti:candidateGroups=\"deptLeader\"></userTask>\r\n		<exclusiveGateway id=\"exclusivegateway5\" name=\"Exclusive Gateway\"></exclusiveGateway>\r\n		<userTask id=\"modifyApply\" name=\"调整申请\" activiti:assignee=\"${applyUserId}\">\r\n			<extensionElements>\r\n				<activiti:taskListener event=\"complete\"\r\n					delegateExpression=\"${afterModifyApplyContentProcessor}\"></activiti:taskListener>\r\n			</extensionElements>\r\n		</userTask>\r\n		<userTask id=\"hrAudit\" name=\"人事审批\" activiti:candidateGroups=\"hr\"></userTask>\r\n		<exclusiveGateway id=\"exclusivegateway6\" name=\"Exclusive Gateway\"></exclusiveGateway>\r\n		<userTask id=\"reportBack\" name=\"销假\" activiti:assignee=\"${applyUserId}\">\r\n			<extensionElements>\r\n				<activiti:taskListener event=\"complete\"\r\n					delegateExpression=\"${reportBackEndProcessor}\"></activiti:taskListener>\r\n			</extensionElements>\r\n		</userTask>\r\n		<endEvent id=\"endevent1\" name=\"End\"></endEvent>\r\n		<exclusiveGateway id=\"exclusivegateway7\" name=\"Exclusive Gateway\"></exclusiveGateway>\r\n		<sequenceFlow id=\"flow2\" name=\"\" sourceRef=\"startevent1\"\r\n			targetRef=\"deptLeaderAudit\"></sequenceFlow>\r\n		<sequenceFlow id=\"flow3\" name=\"\" sourceRef=\"deptLeaderAudit\"\r\n			targetRef=\"exclusivegateway5\"></sequenceFlow>\r\n		<sequenceFlow id=\"flow4\" name=\"不同意\" sourceRef=\"exclusivegateway5\"\r\n			targetRef=\"modifyApply\">\r\n			<conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${!deptLeaderPass}]]></conditionExpression>\r\n		</sequenceFlow>\r\n		<sequenceFlow id=\"flow5\" name=\"同意\" sourceRef=\"exclusivegateway5\"\r\n			targetRef=\"hrAudit\">\r\n			<conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${deptLeaderPass}]]></conditionExpression>\r\n		</sequenceFlow>\r\n		<sequenceFlow id=\"flow6\" name=\"\" sourceRef=\"hrAudit\"\r\n			targetRef=\"exclusivegateway6\"></sequenceFlow>\r\n		<sequenceFlow id=\"flow7\" name=\"同意\" sourceRef=\"exclusivegateway6\"\r\n			targetRef=\"reportBack\">\r\n			<conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${hrPass}]]></conditionExpression>\r\n		</sequenceFlow>\r\n		<sequenceFlow id=\"flow8\" name=\"\" sourceRef=\"reportBack\"\r\n			targetRef=\"endevent1\"></sequenceFlow>\r\n		<sequenceFlow id=\"flow9\" name=\"不同意\" sourceRef=\"exclusivegateway6\"\r\n			targetRef=\"modifyApply\">\r\n			<conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${!hrPass}]]></conditionExpression>\r\n		</sequenceFlow>\r\n		<sequenceFlow id=\"flow10\" name=\"重新申请\" sourceRef=\"exclusivegateway7\"\r\n			targetRef=\"deptLeaderAudit\">\r\n			<conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${reApply}]]></conditionExpression>\r\n		</sequenceFlow>\r\n		<sequenceFlow id=\"flow11\" name=\"\" sourceRef=\"modifyApply\"\r\n			targetRef=\"exclusivegateway7\"></sequenceFlow>\r\n		<sequenceFlow id=\"flow12\" name=\"结束流程\" sourceRef=\"exclusivegateway7\"\r\n			targetRef=\"endevent1\">\r\n			<conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${!reApply}]]></conditionExpression>\r\n		</sequenceFlow>\r\n	</process>\r\n	<bpmndi:BPMNDiagram id=\"BPMNDiagram_leave\">\r\n		<bpmndi:BPMNPlane bpmnElement=\"leave\" id=\"BPMNPlane_leave\">\r\n			<bpmndi:BPMNShape bpmnElement=\"startevent1\"\r\n				id=\"BPMNShape_startevent1\">\r\n				<omgdc:Bounds height=\"35\" width=\"35\" x=\"10\" y=\"90\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"deptLeaderAudit\"\r\n				id=\"BPMNShape_deptLeaderAudit\">\r\n				<omgdc:Bounds height=\"55\" width=\"105\" x=\"90\" y=\"80\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"exclusivegateway5\"\r\n				id=\"BPMNShape_exclusivegateway5\">\r\n				<omgdc:Bounds height=\"40\" width=\"40\" x=\"250\" y=\"87\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"modifyApply\"\r\n				id=\"BPMNShape_modifyApply\">\r\n				<omgdc:Bounds height=\"55\" width=\"105\" x=\"218\" y=\"190\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"hrAudit\" id=\"BPMNShape_hrAudit\">\r\n				<omgdc:Bounds height=\"55\" width=\"105\" x=\"358\" y=\"80\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"exclusivegateway6\"\r\n				id=\"BPMNShape_exclusivegateway6\">\r\n				<omgdc:Bounds height=\"40\" width=\"40\" x=\"495\" y=\"87\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"reportBack\" id=\"BPMNShape_reportBack\">\r\n				<omgdc:Bounds height=\"55\" width=\"105\" x=\"590\" y=\"80\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\r\n				<omgdc:Bounds height=\"35\" width=\"35\" x=\"625\" y=\"283\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNShape bpmnElement=\"exclusivegateway7\"\r\n				id=\"BPMNShape_exclusivegateway7\">\r\n				<omgdc:Bounds height=\"40\" width=\"40\" x=\"250\" y=\"280\"></omgdc:Bounds>\r\n			</bpmndi:BPMNShape>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\r\n				<omgdi:waypoint x=\"45\" y=\"107\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"90\" y=\"107\"></omgdi:waypoint>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\r\n				<omgdi:waypoint x=\"195\" y=\"107\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"250\" y=\"107\"></omgdi:waypoint>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\r\n				<omgdi:waypoint x=\"270\" y=\"127\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"270\" y=\"190\"></omgdi:waypoint>\r\n				<bpmndi:BPMNLabel>\r\n					<omgdc:Bounds height=\"11\" width=\"100\" x=\"10\" y=\"0\"></omgdc:Bounds>\r\n				</bpmndi:BPMNLabel>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\r\n				<omgdi:waypoint x=\"290\" y=\"107\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"358\" y=\"107\"></omgdi:waypoint>\r\n				<bpmndi:BPMNLabel>\r\n					<omgdc:Bounds height=\"11\" width=\"100\" x=\"-24\" y=\"-17\"></omgdc:Bounds>\r\n				</bpmndi:BPMNLabel>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\r\n				<omgdi:waypoint x=\"463\" y=\"107\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"495\" y=\"107\"></omgdi:waypoint>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow7\" id=\"BPMNEdge_flow7\">\r\n				<omgdi:waypoint x=\"535\" y=\"107\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"590\" y=\"107\"></omgdi:waypoint>\r\n				<bpmndi:BPMNLabel>\r\n					<omgdc:Bounds height=\"11\" width=\"100\" x=\"-22\" y=\"-17\"></omgdc:Bounds>\r\n				</bpmndi:BPMNLabel>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\r\n				<omgdi:waypoint x=\"642\" y=\"135\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"642\" y=\"283\"></omgdi:waypoint>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow9\" id=\"BPMNEdge_flow9\">\r\n				<omgdi:waypoint x=\"515\" y=\"127\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"514\" y=\"217\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"323\" y=\"217\"></omgdi:waypoint>\r\n				<bpmndi:BPMNLabel>\r\n					<omgdc:Bounds height=\"11\" width=\"100\" x=\"10\" y=\"0\"></omgdc:Bounds>\r\n				</bpmndi:BPMNLabel>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow10\" id=\"BPMNEdge_flow10\">\r\n				<omgdi:waypoint x=\"250\" y=\"300\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"142\" y=\"299\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"142\" y=\"135\"></omgdi:waypoint>\r\n				<bpmndi:BPMNLabel>\r\n					<omgdc:Bounds height=\"11\" width=\"100\" x=\"10\" y=\"0\"></omgdc:Bounds>\r\n				</bpmndi:BPMNLabel>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow11\" id=\"BPMNEdge_flow11\">\r\n				<omgdi:waypoint x=\"270\" y=\"245\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"270\" y=\"280\"></omgdi:waypoint>\r\n			</bpmndi:BPMNEdge>\r\n			<bpmndi:BPMNEdge bpmnElement=\"flow12\" id=\"BPMNEdge_flow12\">\r\n				<omgdi:waypoint x=\"290\" y=\"300\"></omgdi:waypoint>\r\n				<omgdi:waypoint x=\"625\" y=\"300\"></omgdi:waypoint>\r\n				<bpmndi:BPMNLabel>\r\n					<omgdc:Bounds height=\"11\" width=\"100\" x=\"10\" y=\"0\"></omgdc:Bounds>\r\n				</bpmndi:BPMNLabel>\r\n			</bpmndi:BPMNEdge>\r\n		</bpmndi:BPMNPlane>\r\n	</bpmndi:BPMNDiagram>\r\n</definitions>',0);
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
INSERT INTO `act_hi_actinst` VALUES ('103','leave:1:4','15','15','exclusivegateway5',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-24 14:59:34','2014-03-24 14:59:34',3),('104','leave:1:4','15','15','hrAudit','105',NULL,'人事审批','userTask','user2','2014-03-24 14:59:34','2014-03-24 21:04:20',21886362),('110','leave:1:4','5','5','exclusivegateway5',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-24 15:20:40','2014-03-24 15:20:40',0),('111','leave:1:4','5','5','modifyApply','112',NULL,'调整申请','userTask','admin','2014-03-24 15:20:40','2014-03-25 21:00:49',106809427),('117','leave:1:4','113','113','startevent1',NULL,NULL,'Start','startEvent',NULL,'2014-03-24 15:22:13','2014-03-24 15:22:13',0),('12','leave:1:4','5','5','deptLeaderAudit','13',NULL,'部门领导审批','userTask','depman','2014-03-24 09:57:31','2014-03-24 15:20:40',19389184),('120','leave:1:4','113','113','deptLeaderAudit','121',NULL,'部门领导审批','userTask','depman','2014-03-24 15:22:13','2014-03-25 21:03:44',106891178),('19','leave:1:4','15','15','startevent1',NULL,NULL,'Start','startEvent',NULL,'2014-03-24 10:02:04','2014-03-24 10:02:04',0),('22','leave:1:4','15','15','deptLeaderAudit','23',NULL,'部门领导审批','userTask','depman','2014-03-24 10:02:04','2014-03-24 14:59:34',17850464),('303','leave:1:4','15','15','exclusivegateway6',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-24 21:04:20','2014-03-24 21:04:20',7),('304','leave:1:4','15','15','reportBack','305',NULL,'销假','userTask','depman','2014-03-24 21:04:20',NULL,NULL),('703','leave:1:4','5','5','exclusivegateway7',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:00:49','2014-03-25 21:00:49',0),('704','leave:1:4','5','5','endevent1',NULL,NULL,'End','endEvent',NULL,'2014-03-25 21:00:49','2014-03-25 21:00:49',0),('707','leave:1:4','113','113','exclusivegateway5',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:03:44','2014-03-25 21:03:44',0),('708','leave:1:4','113','113','modifyApply','709',NULL,'调整申请','userTask','admin','2014-03-25 21:03:44','2014-03-25 21:07:18',214153),('712','leave:1:4','113','113','exclusivegateway7',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:07:18','2014-03-25 21:07:18',1),('713','leave:1:4','113','113','endevent1',NULL,NULL,'End','endEvent',NULL,'2014-03-25 21:07:18','2014-03-25 21:07:18',0),('805','leave:1:4','801','801','startevent1',NULL,NULL,'Start','startEvent',NULL,'2014-03-25 21:20:02','2014-03-25 21:20:02',23),('808','leave:1:4','801','801','deptLeaderAudit','809',NULL,'部门领导审批','userTask','depman','2014-03-25 21:20:02','2014-03-25 21:20:47',45611),('814','leave:1:4','801','801','exclusivegateway5',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:20:47','2014-03-25 21:20:47',0),('815','leave:1:4','801','801','modifyApply','816',NULL,'调整申请','userTask','admin','2014-03-25 21:20:47','2014-03-25 21:21:53',66536),('819','leave:1:4','801','801','exclusivegateway7',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:21:53','2014-03-25 21:21:53',0),('820','leave:1:4','801','801','deptLeaderAudit','821',NULL,'部门领导审批','userTask','admin','2014-03-25 21:21:53','2014-03-25 21:24:37',164818),('824','leave:1:4','801','801','exclusivegateway5',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:24:37','2014-03-25 21:24:37',0),('825','leave:1:4','801','801','hrAudit','826',NULL,'人事审批','userTask','user2','2014-03-25 21:24:37','2014-03-25 21:25:09',32429),('831','leave:1:4','801','801','exclusivegateway6',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:25:09','2014-03-25 21:25:09',0),('832','leave:1:4','801','801','modifyApply','833',NULL,'调整申请','userTask','admin','2014-03-25 21:25:09','2014-03-25 21:31:17',368446),('835','leave:1:4','801','801','exclusivegateway7',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:31:17','2014-03-25 21:31:17',0),('836','leave:1:4','801','801','deptLeaderAudit','837',NULL,'部门领导审批','userTask','depman','2014-03-25 21:31:17','2014-03-25 21:34:24',187683),('840','leave:1:4','801','801','exclusivegateway5',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:34:24','2014-03-25 21:34:24',0),('841','leave:1:4','801','801','hrAudit','842',NULL,'人事审批','userTask','user2','2014-03-25 21:34:24','2014-03-25 21:35:43',79554),('845','leave:1:4','801','801','exclusivegateway6',NULL,NULL,'Exclusive Gateway','exclusiveGateway',NULL,'2014-03-25 21:35:43','2014-03-25 21:35:43',0),('846','leave:1:4','801','801','reportBack','847',NULL,'销假','userTask','admin','2014-03-25 21:35:43',NULL,NULL),('9','leave:1:4','5','5','startevent1',NULL,NULL,'Start','startEvent',NULL,'2014-03-24 09:57:30','2014-03-24 09:57:31',91),('905','leave:1:4','901','901','startevent1',NULL,NULL,'Start','startEvent',NULL,'2014-03-27 13:40:14','2014-03-27 13:40:14',7),('908','leave:1:4','901','901','deptLeaderAudit','909',NULL,'部门领导审批','userTask','depman','2014-03-27 13:40:14',NULL,NULL);
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
INSERT INTO `act_hi_detail` VALUES ('102','VariableUpdate','15','15',NULL,'22','deptLeaderPass','boolean',0,'2014-03-24 14:59:34',NULL,NULL,1,NULL,NULL),('109','VariableUpdate','5','5',NULL,'12','deptLeaderPass','boolean',0,'2014-03-24 15:20:40',NULL,NULL,0,NULL,NULL),('11','VariableUpdate','5','5',NULL,'9','sponsor','string',0,'2014-03-24 09:57:30',NULL,NULL,NULL,'超级管理员',NULL),('115','VariableUpdate','113','113',NULL,NULL,'applyUserId','string',0,'2014-03-24 15:22:13',NULL,NULL,NULL,'admin',NULL),('119','VariableUpdate','113','113',NULL,'117','sponsor','string',0,'2014-03-24 15:22:13',NULL,NULL,NULL,'超级管理员',NULL),('17','VariableUpdate','15','15',NULL,NULL,'applyUserId','string',0,'2014-03-24 10:02:04',NULL,NULL,NULL,'depman',NULL),('21','VariableUpdate','15','15',NULL,'19','sponsor','string',0,'2014-03-24 10:02:04',NULL,NULL,NULL,'部门经理',NULL),('302','VariableUpdate','15','15',NULL,'104','hrPass','boolean',0,'2014-03-24 21:04:19',NULL,NULL,1,NULL,NULL),('7','VariableUpdate','5','5',NULL,NULL,'applyUserId','string',0,'2014-03-24 09:57:30',NULL,NULL,NULL,'admin',NULL),('702','VariableUpdate','5','5',NULL,'111','reApply','boolean',0,'2014-03-25 21:00:48',NULL,NULL,0,NULL,NULL),('706','VariableUpdate','113','113',NULL,'120','deptLeaderPass','boolean',0,'2014-03-25 21:03:44',NULL,NULL,0,NULL,NULL),('711','VariableUpdate','113','113',NULL,'708','reApply','boolean',0,'2014-03-25 21:07:07',NULL,NULL,0,NULL,NULL),('803','VariableUpdate','801','801',NULL,NULL,'applyUserId','string',0,'2014-03-25 21:20:02',NULL,NULL,NULL,'admin',NULL),('807','VariableUpdate','801','801',NULL,'805','sponsor','string',0,'2014-03-25 21:20:02',NULL,NULL,NULL,'超级管理员',NULL),('813','VariableUpdate','801','801',NULL,'808','deptLeaderPass','boolean',0,'2014-03-25 21:20:47',NULL,NULL,0,NULL,NULL),('818','VariableUpdate','801','801',NULL,'815','reApply','boolean',0,'2014-03-25 21:21:43',NULL,NULL,1,NULL,NULL),('823','VariableUpdate','801','801',NULL,'820','deptLeaderPass','boolean',1,'2014-03-25 21:24:37',NULL,NULL,1,NULL,NULL),('830','VariableUpdate','801','801',NULL,'825','hrPass','boolean',0,'2014-03-25 21:25:09',NULL,NULL,0,NULL,NULL),('834','VariableUpdate','801','801',NULL,'832','reApply','boolean',1,'2014-03-25 21:30:56',NULL,NULL,1,NULL,NULL),('839','VariableUpdate','801','801',NULL,'836','deptLeaderPass','boolean',2,'2014-03-25 21:34:24',NULL,NULL,1,NULL,NULL),('844','VariableUpdate','801','801',NULL,'841','hrPass','boolean',1,'2014-03-25 21:35:43',NULL,NULL,1,NULL,NULL),('903','VariableUpdate','901','901',NULL,NULL,'applyUserId','string',0,'2014-03-27 13:40:13',NULL,NULL,NULL,'admin',NULL),('907','VariableUpdate','901','901',NULL,'905','sponsor','string',0,'2014-03-27 13:40:14',NULL,NULL,NULL,'超级管理员',NULL);
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
INSERT INTO `act_hi_taskinst` VALUES ('105','leave:1:4','hrAudit','15','15','人事审批',NULL,NULL,NULL,'user2','2014-03-24 14:59:34','2014-03-24 15:15:35','2014-03-24 21:04:20',21886331,'completed',50,NULL,NULL),('112','leave:1:4','modifyApply','5','5','调整申请',NULL,NULL,NULL,'admin','2014-03-24 15:20:40',NULL,'2014-03-25 21:00:49',106809394,'completed',50,NULL,NULL),('121','leave:1:4','deptLeaderAudit','113','113','部门领导审批',NULL,NULL,NULL,'depman','2014-03-24 15:22:13','2014-03-24 15:23:55','2014-03-25 21:03:44',106891173,'completed',50,NULL,NULL),('13','leave:1:4','deptLeaderAudit','5','5','部门领导审批',NULL,NULL,NULL,'depman','2014-03-24 09:57:31','2014-03-24 12:51:57','2014-03-24 15:20:40',19389181,'completed',50,NULL,NULL),('23','leave:1:4','deptLeaderAudit','15','15','部门领导审批',NULL,NULL,NULL,'depman','2014-03-24 10:02:04','2014-03-24 11:29:06','2014-03-24 14:59:34',17850455,'completed',50,NULL,NULL),('305','leave:1:4','reportBack','15','15','销假',NULL,NULL,NULL,'depman','2014-03-24 21:04:20',NULL,NULL,NULL,NULL,50,NULL,NULL),('709','leave:1:4','modifyApply','113','113','调整申请',NULL,NULL,NULL,'admin','2014-03-25 21:03:44',NULL,'2014-03-25 21:07:18',214146,'completed',50,NULL,NULL),('809','leave:1:4','deptLeaderAudit','801','801','部门领导审批',NULL,NULL,NULL,'depman','2014-03-25 21:20:02','2014-03-25 21:20:33','2014-03-25 21:20:47',45607,'completed',50,NULL,NULL),('816','leave:1:4','modifyApply','801','801','调整申请',NULL,NULL,NULL,'admin','2014-03-25 21:20:47',NULL,'2014-03-25 21:21:53',66532,'completed',50,NULL,NULL),('821','leave:1:4','deptLeaderAudit','801','801','部门领导审批',NULL,NULL,NULL,'admin','2014-03-25 21:21:53','2014-03-25 21:23:30','2014-03-25 21:24:37',164815,'completed',50,NULL,NULL),('826','leave:1:4','hrAudit','801','801','人事审批',NULL,NULL,NULL,'user2','2014-03-25 21:24:37','2014-03-25 21:25:00','2014-03-25 21:25:09',32426,'completed',50,NULL,NULL),('833','leave:1:4','modifyApply','801','801','调整申请',NULL,NULL,NULL,'admin','2014-03-25 21:25:09',NULL,'2014-03-25 21:31:17',368443,'completed',50,NULL,NULL),('837','leave:1:4','deptLeaderAudit','801','801','部门领导审批',NULL,NULL,NULL,'depman','2014-03-25 21:31:17','2014-03-25 21:34:08','2014-03-25 21:34:24',187679,'completed',50,NULL,NULL),('842','leave:1:4','hrAudit','801','801','人事审批',NULL,NULL,NULL,'user2','2014-03-25 21:34:24','2014-03-25 21:35:07','2014-03-25 21:35:43',79551,'completed',50,NULL,NULL),('847','leave:1:4','reportBack','801','801','销假',NULL,NULL,NULL,'admin','2014-03-25 21:35:43',NULL,NULL,NULL,NULL,50,NULL,NULL),('909','leave:1:4','deptLeaderAudit','901','901','部门领导审批',NULL,NULL,NULL,'depman','2014-03-27 13:40:14','2014-03-27 13:46:44',NULL,NULL,NULL,50,NULL,NULL);
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
INSERT INTO `act_hi_varinst` VALUES ('10','5','5',NULL,'sponsor','string',0,NULL,NULL,NULL,'超级管理员',NULL),('101','15','15',NULL,'deptLeaderPass','boolean',0,NULL,NULL,1,NULL,NULL),('108','5','5',NULL,'deptLeaderPass','boolean',0,NULL,NULL,0,NULL,NULL),('114','113','113',NULL,'applyUserId','string',0,NULL,NULL,NULL,'admin',NULL),('118','113','113',NULL,'sponsor','string',0,NULL,NULL,NULL,'超级管理员',NULL),('16','15','15',NULL,'applyUserId','string',0,NULL,NULL,NULL,'depman',NULL),('20','15','15',NULL,'sponsor','string',0,NULL,NULL,NULL,'部门经理',NULL),('301','15','15',NULL,'hrPass','boolean',0,NULL,NULL,1,NULL,NULL),('6','5','5',NULL,'applyUserId','string',0,NULL,NULL,NULL,'admin',NULL),('701','5','5',NULL,'reApply','boolean',0,NULL,NULL,0,NULL,NULL),('705','113','113',NULL,'deptLeaderPass','boolean',0,NULL,NULL,0,NULL,NULL),('710','113','113',NULL,'reApply','boolean',0,NULL,NULL,0,NULL,NULL),('802','801','801',NULL,'applyUserId','string',0,NULL,NULL,NULL,'admin',NULL),('806','801','801',NULL,'sponsor','string',0,NULL,NULL,NULL,'超级管理员',NULL),('812','801','801',NULL,'deptLeaderPass','boolean',1,NULL,NULL,1,NULL,NULL),('817','801','801',NULL,'reApply','boolean',0,NULL,NULL,1,NULL,NULL),('829','801','801',NULL,'hrPass','boolean',1,NULL,NULL,1,NULL,NULL),('902','901','901',NULL,'applyUserId','string',0,NULL,NULL,NULL,'admin',NULL),('906','901','901',NULL,'sponsor','string',0,NULL,NULL,NULL,'超级管理员',NULL);
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
INSERT INTO `act_re_procdef` VALUES ('leave:1:4',1,'http://www.rguess.org/demo/activiti/leave','请假流程','leave',1,'1','leave/leave.bpmn','leave/leave.png','请假流程演示',0,1);
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
INSERT INTO `act_ru_task` VALUES ('305',1,'15','15','leave:1:4','销假',NULL,NULL,'reportBack',NULL,'depman',NULL,50,'2014-03-24 13:04:20',NULL,1),('847',1,'801','801','leave:1:4','销假',NULL,NULL,'reportBack',NULL,'admin',NULL,50,'2014-03-25 13:35:43',NULL,1),('909',2,'901','901','leave:1:4','部门领导审批',NULL,NULL,'deptLeaderAudit',NULL,'depman',NULL,50,'2014-03-27 05:40:14',NULL,1);
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
INSERT INTO `act_ru_variable` VALUES ('101',1,'boolean','deptLeaderPass','15','15',NULL,NULL,NULL,1,NULL,NULL),('16',1,'string','applyUserId','15','15',NULL,NULL,NULL,NULL,'depman',NULL),('20',1,'string','sponsor','15','15',NULL,NULL,NULL,NULL,'部门经理',NULL),('301',1,'boolean','hrPass','15','15',NULL,NULL,NULL,1,NULL,NULL),('802',1,'string','applyUserId','801','801',NULL,NULL,NULL,NULL,'admin',NULL),('806',1,'string','sponsor','801','801',NULL,NULL,NULL,NULL,'超级管理员',NULL),('812',2,'boolean','deptLeaderPass','801','801',NULL,NULL,NULL,1,NULL,NULL),('817',1,'boolean','reApply','801','801',NULL,NULL,NULL,1,NULL,NULL),('829',2,'boolean','hrPass','801','801',NULL,NULL,NULL,1,NULL,NULL),('902',1,'string','applyUserId','901','901',NULL,NULL,NULL,NULL,'admin',NULL),('906',1,'string','sponsor','901','901',NULL,NULL,NULL,NULL,'超级管理员',NULL);
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
INSERT INTO `oa_leave` VALUES (2,'2014-03-06 09:03:00',1,'事假','5','rrrrrrrrrr',NULL,'2014-03-12 09:03:00','不行',''),(3,'2014-03-11 00:00:00',2,'事假','15','22222','depman','2014-02-26 00:00:00','批准','同意，请合理安排时间'),(4,'2014-03-12 00:00:00',8,'事假','113','面试',NULL,'2014-03-04 00:00:00','肯定不同意',''),(5,'2014-03-01 00:03:44',11,'霸王假','801','22222',NULL,'2014-03-01 00:03:44','好','就这样'),(6,'2014-03-21 10:50:00',6,'事假','901','66666','admin','2014-03-12 00:00:00',NULL,NULL);
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
INSERT INTO `sys_log` VALUES (29,'退出系统','系统登出','2014-03-27 17:20:42',1,5),(30,'登录系统','系统登录','2014-03-27 17:27:08',1,5),(31,'退出系统','系统登出','2014-03-27 17:43:52',1,5),(32,'登录系统','系统登录','2014-03-27 17:45:40',1,5);
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
INSERT INTO `sys_res` VALUES (1,NULL,1,'ztree_root_close','系统管理',1,'sys','系统管理','/sys',5),(2,NULL,2,'diy_icon_01_05','用户管理',1,'sys:user','用户管理','/sys/user/list',1),(3,NULL,2,'diy_icon_01_10','角色管理',2,'sys:role','角色管理','/sys/role/list',1),(4,NULL,2,'ztree_report','资源菜单',3,'sys:resource','资源管理','/sys/resource/list',1),(5,NULL,0,'','system',1,'system','最高的节点只能有一个','/system',NULL),(7,NULL,3,'icon-tasks','用户列表',1,'sys:user:list','用户列表','/sys/user/list',2),(8,NULL,3,'icon-plus','添加用户',2,'sys:user:add','添加用户','/sys/user/add',2),(9,NULL,3,'icon-minus','删除用户',3,'sys:user:delete','','/sys/user/delete',2),(10,NULL,3,'icon-pencil','修改用户',4,'sys:user:update','','/sys/user/update',2),(11,NULL,3,'icon-tasks','角色列表',1,'sys:role:list','','/sys/role/list',3),(12,NULL,3,'icon-plus','添加角色',2,'sys:role:add','','/sys/role/add',3),(13,NULL,3,'icon-minus','删除角色',3,'sys:role:delete','','/sys/role/delete',3),(14,NULL,3,'icon-pencil','修改角色',4,'sys:role:update','','/sys/role/update',3),(15,NULL,3,'icon-tasks','资源列表',1,'sys:resource:list','','/sys/resource/list',4),(16,NULL,3,'icon-plus','添加资源',2,'sys:resource:add','','/sys/resource/add',4),(17,NULL,3,'icon-minus','删除资源',3,'sys:resource:delete','','/sys/resource/delete',4),(18,NULL,3,'icon-pencil','修改资源',4,'sys:resource:update','','/sys/resource/update',4),(19,NULL,2,'diy_icon_01_02','图标管理',4,'sys:user:list','','/sys/icon/list',1),(20,NULL,3,'icon-tasks','图标列表',1,'sys:icon:list','','/sys/icon/list',19),(21,NULL,3,'icon-plus','添加图标',2,'sys:icon:add','','/sys/icon/add',19),(22,NULL,3,'icon-minus','删除图标',3,'sys:icon:delete','','/sys/icon/delete',19),(23,NULL,3,'icon-pencil','修改图标',4,'sys:icon:update','','/sys/icon/update',19),(24,NULL,3,'ztree_file2','详细信息',5,'sys:user:show','','/sys/user/show',2),(25,NULL,3,'ztree_file2','详细信息',5,'sys:role:show','','/sys/role/show',3),(26,NULL,3,'ztree_file2','详细信息',5,'sys:resource:show','','/sys/resource/show',4),(27,NULL,3,'icon-cog','详细信息',5,'sys:icon:show','','sys/icon/show',19),(28,NULL,1,'diy_icon_01_48','终端服务',1,'mobile','终端服务','/mobile',5),(29,NULL,2,'diy_icon_01_29','消息推送',1,'mobile:push','','/mobile/push',28),(30,NULL,1,'diy_icon_04_20','OA办公',1,'workflow','','/workflow',5),(31,NULL,3,'icon-key','更改用户状态',6,'sys:user:changeUserStatus','','/sys/user/changeUserStatus',2),(32,NULL,2,'ztree_edit2','待办',1,'workflow:todoTasks','','/workflow/todoTasks',30),(33,NULL,2,'diy_icon_01_42','已办',2,'workflow:hasTodo','','/workflow/hasTodo',30),(34,NULL,2,'diy_icon_04_41','发起流程',3,'workflow:process','','/workflow/process',30),(35,NULL,2,'diy_icon_02_33','我的流程',4,'workflow:myprocess','','/workflow/myprocess',30),(36,NULL,2,'diy_icon_04_19','系统日志',5,'sys:log:list','','/sys/log/list',1),(37,NULL,3,'icon-tasks','日志列表',1,'sys:log:list','','/sys/log/list',36);
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
INSERT INTO `sys_role` VALUES (1,NULL,'superAdmin','超级管理员','拥有所有权限'),(6,NULL,'deptLeader','部门经理','111'),(7,NULL,'hr','人力经理','');
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
INSERT INTO `sys_user` VALUES (4,'成都','2013-03-07 00:00:00','sa@ww.cc','user2','15222233426','人力经理','8d2209bf7ec9ac2eec597eb378a7cbf5','','1'),(5,'成都','2014-03-14 00:00:00','502876941@qq.com','admin','15108276486','超级管理员','bd2e01edc57144999856d77571151dda','帅气的开发者','1'),(7,'成都','2014-03-23 00:00:00','sa@ww.cc','depman','15369654627','部门经理','1fa11d49afc1479d1392df32c9cd7dd4','你好','1');
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
