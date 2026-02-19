% TEST_LSM - Sonuc_db fonksiyonunu test etmek icin script
% LSM (Least Squares Method) entegrasyonunu test eder
%
% Kullanim:
%   1. Asagidaki parametreleri kendi degerlerinize gore ayarlayin
%   2. MATLAB'da "test_lsm" yazarak calistirin

clear all;
clc;
close all;

%% PARAMETRELER - Bunlari kendi degerlerinize gore degistirin
% =========================================================================

% Resim dosyalari
% NOT: Kendi resimlerinizi kullanmak icin asagidaki dosya adlarini degistirin
damga_resmi = 'Bint.jpg';           % Watermark (damga) resmi
orijinal_resim = 'Damgali.bmp';     % Cover resim (512x512 RGB)

% Gomme parametreleri (k1, k2, k3, k4)
kk1 = 0.1;      % Gomme kuvveti 1
kk2 = 0.1;      % Gomme kuvveti 2
kk3 = 0.1;      % Gomme kuvveti 3
kk4 = 0.1;      % Gomme kuvveti 4

% Diger parametreler
t = 1;                  % t parametresi
derece = 5;             % Rotasyon saldirisi derecesi
durum = 1;              % Durum (1 veya 2)
hangisicift = 1;        % Cift secimi

% DCT blok pozisyon koordinatlari
xx1 = 4;    yy1 = 1;    % Birinci pozisyon
xx2 = 4;    yy2 = 2;    % Ikinci pozisyon

%% DOSYA KONTROLU
% =========================================================================
fprintf('=== LSM Watermark Test ===\n\n');

% Damga resmi kontrolu
if ~exist(damga_resmi, 'file')
    error('Damga resmi bulunamadi: %s', damga_resmi);
else
    fprintf('Damga resmi: %s [OK]\n', damga_resmi);
end

% Orijinal resim kontrolu
if ~exist(orijinal_resim, 'file')
    fprintf('\n!!! UYARI: Orijinal resim bulunamadi: %s\n', orijinal_resim);
    fprintf('Lutfen orijinal_resim degiskenini kendi resminizin adina degistirin.\n');
    fprintf('Ornek: orijinal_resim = ''Lena512.bmp'';\n\n');

    % Mevcut bmp ve png dosyalarini listele
    fprintf('Mevcut resim dosyalari:\n');
    d = dir('*.bmp'); for i=1:length(d), fprintf('  - %s\n', d(i).name); end
    d = dir('*.png'); for i=1:length(d), fprintf('  - %s\n', d(i).name); end
    d = dir('*.jpg'); for i=1:length(d), fprintf('  - %s\n', d(i).name); end
    return;
else
    fprintf('Orijinal resim: %s [OK]\n', orijinal_resim);
end

%% FONKSIYONU CALISTIR
% =========================================================================
fprintf('\nSonuc_db fonksiyonu calistiriliyor...\n');
fprintf('(Bu islem biraz zaman alabilir)\n\n');

tic;
[sonuc] = Sonuc(damga_resmi, orijinal_resim, kk1, kk2, kk3, kk4, t, derece, durum, hangisicift, xx1, yy1, xx2, yy2);
toplam_sure = toc;

%% SONUCLARI GOSTER
% =========================================================================
fprintf('\n=== SONUCLAR ===\n');
fprintf('Toplam islem suresi: %.2f saniye\n\n', toplam_sure);

fprintf('PSNR: %.4f dB\n', sonuc.PSNR);
fprintf('Gomme suresi: %.4f s\n', sonuc.damgalamasuresi);
fprintf('Cikarma suresi: %.4f s\n\n', sonuc.cikarmasuresi);

