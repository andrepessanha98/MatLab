%This script will analyse the solubility of CO2 in seawater%
%We will consider differente concentrations of gas and water temperatures%
%This will allow us to see the effect of these parameteres in gas%
%dissolution%
ph = struct('ph25', {[8.22 5.076 4.396 4.118 3.965 3.861]},'ph50',{[8.22 5.249 4.566 4.283 4.125 4.017]},'ph80',{[8.22 5.483 4.797 4.511 4.349 4.237]}) ;
pCo2 = [0 1 5 10 15 20];
plot(pCo2,ph.ph25,'b.-','LineWidth',2)
hold on
plot(pCo2,ph.ph50,'r.-','LineWidth',2)
plot(pCo2,ph.ph80,'g.-','LineWidth',2)
title('Co2 Solubility for different Temperatures')
xlabel('Co2 Pressure,atm')
ylabel('pH')
legend('25°C','50°C','80°C')
