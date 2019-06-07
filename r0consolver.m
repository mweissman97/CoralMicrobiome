%r0 as a function of temperature let's make this happen
global Rmax7 sig7 mu7 Rmax2 sig2 mu2 R mub muc

Rmax7 = 1.75;
sig7 = 10;
mu7 = 35;

Rmax2 = 1.2;
sig2 = 8;
mu2 = 26;

mub = 0.05;
muc = 0.05;

y = 1;

tvec = [0:45];
tng = length(tvec);

rmat = zeros(tng,1);

for i = 1:tng
    T = tvec(i);
    
    Rc = Rmax7*(1./(sqrt(2*pi*sig7^2))*exp(-((T-mu7).^2./(2*sig7^2))));
    R = Rmax2*(1./(sqrt(2*pi*sig2^2))*exp(-((T-mu2).^2./(2*sig2^2))));
    R0 = (Rc*mub)/(R*muc);
    
    rmat(i) = R0;
    
end
