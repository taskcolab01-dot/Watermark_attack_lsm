function [damga]=Da_cikarma(damgaliresim,Mo,No,xx1,yy1,xx2,yy2,k1,k2,k3)


blocksize=8;    % set the size of the block in cover to be used for each bit in watermark


%  watermarked_image=double(encode(damgaliresim,4));
 watermarked_image=double(damgaliresim);

% determine size of watermarked image
Mw=size(watermarked_image,1);	        %Height
Nw=size(watermarked_image,2);	        %Width

% determine maximum message size based on cover object, and blocksize
max_message=Mo*No*3;

x=1;
y=1;

for (kk = 1:3:max_message)

    %   dct_block(xx1,yy1)=log(message_pad(kk))+deger*k;
     blok=watermarked_image(y:y+blocksize-1,x:x+blocksize-1);
 dct_block = dct2(watermarked_image(y:y+blocksize-1,x:x+blocksize-1));
  kkk=dct_block;

        
        
    message_vector(kk)=  (dct_block(xx1,yy1))*logb((k1*dct_block(1,1)+1),3);
    message_vector(kk+1)=(dct_block(xx2,yy2))*logb((k1*dct_block(1,1)+1),3);
    message_vector(kk+2)=(dct_block(xx1,yy2))*logb((k1*dct_block(1,1)+1),3);
    %  message_vector(kk+4)=  (dct_block(yy1+2,xx1-1))*log(dct_block(1,1)*dct_block(1,1)+1);
    if (x+blocksize) >= Nw
        x=1;
        y=y+blocksize;
    else
        x=x+blocksize;
    end
    
end
damga=reshape(message_vector(1:Mo*No*3),Mo,No,3);
% damga=imadjust(orig_watermark, stretchlim(orig_watermark), [0 1]);
% damga=iarnold( damga1, t ); 
end