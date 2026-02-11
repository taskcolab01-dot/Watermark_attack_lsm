% TEST_LSM_COMPARE - LSM'li ve LSM'siz sonuclari karsilastir
% Bu script LSM'nin etkisini gormek icin karsilastirmali sonuclar uretir
%
% Kullanim:
%   1. Asagidaki parametreleri kendi degerlerinize gore ayarlayin
%   2. MATLAB'da "test_lsm_compare" yazarak calistirin

clear all;
clc;
close all;

%% PARAMETRELER - Bunlari kendi degerlerinize gore degistirin
% =========================================================================

% Resim dosyalari
damga_resmi = 'Bint.jpg';           % Watermark (damga) resmi
orijinal_resim = 'Lena512.bmp';     % Orijinal resim (kendi resminizin adini yazin)

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
fprintf('=== LSM KARSILASTIRMA TESTI ===\n\n');

% Damga resmi kontrolu
if ~exist(damga_resmi, 'file')
    error('Damga resmi bulunamadi: %s', damga_resmi);
else
    fprintf('Damga resmi: %s [OK]\n', damga_resmi);
end

% Orijinal resim kontrolu
if ~exist(orijinal_resim, 'file')
    fprintf('\n!!! UYARI: Orijinal resim bulunamadi: %s\n', orijinal_resim);
    fprintf('Lutfen orijinal_resim degiskenini kendi resminizin adina degistirin.\n\n');

    % Mevcut resim dosyalarini listele
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
fprintf('\nSonuc fonksiyonu calistiriliyor...\n');
fprintf('(Bu islem biraz zaman alabilir)\n\n');

tic;
[sonuc] = Sonuc(damga_resmi, orijinal_resim, kk1, kk2, kk3, kk4, t, derece, durum, hangisicift, xx1, yy1, xx2, yy2);
toplam_sure = toc;

%% KARSILASTIRMALI SONUCLARI GOSTER
% =========================================================================
fprintf('\n');
fprintf('============================================================\n');
fprintf('               LSM KARSILASTIRMA SONUCLARI                  \n');
fprintf('============================================================\n\n');

fprintf('PSNR: %.4f dB\n', sonuc.PSNR);
fprintf('Toplam islem suresi: %.2f saniye\n\n', toplam_sure);

% Baslik
fprintf('%-22s %12s %12s %12s\n', 'SALDIRI', 'LSM''SIZ', 'LSM''LI', 'FARK');
fprintf('%s\n', repmat('=', 1, 60));

% Saldirisiz (referans)
fprintf('%-22s %12.6f %12s %12s\n', 'Saldirisiz (NC1)', sonuc.NC1, '-', '-');
fprintf('%s\n', repmat('-', 1, 60));

% Saldiri sonuclari
saldilar = {
    'JPEG30',       'NC2_JPEG30',       'NC2_JPEG30_raw';
    'JPEG90',       'NC3_JPEG90',       'NC3_JPEG90_raw';
    'JPEG2000_5',   'NC4_JPEG2000_5',   'NC4_JPEG2000_5_raw';
    'JPEG2000_10',  'NC5_JPEG2000_10',  'NC5_JPEG2000_10_raw';
    'SP 0.1',       'NC6_SP01',         'NC6_SP01_raw';
    'SP 0.02',      'NC7_SP002',        'NC7_SP002_raw';
    'Gauss 0.001',  'NC8_Gauss001',     'NC8_Gauss001_raw';
    'Gauss 0.003',  'NC9_Gauss003',     'NC9_Gauss003_raw';
    'Median 2x2',   'NC10_Med2x2',      'NC10_Med2x2_raw';
    'Median 3x3',   'NC11_Med3x3',      'NC11_Med3x3_raw';
    'Butter 100_1', 'NC12_Butter100_1', 'NC12_Butter100_1_raw';
    'Butter 100_3', 'NC13_Butter100_3', 'NC13_Butter100_3_raw';
    'Sharpen 0.2',  'NC14_Sharpening02','NC14_Sharpening02_raw';
    'Sharpen 1',    'NC15Sharpening1',  'NC15_Sharpening1_raw';
    'Blur 0.2',     'NC16_blurring02',  'NC16_blurring02_raw';
    'Blur 1',       'NC17_blurring1',   'NC17_blurring1_raw';
    'Scale 4x',     'NC18_scaling4',    'NC18_scaling4_raw';
    'Scale 0.25x',  'NC19_scaling025',  'NC19_scaling025_raw';
    'Crop 25%',     'NC20_Cropping25',  'NC20_Cropping25_raw';
    'Crop 50%',     'NC21_Cropping50',  'NC21_Cropping50_raw';
    'Lowpass',      'NC22_Lowpass',     'NC22_Lowpass_raw';
    'JPEG 88',      'NC23_jpeg88',      'NC23_jpeg88_raw';
    'JPEG 72.5',    'NC24_jpeg725',     'NC24_jpeg725_raw';
    'Gauss 0.0004', 'NC25_Gauss0004',   'NC25_Gauss0004_raw';
    'Gauss 0.0025', 'NC26_Gauss0025',   'NC26_Gauss0025_raw';
    'Median 5x1',   'NC27_Med51',       'NC27_Med51_raw';
    'Rotation',     'NC28_inrot',       'NC28_inrot_raw';
};

