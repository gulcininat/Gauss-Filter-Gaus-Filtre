clc
clear all
img=imread('cameraman.tif');  
%img=imread('C:/Users/user/Desktop/lena.png'); % BÝLGÝSAYARDA KAYITLI FOTOÐRAF DA ADRES TANIMLAYARAK EKLENEBÝLÝR 
img2=img;
if size(img,3)==3
    img2=rgb2gray(img);
end
img2=im2double(img2);
satir=size(img2,1);
sutun=size(img2,2);
for i=2:(satir-1)
    for j=2:(sutun-1)
        toplam=img2(i-1,j-1)+(2*img2(i-1,j))+img2(i-1,j+1)+ (2*img2(i,j-1)) +( 4*img2(i,j))+ (2*img2(i,j+1))+img2(i+1,j-1)+ (2*img2(i+1,j))+img2(i+1,j+1);  %+img2(a,d)
        ortalama=toplam/16;
        yeni(i,j)=ortalama;      
    end
end
yeni(1,1:sutun)=img2(1,:);              %eski görüntünün 1. satýrýný ekledik
yeni(satir,1:sutun)=img2(satir,:);      % eski görüntünün son satýrýný ekledik
yeni(:,1)=img2(:, 1);                   %eski görüntünün 1. sütununu ekledik
yeni(:,sutun)=img2(:, sutun);           % eski görüntünün son sütununu ekledik

subplot(1,2,1),imshow(img2);
subplot(1,2,2),imshow(yeni);