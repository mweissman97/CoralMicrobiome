%diffy-q with a single population

function du = onepopdeqns(t,u)

B1 = u(1);
B2 = u(2);
B3 = u(3);
B4 = u(4);
B5 = u(5);
B6 = u(6);
B7 = u(7);

du = zeros(7,1);

global k

du(1) = B1.*Rb1(t).*(1-(B1./k));
du(2) = B2.*Rb2(t).*(1-(B2./k));
du(3) = B3.*Rb3(t).*(1-(B3./k));
du(4) = B4.*Rb4(t).*(1-(B4./k));
du(5) = B5.*Rb5(t).*(1-(B5./k));
du(6) = B6.*Rb6(t).*(1-(B6./k));
du(7) = B7.*Rb7(t).*(1-(B7./k));
end
