syms S lambda d betac Bc betab BBD I delta Rc B k muc Rd mud R mub p

f2 = S*betac*Bc-d*I-delta*I;
f3 = Bc*Rc*(1-(B+Bc)/k)-muc*Bc+p*I;

M = [-d-delta, lambda/d*betac;
    p, -muc+Rc*(mub/R)];

F = [0, lambda/d*betac;
    p, Rc*(mub/R)];

V = [d+delta, 0;
    0, muc];

mat = F*inv(V);

R0 = eig(mat);

r0 = 1/2*(((Rc*mub)/(R*muc))+(((Rc*mub)/(R*muc))^2+((4*p*betac*lambda)/(d*muc*(d+delta))))^(1/2));