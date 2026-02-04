% d1 = getfield(ofsstruct(1), 'PSNR');
% struct veri almak
function [ofsstruct]=Sonuc(d1,o1,kk1,kk2,kk3,kk4,t,derece,durum,hangisicift,xx1,yy1,xx2,yy2)
tic;
or=imread(o1);

% watermark=imread(d1);
% [wm]=rbirlestir(watermark);

watermark1=imread(d1);

[wm]=double(watermark1);

%resmi damgala
[ww PSNR1]=Dekle(wm,or,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
 gomme=toc;
%7 saldiri  
%    figure, imshow(ww,[]);
%    figure, imshow(cd13,[]);
%    figure, imshow(rot,[]);
% ww(1:512,1:256,3)=0;
[ JPEG30 JPEG90 JPEG2000_5 JPEG2000_10 SP01 SP002 Gauss001 Gauss003 Med2x2 Med3x3 Butter100_1 Butter100_3 Sharpening02 Sharpening1 blurring02 blurring1 scaling4 scaling025 Cropping25 Cropping50 Lowpass jpeg88 jpeg725 Gauss0004 Gauss0025 Med51 rot inrot]= ofssaldiri(ww,derece);
% [KS BL OF OL JPEG1 GE Gauss SP Spec Med rot inrot]= saldiriofs(ww,derece) ;  
%%  7 tane damga cikacak 1 saldirisiz 6 saldirili
%lsm derya
% figure, imshow(rot,[]);
% figure, imshow(inrot,[]);
tic;
[NC1 cd1]=Dcikarma(ww,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
 cikarma=toc;
[NC2 cd2]=Dcikarma(JPEG30,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC3 cd3]=Dcikarma(JPEG90,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC4 cd4]=Dcikarma(JPEG2000_5,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC5 cd5]=Dcikarma(JPEG2000_10,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC6 cd6]=Dcikarma(SP01,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC7 cd7]=Dcikarma(SP002,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC8 cd8]=Dcikarma(Gauss001,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC9 cd9]=Dcikarma(Gauss003,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC10 cd10]=Dcikarma(Med2x2,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC11 cd11]=Dcikarma(Med3x3,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC12 cd12]=Dcikarma(Butter100_1,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC13 cd13]=Dcikarma(Butter100_3,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC14 cd14]=Dcikarma(Sharpening02,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC15 cd15]=Dcikarma(Sharpening1,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC16 cd16]=Dcikarma(blurring02,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC17 cd17]=Dcikarma(blurring1,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC18 cd18]=Dcikarma(scaling4,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC19 cd19]=Dcikarma(scaling025,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC20 cd20]=Dcikarma(Cropping25,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC21 cd21]=Dcikarma(Cropping50,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC22 cd22]=Dcikarma(Lowpass,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC23 cd23]=Dcikarma(jpeg88,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC24 cd24]=Dcikarma(jpeg725,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC25 cd25]=Dcikarma(Gauss0004,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC26 cd26]=Dcikarma(Gauss0025,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC27 cd27]=Dcikarma(Med51,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
[NC28 cd28]=Dcikarma(inrot,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
% [NC13 cd13]=Dcikarma(rot,or,wm,kk1,kk2,kk3,kk4,t,durum,hangisicift,xx1,yy1,xx2,yy2);
%derya çıkan damgaya lsm ekleyip sonuç ala
k1='Damgaliresim';
k2=ww;
k3='Orijinalresim';
k4=or;
k5='Damga';
k6=wm;
k7='k1';
k8=kk1;
k9='k2';
k10=kk2;
k11='k3';
k12=kk3;
k13='k4';
k14=kk4;
k15='PSNR';
k16=PSNR1;
k17='oresimadi';
k18=o1;
k19='kullanilandamgaadi';
k20=d1;
k21='t';
k22=t;
k23='xx1';
k24=xx1;
k25='yy1';
k26=yy1;
k27='xx2';
k28=xx2;
k29='yy2';
k30=yy2;

%*************
k31='JPEG30';
k33='JPEG90';
k35='JPEG2000_5';
k37='JPEG2000_10';
k39='SP01';
k41='SP002';
k43='Gauss001';
k45='Gauss003';
k47='Med2x2';
k49='Med3x3';
k51='Butter100_1';
k53='Butter100_3';
k55='Sharpening02';
k57='Sharpening1';
k59='blurring02';
k61='blurring1';
k63='scaling4';
k65='scaling025';
k67='Cropping25';
k69='Cropping50';
k71='Lowpass';
k73='jpeg88';
k75='jpeg725';
k77='Gauss0004';
k79='Gauss0025';
k81='Med51';
k83='inrot';

k32=JPEG30;
k34=JPEG90;
k36=JPEG2000_5;
k38=JPEG2000_10;
k40=SP01;
k42=SP002;
k44=Gauss001;
k46=Gauss003;
k48=Med2x2;
k50=Med3x3;
k52=Butter100_1;
k54=Butter100_3;
k56=Sharpening02;
k58=Sharpening1;
k60=blurring02;
k62=blurring1;
k64=scaling4;
k66=scaling025;
k68=Cropping25;
k70=Cropping50;
k72=Lowpass;
k74=jpeg88;
k76=jpeg725;
k78=Gauss0004;
k80=Gauss0025;
k82=Med51;
k84=inrot;

%************

k85='NC1';
k87='NC2_JPEG30';
k89='NC3_JPEG90';
k91='NC4_JPEG2000_5';
k93='NC5_JPEG2000_10';
k95='NC6_SP01';
k97='NC7_SP002';
k99='NC8_Gauss001';
k101='NC9_Gauss003';
k103='NC10_Med2x2';
k105='NC11_Med3x3';
k107='NC12_Butter100_1';
k109='NC13_Butter100_3';
k111='NC14_Sharpening02';
k113='NC15Sharpening1';
k115='NC16_blurring02';
k117='NC17_blurring1';
k119='NC18_scaling4';
k121='NC19_scaling025';
k123='NC20_Cropping25';
k125='NC21_Cropping50';
k127='NC22_Lowpass';
k129='NC23_jpeg88';
k131='NC24_jpeg725';
k133='NC25_Gauss0004';
k135='NC26_Gauss0025';
k137='NC27_Med51';
k139='NC28_inrot';

k86=NC1;
k88=NC2;
k90=NC3;
k92=NC4;
k94=NC5;
k96=NC6;
k98=NC7;
k100=NC8;
k102=NC9;
k104=NC10;
k106=NC11;
k108=NC12;
k110=NC13;
k112=NC14;
k114=NC15;
k116=NC16;
k118=NC17;
k120=NC18;
k122=NC19;
k124=NC20;
k126=NC21;
k128=NC22;
k130=NC23;
k132=NC24;
k134=NC25;
k136=NC26;
k138=NC27;
k140=NC28;




%*******************

k141='cd1';	k142=cd1;
k143='cd2_JPEG30';	k144=cd2;
k145='cd3_JPEG90';	k146=cd3;
k147='cd4_JPEG2000_5';	k148=cd4;
k149='cd5_JPEG2000_10';	k150=cd5;
k151='cd6_SP01';	k152=cd6;
k153='cd7_SP002';	k154=cd7;
k155='cd8_Gauss001';	k156=cd8;
k157='cd9_Gauss003';	k158=cd9;
k159='cd10_Med2x2';	k160=cd10;
k161='cd11_Med3x3';	k162=cd11;
k163='cd12_Butter100_1';	k164=cd12;
k165='cd13_Butter100_3';	k166=cd13;
k167='cd14_Sharpening02';	k168=cd14;
k169='cd15_Sharpening1';	k170=cd15;
k171='cd16_blurring02';	k172=cd16;
k173='cd17_blurring1';	k174=cd17;
k175='cd18_scaling4';	k176=cd18;
k177='cd19_scaling025';	k178=cd19;
k179='cd20_Cropping25';	k180=cd20;
k181='cd21_Cropping50';	k182=cd21;
k183='cd22_Lowpass';	k184=cd22;
k185='cd23_jpeg88';	k186=cd23;
k187='cd24_jpeg725';	k188=cd24;
k189='cd25_Gauss0004';	k190=cd25;
k191='cd26_Gauss0025';	k192=cd26;
k193='cd27_Med51';	k194=cd27;
k195='cd28_inrot';	k196=cd28;

k197='damgalamasuresi';
k198=gomme;
k199='cikarmasuresi';
k200=cikarma;

%***************** bitis


%ofsstruct=struct(	k7	,	k8	,	k9	,	k10	,	k11	,	k12	,	k13	,	k14	,	k15	,	k16	,	k17	,	k18	,	k19	,	k20	,	k21	,	k22	,	k23	,	k24	,	k25	,	k26	,	k27	,	k28	,	k29	,	k30	,	k85	,	k86	,	k87	,	k88	,	k89	,	k90	,	k91	,	k92	,	k93	,	k94	,	k95	,	k96	,	k97	,	k98	,	k99	,	k100	,	k101	,	k102	,	k103	,	k104	,	k105	,	k106	,	k107	,	k108	,	k109	,	k110	,	k111	,	k112	,	k113	,	k114	,	k115	,	k116	,	k117	,	k118	,	k119	,	k120	,	k121	,	k122	,	k123	,	k124	,	k125	,	k126	,	k127	,	k128	,	k129	,	k130	,	k131	,	k132	,	k133	,	k134	,	k135	,	k136	,	k137	,	k138	,	k139	,	k140);%	,	k141	,	k142	,	k143	,	k144	,	k145	,	k146	,	k147	,	k148	,	k149	,	k150	,	k151	,	k152	,	k153	,	k154	,	k155	,	k156	,	k157	,	k158	,	k159	,	k160	,	k161	,	k162	,	k163	,	k164	,	k165	,	k166	,	k167	,	k168	,	k169	,	k170	,	k171	,	k172	,	k173	,	k174	,	k175	,	k176	,	k177	,	k178	,	k179	,	k180	,	k181	,	k182	,	k183	,	k184	,	k185	,	k186	,	k187	,	k188	,	k189	,	k190	,	k191	,	k192,	k193	,	k194	,	k195	,	k196);

% 
  ofsstruct=struct(k1	,	k2	,	k3	,	k4	,	k5	,	k6	,	k7	,	k8	,	k9	,	k10	,	k11	,	k12	,	k13	,	k14	,	k15	,	k16	,	k17	,	k18	,	k19	,	k20	,	k21	,	k22	,	k23	,	k24	,	k25	,	k26	,	k27	,	k28	,	k29	,	k30	,	k31	,	k32	,	k33	,	k34	,	k35	,	k36	,	k37	,	k38	,	k39	,	k40	,	k41	,	k42	,	k43	,	k44	,	k45	,	k46	,	k47	,	k48	,	k49	,	k50	,	k51	,	k52	,	k53	,	k54	,	k55	,	k56	,	k57	,	k58	,	k59	,	k60	,	k61	,	k62	,	k63	,	k64	,	k65	,	k66	,	k67	,	k68	,	k69	,	k70	,	k71	,	k72	,	k73	,	k74	,	k75	,	k76	,	k77	,	k78	,	k79	,	k80	,	k81	,	k82	,	k83	,	k84	,	k85	,	k86	,	k87	,	k88	,	k89	,	k90	,	k91	,	k92	,	k93	,	k94	,	k95	,	k96	,	k97	,	k98	,	k99	,	k100	,	k101	,	k102	,	k103	,	k104	,	k105	,	k106	,	k107	,	k108	,	k109	,	k110	,	k111	,	k112	,	k113	,	k114	,	k115	,	k116	,	k117	,	k118	,	k119	,	k120	,	k121	,	k122	,	k123	,	k124	,	k125	,	k126	,	k127	,	k128	,	k129	,	k130	,	k131	,	k132	,	k133	,	k134	,	k135	,	k136	,	k137	,	k138	,	k139	,	k140	,	k141	,	k142	,	k143	,	k144	,	k145	,	k146	,	k147	,	k148	,	k149	,	k150	,	k151	,	k152	,	k153	,	k154	,	k155	,	k156	,	k157	,	k158	,	k159	,	k160	,	k161	,	k162	,	k163	,	k164	,	k165	,	k166	,	k167	,	k168	,	k169	,	k170	,	k171	,	k172	,	k173	,	k174	,	k175	,	k176	,	k177	,	k178	,	k179	,	k180	,	k181	,	k182	,	k183	,	k184	,	k185	,	k186	,	k187	,	k188	,	k189	,	k190	,	k191	,	k192,	k193	,	k194	,	k195	,	k196,k197,k198,k199,k200);

end