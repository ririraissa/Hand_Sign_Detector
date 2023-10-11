clc
clear all
close all
warning off
c=webcam;
x=100;
y=300;
height=300;
width=300;
bboxes=[x y height width];
temp=0;
while temp<=300
    e=c.snapshot;
    IFaces = insertObjectAnnotation(e,'rectangle',bboxes,'Taruh tangan disini');   
imshow(IFaces);
filename=strcat(num2str(temp),'.bmp');
es=imcrop(e,bboxes);
es=imresize(es,[227 227]);
    imwrite(es,filename);
    temp=temp+1;
    drawnow;
end
clear c;