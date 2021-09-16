clc
clear

set(gca,'fontname','times')  % Set it to times

set(gca,'fontname','times')  % Set it to times
R = readtable('listOfRFI2YearPostingUnOpt.xlsx') ;

amount1=table2array(R(:,1));
date1=table2array(R(:,2));

S = readtable('listOfRFI2YearPosting3APSUnOpt.xlsx') ;
amount2=table2array(S(:,1));

T = readtable('listOfRFI2YearPosting6APSUnOpt.xlsx') ;
amount3=table2array(T(:,1));

figure(1)
plot(date1,amount1)
hold on
plot(date1,amount2)
plot(date1,amount3)
legend('Military','3 APS','6 APS','location','best')
xlabel('Time (Years)')
ylabel('RFI (Assets)')
grid on

mean1=mean(amount1)
range1=range(amount1(20:522))

mean2=mean(amount2)
range2=range(amount2(20:522))

mean3=mean(amount3)
range3=range(amount3(20:522))
set(gca,'FontName','times');
