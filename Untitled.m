
 yer = ['.', filesep(), 'omer', filesep()]; 
 names = fieldnames(ofsstruct);
    filename ='f410.png';
    fullFileName = fullfile(yer,filename);
 
     imwrite(ofsstruct(6).(names{78}),fullFileName);
