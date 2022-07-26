GDPC                                                                               <   res://.import/blue.png-1c2ea1b10f5e08c3d0e2319d9083ab48.stex@      Z       ���Ӌ�h���2O�<   res://.import/fish.png-07380b825fb2ca2f8e070357a73b426f.stex�-      v       ݗ��P�'�M��J�B@   res://.import/green.png-2fbefb51ef847128df0a7d4b4a75d056.stex   P      Z       ���䧕����2H��R<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex@%      �      &�y���ڞu;>��.pD   res://.import/light_blue.png-b66e62f45c42a257e21042d13297a954.stex  `      Z       �,t���v�gmy�����@   res://.import/white.png-f9e5ae5bf8112f2b2a3edb313be2332a.stex   �!      V       W�w�Ӓ���Z���`�   res://Background.tscn   0      /      b��LV�!r3��>"VL   res://Main.tscn `            9��U�U�}��R�   res://Platform.tscn �      �      V�}&d �ioN#3�!   res://Player.gd.remap    C      !       ��0�F �qq��dX��   res://Player.gdc�      ~      UJ��~^AT�?��Çs,   res://Player.tscn          9      ����~�;�y�6tH   res://colors/blue.png.import�      �      G�Y���&�3]�>?S1;    res://colors/green.png.import   �      �      ��}�I��E���;5$   res://colors/light_blue.png.import  �      �      �V_L���/ ��J��    res://colors/white.png.import   �!      �      ��fZd�{,�T��~�f   res://default_env.tres  �$      �       um�`�N��<*ỳ�8   res://icon.png  0C      �      G1?��z�c��vN��   res://icon.png.import    +      �      ��fe��6�B��^ U�   res://images/fish.png.importP@      �      ���v���U!�J��]|h   res://project.binary P      q      N0�K������3�    [gd_scene load_steps=2 format=2]

[ext_resource path="res://colors/blue.png" type="Texture" id=1]

[node name="Background" type="Node2D"]
position = Vector2( 788, -3 )
scale = Vector2( 7.10295, 1.85948 )
__meta__ = {
"_edit_group_": true
}

[node name="ParallaxBackground" type="ParallaxBackground" parent="."]

[node name="ParallaxLayer" type="ParallaxLayer" parent="ParallaxBackground"]

[node name="Sprite" type="Sprite" parent="ParallaxBackground/ParallaxLayer"]
position = Vector2( 1252, 1252 )
scale = Vector2( 5.008, 5.008 )
texture = ExtResource( 1 )
 [gd_scene load_steps=4 format=2]

[ext_resource path="res://Background.tscn" type="PackedScene" id=1]
[ext_resource path="res://Player.tscn" type="PackedScene" id=2]
[ext_resource path="res://Platform.tscn" type="PackedScene" id=3]

[node name="Game" type="Node2D"]

[node name="Background" parent="." instance=ExtResource( 1 )]
position = Vector2( 788, 0 )
scale = Vector2( 3.59971, 1.88467 )

[node name="RigidBody2D" parent="." instance=ExtResource( 3 )]
position = Vector2( 448, 944 )

[node name="RigidBody2D2" parent="." instance=ExtResource( 3 )]
position = Vector2( 1285, 1184 )
rotation = -0.785397

[node name="RigidBody2D3" parent="." instance=ExtResource( 3 )]
position = Vector2( 1704, 528 )
rotation = 1.57079

[node name="Player" parent="." instance=ExtResource( 2 )]
position = Vector2( 424, 624 )

[node name="Camera2D" type="Camera2D" parent="Player"]
position = Vector2( -79.8359, 0 )
scale = Vector2( 1.75113, 1.67287 )
current = true
limit_left = 0
limit_top = 0
limit_right = 2500
limit_bottom = 2500
editor_draw_limits = true
       [gd_scene load_steps=3 format=2]

