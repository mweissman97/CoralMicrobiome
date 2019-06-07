global Ncd k Rmax7 sig7 mu7 Rd w theta
Ncd = 0.23;
k = 1;
Rd = 1;
w = (2*pi)/365; %makes periodic
theta = -(pi/2+44*w); %shift

Rmax7 = 1.75;
sig7 = 10;
mu7 = 35;

avec = [15:45];
ang = length(avec);

rmat = zeros(ang,1);

for i = 1:ang
    T = avec(i);
    Rc = Rmax7*(1./(sqrt(2*pi*sig7^2))*exp(-((T-mu7).^2./(2*sig7^2))));
    R0 = Ncd*k*(1/(Rc*Rd)).^(1/2);
    
    rmat(i) = R0;
    
end