clear all;
clc;
close all;
o1='2.1.01.tiff';
o2='2.1.02.tiff';
o3='2.1.04.tiff';
o4='2.1.05.tiff';
o5='2.1.06.tiff';
o6='2.1.07.tiff';

d1='32_d1.bmp';
d2='32_d2.bmp';
d3='32_d3.bmp';
d4='32_d5.bmp';

derece=60;

kk=1;
k1=10;k2=500;k3=1750;k4=60;
durum=1;
hangisicift=1;
% xx1=3;
% yy1=3;
% xx2=4;
% yy2=2;

xx1=5;
yy1=2;
xx2=4;
yy2=3;




  [ofsstruct(kk)]=Sonuc(d1,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d2,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d3,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
  [ofsstruct(kk)]=Sonuc(d4,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  
  [ofsstruct(kk)]=Sonuc(d1,o2,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d2,o2,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d3,o2,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
  [ofsstruct(kk)]=Sonuc(d4,o2,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  
  [ofsstruct(kk)]=Sonuc(d1,o3,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d2,o3,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d3,o3,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
  [ofsstruct(kk)]=Sonuc(d4,o3,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  
  [ofsstruct(kk)]=Sonuc(d1,o4,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d2,o4,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d3,o4,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
  [ofsstruct(kk)]=Sonuc(d4,o4,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  
  [ofsstruct(kk)]=Sonuc(d1,o5,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d2,o5,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d3,o5,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
  [ofsstruct(kk)]=Sonuc(d4,o5,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  
  [ofsstruct(kk)]=Sonuc(d1,o6,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d2,o6,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d3,o6,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
  [ofsstruct(kk)]=Sonuc(d4,o6,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  
 
writetable(struct2table(ofsstruct), 'dct_sonucexcell_log3.xlsx');

 



  
 sat=1; 
figure, imshow(ofsstruct(sat).Damgaliresim,[] ); title('Damgaliresim');
figure, imshow(ofsstruct(sat).cd2_JPEG30,[] ); title('Damgaliresim');
cd2_JPEG30
writetable(struct2table(ofsstruct), 'sonuc1.xlsx');









%  for xx1=1:1:5
%       for yy1=1:1:5
%            for xx2=1:1:5
%                 for yy2=1:1:5
%                     if(xx1 == xx2 && yy1==yy2)||(xx2==yy2)
% 
%                     else
%              [ofsstruct(kk)]=Sonuc(d1,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
%               [ofsstruct(kk)]=Sonuc(d2,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
%                  end
%                 end
%            end
%       end
%  end
%     
    
    
    
    
    
    
    
    
  [ofsstruct(kk)]=Sonuc(d1,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d1,o2,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d1,o3,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
  [ofsstruct(kk)]=Sonuc(d1,o4,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d2,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d2,o2,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d2,o3,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
  [ofsstruct(kk)]=Sonuc(d2,o4,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
  
  
  
  
  [ofsstruct(kk)]=Sonuc(d3,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d3,o2,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d3,o3,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
  [ofsstruct(kk)]=Sonuc(d3,o4,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
  
  
sat=12;
% yer  = 'C:\sonuc';
 yer = ['.', filesep(), 'simg', filesep()]; 
for (s1 = 1:1:sat)
names = fieldnames(ofsstruct);
 
 filename =strcat('dr',num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{1}),fullFileName);
 
end

 yer = ['.', filesep(), 'simg', filesep()]; 
for (s1 = 1:1:sat)
names = fieldnames(ofsstruct);
 
 filename =strcat('cd',num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{71}),fullFileName);
 
end

 yer = ['.', filesep(), 'simg', filesep()]; 
 ss1=1;
 rc='f';
for (s1 = 2:4:12)
names = fieldnames(ofsstruct);
 
    filename =strcat(rc,num2str(ss1),num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{72}),fullFileName);
     filename =strcat(rc,num2str(ss1+1),num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{75}),fullFileName);
     filename =strcat(rc,num2str(ss1+2),num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{77}),fullFileName);
     filename =strcat(rc,num2str(ss1+3),num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{79}),fullFileName);
        filename =strcat(rc,num2str(ss1+4),num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{81}),fullFileName);
     filename =strcat(rc,num2str(ss1+5),num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{83}),fullFileName);
        filename =strcat(rc,num2str(ss1+6),num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{85}),fullFileName);
   filename =strcat(rc,num2str(ss1+7),num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{87}),fullFileName);
    filename =strcat(rc,num2str(ss1+8),num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{88}),fullFileName);
       filename =strcat(rc,num2str(ss1+9),num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{98}),fullFileName);
        filename =strcat(rc,num2str(ss1+10),num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{90}),fullFileName);
       filename =strcat(rc,num2str(ss1+11),num2str(s1),'.png');
     fullFileName = fullfile(yer,filename);
     imwrite(ofsstruct(s1).(names{91}),fullFileName);
     
 
end

sat=26;
str = string(missing)
ss2=1;
names = fieldnames(ofsstruct);
 
for (s1 = 0:1:sat)
str(ss2,1)=strcat(num2str(round(ofsstruct(1).(names{44+s1}),4)));
str(ss2,2)=strcat(num2str(round(ofsstruct(2).(names{44+s1}),4)));
str(ss2,3)=strcat(num2str(round(ofsstruct(3).(names{44+s1}),4)));
str(ss2,4)=strcat(num2str(round(ofsstruct(4).(names{44+s1}),4)));ss2=ss2+1;


str(ss2,1)=strcat(num2str(round(ofsstruct(5).(names{44+s1}),4)));
str(ss2,2)=strcat(num2str(round(ofsstruct(6).(names{44+s1}),4)));
str(ss2,3)=strcat(num2str(round(ofsstruct(7).(names{44+s1}),4)));
str(ss2,4)=strcat(num2str(round(ofsstruct(8).(names{44+s1}),4)));ss2=ss2+1;


str(ss2,1)=strcat(num2str(round(ofsstruct(9).(names{44+s1}),4)));
str(ss2,2)=strcat(num2str(round(ofsstruct(10).(names{44+s1}),4)));
str(ss2,3)=strcat(num2str(round(ofsstruct(11).(names{44+s1}),4)));
str(ss2,4)=strcat(num2str(round(ofsstruct(12).(names{44+s1}),4)));ss2=ss2+1;



end














str(ss2,1)=strcat('  ');ss2=ss2+1;
for (s1 = 1:1:sat)
str(ss2,1)=strcat('\textbf{',num2str(round(ofsstruct(s1).(names{47}),4)),'}&');ss2=ss2+1;
end
str(ss2,1)=strcat('  ');ss2=ss2+1;
for (s1 = 1:1:sat)
str(ss2,1)=strcat('\textbf{',num2str(round(ofsstruct(s1).(names{49}),4)),'}&');ss2=ss2+1;
end
str(ss2,1)=strcat('  ');ss2=ss2+1;
for (s1 = 1:1:sat)
str(ss2,1)=strcat('\textbf{',num2str(round(ofsstruct(s1).(names{51}),4)),'}&');ss2=ss2+1;
end
str(ss2,1)=strcat('  ');ss2=ss2+1;
for (s1 = 1:1:sat)
str(ss2,1)=strcat('\textbf{',num2str(round(ofsstruct(s1).(names{53}),4)),'}&');ss2=ss2+1;
end
str(ss2,1)=strcat('  ');ss2=ss2+1;
for (s1 = 1:1:sat)
str(ss2,1)=strcat('\textbf{',num2str(round(ofsstruct(s1).(names{55}),4)),'}&');ss2=ss2+1;
end
str(ss2,1)=strcat('  ');ss2=ss2+1;
for (s1 = 1:1:sat)
str(ss2,1)=strcat('\textbf{',num2str(round(ofsstruct(s1).(names{57}),4)),'}&');ss2=ss2+1;
end
str(ss2,1)=strcat('  ');ss2=ss2+1;
for (s1 = 1:1:sat)
str(ss2,1)=strcat('\textbf{',num2str(round(ofsstruct(s1).(names{59}),4)),'}&');ss2=ss2+1;
end
str(ss2,1)=strcat('  ');ss2=ss2+1;
for (s1 = 1:1:sat)
str(ss2,1)=strcat('\textbf{',num2str(round(ofsstruct(s1).(names{60}),4)),'}&');ss2=ss2+1;
end
str(ss2,1)=strcat('  ');ss2=ss2+1;
for (s1 = 1:1:sat)
str(ss2,1)=strcat('\textbf{',num2str(round(ofsstruct(s1).(names{70}),4)),'}&');ss2=ss2+1;
end
str(ss2,1)=strcat('  ');ss2=ss2+1;
for (s1 = 1:1:sat)
str(ss2,1)=strcat('\textbf{',num2str(round(ofsstruct(s1).(names{62}),4)),'}&');ss2=ss2+1;
end
str(ss2,1)=strcat('  ');ss2=ss2+1;
for (s1 = 1:1:sat)
str(ss2,1)=strcat('\textbf{',num2str(round(ofsstruct(s1).(names{63}),4)),'}&');ss2=ss2+1;
end




 



















% for (k1 = 10:2:30)
 


tic;
  [ofsstruct(kk)]=Sonuc(d1,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d1,o2,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
  [ofsstruct(kk)]=Sonuc(d2,o3,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d2,o4,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
  [ofsstruct(kk)]=Sonuc(d2,o5,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
%  [ofsstruct(kk)]=Sonuc(d2,o3,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
%  [ofsstruct(kk)]=Sonuc(d2,o5,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;
%  



  [ofsstruct(kk)]=Sonuc(d1,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d1,o2,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
%   [ofsstruct(kk)]=Sonuc(d1,o3,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
%   [ofsstruct(kk)]=Sonuc(d1,o4,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
%   [ofsstruct(kk)]=Sonuc(d1,o5,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
%   
% end


%   [ofsstruct(kk)]=Sonuc(d2,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
%   [ofsstruct(kk)]=Sonuc(d2,o2,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d2,o3,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d2,o4,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
%   [ofsstruct(kk)]=Sonuc(d2,o5,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;

  [ofsstruct(kk)]=Sonuc(d3,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d3,o2,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d3,o3,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d3,o4,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d3,o5,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  
  [ofsstruct(kk)]=Sonuc(d4,o1,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d4,o2,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d4,o3,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 
  [ofsstruct(kk)]=Sonuc(d4,o4,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1;  
  [ofsstruct(kk)]=Sonuc(d4,o5,k1,k2,k3,k4,8,derece,durum,hangisicift,xx1,yy1,xx2,yy2);  kk=kk+1; 






n=6;

 figure, imshow(ofsstruct(n).cd1,[] );
 figure, imshow(ofsstruct(n).cd2,[] );
 figure, imshow(ofsstruct(n).cd3,[] );
 figure, imshow(ofsstruct(n).cd4,[] );
 figure, imshow(ofsstruct(n).cd5,[] );
 figure, imshow(ofsstruct(n).cd6,[] );
 figure, imshow(ofsstruct(n).cd7,[] );
 figure, imshow(ofsstruct(n).cd8,[] );
 figure, imshow(ofsstruct(n).cd9,[] );
 figure, imshow(ofsstruct(n).cd10,[] );
 figure, imshow(ofsstruct(n).cd11,[] );
 figure, imshow(ofsstruct(n).cd12,[] );
 figure, imshow(ofsstruct(n).cd13,[] );
 figure, imshow(ofsstruct(n).cd14,[] );
 figure, imshow(ofsstruct(n).cd15,[] );
 figure, imshow(ofsstruct(n).cd16,[] );
 
  figure, imshow(ofsstruct(n).cd19,[] );
 figure, imshow(ofsstruct(n).cd27,[] );













 n=11; 
 figure, imshow(ofsstruct(n).Damgaliresim,[] ); title(o1);
 figure, imshow(ofsstruct(n+1).Damgaliresim,[] ); title(o2);
 figure, imshow(ofsstruct(n+2).Damgaliresim,[] ); title(o3);
 figure, imshow(ofsstruct(n+3).Damgaliresim,[] ); title(o4);
  figure, imshow(ofsstruct(n+4).Damgaliresim,[] ); title(o5);

 
 
  figure, imshow(ofsstruct(n).Rotate,[] ); title('Rotate');
 
 figure, imshow(ofsstruct(n).cd1,[] ); title('cd1');
 figure, imshow(ofsstruct(n).cd2,[] ); title('cd2');
 figure, imshow(ofsstruct(n).cd3,[] ); title('cd3');
 figure, imshow(ofsstruct(n).cd4,[] ); title('cd4');
 figure, imshow(ofsstruct(n).cd5,[] ); title('cd5');
 figure, imshow(ofsstruct(n).cd6,[] ); title('cd6');
 figure, imshow(ofsstruct(n).cd7,[] ); title('cd7');
 figure, imshow(ofsstruct(n).cd8,[] ); title('cd8');
 figure, imshow(ofsstruct(n).cd9,[] ); title('cd9');
 figure, imshow(ofsstruct(n).cd10,[] ); title('cd10');
 figure, imshow(ofsstruct(n).cd11,[] ); title('cd11');
 figure, imshow(ofsstruct(n).cd12,[] ); title('cd12');
 figure, imshow(ofsstruct(n).cd13,[] ); title('cd13');
 figure, imshow(ofsstruct(n).cd14,[] ); title('cd14');
 figure, imshow(ofsstruct(n).cd15,[] ); title('cd15');
 figure, imshow(ofsstruct(n).cd16,[] ); title('cd16');

names = fieldnames(ofsstruct);
aa=ofsstruct(1).(names{13}); 
 

imwrite(rgb,'peppers_20.j2k','CompressionRatio',12)
imwrite(double(imread('512Lena.bmp')),'newImage.jpg','CompressionRatio',12)
JPEG2000 and specifying a target compression ratio
 
 
 figure, imshow(ofsstruct(n).CDamga12_rot,[] ); title('CDamga12_rot');

    figure, imshow(ofsstruct(n).CDamga1_NoAtact,[] ); title('ORJÝNAL no attac');
       figure, imshow(imread('96Man.bmp'),[] ); title('ORJÝNAL');
 
 
 

    excelkalip();
    excelyaz(1,'C',0,ofsstruct);
    excelyaz(4,'D',0,ofsstruct);
    excelyaz(7,'E',0,ofsstruct);
    
    

      filename =strcat(num2str(k1),'96x96_k_5-50' ,'.mat');
     save(filename); 
   
     
    
    writetable(struct2table(ofsstruct), 'sonuc.xlsx')
  
