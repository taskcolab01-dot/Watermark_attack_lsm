function [ww PSNR1]=Dekle(watermark1,or,k1,k2,k3,k4,t,durum,hangisicift,xx1,yy1,xx2,yy2)


watermark2(:,:,1)=arnold(watermark1(:,:,1),10,10,50);
watermark2(:,:,2)=arnold(watermark1(:,:,2),10,10,50);
watermark2(:,:,3)=arnold(watermark1(:,:,3),10,10,50);
watermark=watermark2; 


RGB=or; 
or_dou=double(rgb2ycbcr(RGB)); 
R=or_dou(:,:,1);
G=or_dou(:,:,2);
B=or_dou(:,:,3);

rrr=size(G(:,:,1),1);	        %Height
ccc=size(G(:,:,1),2);	        %Width

% imwrite(uint8(R),'R.bmp');
% imwrite(uint8(G),'G.bmp');
% imwrite(uint8(B),'B.bmp');

tamresim=[];
tamresim(1:rrr,1:ccc)=G;
%  tamresim(1025:2048,1:1024)=imrotate(G,90);
%  tamresim(1025:2048,1:1024)=encode(G,1);
% tamresim(2049:3072,1:1024)=B;
% tamresim=[];
% tamresim(1:1024,1:1024)=encode(R,1);
% tamresim(1:1024,1025:2048)=encode(G,2);
% tamresim(1:1024,2049:3072)=encode(B,3);
%  figure, imshow(tamresim,[]);
% nlevels = [0, 1, 3, 4] ;        % Decomposition level
% pfilter = 'pkva' ;              % Pyramidal filter
% dfilter = 'pkva' ;              % Directional filter
% coeffs_or = pdfbdec( double(tamresim), pfilter, dfilter,2 );
% t2=coeffs_or{1};

t2=tamresim;




[dr]=Damgalama(t2,watermark,k1,k2,k3,xx1,yy1,xx2,yy2,t);


% coeffs_or{1}=dr;
% 
% 
% imrec_damgali=pdfbrec( coeffs_or,  pfilter, dfilter) ;
% ww=imrec_damgali;
imrec_damgali=dr;
or_dou(:,:,2)=imrec_damgali(1:rrr,1:ccc);

%   figure,imshow(ww,[]);

% G1=uint8(imrec_damgali(1025:2048,1:1024));
% B1=uint8(imrec_damgali(2049:3072,1:1024));
% ww=cat(3,decode(R1,1),decode(G1,2),decode(B1,3));
ww=ycbcr2rgb(uint8(or_dou));
ww=uint8(ww);
imwrite(ww,'Damgali.bmp');
origImg =double(or);
distImg = double(ww);

        [M ,N, P] = size(origImg);
        error = origImg - distImg;
        MSE = sum(sum(sum(error.^2))) / (M * N * P);

        if(MSE > 0)
            PSNR1 = 20*log10(max(max(max(origImg))))-10*log10(MSE);
        else
            PSNR1 = 99;
        end 
        
        
end