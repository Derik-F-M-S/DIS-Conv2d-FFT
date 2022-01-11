f = imread('C:\Users\Derik Munoz\Downloads\Lec02 - Python and Basic Image Operations (1)\Lec02 - Python and Basic Image Operations\Python\images\lena.png'); %replace with filepath to image
%this was originally ran in windows in Matlab
f=rgb2gray(f);
f=double(f);
f=f/255;
F = DFT2(f);
g=abs(ifft2(F));

phase1=angle(F);
figure,imshow(phase1,[])
F= log(1+abs(fftshift(F)));
figure,imshow(F,[])
figure,imshow(f,[])
figure,imshow(g,[])

d=abs(f-(g));
d=int8(d);
figure,imshow((d),[])
function img= DFT2(img)
for i=1:size(img,1)
    img(i,:)=fft(img(i,:));
end 
for ii=1:size(img,2)
    img(:,ii)= fft(img(:,ii));
end 
end

function img= IDFT2(img)
for i=1:size(img,1)
    img(i,:)=ifft(img(i,:));
end 
for ii=1:size(img,2)
    img(:,ii)= ifft(img(:,ii));
end 
end
