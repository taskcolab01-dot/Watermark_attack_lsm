function y = idct2(x)
% IDCT2 - 2 boyutlu ters ayrik kosinüs donusumu (Inverse DCT)
% Image Processing Toolbox gerektirmez
%
% Kullanim: y = idct2(x)
%
% Giris:  x - 2D DCT katsayilari
% Cikis:  y - Orijinal goruntu verisi

    [m, n] = size(x);
    y = idct_1d(idct_1d(x).').';
end

function y = idct_1d(x)
% 1D IDCT (satir bazinda)
    [m, n] = size(x);
    y = zeros(m, n);

    for col = 1:n
        y(:, col) = idct_col(x(:, col));
    end
end

function y = idct_col(x)
% Tek sutun icin IDCT
    n = length(x);
    y = zeros(n, 1);

    for i = 0:n-1
        sum_val = 0;
        for k = 0:n-1
            if k == 0
                alpha = sqrt(1/n);
            else
                alpha = sqrt(2/n);
            end
            sum_val = sum_val + alpha * x(k+1) * cos(pi * k * (2*i + 1) / (2*n));
        end
        y(i+1) = sum_val;
    end
end
