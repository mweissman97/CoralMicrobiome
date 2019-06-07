%r0 as a function of temperature let's make this happen
global Rmax7 sig7 mu7 Rmax2 sig2 mu2 w theta mub muc betac lambda p d delta


w = (2*pi)/365; %makes periodic
theta = -(pi/2+44*w); %shift

%cyanobacteria
Rmax7 = 1.5;
sig7 = 10;
mu7 = 35;

%alphaproteobacteria
Rmax2 = 0.75;
sig2 = 8;
mu2 = 25;

mub = 0.1;
muc = 0.1;
lambda = 0.003;%growth rate
delta = 0.02;%disease death rate
d = 0.0003;%natural death rate
betac = 0.0005;%cyanobacteria infection rate
p = 0.05;

avec = [0:35];
ang = length(avec);

rmat = zeros(ang,1);

for i = 1:ang
    A = avec(i);
    
    T = A;
    Rc = Rmax7*(1./(sqrt(2*pi*sig7^2))*exp(-((T-mu7).^2./(2*sig7^2))));
    R = Rmax2*(1./(sqrt(2*pi*sig2^2))*exp(-((T-mu2).^2./(2*sig2^2))));
    R0 = 1/2*(((Rc*mub)/(R*muc))+(((Rc*mub)/(R*muc))^2+((4*p*betac*lambda)/(d*muc*(d+delta))))^(1/2));    
    rmat(i) = R0;
    
end

