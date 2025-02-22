%%%This code help to visualise each categorie of data
clc
clear
close all
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

load('Data1spca0.mat')
load('Data1spca1.mat')
load('Data1spca2.mat')
load('Data1spca3.mat')
load('Data1spca4.mat')

load('Data1pca0.mat')
load('Data1pca1.mat')
load('Data1pca2.mat')
load('Data1pca3.mat')
load('Data1pca4.mat')   

figure
scatter3(Data1psd0(:,1),Data1psd0(:,2),Data1psd0(:,3),'*')
hold on
scatter3(Data1psd1(:,1),Data1psd1(:,2),Data1psd1(:,3),'p')
scatter3(Data1psd2(:,1),Data1psd2(:,2),Data1psd2(:,3),'h')
scatter3(Data1psd3(:,1),Data1psd3(:,2),Data1psd3(:,3),'o')
scatter3(Data1psd4(:,1),Data1psd4(:,2),Data1psd4(:,3),'s')
title('PSD')
xlabel('vect1')
ylabel('vect2')
zlabel('vect3')
legend('f_0_-_s_i_g_n_a_l','f_b_e_a_r_i_n_g','f_b_r_o_k_-_r_o_t_o_r','f_m_i_s_s','f_e_c_c');
saveas(gca,'Figure_mechanical1.bmp');

figure
scatter3(Data1spsd0(:,1),Data1spsd0(:,2),Data1spsd0(:,3),'*')
hold on
scatter3(Data1spsd1(:,1),Data1spsd1(:,2),Data1spsd1(:,3),'p')
scatter3(Data1spsd2(:,1),Data1spsd2(:,2),Data1spsd2(:,3),'h')
scatter3(Data1spsd3(:,1),Data1spsd3(:,2),Data1spsd3(:,3),'o')
scatter3(Data1spsd4(:,1),Data1spsd4(:,2),Data1spsd4(:,3),'s')
title('SPSD')
xlabel('vect1')
ylabel('vect2')
zlabel('vect3')
legend('f_0_-_s_i_g_n_a_l','f_b_e_a_r_i_n_g','f_b_r_o_k_-_r_o_t_o_r','f_m_i_s_s','f_e_c_c');
saveas(gca,'Figure_mechanical2.bmp');

figure
scatter3(Data1pca0(:,1),Data1pca0(:,2),Data1pca0(:,3),'*')
hold on
scatter3(Data1pca1(:,1),Data1pca1(:,2),Data1pca1(:,3),'p')
scatter3(Data1pca2(:,1),Data1pca2(:,2),Data1pca2(:,3),'h')
scatter3(Data1pca3(:,1),Data1pca3(:,2),Data1pca3(:,3),'o')
scatter3(Data1pca4(:,1),Data1pca4(:,2),Data1pca4(:,3),'s')
title('PSD+PCA')
xlabel('vect1')
ylabel('vect2')
zlabel('vect3')
legend('f_0_-_s_i_g_n_a_l','f_b_e_a_r_i_n_g','f_b_r_o_k_-_r_o_t_o_r','f_m_i_s_s','f_e_c_c');
saveas(gca,'Figure_mechanical3.bmp');

figure
scatter3(Data1spca0(:,1),Data1spca0(:,2),Data1spca0(:,3),'*')
hold on
scatter3(Data1spca1(:,1),Data1spca1(:,2),Data1spca1(:,3),'p')
scatter3(Data1spca2(:,1),Data1spca2(:,2),Data1spca2(:,3),'h')
scatter3(Data1spca3(:,1),Data1spca3(:,2),Data1spca3(:,3),'o')
scatter3(Data1spca4(:,1),Data1spca4(:,2),Data1spca4(:,3),'s')
title('SPSD+PCA')
xlabel('vect1')
ylabel('vect2')
zlabel('vect3')
legend('f_0_-_s_i_g_n_a_l','f_b_e_a_r_i_n_g','f_b_r_o_k_-_r_o_t_o_r','f_m_i_s_s','f_e_c_c');
saveas(gca,'Figure_mechanical4.bmp');