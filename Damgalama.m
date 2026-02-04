
function [damgaliresim]=Damgalama(resim,damga,k1,k2,k3,xx1,yy1,xx2,yy2,t)
%k=10;           % set minimum coeff difference
blocksize=8;    % set the size of the block in cover to be used for each bit in watermark

 cover_object=resim;

Mc=size(cover_object(:,:,1),1);	        %Height
Nc=size(cover_object(:,:,1),2);	        %Width

% determine maximum message size based on cover object, and blocksize
max_message=3*Mc*Nc/(blocksize^2);

message=double(damga);
message = double(message);
orig_watermark=message;

Mm=size(message,1);	                %Height
Nm=size(message,2);	                %Width

% reshape the message to a vector
message=round(reshape(message,Mm*Nm*3,1));

% check that the message isn't too large for cover
if (length(message) > max_message)
    error('Message too large to fit in Cover Object')
end


% pad the message out to the maximum message size with ones
message_pad=ones(1,length(message));
message_pad(1:length(message))=message;

% generate shell of watermarked image
watermarked_image=cover_object;



x=1;
y=1;
% logdc=1;
for (kk = 1:3:length(message_pad))

    % transform block using DCT
    blok=cover_object(y:y+blocksize-1,x:x+blocksize-1);
 dct_block = dct2(cover_object(y:y+blocksize-1,x:x+blocksize-1));
  kkk=dct_block;

   dct_block(xx1,yy1)=message_pad(kk)/logb((k1*dct_block(1,1)+1),3);
  dct_block(xx2,yy2)=message_pad(kk+1)/logb((k1*dct_block(1,1)+1),3);
  dct_block(xx1,yy2)=message_pad(kk+2)/logb((k1*dct_block(1,1)+1),3);
  
%    dct_block(yy1+2,xx1-1)=message_pad(kk+3)/log(dct_block(1,1)*dct_block(1,1)+1);


   watermarked_image(y:y+blocksize-1,x:x+blocksize-1)= idct2(dct_block);  
%      watermarked_image(y:y+blocksize-1,x:x+blocksize-1)=dct_block;  
    
    % move on to next block. At and of row move to next row
    if (x+blocksize) >= Nc
        x=1;
        y=y+blocksize;
    else
        x=x+blocksize;
    end
   
end
% xlswrite('deger.xls',mmm);
% convert to uint8 and write the watermarked image out to a file
cc=watermarked_image;
%  damgaliresim=decode(watermarked_image,4);
 damgaliresim=watermarked_image;

end