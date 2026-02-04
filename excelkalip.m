function excelkalip()

filenametest = 'sonuc';
xlswrite(filenametest,{ 'Attack' }, 'Sheet1', 'A2');
xlswrite(filenametest,{ 'Sharpen' }, 'Sheet1', 'A3');
xlswrite(filenametest,{ 'Bluring' }, 'Sheet1', 'A6');
xlswrite(filenametest,{ 'AF' }, 'Sheet1', 'A9');
xlswrite(filenametest,{ 'Scaling' }, 'Sheet1', 'A12');
xlswrite(filenametest,{ 'JPEG' }, 'Sheet1', 'A15');
xlswrite(filenametest,{ 'Gaussian' }, 'Sheet1', 'A18');
xlswrite(filenametest,{ 'Salt&Pepper' }, 'Sheet1', 'A21');
xlswrite(filenametest,{ 'Speckle' }, 'Sheet1', 'A24');
xlswrite(filenametest,{ 'Medfilt' }, 'Sheet1', 'A27');
xlswrite(filenametest,{ 'Rotate' }, 'Sheet1', 'A30');
xlswrite(filenametest,{ 'PSNR' }, 'Sheet1', 'A33');
xlswrite(filenametest,{ 'AVG(NC)' }, 'Sheet1', 'A36');

xlswrite(filenametest,{ 'Watermark' }, 'Sheet1', 'B2');
 for rr=3:3:36
xlswrite(filenametest,{ 'Cameraman' }, 'Sheet1', strcat('B' ,num2str(rr)));
xlswrite(filenametest,{ 'Saturn' }, 'Sheet1',strcat('B' ,num2str(rr+1)));
xlswrite(filenametest,{ 'Lena' }, 'Sheet1',strcat('B' ,num2str(rr+2)));
 end
end