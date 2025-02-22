%%% This code allow to test models obtained
clc
clear
close all
load('Modelspca.mat')

load('Data2psd0.mat')
load('Data2psd1.mat')
load('Data2psd2.mat')
load('Data2psd3.mat')
load('Data2psd4.mat')

load('Data2spsd0.mat')
load('Data2spsd1.mat')
load('Data2spsd2.mat')
load('Data2spsd3.mat')
load('Data2spsd4.mat')

load('Data2pca0.mat')
load('Data2pca1.mat')
load('Data2pca2.mat')
load('Data2pca3.mat')
load('Data2pca4.mat')

load('Data2spca0.mat')
load('Data2spca1.mat')
load('Data2spca2.mat')
load('Data2spca3.mat')
load('Data2spca4.mat')

Len=length(Modelspca.model{1,4}.GroupNames)/5;
L=Len+1;
M=max(size(Data2psd0));
N=M-Len;

%======psd
% Samples=[Data2psd0((L:end),:);Data2psd1((L:end),:);Data2psd2((L:end),:);Data2psd3((L:end),:);Data2psd4((L:end),:)];
%=====spsd
% Samples=[Data2spsd0((L:end),:);Data2spsd1((L:end),:);Data2spsd2((L:end),:);Data2spsd3((L:end),:);Data2spsd4((L:end),:)];
%====psd+pca
% Samples=[Data2pca0((L:end),:);Data2pca1((L:end),:);Data2pca2((L:end),:);Data2pca3((L:end),:);Data2pca4((L:end),:)];
%====spsd+pca
 Samples=[Data2spca0((L:end),:);Data2spca1((L:end),:);Data2spca2((L:end),:);Data2spca3((L:end),:);Data2spca4((L:end),:)];

class_Test=[ones(N,1)*1;ones(N,1)*2;ones(N,1)*3;ones(N,1)*4;ones(N,1)*5;];
predict_Test=svm.predict(Modelspca,Samples);
% [Model,predict] = svm.classify(Sample,class,Sample);
%><
sortiespca_Test = [class_Test predict_Test];
disp('class predict')
disp(sortiespca_Test)
%% Find Accuracy
Accuracy=mean(class_Test==predict_Test)*100;
fprintf('\nAccuracy =%d\n',Accuracy)
CM=confusionmat(class_Test,predict_Test);
save sortiespca_Test sortiespca_Test;
