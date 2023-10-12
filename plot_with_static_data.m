clc ; 
clear ; 
close all ; 


%read table 
static_data = readtable('data.csv');

%display 1 to 5 rows  and cols first argument is cols seconds is rows 
static_data(1:5,1:10)

whos static_data
disp(static_data{3,6})
counter = 1 ; 


while 1 
    plot3(static_data{counter , 1 } , static_data{counter , 2 } , static_data{counter , 3 } , '*'  );
    disp(static_data{counter , 1 }) ; 
    disp(static_data{counter , 2 }) ;
    disp(static_data{counter , 3 }) ; 
    disp("changing line")
    hold all
    grid on
    pause(0.04) ;
    counter = counter +1 ;
    disp(counter)
end 
