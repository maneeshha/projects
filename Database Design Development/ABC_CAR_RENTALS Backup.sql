PGDMP     9    	                {            ABC_CAR_RENTALS    15.3    15.3 (    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            :           1262    16420    ABC_CAR_RENTALS    DATABASE     �   CREATE DATABASE "ABC_CAR_RENTALS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 !   DROP DATABASE "ABC_CAR_RENTALS";
                postgres    false            ;           0    0    DATABASE "ABC_CAR_RENTALS"    COMMENT     �   COMMENT ON DATABASE "ABC_CAR_RENTALS" IS 'ABC Car Rentals is car rental business in Colombo and well known for its quality business.';
                   postgres    false    3386            �            1259    16511    additional_km    TABLE     �   CREATE TABLE public.additional_km (
    class_id character varying(50) NOT NULL,
    class character varying(100) NOT NULL,
    charges_per_additional_km character varying(20) NOT NULL,
    car_id character varying(20) NOT NULL
);
 !   DROP TABLE public.additional_km;
       public         heap    postgres    false            �            1259    16546    billing_details    TABLE     �   CREATE TABLE public.billing_details (
    billing_id character varying(20) NOT NULL,
    billing_date date NOT NULL,
    total_amount character varying(20) NOT NULL,
    rental_id character varying(20) NOT NULL
);
 #   DROP TABLE public.billing_details;
       public         heap    postgres    false            �            1259    16451    car    TABLE     `  CREATE TABLE public.car (
    car_id character varying(20) NOT NULL,
    class character varying(50) NOT NULL,
    model_year character varying(10),
    model character varying(50) NOT NULL,
    color character varying(30),
    license_plate character varying(8) NOT NULL,
    make character varying(50),
    owner_id character varying(20) NOT NULL
);
    DROP TABLE public.car;
       public         heap    postgres    false            �            1259    16421    customer    TABLE     c  CREATE TABLE public.customer (
    customer_id character varying(20) NOT NULL,
    driving_license_no character varying(50) NOT NULL,
    name character varying(100) NOT NULL,
    contact_no character varying(20) NOT NULL,
    no character varying(50) NOT NULL,
    street_name character varying(100) NOT NULL,
    city character varying(100) NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16536    insuarance_company    TABLE     �   CREATE TABLE public.insuarance_company (
    insuarance_id character varying(20) NOT NULL,
    company_name character varying(100) NOT NULL,
    contact_no character varying(20) NOT NULL,
    rental_id character varying(20) NOT NULL
);
 &   DROP TABLE public.insuarance_company;
       public         heap    postgres    false            �            1259    16426    owner    TABLE     �   CREATE TABLE public.owner (
    owner_id character varying(20) NOT NULL,
    owner_name character varying(100) NOT NULL,
    adress character varying(100) NOT NULL,
    contact_no character varying(20) NOT NULL
);
    DROP TABLE public.owner;
       public         heap    postgres    false            �            1259    16571    pricing    TABLE     �  CREATE TABLE public.pricing (
    pricing_id character varying(20) NOT NULL,
    class character varying(50) NOT NULL,
    pricing_1_day character varying(20) NOT NULL,
    pricing_1_week character varying(20) NOT NULL,
    pricing_2_week character varying(20) NOT NULL,
    pricing_1_month character varying(20) NOT NULL,
    fixed_amount character varying(20) NOT NULL,
    car_id character varying(20) NOT NULL,
    policy_id character varying(20) NOT NULL
);
    DROP TABLE public.pricing;
       public         heap    postgres    false            �            1259    16521    rental    TABLE     <  CREATE TABLE public.rental (
    rental_id character varying(20) NOT NULL,
    rental_date date NOT NULL,
    return_date date NOT NULL,
    odometer_read_rental integer NOT NULL,
    odometer_read_return integer NOT NULL,
    customer_id character varying(20) NOT NULL,
    car_id character varying(20) NOT NULL
);
    DROP TABLE public.rental;
       public         heap    postgres    false            �            1259    16446    rental_policy    TABLE     �   CREATE TABLE public.rental_policy (
    policy_id character varying(20) NOT NULL,
    policy_name character varying(200) NOT NULL,
    free_km_per_day integer NOT NULL
);
 !   DROP TABLE public.rental_policy;
       public         heap    postgres    false            0          0    16511    additional_km 
   TABLE DATA           [   COPY public.additional_km (class_id, class, charges_per_additional_km, car_id) FROM stdin;
    public          postgres    false    218   �4       3          0    16546    billing_details 
   TABLE DATA           \   COPY public.billing_details (billing_id, billing_date, total_amount, rental_id) FROM stdin;
    public          postgres    false    221   a5       /          0    16451    car 
   TABLE DATA           e   COPY public.car (car_id, class, model_year, model, color, license_plate, make, owner_id) FROM stdin;
    public          postgres    false    217   6       ,          0    16421    customer 
   TABLE DATA           l   COPY public.customer (customer_id, driving_license_no, name, contact_no, no, street_name, city) FROM stdin;
    public          postgres    false    214   �7       2          0    16536    insuarance_company 
   TABLE DATA           `   COPY public.insuarance_company (insuarance_id, company_name, contact_no, rental_id) FROM stdin;
    public          postgres    false    220   �9       -          0    16426    owner 
   TABLE DATA           I   COPY public.owner (owner_id, owner_name, adress, contact_no) FROM stdin;
    public          postgres    false    215   &:       4          0    16571    pricing 
   TABLE DATA           �   COPY public.pricing (pricing_id, class, pricing_1_day, pricing_1_week, pricing_2_week, pricing_1_month, fixed_amount, car_id, policy_id) FROM stdin;
    public          postgres    false    222   <       1          0    16521    rental 
   TABLE DATA           �   COPY public.rental (rental_id, rental_date, return_date, odometer_read_rental, odometer_read_return, customer_id, car_id) FROM stdin;
    public          postgres    false    219   �<       .          0    16446    rental_policy 
   TABLE DATA           P   COPY public.rental_policy (policy_id, policy_name, free_km_per_day) FROM stdin;
    public          postgres    false    216   �=       �           2606    16515     additional_km additional_km_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.additional_km
    ADD CONSTRAINT additional_km_pkey PRIMARY KEY (class_id);
 J   ALTER TABLE ONLY public.additional_km DROP CONSTRAINT additional_km_pkey;
       public            postgres    false    218            �           2606    16550 $   billing_details billing_details_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.billing_details
    ADD CONSTRAINT billing_details_pkey PRIMARY KEY (billing_id);
 N   ALTER TABLE ONLY public.billing_details DROP CONSTRAINT billing_details_pkey;
       public            postgres    false    221            �           2606    16455    car car_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (car_id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    217            �           2606    16425    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    214            �           2606    16540 *   insuarance_company insuarance_company_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.insuarance_company
    ADD CONSTRAINT insuarance_company_pkey PRIMARY KEY (insuarance_id);
 T   ALTER TABLE ONLY public.insuarance_company DROP CONSTRAINT insuarance_company_pkey;
       public            postgres    false    220            �           2606    16430    owner owner_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.owner
    ADD CONSTRAINT owner_pkey PRIMARY KEY (owner_id);
 :   ALTER TABLE ONLY public.owner DROP CONSTRAINT owner_pkey;
       public            postgres    false    215            �           2606    16575    pricing pricing_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pricing
    ADD CONSTRAINT pricing_pkey PRIMARY KEY (pricing_id);
 >   ALTER TABLE ONLY public.pricing DROP CONSTRAINT pricing_pkey;
       public            postgres    false    222            �           2606    16525    rental rental_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.rental
    ADD CONSTRAINT rental_pkey PRIMARY KEY (rental_id);
 <   ALTER TABLE ONLY public.rental DROP CONSTRAINT rental_pkey;
       public            postgres    false    219            �           2606    16450     rental_policy rental_policy_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.rental_policy
    ADD CONSTRAINT rental_policy_pkey PRIMARY KEY (policy_id);
 J   ALTER TABLE ONLY public.rental_policy DROP CONSTRAINT rental_policy_pkey;
       public            postgres    false    216            �           2606    16516 '   additional_km additional_km_car_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.additional_km
    ADD CONSTRAINT additional_km_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(car_id);
 Q   ALTER TABLE ONLY public.additional_km DROP CONSTRAINT additional_km_car_id_fkey;
       public          postgres    false    218    3211    217            �           2606    16551 .   billing_details billing_details_rental_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.billing_details
    ADD CONSTRAINT billing_details_rental_id_fkey FOREIGN KEY (rental_id) REFERENCES public.rental(rental_id);
 X   ALTER TABLE ONLY public.billing_details DROP CONSTRAINT billing_details_rental_id_fkey;
       public          postgres    false    221    3215    219            �           2606    16456    car car_owner_id_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.owner(owner_id);
 ?   ALTER TABLE ONLY public.car DROP CONSTRAINT car_owner_id_fkey;
       public          postgres    false    215    3207    217            �           2606    16541 4   insuarance_company insuarance_company_rental_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.insuarance_company
    ADD CONSTRAINT insuarance_company_rental_id_fkey FOREIGN KEY (rental_id) REFERENCES public.rental(rental_id);
 ^   ALTER TABLE ONLY public.insuarance_company DROP CONSTRAINT insuarance_company_rental_id_fkey;
       public          postgres    false    220    3215    219            �           2606    16576    pricing pricing_car_id_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.pricing
    ADD CONSTRAINT pricing_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(car_id);
 E   ALTER TABLE ONLY public.pricing DROP CONSTRAINT pricing_car_id_fkey;
       public          postgres    false    217    222    3211            �           2606    16581    pricing pricing_policy_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pricing
    ADD CONSTRAINT pricing_policy_id_fkey FOREIGN KEY (policy_id) REFERENCES public.rental_policy(policy_id);
 H   ALTER TABLE ONLY public.pricing DROP CONSTRAINT pricing_policy_id_fkey;
       public          postgres    false    3209    216    222            �           2606    16531    rental rental_car_id_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.rental
    ADD CONSTRAINT rental_car_id_fkey FOREIGN KEY (car_id) REFERENCES public.car(car_id);
 C   ALTER TABLE ONLY public.rental DROP CONSTRAINT rental_car_id_fkey;
       public          postgres    false    219    3211    217            �           2606    16526    rental rental_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rental
    ADD CONSTRAINT rental_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 H   ALTER TABLE ONLY public.rental DROP CONSTRAINT rental_customer_id_fkey;
       public          postgres    false    214    3205    219            0   �   x�m�;�0E�zf� �؞|�tT4!P�`	v��p'��Ս"J1�6����7��А���[Mɯ&�h(�
�-��͂pK�ro/�E[hWk�k����.}��K�*P���jţ������4�_j32>n���O6      3   �   x�5�1�0D�Z��3In]�J���#^��?{ݐ�P=����h_@�uC���HR�H�AU�%mҨ�H�� �*'ͤ8ê��Eq�7�j�v����M:�fPU�C�i�fV����J��hR����kX\�ڪ�k�%iW�5ēfPU����_cI�      /   �  x�]��n�@�����а��s�l�A,�֦7THjJ�Q��O��B�;�wfϜ�R����þ����-��02��͹)��L�����b��i��� ���8�%,v�n::dͥi�"�DƽȆ�H��*���<��l*3Hf�%$A<\�Dk�/W�$�Oa��L@R��PM�Ys,���[S?�M ��ғ���E
Ҳ��	�?BCt�q\ۙط�w&���E;m+��@�C�;ºZ@+.�-�.�E��t��-��A�"M{�N禅���E�H�&
OٿyᶺN%��`5�,�`WVUs�m9H��:��*�g��7�d6������ ����,v6O���R5�3I�Q����	��*�?�g���P*��ۣ�(ε��      ,   �  x�m�A��0�Ϗ_�/�����I�JM�h�K�^^�7��l�������e����g��f'	��=w�����P3���E"d*%�xl�te��0zcF��E���$i˖�oo������4'��q��x�@���Su��?�I
Ne��������1��~�Ќu�2��`�rU������q�z�*R�gkL���d���|�R���\�ǭ�r�\�����	��B���֍��U���YiҴ53��o�8�!)��1~��=�MeпPPA?j��,��1k�.D�H)��*��+��rf�j�wa�pq^�eQ�RM'���2!��ӫ����ܛj�Hkl'�քwl�Je��/��G^ ��<%	��"�=�b�%7L��?���4��TFZW���g���<֚ҡA���苀fYJ�����JyF��v�1���{f3��b빱+N���}X��4����aYx`;����o��ߟ�(�"�B      2   |   x��б�0D�ت�*`�`
=�0d�_����[�fz�o�v������W�Ǚ"c\�E��a��P3�"�B���TE�B�
�RmBmT�P;U?���T�=��=��=��=��=����}z~�      -   �  x����n�0E��W����m-�(�������bKZ%PT�}��e{a�wE=�����$�����Wc��,Tw^�h���qD��xs�(��BF�6I��g������.XR�+e�ݥ���tfӨ�fb3���� �`I����]G�wJ����LfQ���ʜF7үpi�C�IB����s��1�ͣY��iՠA�q�צAhI-������Б.�=+��@���VL�q����N�Q�[�7��w���:�j���a�x)~˓�4�&sb��naQ�.�]F�<_K/��mAZT��=r���[F1(�4� zWv�Ýs�'���x�y�M�"�R�y�޸���g��Y��~�*�S�2�k蕃��:�$�w�?`�lJVfb���D+��$�e�d��h�2ϧXe.^�U^߯q*��{>�c�<2^S��[�xl��z�CHX��U��c�_f��?�+      4   �   x���;�0E�z�
V�<�q>5-E�*�(����O���ͭ�H�r�[�a>o���9Nbk-9DE<��Av!��+�q�q������Fi�<�#�(RE��
�見|��P�p���7�GQ��������m	o�x������G,�� �4(ng.᜶�+�.m��#��"�(�F+y��Zͫ��������i��8      1   �   x�E�=��0�ںK2�@?u�W�~�?G����oֆ��#$�"~1�(�����1?��ʗHBԋ5�m,�\C���`��
\�5D�x$�dV`13l�l��B�94On��C�}�Q07O��x��kbO�x�����ݓ'�\���k<�dY��9�L�k8;Y� �A�wA��'�AF���}��`������kbOF���ۺ�qpK����w)�Bw�      .   H   x�000�4TpI�TJ�+I��440�
000����fÄ�!�ƜF(&q�r�������P"F��� ,     