% NC degerlerini tablo olarak goster
fprintf('%-25s %s\n', 'Saldiri', 'NC Degeri');
fprintf('%s\n', repmat('-', 1, 40));
fprintf('%-25s %.6f\n', 'Saldirisiz (NC1)', sonuc.NC1);
fprintf('%-25s %.6f\n', 'JPEG30', sonuc.NC2_JPEG30);
fprintf('%-25s %.6f\n', 'JPEG90', sonuc.NC3_JPEG90);
fprintf('%-25s %.6f\n', 'JPEG2000_5', sonuc.NC4_JPEG2000_5);
fprintf('%-25s %.6f\n', 'JPEG2000_10', sonuc.NC5_JPEG2000_10);
fprintf('%-25s %.6f\n', 'Salt&Pepper 0.1', sonuc.NC6_SP01);
fprintf('%-25s %.6f\n', 'Salt&Pepper 0.02', sonuc.NC7_SP002);
fprintf('%-25s %.6f\n', 'Gaussian 0.001', sonuc.NC8_Gauss001);
fprintf('%-25s %.6f\n', 'Gaussian 0.003', sonuc.NC9_Gauss003);
fprintf('%-25s %.6f\n', 'Median 2x2', sonuc.NC10_Med2x2);
fprintf('%-25s %.6f\n', 'Median 3x3', sonuc.NC11_Med3x3);
fprintf('%-25s %.6f\n', 'Butterworth 100_1', sonuc.NC12_Butter100_1);
fprintf('%-25s %.6f\n', 'Butterworth 100_3', sonuc.NC13_Butter100_3);
fprintf('%-25s %.6f\n', 'Sharpening 0.2', sonuc.NC14_Sharpening02);
fprintf('%-25s %.6f\n', 'Sharpening 1', sonuc.NC15Sharpening1);
fprintf('%-25s %.6f\n', 'Blurring 0.2', sonuc.NC16_blurring02);
fprintf('%-25s %.6f\n', 'Blurring 1', sonuc.NC17_blurring1);
fprintf('%-25s %.6f\n', 'Scaling 4x', sonuc.NC18_scaling4);
fprintf('%-25s %.6f\n', 'Scaling 0.25x', sonuc.NC19_scaling025);
fprintf('%-25s %.6f\n', 'Cropping 25%', sonuc.NC20_Cropping25);
fprintf('%-25s %.6f\n', 'Cropping 50%', sonuc.NC21_Cropping50);
fprintf('%-25s %.6f\n', 'Lowpass', sonuc.NC22_Lowpass);
fprintf('%-25s %.6f\n', 'JPEG 88', sonuc.NC23_jpeg88);
fprintf('%-25s %.6f\n', 'JPEG 72.5', sonuc.NC24_jpeg725);
fprintf('%-25s %.6f\n', 'Gaussian 0.0004', sonuc.NC25_Gauss0004);
fprintf('%-25s %.6f\n', 'Gaussian 0.0025', sonuc.NC26_Gauss0025);
fprintf('%-25s %.6f\n', 'Median 5x1', sonuc.NC27_Med51);
fprintf('%-25s %.6f\n', 'Rotation (geri)', sonuc.NC28_inrot);

% Ortalama NC hesapla
nc_values = [sonuc.NC2_JPEG30, sonuc.NC3_JPEG90, sonuc.NC4_JPEG2000_5, sonuc.NC5_JPEG2000_10, ...
             sonuc.NC6_SP01, sonuc.NC7_SP002, sonuc.NC8_Gauss001, sonuc.NC9_Gauss003, ...
             sonuc.NC10_Med2x2, sonuc.NC11_Med3x3, sonuc.NC12_Butter100_1, sonuc.NC13_Butter100_3, ...
             sonuc.NC14_Sharpening02, sonuc.NC15Sharpening1, sonuc.NC16_blurring02, sonuc.NC17_blurring1, ...
             sonuc.NC18_scaling4, sonuc.NC19_scaling025, sonuc.NC20_Cropping25, sonuc.NC21_Cropping50, ...
             sonuc.NC22_Lowpass, sonuc.NC23_jpeg88, sonuc.NC24_jpeg725, sonuc.NC25_Gauss0004, ...
             sonuc.NC26_Gauss0025, sonuc.NC27_Med51, sonuc.NC28_inrot];

fprintf('%s\n', repmat('-', 1, 40));
fprintf('%-25s %.6f\n', 'ORTALAMA NC', mean(nc_values));
fprintf('%-25s %.6f\n', 'MINIMUM NC', min(nc_values));
fprintf('%-25s %.6f\n', 'MAKSIMUM NC', max(nc_values));

fprintf('\n=== LSM ILE TEST TAMAMLANDI ===\n');
