function y = dct2(x)
% DCT2 - 2 boyutlu ayrik kosinüs donusumu (Discrete Cosine Transform)
% Image Processing Toolbox gerektirmez
%
% Kullanim: y = dct2(x)
%
% Giris:  x - 2D matris
% Cikis:  y - DCT donusumu sonucu

    [m, n] = size(x);
    y = dct_1d(dct_1d(x).').';
end

function y = dct_1d(x)
% 1D DCT (satir bazinda)
    [m, n] = size(x);
    y = zeros(m, n);

    for col = 1:n
        y(:, col) = dct_col(x(:, col));
    end
end

function y = dct_col(x)
% Tek sutun icin DCT
    n = length(x);
    y = zeros(n, 1);

    for k = 0:n-1
        if k == 0
            alpha = sqrt(1/n);
        else
            alpha = sqrt(2/n);
        end

        sum_val = 0;
        for i = 0:n-1
            sum_val = sum_val + x(i+1) * cos(pi * k * (2*i + 1) / (2*n));
        end
        y(k+1) = alpha * sum_val;
    end
end
