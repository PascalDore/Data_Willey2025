%%% This code help to visualize each data
clc
clear
close all
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

load('Data3spca0.mat')
load('Data3spca1.mat')
load('Data3spca2.mat')
load('Data3spca3.mat')
load('Data3spca4.mat')

load('Data3pca0.mat')
load('Data3pca1.mat')
load('Data3pca2.mat')
load('Data3pca3.mat')
load('Data3pca4.mat')   

figure
scatter3(Data3psd0(:,1),Data3psd0(:,2),Data3psd0(:,3),'*')
hold on
scatter3(Data3psd1(:,1),Data3psd1(:,2),Data3psd1(:,3),'p')
scatter3(Data3psd2(:,1),Data3psd2(:,2),Data3psd2(:,3),'h')
scatter3(Data3psd3(:,1),Data3psd3(:,2),Data3psd3(:,3),'o')
scatter3(Data3psd4(:,1),Data3psd4(:,2),Data3psd4(:,3),'s')
title('PSD')
xlabel('vect1')
ylabel('vect2')
zlabel('vect3')
legend('f_0_-_s_i_g_n_a_l','f_b_e_a_r_i_n_g','f_b_r_o_k_-_r_o_t_o_r','f_m_i_s_s','f_e_c_c');
saveas(gca,'Figure_mechanical1.bmp');

figure
scatter3(Data3spsd0(:,1),Data3spsd0(:,2),Data3spsd0(:,3),'*')
hold on
scatter3(Data3spsd1(:,1),Data3spsd1(:,2),Data3spsd1(:,3),'p')
scatter3(Data3spsd2(:,1),Data3spsd2(:,2),Data3spsd2(:,3),'h')
scatter3(Data3spsd3(:,1),Data3spsd3(:,2),Data3spsd3(:,3),'o')
scatter3(Data3spsd4(:,1),Data3spsd4(:,2),Data3spsd4(:,3),'s')
title('SPSD')
xlabel('vect1')
ylabel('vect2')
zlabel('vect3')
legend('f_0_-_s_i_g_n_a_l','f_b_e_a_r_i_n_g','f_b_r_o_k_-_r_o_t_o_r','f_m_i_s_s','f_e_c_c');
saveas(gca,'Figure_mechanical2.bmp');

figure
scatter3(Data3pca0(:,1),Data3pca0(:,2),Data3pca0(:,3),'*')
hold on
scatter3(Data3pca1(:,1),Data3pca1(:,2),Data3pca1(:,3),'p')
scatter3(Data3pca2(:,1),Data3pca2(:,2),Data3pca2(:,3),'h')
scatter3(Data3pca3(:,1),Data3pca3(:,2),Data3pca3(:,3),'o')
scatter3(Data3pca4(:,1),Data3pca4(:,2),Data3pca4(:,3),'s')
title('PSD+PCA')
xlabel('vect1')
ylabel('vect2')
zlabel('vect3')
legend('f_0_-_s_i_g_n_a_l','f_b_e_a_r_i_n_g','f_b_r_o_k_-_r_o_t_o_r','f_m_i_s_s','f_e_c_c');
saveas(gca,'Figure_mechanical3.bmp');

figure
scatter3(Data3spca0(:,1),Data3spca0(:,2),Data3spca0(:,3),'*')
hold on
scatter3(Data3spca1(:,1),Data3spca1(:,2),Data3spca1(:,3),'p')
scatter3(Data3spca2(:,1),Data3spca2(:,2),Data3spca2(:,3),'h')
scatter3(Data3spca3(:,1),Data3spca3(:,2),Data3spca3(:,3),'o')
scatter3(Data3spca4(:,1),Data3spca4(:,2),Data3spca4(:,3),'s')
title('SPSD+PCA')
xlabel('vect1')
ylabel('vect2')
zlabel('vect3')
legend('f_0_-_s_i_g_n_a_l','f_b_e_a_r_i_n_g','f_b_r_o_k_-_r_o_t_o_r','f_m_i_s_s','f_e_c_c');
saveas(gca,'Figure_mechanical4.bmp');