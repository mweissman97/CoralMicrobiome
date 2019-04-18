global k tf beta delta gamma

global A B w theta

k = 100;
tf = 5;

beta = 2.5;
delta = 0.0001;
gamma = 500;

A = 23; %minimum temp
B = 5; %max temp - minimum
w = (2*pi)/365; %makes periodic
theta = -(pi/2+44*w); %shift

B10 = 1.8;%actinobacteria
B20 = 14.3;%alphaproteobacteria
B30 = 4.6;%bacili
B40 = 1.19;%cyanobacteria
B50 = 1.03;%gammaproteobacteria
B60 = 0.5;%Spirochaetia
B70 = 1.3;%Thaumarchaeota
S0 = 180;%susceptible
I0 = 0.0001;%infected

u0 = [B10; B20; B30; B40; B50; B60; B70; S0; I0];

[t, u] = ode45('diseasedeqns',[1:1:tf],u0);

B1 = u(:,1);
B2 = u(:,2);
B3 = u(:,3);
B4 = u(:,4);
B5 = u(:,5);
B6 = u(:,6);
B7 = u(:,7);
S = u(:,8);
I = u(:,9);

plot(t, S, t, I)
xlabel('Time (days)')
ylabel('Proportion of Carrying Capacity')
legend('Healthy Coral','Infected Coral')
title('Fig. 5a: Disease Dynamics at 25 Celsius')