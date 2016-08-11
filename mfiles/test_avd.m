% 
addpath(genpath('C:\Users\Rodrigo\Desktop\working\bsltl-1.0.2\bsltl-1.0.2\inst\mfiles'))

clear
close all;
NMAX=512;
Sigma=32;

WSIZE=10;

IMAGESDIR1='C:\Users\Rodrigo\Desktop\working\T1\R1';
IMAGESDIR2='C:\Users\Rodrigo\Desktop\working\T1\R2';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DATA=datapack(IMAGESDIR1,'%03d',0,149,'bmp');
[C1 D1 E1]=stdcont(DATA,'off');
WE1=mwindowing(E1,WSIZE,WSIZE);
figure(1);
imagesc(WE1); colorbar;
title(sprintf('Mean values in analysis regions of size: WSIZE=%d',WSIZE));
disp('');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
THSP1 = thsp_gaussian(DATA,NMAX,Sigma,gcf,'on-blue');
COM1=coom(THSP1);

A1=avd(COM1)
NA1=numad(COM1)
STD1=mean(std(THSP1'))
MEAN1=mean(mean(THSP1'))
CT1=A1/MEAN1
disp('');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DATA=datapack(IMAGESDIR1,'%03d',0,149,'bmp');
[C2 D2 E2]=stdcont(DATA,'off');
WE2=mwindowing(E2,WSIZE,WSIZE);
figure(2);
imagesc(WE2); colorbar;
title(sprintf('Mean values in analysis regions of size: WSIZE=%d',WSIZE));
disp('');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
THSP2 = thsp_gaussian(DATA,NMAX,Sigma,gcf,'on-blue');
COM2=coom(THSP2);

A2=avd(COM2)
NA2=numad(COM2)
STD2=mean(std(THSP2'))
MEAN2=mean(mean(THSP2'))
CT2=A2/MEAN2
disp('');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



