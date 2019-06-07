w = (2*pi)/365; %makes periodic
theta = -(pi/2+44*w); %shift

t = [0:365];

% average
A = 21 + 6*(sin(w.*t+theta));

%Inner
I = 24 + 7*(sin(w.*t+theta));

%Outer
O = 18 + 5*(sin(w.*t+theta));

plot(t, A, t, I, t, O)
