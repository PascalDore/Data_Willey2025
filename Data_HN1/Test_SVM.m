%addpath('C:\Users\hp\matlabDoctorat\CODE2024\CODE_PSD_SPSD_PCA\svm.m')
%% Multi-Class SVM
%% Demo Begin
%% Initialize all to default
clc
clear
close all
load('Modelspca.mat')

load('Data1psd0.mat')
load('Data1psd1.mat')
load('Data1psd2.mat')
load('Data1psd3.mat')
load('Data1psd4.mat')

load('Data1spsd0.mat')
load('Data1spsd1.mat')
load('Data1spsd2.mat')
load('Data1spsd3.mat')
load('Data1spsd4.mat')

load('Data1pca0.mat')
load('Data1pca1.mat')
load('Data1pca2.mat')
load('Data1pca3.mat')
load('Data1pca4.mat')

load('Data1spca0.mat')
load('Data1spca1.mat')
load('Data1spca2.mat')
load('Data1spca3.mat')
load('Data1spca4.mat')

Len=length(Modelspca.model{1,4}.GroupNames)/5;
L=Len+1;
M=max(size(Data1psd0));
N=M-Len;

%======psd
% Samples=[Data1psd0((L:end),:);Data1psd1((L:end),:);Data1psd2((L:end),:);Data1psd3((L:end),:);Data1psd4((L:end),:)];
%=====spsd
% Samples=[Data1spsd0((L:end),:);Data1spsd1((L:end),:);Data1spsd2((L:end),:);Data1spsd3((L:end),:);Data1spsd4((L:end),:)];
%====psd+pca
% Samples=[Data1pca0((L:end),:);Data1pca1((L:end),:);Data1pca2((L:end),:);Data1pca3((L:end),:);Data1pca4((L:end),:)];
%====spsd+pca
 Samples=[Data1spca0((L:end),:);Data1spca1((L:end),:);Data1spca2((L:end),:);Data1spca3((L:end),:);Data1spca4((L:end),:)];

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
% save Model.mat Model;
% save class_Test.mat class_Test;
% save predict_Test.mat predict_Test;
