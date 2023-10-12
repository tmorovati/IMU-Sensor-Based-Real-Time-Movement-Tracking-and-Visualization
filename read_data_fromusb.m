if ~isempty(instrfind)
fclose(instrfind);
delete(instrfind);
end

s = serial ('COM3');
whos s 
%connect object to device 
fopen(s);


% disp(realmax())
% disp(realmin())


%index for line
i = 0 ;
%store bytes input is sending 
string line ; 

while 1 
line = fscanf(s);  

splitted_line = strsplit(line);


for i = 1 :10 
    splitted_line{i} = str2num(splitted_line{i});
end 

%disp(splitted_line);

end 
