%make for loop for each variable

tempvec = [15:3:45];
ng = length(tempvec);
B1tt = zeros(ng,1);


for j = 1:ng
    T = tempvec(j);
    
    global k tf A B w theta

    k = 1;
    tf = 8000;

    A = T-2.5;
    B = 5; %max temp - minimum
    w = (2*pi)/365; %makes periodic
    theta = -(pi/2+44*w); %shift
    
    for i = 1:tf
        
        B10 = 0.000001;
        u0 = [B10];
        [t, u] = ode45('onepopdeqns',[1 tf],u0);
        B1 = u(:,1);
                
        if B1 == 0.5
            B1out = i;
            B1tt = [B1tt, B1out];
        end        
    end    
end
