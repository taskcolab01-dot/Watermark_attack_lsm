function[ JPEG30 JPEG90 JPEG2000_5 JPEG2000_10 SP01 SP002 Gauss001 Gauss003 Med2x2 Med3x3 Butter100_1 Butter100_3 Sharpening02 Sharpening1 blurring02 blurring1 scaling4 scaling025 Cropping25 Cropping50 Lowpass jpeg88 jpeg725 Gauss0004 Gauss0025 Med51 rot inrot  ]= ofssaldiri(damgaliresim,derece)

%%%%sýkýþtýrma jpeg


rrr=size(damgaliresim(:,:,1),1);	        %Height
ccc=size(damgaliresim(:,:,1),2);	        %Width

[JPEG30]= jpegsaldiri(damgaliresim,30);
[JPEG90]= jpegsaldiri(damgaliresim,90);

%%jpeg2000
imwrite(damgaliresim,'jpeg2000_5.j2k','CompressionRatio',5);
JPEG2000_5=imread('jpeg2000_5.j2k');
imwrite(damgaliresim,'jpeg2000_10.j2k','CompressionRatio',10);
JPEG2000_10=imread('jpeg2000_10.j2k');

SP01= imnoise(damgaliresim,'salt & pepper', 0.1);
SP002= imnoise(damgaliresim,'salt & pepper', 0.02);

Gauss001 = imnoise(damgaliresim,'gaussian',0,0.001);
Gauss003 = imnoise(damgaliresim,'gaussian',0,0.003);

img=damgaliresim;

R = img(:,:,1);

G = img(:,:,2);

B = img(:,:,3);

Med2x2(:,:,1) = medfilt2(R,[2 2]);

Med2x2(:,:,2) = medfilt2(G,[2 2]);

Med2x2(:,:,3) = medfilt2(B,[2 2]);

img=damgaliresim;

R = img(:,:,1);

G = img(:,:,2);

B = img(:,:,3);

Med3x3(:,:,1) = medfilt2(R,[3 3]);

Med3x3(:,:,2) = medfilt2(G,[3 3]);

Med3x3(:,:,3) = medfilt2(B,[3 3]);

[Butter100_1]= Butter(damgaliresim,1);
[Butter100_3]= Butter(damgaliresim,3);

H1 = fspecial('unsharp',0.2);
Sharpening02 = imfilter(damgaliresim,H1);
H1 = fspecial('unsharp',1);
Sharpening1 = imfilter(damgaliresim,H1);

H2=fspecial('disk',0.2);
blurring02 = imfilter(damgaliresim,H2);

H2=fspecial('disk',1);
blurring1 = imfilter(damgaliresim,H2);


%%% 4 kat kucult 2 kat buyut filtresi
OLyari=imresize(damgaliresim,4,'bilinear');
scaling4=imresize(OLyari,0.25,'bilinear');

%%% 2 kat kucult 2 kat buyut filtresi
OLyari=imresize(damgaliresim,0.444444444444,'bilinear');
%scaling025=imresize(OLyari,2.2,'bilinear');
scaling025=imresize(imresize(OLyari,2.25,'bilinear'),[ccc,rrr]);

Cropping25=damgaliresim;

Cropping25(1:ccc/2,1:rrr/2,1)=0;

Cropping25(1:ccc/2,1:rrr/2,2)=0;

Cropping25(1:ccc/2,1:rrr/2,3)=0;

Cropping50=damgaliresim;

Cropping50(1:ccc,1:rrr/2,1)=0;

Cropping50(1:ccc,1:rrr/2,2)=0;

Cropping50(1:ccc,1:rrr/2,3)=0;

%ortalama filitre
H3 = fspecial('average');
Lowpass= imfilter(damgaliresim, H3,'same');

[jpeg88]= jpegsaldiri(damgaliresim,88);
[jpeg725]= jpegsaldiri(damgaliresim,72.5);

Gauss0004 = imnoise(damgaliresim,'gaussian',0,0.0004);
Gauss0025 = imnoise(damgaliresim,'gaussian',0,0.0025);
img=damgaliresim;

R = img(:,:,1);

G = img(:,:,2);

B = img(:,:,3);
Med51(:,:,1) = medfilt2(R,[5 1]);

Med51(:,:,2) = medfilt2(G,[5 1]);

Med51(:,:,3) = medfilt2(B,[5 1]);


[ rot rot1 inrot]= rotate_ofs(damgaliresim,derece);%22.5 derece cevirdik

% inrot1 = imrotate(damgaliresim, 12,'loose');








end