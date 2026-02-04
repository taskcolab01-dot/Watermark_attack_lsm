
function[ img]= Butter(damgaliresim,n)
img=damgaliresim;

img(:,:,1)= Buttertekkanal(img(:,:,1),n);
img(:,:,2)= Buttertekkanal(img(:,:,2),n);
img(:,:,3)= Buttertekkanal(img(:,:,3),n);



end