%sensitivity analysis

w = (2*pi)/365; %makes periodic
theta = -(pi/2+44*w); %shift

T = 20;

Rmax7 = 1.75;
sig7 = 10;
mu7 = 35;
Rc = Rmax7*(1./(sqrt(2*pi*sig7^2))*exp(-((T-mu7).^2./(2*sig7^2))));

%alphaproteobacteria
Rmax2 = 1.2;
sig2 = 8;
mu2 = 26;
R = Rmax2*(1./(sqrt(2*pi*sig2^2))*exp(-((T-mu2).^2./(2*sig2^2))));


mub = 0.1;
muc = 0.1;
lambda = 0.003;%growth rate
delta = 0.02;%disease death rate
d = 0.0003;%natural death rate
betac = 0.0045;%cyanobacteria infection rate
p = 0.05;

R0 = 1/2*(((Rc*mub)/(R*muc))+(((Rc*mub)/(R*muc))^2+((4*p*betac*lambda)/(d*muc*(d+delta))))^(1/2));

frc = mub/(2*R*muc) + (Rc*mub^2)/(2*R^2*muc^2*((Rc^2*mub^2)/(R^2*muc^2) + (4*betac*lambda*p)/(d*muc*(d + delta)))^(1/2));
fmub = Rc/(2*R*muc) + (Rc^2*mub)/(2*R^2*muc^2*((Rc^2*mub^2)/(R^2*muc^2) + (4*betac*lambda*p)/(d*muc*(d + delta)))^(1/2));
fr = - (Rc*mub)/(2*R^2*muc) - (Rc^2*mub^2)/(2*R^3*muc^2*((Rc^2*mub^2)/(R^2*muc^2) + (4*betac*lambda*p)/(d*muc*(d + delta)))^(1/2));
fmuc = - ((2*Rc^2*mub^2)/(R^2*muc^3) + (4*betac*lambda*p)/(d*muc^2*(d + delta)))/(4*((Rc^2*mub^2)/(R^2*muc^2) + (4*betac*lambda*p)/(d*muc*(d + delta)))^(1/2)) - (Rc*mub)/(2*R*muc^2);
fp = (betac*lambda)/(d*muc*(d + delta)*((Rc^2*mub^2)/(R^2*muc^2) + (4*betac*lambda*p)/(d*muc*(d + delta)))^(1/2));
fbetac = (lambda*p)/(d*muc*(d + delta)*((Rc^2*mub^2)/(R^2*muc^2) + (4*betac*lambda*p)/(d*muc*(d + delta)))^(1/2));
fl = (betac*p)/(d*muc*(d + delta)*((Rc^2*mub^2)/(R^2*muc^2) + (4*betac*lambda*p)/(d*muc*(d + delta)))^(1/2));
fd = -((4*betac*lambda*p)/(d*muc*(d + delta)^2) + (4*betac*lambda*p)/(d^2*muc*(d + delta)))/(4*((Rc^2*mub^2)/(R^2*muc^2) + (4*betac*lambda*p)/(d*muc*(d + delta)))^(1/2));
fdelta = -(betac*lambda*p)/(d*muc*(d + delta)^2*((Rc^2*mub^2)/(R^2*muc^2) + (4*betac*lambda*p)/(d*muc*(d + delta)))^(1/2));
