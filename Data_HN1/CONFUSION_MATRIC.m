%% This code help to visualize confusion matrix
close all;
clear;
load('sortiepca_Test.mat')
load('sortiepca_Train.mat')
load('sortiepsd_Test.mat')
load('sortiepsd_Train.mat')
load('sortiespca_Test.mat')
load('sortiespca_Train.mat')
load('sortiespsd_Test.mat')
load('sortiespsd_Train.mat')
%%%================PSD===========================
%% matrice de confusion de la partie Entrainement
figure
cm=confusionchart(sortiepsd_Train(:,1),sortiepsd_Train(:,2));
cm.Title = 'Training : PSD + SVM';
 saveas(gca,'Figure_Trainpsd.bmp');
%% matrice de confusion de la partie Test
figure
cm=confusionchart(sortiepsd_Test(:,1),sortiepsd_Test(:,2));
cm.Title = 'Testing : PSD + SVM';
saveas(gca,'Figure_Testpsd.bmp');
%%%================SPSD===========================
%% matrice de confusion de la partie Entrainement
figure
cm=confusionchart(sortiespsd_Train(:,1),sortiespsd_Train(:,2));
cm.Title = 'Training : SPSD + SVM';
 saveas(gca,'Figure_Trainspsd.bmp');
%% matrice de confusion de la partie Test
figure
cm=confusionchart(sortiespsd_Test(:,1),sortiespsd_Test(:,2));
cm.Title = 'Testing : SPSD + SVM';
 saveas(gca,'Figure_Testspsd.bmp');
 %%%================PSD+PCA+SVM===========================
%% matrice de confusion de la partie Entrainement
figure
cm=confusionchart(sortiepca_Train(:,1),sortiepca_Train(:,2));
cm.Title = 'Training : PSD + PCA + SVM';
 saveas(gca,'Figure_Trainpca.bmp');
%% matrice de confusion de la partie Test
figure
cm=confusionchart(sortiepca_Test(:,1),sortiepca_Test(:,2));
cm.Title = 'Testing : PSD + PCA + SVM';
 saveas(gca,'Figure_Testpca.bmp');
%%%================SPSD+PCA+SVM===========================
%% matrice de confusion de la partie Entrainement
figure
cm=confusionchart(sortiespca_Train(:,1),sortiespca_Train(:,2));
cm.Title = 'Training : SPSD + PCA + SVM';
 saveas(gca,'Figure_Trainspca.bmp');
%% matrice de confusion de la partie Test
figure
cm=confusionchart(sortiespca_Test(:,1),sortiespca_Test(:,2));
cm.Title = 'Testing : SPSD + PCA + SVM';
 saveas(gca,'Figure_Testspca.bmp');