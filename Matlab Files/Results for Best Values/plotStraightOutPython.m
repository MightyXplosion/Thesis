clc
clear

set(gca,'fontname','times')  % Set it to times

set(gca,'fontname','times')  % Set it to times
R = readtable('listOfRFI2YearPosting.xlsx') ;

amount1=table2array(R(:,1));
date1=table2array(R(:,2));

S = readtable('listOfRFI3YearPosting.xlsx') ;
amount2=table2array(S(:,1));

T = readtable('listOfRFI4YearPosting.xlsx') ;
amount3=table2array(T(:,1));

figure(1)
plot(date1,amount1)
hold on
plot(date1,amount2)
plot(date1,amount3)
legend('2 Year Posting Policy','3 Year Posting Policy','4 Year Posting Policy','location','best')
ylim([0 23])
xlabel('Time (Years)')
ylabel('RFI (Assets)')
grid on

mean1=mean(amount1(20:522))
range1=range(amount1(20:522))

mean2=mean(amount2(20:522))
range2=range(amount2(20:522))

mean3=mean(amount3(20:522))
range3=range(amount3(20:522))
set(gca,'FontName','times');
