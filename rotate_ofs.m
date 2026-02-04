function[ rot rot1 tamresim]= rotate_ofs(ww,derece)

img=ww;
aci=-derece;
R = img(:,:,1);

G = img(:,:,2);

B = img(:,:,3);

[s1,s2]=size(R);
rot(:,:,1) =imrotate(uint8(R),aci); 

rot(:,:,2) = imrotate(uint8(G),aci);

rot(:,:,3) = imrotate(uint8(B),aci);
% figure, imshow(rot,[]);


rot1(:,:,1) =imrotate(rot(:,:,1),-(360+aci)); 

rot1(:,:,2) = imrotate(rot(:,:,2),-(360+aci));

rot1(:,:,3) = imrotate(rot(:,:,3),-(360+aci));
% figure, imshow(rot1,[]);
%tamresim(1:512,1:512)

[x1,y1 z1] = size(rot1);

tamresim(:,:,1)=rot1(ceil((x1-s1)/2):ceil((x1-s1)/2)+(s1-1),ceil((x1-s1)/2):ceil((x1-s1)/2)+(s1-1),1);
tamresim(:,:,2)=rot1(ceil((x1-s1)/2):ceil((x1-s1)/2)+(s1-1),ceil((x1-s1)/2):ceil((x1-s1)/2)+(s1-1),2);
tamresim(:,:,3)=rot1(ceil((x1-s1)/2):ceil((x1-s1)/2)+(s1-1),ceil((x1-s1)/2):ceil((x1-s1)/2)+(s1-1),3);
% figure, imshow(tamresim,[]);

