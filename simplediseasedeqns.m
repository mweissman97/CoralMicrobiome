function du = simplediseasedeqns(t,u)

B2 = u(1);
B4 = u(2);
S = u(3);
I = u(4);

du = zeros(4,1);

global k beta delta alpha

du(1) = B2*Rb2(t)*(1-(B2*B4)/k)*(1+B2*(B2+0.2899*B4-I));
du(2) = B4*Rb4(t)*(1-(B2*B4)/k)*(1+B4*(B4+0.2899*B2+I));
du(3) = alpha-beta*S*((1+B4)/(1+B2));
du(4) = beta*S*((1+B4)/(1+B2)) - delta*I;