clear all;
clc;
close all;

or=imread('1024Lenna.bmp');
or_dou=double(or); 
R=or_dou(:,:,1);
G=or_dou(:,:,2);
B=or_dou(:,:,3);



tamresim=[];
tamresim(1:1024,1:1024)=encode(R,1);
tamresim(1:1024,1025:2048)=encode(G,2);
tamresim(1:1024,2049:3072)=encode(B,3);

figure, imshow(tamresim,[]);


imrec_damgali=tamresim;

R1=uint8(imrec_damgali(1:1024,1:1024));
G1=uint8(imrec_damgali(1:1024,1025:2048));
B1=uint8(imrec_damgali(1:1024,2049:3072));

ww=cat(3,decode(R1,1),decode(G1,2),decode(B1,3));
ww=uint8(ww);

figure, imshow(ww,[]);


origImg =or_dou;
distImg = double(ww);
aa1=psnr(distImg,origImg);
        [M ,N, P] = size(origImg);
        error = origImg - distImg;
        MSE = sum(sum(sum(error.^2))) / (M * N * P);

        if(MSE > 0)
            PSNR1 = 20*log10(max(max(max(origImg))))-10*log10(MSE);
        else
            PSNR1 = 99;
        end 
aaa1=sum(error(:));

