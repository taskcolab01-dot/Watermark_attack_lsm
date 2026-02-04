% d1 = getfield(ofsstruct(1), 'PSNR');
% struct veri almak
function [ofsstruct]=Sonuc(d1,o1,kk1,xx1,yy1,xx2,yy2,derece)
[ofsstruct1]=Sonuc1(d1,o1,kk1,xx1,yy1,xx2,yy2,derece);
tic;
or=imread(o1);

% watermark=imread(d1);
% [wm]=rbirlestir(watermark);

watermark=imread(d1);
[wm]=double(watermark);

%resmi damgala
[ww PSNR1]=Dekle(wm,or,kk1,xx1,yy1,xx2,yy2);
damgalama=toc;
%7 saldiri  
%    figure, imshow(ww,[]);
[KS BL OF OL JPEG1 GE Gauss SP Spec Med rot inrot]= saldiriofs(ww,derece) ;  
tic;
%%  7 tane damga cikacak 1 saldirisiz 6 saldirili
[NC1 cd1]=Dcikarma(ww,wm,kk1,xx1,yy1,xx2,yy2);
cikarma=toc;
[NC2 cd2]=Dcikarma(KS,wm,kk1,xx1,yy1,xx2,yy2);
[NC3 cd3]=Dcikarma(BL,wm,kk1,xx1,yy1,xx2,yy2);
[NC4 cd4]=Dcikarma(OF,wm,kk1,xx1,yy1,xx2,yy2);
[NC5 cd5]=Dcikarma(OL,wm,kk1,xx1,yy1,xx2,yy2);
[NC6 cd6]=Dcikarma(JPEG1,wm,kk1,xx1,yy1,xx2,yy2);
[NC7 cd7]=Dcikarma(GE,wm,kk1,xx1,yy1,xx2,yy2);
[NC8 cd8]=Dcikarma(Gauss,wm,kk1,xx1,yy1,xx2,yy2);
[NC9 cd9]=Dcikarma(SP,wm,kk1,xx1,yy1,xx2,yy2);
[NC10 cd10]=Dcikarma(Spec,wm,kk1,xx1,yy1,xx2,yy2);
[NC11 cd11]=Dcikarma(Med,wm,kk1,xx1,yy1,xx2,yy2);
[NC12 cd12]=Dcikarma(inrot,wm,kk1,xx1,yy1,xx2,yy2);

k1='Damgaliresim';
k2=ww;
k3='Orijinalresim';
k4=or;
k5='Damga';
k6=wm;
k7='Keskinlestirme';
k8=KS;
k9='Bulaniklastirma';
k10=BL;
k11='OrtalamaFiltre';
k12=OF;
k13='Olceklendirme';
k14=OL;
k15='JPEG';
k16=JPEG1;
 k17='GurultuPoisson';
 k18=GE;
k19='gaussian';
k20=Gauss;
k21='salt_pepper';
k22=SP;
k23='speckle';
k24=Spec;
k25='medfilt';
k26=Med;
k27='Rotate';
k28=rot;
k29='in_Rotate';
k30=inrot;
k31='NC1_NoAtact';
k32=NC1;
k33='NC2_KS';
k34=NC2;
k35='NC3_BL';
k36=NC3;
k37='NC4_OF';
k38=NC4;
k39='NC5_OL';
k40=NC5;
k41='NC6_JPEG';
k42=NC6;
 k43='NC7_GE';
 k44=NC7;
k45='NC8_Gauss';
k46=NC8;
k47='NC9_SP';
k48=NC9;
k49='NC10_SPec';
k50=NC10;
k51='NC11_Med';
k52=NC11;
k53='NC12_rot';
k54=NC12;
k55='CDamga1_NoAtact';
k56=cd1;
k57='CDamga2_KS';
k58=cd2;
k59='CDamga3_BL';
k60=cd3;
k61='CDamga4_OF';
k62=cd4;
k63='CDamga5_OL';
k64=cd5;
k65='CDamga6_Jpeg';
k66=cd6;
k67='CDamga7_GE';
k68=cd7;
k69='CDamga8_Gaus';
k70=cd8;
k71='CDamga9_SP';
k72=cd9;
k73='CDamga10_Spec';
k74=cd10;
k75='CDamga11_Med';
k76=cd11;
k77='CDamga12_rot';
k78=cd12;
k79='k1';
k80=kk1;

k87='PSNR';
k88=PSNR1;
k89='oresimadi';
k90=o1;
k91='kullanilandamgaadi';
k92=d1;
k99='xx1';
k100=xx1;
k101='yy1';
k102=yy1;
k103='xx2';
k104=xx2;
k105='yy2';
k106=yy2;
k107='damgalamasuresi';
k108=damgalama;
k109='cikarmasuresi';
k110=cikarma;
k111='digersaldirilar';
k112=1;


% ofsstruct=struct(k1,k2,k55,k56, k31, k32, k33, k34, k35, k36, k37, k38, k39, k40, k41, k42,  k45, k46, k47, k48, k49, k50, k51, k52, k53, k54,k87, k88, k79, k80, k81, k82, k83, k84, k85, k86,  k89, k90, k91, k92,k93, k94, k95, k96,k97, k98,k99,k100,k101,k102,k103,k104,k105,k106);

ofsstruct=struct( k87, k88, k89, k90, k91,k92, k99,k100,k101,k102,k103,k104,k105,k106,k107,k108,k109,k110, k79, k80, k31, k32, k33, k34, k35, k36, k37, k38, k39, k40, k41, k42,k43,k44, k45, k46, k47, k48, k49, k50, k51, k52, k53, k54);

%ofsstruct=struct(k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11, k12, k13, k14, k15, k16,k17,k18, k19, k20, k21, k22, k23, k24, k25, k26, k27, k28, k29, k30, k87, k88, k89, k90, k91,k92, k99,k100,k101,k102,k103,k104,k105,k106,k107,k108,k109,k110, k79, k80, k31, k32, k33, k34, k35, k36, k37, k38, k39, k40, k41, k42,k43,k44, k45, k46, k47, k48, k49, k50, k51, k52, k53, k54, k55, k56, k57, k58, k59, k60, k61, k62, k63, k64, k65, k66, k67, k68, k69, k70, k71, k72, k73, k74, k75, k76, k77, k78,k111,k112);

end