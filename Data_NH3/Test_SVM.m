%%% This code help to test the models obtained
clc
clear
close all
load('Modelspca.mat')

load('Data3psd0.mat')
load('Data3psd1.mat')
load('Data3psd2.mat')
load('Data3psd3.mat')
load('Data3psd4.mat')

load('Data3spsd0.mat')
load('Data3spsd1.mat')
load('Data3spsd2.mat')
load('Data3spsd3.mat')
load('Data3spsd4.mat')

load('Data3pca0.mat')
load('Data3pca1.mat')
load('Data3pca2.mat')
load('Data3pca3.mat')
load('Data3pca4.mat')

load('Data3spca0.mat')
load('Data3spca1.mat')
load('Data3spca2.mat')
load('Data3spca3.mat')
load('Data3spca4.mat')

Len=length(Modelspca.model{1,4}.GroupNames)/5;
L=Len+1;
M=max(size(Data3psd0));
N=M-Len;

%======psd
% Samples=[Data3psd0((L:end),:);Data3psd1((L:end),:);Data3psd2((L:end),:);Data3psd3((L:end),:);Data3psd4((L:end),:)];
%=====spsd
% Samples=[Data3spsd0((L:end),:);Data3spsd1((L:end),:);Data3spsd2((L:end),:);Data3spsd3((L:end),:);Data3spsd4((L:end),:)];
%====psd+pca
% Samples=[Data3pca0((L:end),:);Data3pca1((L:end),:);Data3pca2((L:end),:);Data3pca3((L:end),:);Data3pca4((L:end),:)];
%====spsd+pca
 Samples=[Data3spca0((L:end),:);Data3spca1((L:end),:);Data3spca2((L:end),:);Data3spca3((L:end),:);Data3spca4((L:end),:)];

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

