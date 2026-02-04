function [lsm_image] = apply_lsm(attacked_image, original_watermarked)
% APPLY_LSM - Saldiri sonrasi goruntüye LSM (Least Squares Method) uygular
%
% Giris:
%   attacked_image      : Saldiriya ugramis goruntu
%   original_watermarked: Orijinal damgali goruntu (referans)
%
% Cikis:
%   lsm_image: LSM ile duzeltilmis goruntu
%
% LSM formulu: minimize ||alpha*A + beta - B||^2
% Optimal alpha ve beta parametreleri hesaplanir

    attacked = double(attacked_image);
    original = double(original_watermarked);

    [M, N, C] = size(attacked);
    lsm_image = zeros(M, N, C);

    for c = 1:C
        A = attacked(:,:,c);
        B = original(:,:,c);

        % LSM: minimize ||alpha*A + beta - B||^2
        % Optimal alpha ve beta bul
        A_vec = A(:);
        B_vec = B(:);

        % Normal denklemler ile cozum
        % [alpha; beta] = [A 1]' \ B
        X = [A_vec, ones(length(A_vec), 1)];
        params = X \ B_vec;

        alpha = params(1);
        beta = params(2);

        % LSM duzeltmesi uygula
        lsm_image(:,:,c) = alpha * A + beta;
    end

    % Degerleri 0-255 araligina kirp
    lsm_image = max(0, min(255, lsm_image));
    lsm_image = uint8(lsm_image);
end