nc_raw_all = [];
nc_lsm_all = [];
fark_all = [];

for i = 1:size(saldilar, 1)
    saldiri_adi = saldilar{i, 1};
    lsm_field = saldilar{i, 2};
    raw_field = saldilar{i, 3};

    nc_lsm = sonuc.(lsm_field);
    nc_raw = sonuc.(raw_field);
    fark = nc_lsm - nc_raw;

    nc_raw_all = [nc_raw_all; nc_raw];
    nc_lsm_all = [nc_lsm_all; nc_lsm];
    fark_all = [fark_all; fark];

    % Fark pozitifse yesil (+), negatifse kirmizi (-)
    if fark > 0
        fark_str = sprintf('+%.6f', fark);
    elseif fark < 0
        fark_str = sprintf('%.6f', fark);
    else
        fark_str = '0.000000';
    end

    fprintf('%-22s %12.6f %12.6f %12s\n', saldiri_adi, nc_raw, nc_lsm, fark_str);
end

fprintf('%s\n', repmat('=', 1, 60));

%% ISTATISTIKLER
fprintf('\n=== ISTATISTIKLER ===\n\n');

fprintf('%-25s %12s %12s\n', '', 'LSM''SIZ', 'LSM''LI');
fprintf('%s\n', repmat('-', 1, 50));
fprintf('%-25s %12.6f %12.6f\n', 'ORTALAMA NC', mean(nc_raw_all), mean(nc_lsm_all));
fprintf('%-25s %12.6f %12.6f\n', 'MINIMUM NC', min(nc_raw_all), min(nc_lsm_all));
fprintf('%-25s %12.6f %12.6f\n', 'MAKSIMUM NC', max(nc_raw_all), max(nc_lsm_all));
fprintf('%-25s %12.6f %12.6f\n', 'STD SAPMA', std(nc_raw_all), std(nc_lsm_all));

fprintf('\n%-25s %12.6f\n', 'ORTALAMA FARK', mean(fark_all));
fprintf('%-25s %12d / %d\n', 'IYILESEN SALDIRI SAYISI', sum(fark_all > 0), length(fark_all));
fprintf('%-25s %12d / %d\n', 'KOTULESEN SALDIRI SAYISI', sum(fark_all < 0), length(fark_all));

%% GRAFIK
fprintf('\n');
figure('Name', 'LSM Karsilastirma', 'NumberTitle', 'off', 'Position', [100 100 1200 500]);

% Bar grafigi
subplot(1,2,1);
bar_data = [nc_raw_all, nc_lsm_all];
bar(bar_data);
legend('LSM''siz', 'LSM''li', 'Location', 'southwest');
xlabel('Saldiri No');
ylabel('NC Degeri');
title('LSM''siz vs LSM''li NC Degerleri');
grid on;

% Fark grafigi
subplot(1,2,2);
bar(fark_all);
xlabel('Saldiri No');
ylabel('NC Farki (LSM - Raw)');
title('LSM Etkisi (Pozitif = Iyilesme)');
grid on;
hold on;
plot([0 length(fark_all)+1], [0 0], 'r--', 'LineWidth', 1.5);

fprintf('=== TEST TAMAMLANDI ===\n');
