
function excelyaz(satir,sutun,t1,ofsstruct)
filenametest = 'sonuc';

f=fieldnames(ofsstruct);
xlswrite(filenametest,{ofsstruct(satir).oresimadi}, 'Sheet1', strcat(sutun ,num2str(1)));
xlswrite(filenametest,ofsstruct(satir).k1, 'Sheet1', strcat(sutun ,num2str(2)));
 rnc1=0;
 rnc2=0;
 rnc3=0;
 rr=3;
  for r1=0:1:10

rnc1(r1+1)=ofsstruct(satir).(f{t1+r1+4});
rnc2(r1+1)=ofsstruct(satir+1).(f{t1+r1+4});
rnc3(r1+1)=ofsstruct(satir+2).(f{t1+r1+4});
xlswrite(filenametest,ofsstruct(satir).(f{t1+r1+4}), 'Sheet1', strcat(sutun ,num2str(rr)));
xlswrite(filenametest,ofsstruct(satir+1).(f{t1+r1+4}), 'Sheet1',strcat(sutun ,num2str(rr+1)));
xlswrite(filenametest,ofsstruct(satir+2).(f{t1+r1+4}), 'Sheet1',strcat(sutun ,num2str(rr+2)));
rr=rr+3;
  end
  
xlswrite(filenametest,mean(rnc1(1:10)), 'Sheet1', strcat(sutun ,num2str(rr)));
xlswrite(filenametest,mean(rnc2(1:10)), 'Sheet1',strcat(sutun ,num2str(rr+1)));
xlswrite(filenametest,mean(rnc3(1:10)), 'Sheet1',strcat(sutun ,num2str(rr+2)));
  
end






