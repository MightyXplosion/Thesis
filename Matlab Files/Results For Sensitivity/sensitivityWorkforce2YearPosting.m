clc
clear

set(gca,'fontname','times')  % Set it to times

R = readtable('listOfRFI2YearPostingUnOpt.xlsx') ;

amount1=table2array(R(:,1));
date1=table2array(R(:,2));

S = readtable('listOfRFI2YearPosting1MonthApartUnOpt.xlsx') ;
amount2=table2array(S(:,1));

figure(1)
plot(date1,amount1)
hold on
plot(date1,amount2)
legend('Original 2 Year Posting Results','Sensitivity Analysis Result','location','best')
% ylim([0 23])
xlabel('Time (Years)')
ylabel('RFI (Assets)')
grid on

mean1=mean(amount1(40:522))
range1=range(amount1(40:522))

mean2=mean(amount2(40:522))
range2=range(amount2(40:522))

set(gca,'FontName','times');

%Start Optimised

R = readtable('listOfRFI2YearPosting.xlsx') ;

amount1=table2array(R(:,1));
date1=table2array(R(:,2));

S = readtable('listOfRFI2YearPosting1MonthApartOpt.xlsx') ;
amount2=table2array(S(:,1));

figure(2)
plot(date1,amount1)
hold on
plot(date1,amount2)
legend('Original Optimised 2 Year Posting Result','Sensitivity Analysis Result','location','best')
% ylim([0 23])
xlabel('Time (Years)')
ylabel('RFI (Assets)')
grid on

mean3=mean(amount1(40:522))
range3=range(amount1(40:522))

mean4=mean(amount2(40:522))
% range4=range(amount2(20:522))
range4=max(amount2(40:522))-min(amount2(40:522))

set(gca,'FontName','times');
