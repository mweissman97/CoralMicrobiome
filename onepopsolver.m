global k tf A B w theta

k = 1;
tf = 4000;

A = 23; %minimum temp
B = 5; %max temp - minimum
w = (2*pi)/365; %makes periodic
theta = -(pi/2+44*w); %shift

B10 = 0.000001;

u0 = [B10];

[t, u] = ode45('onepopdeqns',[1 tf],u0);

B1 = u(:,1);

plot(t, B1)
title('Single Population Growth')