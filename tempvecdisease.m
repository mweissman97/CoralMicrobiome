avec = [5:35];
ang = length(avec);
bvec = [0:15];
bng = length(bvec);
peakmat = zeros(ang,bng);
timemat = zeros(ang,bng);

for j = 1:ang
    a = avec(j);
    
    for i = 1:bng
        b = bvec(i);
        
        global k tf
        
        global A B w theta
        
        k = 100;
        tf = 500;
        
        A = a; %minimum temp
        B = b; %max temp - minimum
        w = (2*pi)/365; %makes periodic
        theta = -(pi/2+44*w); %shift
        
        lambda = 0.003;%growth rate
        delta = 0.02;%disease death rate
        d = 0.0003;%natural death rate
        betac = 0.0045;%cyanobacteria infection rate
        betab = 0.003;%other infection rate
        Rb18 = 1;
        %infection rate is normally 1 cm
        
        B01 = 4.5;
        B02 = 26;
        B03 = 12;
        B04 = 3.7;
        B05 = 2.9;
        B06 = 5.8;
        B07 = 3.5;
        B08 = 1.9;
        B09 = 8.3;
        B010 = 2.5;
        B011 = 4.7;
        B012 = 1.9;
        B013 = 5.6;
        B014 = 3.3;
        B015 = 1.1;
        B016 = 1.5;
        B017 = 1.5;
        BBD0 = 0.001;
        S0 = 200;
        I0 = 0.0001;
        
        
        u0 = [B01; B02; B03; B04; B05; B06; B07; B08; B09; B010; B011; B012; B013; B014; B015; B016; B017; BBD0; S0; I0];
        
        [t, u] = ode45('bbddeqns',[1:1:tf],u0);
        
        B1 = u(:,1);
        B2 = u(:,2);
        B3 = u(:,3);
        B4 = u(:,4);
        B5 = u(:,5);
        B6 = u(:,6);
        B7 = u(:,7);
        B8 = u(:,8);
        B9 = u(:,9);
        B10 = u(:,10);
        B11 = u(:,11);
        B12 = u(:,12);
        B13 = u(:,13);
        B14 = u(:,14);
        B15 = u(:,15);
        B16 = u(:,16);
        B17 = u(:,17);
        BBD = u(:,18);
        S = u(:,19);
        I = u(:,20);
        
        matI = [I, t];
        [r, c] = size(matI);
        peak = 0;
        time = 0;
        for n = 1:r
            if n == 1
                peak = matI(n,1);
                time = matI(n,2);
            end
            if matI(n,1) > peak
                peak = matI(n,1);
                time = matI(n,2);
            end
        end
        peakmat(j,i) = peak;
        timemat(j,i) = time;
        
        
    end
    
end

contourf(bvec, avec, peakmat)
xlabel("Temperature Amplitude (Degrees C)")
ylabel("Temperature Mean (Degrees C)")
title("Effect of Temperature on Size of Peak Infection")

contourf(bvec, avec, timemat)
xlabel("Temperature Amplitude (Degrees C)")
ylabel("Temperature Mean (Degrees C)")
title("Effect of Temperature on Time to Peak Infection")
