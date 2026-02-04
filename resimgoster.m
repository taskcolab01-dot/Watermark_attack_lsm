function resimgoster(sat,ofsstruct)

  
figure, imshow(ofsstruct(sat).Damgaliresim,[] ); title('Damgaliresim');
  
figure, imshow(ofsstruct(sat).Orijinalresim,[] ); title('Orijinalresim');

  [ww]=rayir(ofsstruct(sat).CDamga1_NoAtact); 
figure, imshow(ww,[] ); title('CDamga1_NoAtact');
 [ww]=rayir(ofsstruct(sat).CDamga2_KS); 
figure, imshow(ww,[] ); title('CDamga2_KS');
 [ww]=rayir(ofsstruct(sat).CDamga3_BL); 
figure, imshow(ww,[] );title('BL');
 [ww]=rayir(ofsstruct(sat).CDamga4_OF); 
figure, imshow(ww,[] );title('OF');
  [ww]=rayir(ofsstruct(sat).CDamga5_OL); 
figure, imshow(ww,[] );title('OL');
 [ww]=rayir(ofsstruct(sat).CDamga6_Jpeg); 
figure, imshow(ww,[] );title('JPEG');
 [ww]=rayir(ofsstruct(sat).CDamga8_Gaus); 
figure, imshow(ww,[] );title('GAUS');
 [ww]=rayir(ofsstruct(sat).CDamga9_SP); 
figure, imshow(ww,[] );title('SP');
 [ww]=rayir(ofsstruct(sat).CDamga10_Spec); 
figure, imshow(ww,[] );title('SPEC');
 [ww]=rayir(ofsstruct(sat).CDamga11_Med); 
figure, imshow(ww,[] );title('MED');
 [ww]=rayir(ofsstruct(sat).CDamga12_rot); 
figure, imshow(ww,[] );title('ROT');