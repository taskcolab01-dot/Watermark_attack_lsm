function[ JPEG]= jpegsaldiri(damgaliresim,deger)

R1=damgaliresim(:,:,1);
G1=damgaliresim(:,:,2);
B1=damgaliresim(:,:,3);


Rd=double(R1);
maxi=max(max(Rd));mini=min(min(Rd));
Rd=round(255*(Rd-mini)/(maxi-mini));
Rint=uint8(Rd);
imwrite(Rint,'Rint.jpg','jpeg','mode','lossy','quality',deger);
R=imread('Rint.jpg');
Rd1=double(R);
Rd1=(maxi-mini)*(Rd1-min(min(Rd1)))/(max(max(Rd1))-min(min(Rd1)))+mini;
RJPEG=uint8(Rd1);
Rs=RJPEG;

Gd=double(G1);
maxi=max(max(Gd));mini=min(min(Gd));
Gd=round(255*(Gd-mini)/(maxi-mini));
Gint=uint8(Gd);
imwrite(Gint,'Gint.jpg','jpeg','mode','lossy','quality',deger);
G=imread('Gint.jpg');
Gd1=double(G);
Gd1=(maxi-mini)*(Gd1-min(min(Gd1)))/(max(max(Gd1))-min(min(Gd1)))+mini;
GJPEG=uint8(Gd1);
Gs=GJPEG;

Bd=double(B1);
maxi=max(max(Bd));mini=min(min(Bd));
Bd=round(255*(Bd-mini)/(maxi-mini));
Bint=uint8(Bd);
imwrite(Bint,'Bint.jpg','jpeg','mode','lossy','quality',deger);
B=imread('Bint.jpg');
Bd1=double(B);
Bd1=(maxi-mini)*(Bd1-min(min(Bd1)))/(max(max(Bd1))-min(min(Bd1)))+mini;
BJPEG=uint8(Bd1);
Bs=BJPEG;



ww=cat(3,Rs,Gs,Bs);
JPEG=ww;

end