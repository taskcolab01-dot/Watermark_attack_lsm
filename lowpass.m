function[ lowp]= lowpass(input_image)

R1=input_image(:,:,1);
G1=input_image(:,:,2);
B1=input_image(:,:,3);

[R]= uint8(lowpasss(R1));
[G]= uint8(lowpasss(G1));
[B]= uint8(lowpasss(B1));

ww=cat(3,R,G,B);
lowp=ww;
end

