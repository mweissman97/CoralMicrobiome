tempvec = [1:10];
ng = length(tempvec);
vecI = zeros(ng,10);

for j = 1:ng
    
    T = tempvec(j);

    global k tf beta delta alpha gamma
    
    global A B w theta
    
    k = 100;
    tf = 500;
    
    alpha = 0.15;
    beta = 0.0002;
    delta = 0.00001;
    gamma = 500;
    
    A = 23; %minimum temp
    B = T; %max temp - minimum
    w = (2*pi)/365; %makes periodic
    theta = -(pi/2+44*w); %shift
    
    B10 = 0.5;%actinobacteria
    B20 = 0.5;%alphaproteobacteria
    B30 = 0.5;%bacili
    B40 = 0.5;%cyanobacteria
    B50 = 0.5;%gammaproteobacteria
    B60 = 0.5;%Spirochaetia
    B70 = 0.5;%Thaumarchaeota
    S0 = 10000;%susceptible
    I0 = 0.001;%infected
    
    u0 = [B10; B20; B30; B40; B50; B60; B70; S0; I0];
    
    [t, u] = ode45('diseasedeqns',[1:1:tf],u0);
    
    B1 = u(:,1);
    B2 = u(:,2);
    B3 = u(:,3);
    B4 = u(:,4);
    B5 = u(:,5);
    B6 = u(:,6);
    B7 = u(:,7);
    S = u(:,8);
    I = u(:,9);
    
    vecI(j) = I(end)/(S(end)+I(end))*100;

end

plot(tempvec, vecI)
xlabel('Temperature Amplitude')
ylabel('Infection Prevalence (%)')
title('Fig. 6b: Temperature Amplitude and Infection Prevalence')