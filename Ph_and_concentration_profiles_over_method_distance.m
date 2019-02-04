close all
clear all
clc
s = importdata('CORE_TEST_V1.CSV');
l = length(s.data(:,1));
minus = 4204-3605;
x = zeros(1,minus);
ca = zeros(1,minus);
ph = zeros(1,minus);
mg = zeros(1,minus);
li = zeros(1,minus);
br = zeros(1,minus);
ca2 = zeros(1,minus); %No problema não especificava qual especie de ca e mg era, logo utilizei as duas formas que tinham%
mg2 = zeros(1,minus);
z=1;
for i=3605:4204
    x(z) = s.data(i,2);
    ca(z) = s.data(i,8);
    ph(z) = s.data(i,5);
    mg(z) = s.data(i,7);
    li(z) = s.data(i,19);
    br(z) = s.data(i,20);
    ca2(z) = s.data(i,14);
    mg2(z) = s.data(i,15);
    z = z+1;
end
figure(1)
plot(x,ph,'b-');
title('Distance Vs PH')
ylabel('PH')
xlabel('Distance')
figure(2)
plot(x,ca,'k-');
title('Distance Vs Ca')
ylabel('Ca')
xlabel('Distance')
figure(3)
plot(x,mg,'g-');
title('Distance Vs Mg')
ylabel('Mg')
xlabel('Distance')
figure(4)
plot(x,mg2,'c-');
title('Distance Vs Mg2+')
ylabel('Mg2+')
xlabel('Distance')
figure(5)
plot(x,ca2,'r-');
title('Distance Vs Ca2+')
ylabel('Ca2+')
xlabel('Distance')
figure(6)
plot(x,li,'m-');
title('Distance Vs Li+')
ylabel('Li+')
xlabel('Distance')
hold on
plot(x,br,'y-');
title('Distance Vs Br-')
ylabel('Br-')
xlabel('Distance')
legend('Li','Br')

