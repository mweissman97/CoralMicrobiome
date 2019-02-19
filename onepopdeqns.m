%diffy-q with a single population

function du = onepopdeqns(t,u)

B1 = u(1);

du = zeros(1,1);

global k

du(1) = B1.*Rb1(t).*(1-(B1./k));

end
