function rateout1 = Rb1(t)

global Rmax1 sig1 mu1 A B w theta

T = A + B*(sin(w.*t+theta));

rateout1 = Rmax1*(1./(sqrt(2*pi*sig1^2))*exp(-((T-mu1).^2./(2*sig1^2))));

end