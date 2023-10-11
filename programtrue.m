clc;
close all;
clear all
warning off
c=webcam;
load myNet1;
x=100;
y=300;
height=300;
width=300;
bboxes=[x y height width];
while true
    e=c.snapshot;
    IFaces = insertObjectAnnotation(e,'rectangle',bboxes,'Taruh tangan disini');   
es=imcrop(e,bboxes);
    es=imresize(es,[227 227]);
    label=classify(myNet1,es);
    imshow(IFaces);
    [t] = title(char(label));
    t.FontSize = 16
    drawnow;
end