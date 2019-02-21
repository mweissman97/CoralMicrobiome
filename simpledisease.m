global k tf beta delta alpha

global A B w theta

k = 100;
tf = 100;

alpha = 1;
beta = 2;
delta = 0.5;

A = 32; %minimum temp
B = 5; %max temp - minimum
w = (2*pi)/365; %makes periodic
theta = -(pi/2+44*w); %shift

B20 = 1;%alphaproteobacteria
B40 = 1;%cyanobacteria
S0 = 10000;%susceptible
I0 = 0.001;%infected

u0 = [B20; B40; S0; I0];

[t, u] = ode45('simplediseasedeqns',[1:1:tf],u0);

B2 = u(:,1);
B4 = u(:,2);
S = u(:,3);
I = u(:,4);