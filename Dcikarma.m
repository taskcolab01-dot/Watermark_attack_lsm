function [NC cikandamga]=Dcikarma(damgaliresim,or,wm ,k1,k2,k3,k4,t,durum,hangisicift,xx1,yy1,xx2,yy2)

RGB=damgaliresim; 
or_dou= double(rgb2ycbcr(RGB)); 
Mm=size(wm,1);	                %Height
Nm=size(wm,2);	                %Width

rr=size(RGB,1);	                %Height
cc=size(RGB,2);

R=or_dou(:,:,1);
G=or_dou(:,:,2);
B=or_dou(:,:,3);
tamresim=[];
tamresim(1:rr,1:cc)=G;
%  tamresim(1025:2048,1:1024)=encode(G,1);
% tamresim(1025:2048,1:1024)=G;
% tamresim(2049:3072,1:1024)=B;
%  figure, imshow(tamresim,[]);
% tamresim=[];
% tamresim(1:1024,1:1024)=encode(R,1);
% tamresim(1:1024,1025:2048)=encode(G,2);
% tamresim(1:1024,2049:3072)=encode(B,3);

% nlevels = [0, 1, 3, 4] ;        % Decomposition level
% pfilter = 'pkva' ;              % Pyramidal filter
% dfilter = 'pkva' ;              % Directional filter
% coeffs_or = pdfbdec( double(tamresim), pfilter, dfilter,2 );
% 
% 
% t2=coeffs_or{1};
t2=tamresim;

[d1]=Da_cikarma(t2,Mm,Nm,xx1,yy1,xx2,yy2,k1,k2,k3);

% cikandamga=d1;

% cdd1=ycbcr2rgb(uint8(d1));

cikandamga(:,:,1)=arnold_rec(d1(:,:,1),10,10,50);
cikandamga(:,:,2)=arnold_rec(d1(:,:,2),10,10,50);
cikandamga(:,:,3)=arnold_rec(d1(:,:,3),10,10,50);






%oo=mean(cikandamga(:));
% %cikandamga(cikandamga>=oo )=1;
%   cikandamga=im2bw(cikandamga);
% cikandamga=iarnold( cikandamga, t );
% cd=cikandamga;

%subplot(1,2,1), imshow(cd)
kont=double(cikandamga);
% cikandamga=uint8(cikandamga);

%subplot(1,2,2), imshow(logical(cikandamga))
% figure,imshow(cikandamga,[]);
%  NC=NChesap(wm,kont);
% NC=corr2(wm,cikandamga);
 NC=NChesap(kont,wm);
end
        