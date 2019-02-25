Tvec = [15:30];
ng = length(Tvec);
b1vec = zeros(ng,1);
b2vec = zeros(ng,1);
b3vec = zeros(ng,1);
b4vec = zeros(ng,1);
b5vec = zeros(ng,1);
b6vec = zeros(ng,1);
b7vec = zeros(ng,1);

for j = 1:ng
    T = Tvec(j);
    
    global k tf
    
    global A B w theta
    
    k = 100;
    tf = 500;
    
    A = T-2.5; %minimum temp
    B = 5; %max temp - minimum
    w = (2*pi)/365; %makes periodic
    theta = -(pi/2+44*w); %shift
    
    B10 = 0.5;%actinobacteria
    B20 = 0.5;%alphaproteobacteria
    B30 = 0.5;%bacili
    B40 = 0.5;%cyanobacteria
    B50 = 0.5;%gammaproteobacteria
    B60 = 0.5;%Spirochaetia
    B70 = 0.5;%Thaumarchaeota
    
    u0 = [B10; B20; B30; B40; B50; B60; B70];
    
    [t, u] = ode45('multipopdeqns',[1:1:tf],u0);
    
    B1 = u(:,1);
    B2 = u(:,2);
    B3 = u(:,3);
    B4 = u(:,4);
    B5 = u(:,5);
    B6 = u(:,6);
    B7 = u(:,7);
    
    b1vec(j) = B1(500);
    b2vec(j) = B1(500);
    b3vec(j) = B1(500);
    b4vec(j) = B1(500);
    b5vec(j) = B1(500);
    b6vec(j) = B1(500);
    b7vec(j) = B1(500);
end