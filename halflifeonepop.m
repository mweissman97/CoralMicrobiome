%make for loop for each variable

tempvec = [15:3:45];
ng = length(tempvec);
B1tt = zeros(ng,1);
desiredValS = 0;
desiredValVec = zeros(ng,1);

for j = 1:ng
    fprintf("Searching at index: %2.0f\n", j);
    T = tempvec(j);
    
    global k tf A B w theta
    
    k = 1;
    tf = 400000;
    
    A = T-2.5;
    B = 5; %max temp - minimum
    w = (2*pi)/365; %makes periodic
    theta = -(pi/2+44*w); %shift
    
    B10 = 0.000001;
    u0 = [B10];
    [t, u] = ode45('onepopdeqns',[1 tf],u0);
    B1 = u(:,1);
    
    matB = [B1 t];
    
    [r, c] = size(matB);
    smallestDelta = 0;
    
    for n = 1:r
        if n == 1
            smallestDelta = abs(0.5-matB(n,1));
        end
        if abs(0.5-matB(n,1)) < smallestDelta
            smallestDelta = abs(0.5-matB(n,1));
            desiredValS = matB(n,2);
        end
    end
    desiredValVec(j) = desiredValS;
end

plot(tempvec, desiredValVec)
xlabel('Mean Temperature')
ylabel('Time to Achieve 50% Carrying Capacity')
title('Effect of Temperature on Speed to Achieve Fixation')