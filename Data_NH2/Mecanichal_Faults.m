%%%This code help to visualize each data

clc
clear
close all
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

load('Data2spca0.mat')
load('Data2spca1.mat')
load('Data2spca2.mat')
load('Data2spca3.mat')
load('Data2spca4.mat')

load('Data2pca0.mat')
load('Data2pca1.mat')
load('Data2pca2.mat')
load('Data2pca3.mat')
load('Data2pca4.mat')   

figure
scatter3(Data2psd0(:,1),Data2psd0(:,2),Data2psd0(:,3),'*')
hold on
scatter3(Data2psd1(:,1),Data2psd1(:,2),Data2psd1(:,3),'p')
scatter3(Data2psd2(:,1),Data2psd2(:,2),Data2psd2(:,3),'h')
scatter3(Data2psd3(:,1),Data2psd3(:,2),Data2psd3(:,3),'o')
scatter3(Data2psd4(:,1),Data2psd4(:,2),Data2psd4(:,3),'s')
title('PSD')
xlabel('vect1')
ylabel('vect2')
zlabel('vect3')
legend('f_0_-_s_i_g_n_a_l','f_b_e_a_r_i_n_g','f_b_r_o_k_-_r_o_t_o_r','f_m_i_s_s','f_e_c_c');
saveas(gca,'Figure_mechanical1.bmp');

figure
scatter3(Data2spsd0(:,1),Data2spsd0(:,2),Data2spsd0(:,3),'*')
hold on
scatter3(Data2spsd1(:,1),Data2spsd1(:,2),Data2spsd1(:,3),'p')
scatter3(Data2spsd2(:,1),Data2spsd2(:,2),Data2spsd2(:,3),'h')
scatter3(Data2spsd3(:,1),Data2spsd3(:,2),Data2spsd3(:,3),'o')
scatter3(Data2spsd4(:,1),Data2spsd4(:,2),Data2spsd4(:,3),'s')
title('SPSD')
xlabel('vect1')
ylabel('vect2')
zlabel('vect3')
legend('f_0_-_s_i_g_n_a_l','f_b_e_a_r_i_n_g','f_b_r_o_k_-_r_o_t_o_r','f_m_i_s_s','f_e_c_c');
saveas(gca,'Figure_mechanical2.bmp');

figure
scatter3(Data2pca0(:,1),Data2pca0(:,2),Data2pca0(:,3),'*')
hold on
scatter3(Data2pca1(:,1),Data2pca1(:,2),Data2pca1(:,3),'p')
scatter3(Data2pca2(:,1),Data2pca2(:,2),Data2pca2(:,3),'h')
scatter3(Data2pca3(:,1),Data2pca3(:,2),Data2pca3(:,3),'o')
scatter3(Data2pca4(:,1),Data2pca4(:,2),Data2pca4(:,3),'s')
title('PSD+PCA')
xlabel('vect1')
ylabel('vect2')
zlabel('vect3')
legend('f_0_-_s_i_g_n_a_l','f_b_e_a_r_i_n_g','f_b_r_o_k_-_r_o_t_o_r','f_m_i_s_s','f_e_c_c');
saveas(gca,'Figure_mechanical3.bmp');

figure
scatter3(Data2spca0(:,1),Data2spca0(:,2),Data2spca0(:,3),'*')
hold on
scatter3(Data2spca1(:,1),Data2spca1(:,2),Data2spca1(:,3),'p')
scatter3(Data2spca2(:,1),Data2spca2(:,2),Data2spca2(:,3),'h')
scatter3(Data2spca3(:,1),Data2spca3(:,2),Data2spca3(:,3),'o')
scatter3(Data2spca4(:,1),Data2spca4(:,2),Data2spca4(:,3),'s')
title('SPSD+PCA')
xlabel('vect1')
ylabel('vect2')
zlabel('vect3')
legend('f_0_-_s_i_g_n_a_l','f_b_e_a_r_i_n_g','f_b_r_o_k_-_r_o_t_o_r','f_m_i_s_s','f_e_c_c');
saveas(gca,'Figure_mechanical4.bmp');