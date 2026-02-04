%Önerilen yöntemlerin saldýrýlara karþý dayanýklýlýðýný ölçmek için damgalanmýþ görüntülere; 
%keskinleþtirme (KS, 3x3), 
%bulanýklaþtýrma (BL, 3x3), 
%ortalama filtreleme (OF, 3x3), 
%ölçekleme (OL, 512?1024?512 ), 
%sýkýþtýrma (JPEG, %20 kalitede) 
%gürültü ekleme (GE, Poisson) iþlemleri uygulanmýþtýr.
% Gauss = imnoise(damgaliresim,'gaussian');
% SP= imnoise(damgaliresim,'salt & pepper');
% SPec = imnoise(damgaliresim,'speckle');
% Med = medfilt2(damgaliresim);
% rot = imrotate(damgaliresim,angle);
function[KS BL OF OL JPEG1 GE Gauss SP SPec Med rot inrot]= saldiriofs(damgaliresim,derece)

%%% keskinlesirme filtresi

H1 = fspecial('unsharp',1);
KS = imfilter(damgaliresim,H1);

%%% bulaniklastirma filtresi
% H2=fspecial('gaussian',5,1);
H2=fspecial('disk',1);
BL = imfilter(damgaliresim,H2);
% h = fspecial('disk',0.1)

%ortalama filitre
H3 = fspecial('average');
OF= imfilter(damgaliresim, H3,'same');

%%% 2 kat kucult 2 kat buyut filtresi
OLyari=imresize(damgaliresim,4,'bilinear');
OL=imresize(OLyari,0.25,'bilinear');

%%%%sýkýþtýrma jpeg
R1=damgaliresim(:,:,1);
G1=damgaliresim(:,:,2);
B1=damgaliresim(:,:,3);


Rd=double(R1);
maxi=max(max(Rd));mini=min(min(Rd));
Rd=round(255*(Rd-mini)/(maxi-mini));
Rint=uint8(Rd);
imwrite(Rint,'Rint.jpg','jpeg','mode','lossy','quality',30);
R=imread('Rint.jpg');
Rd1=double(R);
Rd1=(maxi-mini)*(Rd1-min(min(Rd1)))/(max(max(Rd1))-min(min(Rd1)))+mini;
RJPEG=uint8(Rd1);
Rs=RJPEG;

Gd=double(G1);
maxi=max(max(Gd));mini=min(min(Gd));
Gd=round(255*(Gd-mini)/(maxi-mini));
Gint=uint8(Gd);
imwrite(Gint,'Gint.jpg','jpeg','mode','lossy','quality',30);
G=imread('Gint.jpg');
Gd1=double(G);
Gd1=(maxi-mini)*(Gd1-min(min(Gd1)))/(max(max(Gd1))-min(min(Gd1)))+mini;
GJPEG=uint8(Gd1);
Gs=GJPEG;

Bd=double(B1);
maxi=max(max(Bd));mini=min(min(Bd));
Bd=round(255*(Bd-mini)/(maxi-mini));
Bint=uint8(Bd);
imwrite(Bint,'Bint.jpg','jpeg','mode','lossy','quality',30);
B=imread('Bint.jpg');
Bd1=double(B);
Bd1=(maxi-mini)*(Bd1-min(min(Bd1)))/(max(max(Bd1))-min(min(Bd1)))+mini;
BJPEG=uint8(Bd1);
Bs=BJPEG;



ww=cat(3,Rs,Gs,Bs);
JPEG1=ww;

%%%%gurultu poisson
GE = imnoise(damgaliresim,'poisson');

% Gauss = imnoise(damgaliresim,'gaussian');
Gauss = imnoise(damgaliresim,'gaussian',0,0.003);
SP= imnoise(damgaliresim,'salt & pepper', 0.01);
SPec = imnoise(damgaliresim,'speckle',0.01);
[ rot rot1 inrot]= rotate_ofs(damgaliresim,derece);%22.5 derece cevirdik




img=damgaliresim;

R = img(:,:,1);

G = img(:,:,2);

B = img(:,:,3);

Med(:,:,1) = medfilt2(R,[5 1]);

Med(:,:,2) = medfilt2(G,[5 1]);

Med(:,:,3) = medfilt2(B,[5 1]);



end

% 1) For Geometrical attack: cropping and rotation, you can use imcrop() and imrotate().
% 
% 2) For Noising attack: Gaussian noise, you can use imnoise()
% 
% 3) For Denoising attack: average filtering, you can use imfilter() or conv2()
% 
% 4) For Format-compression attack: JPEG compression, you can use imwrite()
% 
% 5) For Image-processing attack: histogram equalization (HE),contrast adjustment (CA), and gamma correction (GC), you can use histeq(), adapthisteq(), imadjust(), and intlut(), repectively.

% %5) Image-processing attack: 
% histogram equalization (HE),
% contrast adjustment (CA),
% and gamma correction (GC).