w = (2*pi)/365; %makes periodic
theta = -(pi/2+44*w); %shift

mub = 0.1;
muc = 0.1;
lambda = 0.003;%growth rate
delta = 0.02;%disease death rate
d = 0.0003;%natural death rate
betac = 0.0005;%cyanobacteria infection rate
p = 0.05;

Rc = 2;
R = 2;

R0 = (Rc*mub + ((4*betac*lambda*muc*p*R^2 + Rc^2*d^2*mub^2 + delta*Rc^2*d*mub^2)/(d*(d + delta)))^(1/2))/(2*R*muc);
r0 = 1/2*(((Rc*mub)/(R*muc))+(((Rc*mub)/(R*muc))^2+((4*p*betac*lambda)/(d*muc*(d+delta))))^(1/2));