[ext_resource path="res://colors/light_blue.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 250, 62.5001 )

[node name="RigidBody2D" type="StaticBody2D"]
scale = Vector2( 0.639999, 0.639999 )

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 1, 0.245575 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -1.35899e-05, 0 )
shape = SubResource( 1 )
         GDSC      	   '   �      ������������τ�   ��������������϶   ����������ض   ��������Ŷ��   �������Ӷ���   �������������ض�   ����Ҷ��   ��������Ҷ��   �����������ض���   �����϶�   ����������������¶��   ���Ӷ���   �����¶�   ����¶��   ���������������Ŷ���   ����׶��   ����¶��   ����������������������Ҷ   �����������   ������������������������ض��   �������ض���   ����������ٶ   �������Ѷ���   �����������ٶ���   ������¶   �������������Ӷ�   ζ��   ϶��      Sprite/CPUParticles2D             n      �         Viewport resolution is:                      ���Q��?                   
                        "      '   	   ,   
   -      3      >      ?      F      H      I      P      Y      _      j      p      q      w      }      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   3YY;�  �  PQY;�  �  PQY5;�  �  PQY;�  Y;�  �  Y;�  �  Y;�  �  YY0�	  PQV�  �?  P�  R�
  PQT�  QYY0�  P�  QV�  -YY0�  P�  QV�  &�  T�  P�  QV�  �  �  PQ�  &�  T�  P�  Q�  V�  �  T�  �  �  �  �  �  �  �  &�  �  V�  �  �  �  �  �  T�  P�  Q�  �  �  P�  QY�  (V�  �  T�  �  �  �  �  �  �  �  �  �  �  �  P�  Q�  �  T�  �  P�  T�  R�  R�  Q�  �  T�  �  P�  T�  R�  R�  QY`  [gd_scene load_steps=4 format=2]

[ext_resource path="res://images/fish.png" type="Texture" id=1]
[ext_resource path="res://Player.gd" type="Script" id=2]

[sub_resource type="CapsuleShape2D" id=1]
radius = 12.8
height = 0.0

[node name="Player" type="KinematicBody2D"]
position = Vector2( -9.62965e-35, 0 )
scale = Vector2( 0.037577, 0.751541 )
script = ExtResource( 2 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( -50, 0 )
scale = Vector2( 3.98296, 0.22346 )
texture = ExtResource( 1 )

[node name="CPUParticles2D" type="CPUParticles2D" parent="Sprite"]
position = Vector2( -148.039, 2.67029e-05 )
rotation = 4.71239
scale = Vector2( 42.9244, -34.136 )
amount = 5
randomness = 0.11
lifetime_randomness = 0.43
emission_shape = 2
emission_rect_extents = Vector2( 1, 1 )
gravity = Vector2( 0, 30 )
scale_amount = 0.25
color = Color( 0.521569, 0.858824, 0.901961, 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 3.85186e-33, 0 )
scale = Vector2( 40, 0.8 )
shape = SubResource( 1 )
       GDST�  �           >   WEBPRIFF2   WEBPVP8L&   /��| �I[���O���$��OF�?�?������G      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/blue.png-1c2ea1b10f5e08c3d0e2319d9083ab48.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://colors/blue.png"
dest_files=[ "res://.import/blue.png-1c2ea1b10f5e08c3d0e2319d9083ab48.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST�  �           >   WEBPRIFF2   WEBPVP8L&   /��| PSI[��/d���$��OF�?�?������G      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/green.png-2fbefb51ef847128df0a7d4b4a75d056.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://colors/green.png"
dest_files=[ "res://.import/green.png-2fbefb51ef847128df0a7d4b4a75d056.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    GDST�  �           >   WEBPRIFF2   WEBPVP8L&   /��| �?I[���i���$��OF�?�?������G      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/light_blue.png-b66e62f45c42a257e21042d13297a954.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://colors/light_blue.png"
dest_files=[ "res://.import/light_blue.png-b66e62f45c42a257e21042d13297a954.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST�  �           :   WEBPRIFF.   WEBPVP8L!   /��| ������I���dD�3�����?���           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/white.png-f9e5ae5bf8112f2b2a3edb313be2332a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://colors/white.png"
dest_files=[ "res://.import/white.png-f9e5ae5bf8112f2b2a3edb313be2332a.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST�  �           Z  WEBPRIFFN  WEBPVP8LA  /��|2i�Կ�펈4��۶�4ڶm����������8�`cc?ea��윊�m9��۱8{$IR$I��cf���0���<l�Ϸ�'c�ζm���[�3���9�m۶mVqW&i>	�$9R�Q��,�3?pٶi��l�o۞����|?��	
ܶm�H;I��{����o6m�l��������;�w����������;�w����������;�w����������)�8��4ϰ"��i�!C�����r�u^O�"߂�j�ż��<�Ie�dx��n�w�ޛ�(�!y��,�� X��.
�.4 �ȅ�-|���{�ݴ�'5�Pp��}�s�Ck��Ba`��
odl�n�w(=�v"B� ���ތ�;�i�_�a�K�E�!��޸�������xG�;�%E�)���`�N�G����8а���aC��+ �4&������"�5)�k6�5[�ݥ�w*N�]-��`�f�Z�I׬^t���,2Z�V<�L_ϻSH-��Y\C� �ިW�\��f�5u|�^ީ�^���Hv� ��r!πa<h�/5k��y�ɽhE�źl9g)�{��������7�����ǘ�J&�搕�����'Gԩ�sMn�C��zK>��.� ��z�qC��0����B=�;�Z悜F���3ٌ�خB�&S��,Y���ʶUvןߩ\z��� ���h�ܴvh��FM��,�3��0hY���b����>�R�U�N��n���2ښb-M��k:a.�}�5|G�$G�q����RW��#��
�N�e�;�M�������_�%aUQ�GZ{I���&M�f~���5���\Q�=5��3�l'�n�F�}pn�7�*9"O'��ݼ�;�گ�$���.K�5u��Hv�k<�7�h��OdDcr/Z�X�b!����PRS'�#�q2S�Q�|1�"O9ɑp_�:��9b%��LL��(30��h���(M?��<��C�wXȽ�WɨFY�0�e�v�U7��b���H��m}@w�	�%��Ę~4M9wYΝ��9�O�sNӨh��M�AgliM�3�fluc[SO�=5;6�3�8E�a��<�krA��"���^Q�c1�hX�3����s�pùi��P!��N��NeW[�d:�Q'���_�9'~q&�ԩ��d6k�g:y�^�V���h8�YZ;�I��CM�3�*���^%s�F���f�u}�l�ېx��rWخ
�y��U��24�X�+�0000�(6������A����f����sM%�_�$~��;�Uf���+�	+�QT鰄��;Ԃ�#�}�{h-DQ��fl�N�%����&]�6%Y�{u"�RF�j���VK����F��l�%6�pn=�.�ёġ5���C�EnY�/)暬�fB:]=[���󥡶35c���P[�ℍ"*(������!rS䁇�6��4+�	�衶+0
�,n�-���Pk0T�?�j��]�ΨD��I��e.X�#�&����P��԰#DD6�7NUm�{���Ԉ��G������|A'2K���̖�>���7���e87UL>L=+�:h�=����=!�Y3h����&އ�n�D`�nδ�4u2���*Q�f��!睙�4�'_}l����K�%�%W��Y�����^~�*&F��]䶇\r�L������[��kg���[u��l��O�����r��Ͷ�l�,w�j���߆��j�]V;V\xv�?��1�S%�G՞7v��h�\?��P��H7��$����}�<[Y��W'nu 6�}��$���R����[nn�������l��d���j�6�N��w�mۍ��_�ݐ��$%�C�Ic��.z����r���������Õ�Ύ���n-n��[�C�?Q?���*[T�-f������g���?a�-�!z�F�Dz1�GI�1���,p(���_��Dr��$�+��x���}��?6Z"�����\~�o�M��;�P�V��v<���b����;:������>�����-�F^�1(�� ��2��r�tk�Hfb��kD�3�y�hd�;͝8:ǡ���`����5�����EdK$�l�2�Y��gޥ�]�wa��0@{W�ȷ�Y6��/4q4�|���㟨sr&d }�/�/��M��N�[Յn߷�Hff��]}"?��l�< _i�h�!�(�MD���ɔ����9���P۩�(:-��ʭ:���ރ)(Y�|��>�Ȧ��Q�z���٤�t`�J0_�{��7�&�:��bK�ǰ԰#DD:0U5��o��l{��J��X�:�2F������I�~���F��H�u�f�b� ��S����!t��_����񾑿�_D��&���Z���*o>$�C��?�w�7�y����O�[Mn���x������_D6�ՠ}�n_痌lܣ��;�})�	�F�KvD�6�>݅�{����j��~�_2������}{q>�޼�{��g�N�ӧ���?�W&��F�S�|���^s�:�Ê� �s�7�%��[yo���~�o��)�sKHD���V�o����7��#��&���������,?�w�U�?��K�Գ[��d�x�ƃjx.��!�� {3	�$�L�I"�=�K�Z}����h��b������cG�Kݾ���wE�s�r�[ء��\�E�Ow����۴�E^t�:M���h��]��3�_/�i�fx.��Q0fqwv%��*c4A�E~����4,5�ή��]�N��!�X��\�Z^��2���.�̛��{jh�ڜ����ܪs;L���E��Y�Qgܘ���{��A��&���nj2:	\M�a6�����B��Mf5=M�h��b1�s��Դc�-��Zꭺ�f�D��� �`��]�聋��E�QPPPZ*Z�ׯ7���x�IP'$�T@�p�L�ɨ����l�����X%c�zóx�GS'�	�����n��Ә�傋��������Ͽ�F��f����7���7s�L�j��P_�z����?Q�U<�u5̿�����6�)3\֫'&�f�,y%[�c}�NtQDqB���\�����ܥ�'qq1��������[�!�&��������QF��߈��ګ�����T��9�����b9-h'X��ɹ���9$3]m�²��jOӴW���a�1<��>֭h��G9�P�ws	�U�v��ȭԿ.K�U�����DQ���PYd��͊N[����prp�RX!�iN� [ᡸn"H�g�^״�L�(�F�Q��PՆ碶'�l�ec�Ѫ{�"6�ͫ���d��$7$I�o��1�S�h��w*������$�Xhw�w�����Bl8yuë�uv�;�LL4�I��d�(�-���o�k:M�TJCCy��Ukx.V�/�z/tЪ[e7�M��(�	�l]6Cd��)�!Yro��;�7{����&�a)4L�iQ�whj�sq��p]�ڽ�����0Y&D�^��:F�R&G������ƍ��Gr\��⃮q��k������
w���{]�nxuÙ�R��Q
*h�����V9+/��y�A#~qɫ�k����hzjK�E@�w���Mkx.N��q�^_v�ݜq/�(�{���A�KO�FQ�I�YAv�K�kq=G��<�o�ڽ�2�f=McS��4(��yg�5<{%


JCE����d�,g�{hJ��(� C9�̛�d�ļV��ꌺg>�S|τ�|�p���$�]Cٶ�lR�@=Ć��Xj�Ţ�Fr��Ƚp/Ε�A9�7��+O9�D5P]ܘh&���O��C�Q�O���G�Y�Ⱥ�v�u�Rk�˂���qNy� �[<�gY�K�Ṩ�*p�>T�=����,��r��4�4��>�SqJm�iYh'��h���=�=ؕ�)ݖ��(��>YK��ɬڞN����w�-��Y����<˙��\��s.�Vz(=�)K�����3���LZ���'̳�jNW�hţ��o�]{�Y7����x�W�x �� O�-9G��/�B�	.��{�Iy�����������w���8�s��8k������r�j��9S�C��e.��P�ܫ����4�hO�;�Òq���s����b�[{P��3梹&��<�^��U%�M���]��B2��$_͇���3x��k����p�k�l�5��d����Ɣ�3��i�[�i����*Z\h�P����Z:��5<�]�}�����3�܋�o���[�X	�Sl>��Wՠv齁�,Wk��:�i�N5؍IFb�G��NB3d^�h=Y 3�&�$��b��`����N�m����{W{���xy&�V/p���2�ƴ�iY:��5<��Eb�J������3~�\�{�Ƃt���;��B���(lA	�	4Bh�-���ӽy�J��3������v�iJME#��>��(��*tx�.k������}r�^�^<˫;��(jQ�R���IG:<���\�Ͳ���>*��Er��+{�ڟj�Ge�E��پn֪�/�u�:u_ok������;�w����������;�w����������;�w������������\            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/fish.png-07380b825fb2ca2f8e070357a73b426f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://images/fish.png"
dest_files=[ "res://.import/fish.png-07380b825fb2ca2f8e070357a73b426f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       [remap]

path="res://Player.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name      	   Portfolio      application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     display/window/stretch/mode         2d     global/display             input/right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script         input/up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script      
   input/down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script      
   input/left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script      )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres                 