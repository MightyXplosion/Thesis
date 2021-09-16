clc
clear

set(gca,'fontname','times')  % Set it to times

set(gca,'fontname','times')  % Set it to times
R = readtable('listOfRFI2YearPosting.xlsx') ;

amount1=table2array(R(:,1));
date1=table2array(R(:,2));

S = readtable('listOfRFI2YearPosting3APS.xlsx') ;
amount2=table2array(S(:,1));

T = readtable('listOfRFI2YearPostingHalfAPS.xlsx') ;
amount3=table2array(T(:,1));

figure(1)
plot(date1,amount1)
hold on
plot(date1,amount2)
plot(date1,amount3)
legend('Military','3 APS','6 APS','location','best')
ylim([0 23])
xlabel('Time (Years)')
ylabel('RFI (Assets)')
grid on

mean1=mean(amount1(40:522))
range1=range(amount1(40:522))

mean2=mean(amount2(40:522))
range2=range(amount2(40:522))

mean3=mean(amount3(40:522))
range3=range(amount3(40:522))
set(gca,'FontName','times');
