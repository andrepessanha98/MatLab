%This script will analyse the profile of concentration of C ions in the
%seawater solution, for different temperatures and gaseous phases of CO2%
clear all
close all
clc
load pCo2;
x = [pCo2(1) pCo2(2) pCo2(3) pCo2(4) pCo2(6)];
HCO3 = struct('HCO325',{[0.002217 0.002575 0.002624 0.002679 0.002773]},'HCO350',{[0.001709 0.002599 0.00264 0.002686 0.002766]},'HCO380',{[0.0009904 0.002623 0.002663 0.002702 0.002773]})     
CO3 = struct('CO325',{[0.00005419 0.00000004517 0.00000000967 0 0]},'CO350',{[0.00006239 0.0000001015 0.00000002146 0 0]},'CO380',{[0.0004335 0.0000002105 0.00000004422 0 0]})
figure(1)
plot(x,HCO3.HCO325,'-b')
ylim = ([0 0.005])
title('HCO3 and CO3 concentration with CO2 pressure variation for a temperature of 25°C')
xlabel('CO2 pressure')
ylabel('[]')
hold on
plot(x,CO3.CO325,'-g')
legend('HCO3','CO3')
figure(1)
plot(x,HCO3.HCO325,'-b')
ylim = ([0 0.005])
title('HCO3 and CO3 concentration with CO2 pressure variation for a temperature of 25°C')
xlabel('CO2 pressure')
ylabel('[]')
hold on
plot(x,CO3.CO325,'-g')
legend('HCO3','CO3')
figure(2)
plot(x,HCO3.HCO350,'-b')
ylim = ([0 0.005])
title('HCO3 and CO3 concentration with CO2 pressure variation for a temperature of 25°C')
xlabel('CO2 pressure')
ylabel('[]')
hold on
plot(x,CO3.CO350,'-g')
legend('HCO3','CO3')
figure(3)
plot(x,HCO3.HCO380,'-b')
ylim = ([0 0.005])
title('HCO3 and CO3 concentration with CO2 pressure variation for a temperature of 25°C')
xlabel('CO2 pressure')
ylabel('[]')
hold on
plot(x,CO3.CO380,'-g')
legend('HCO3','CO3')