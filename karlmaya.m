[r, c] = size(matB);
smallestDelta = 0;
desiredVal = 0;

for i = 1:r
    %fprintf("Searching at index: %2.0f\n", i);
    if i == 1
       smallestDelta = abs(0.5-matB(i,1)); 
    end
    if abs(0.5-matB(i,1)) < smallestDelta 
        smallestDelta = abs(0.5-matB(i,1));
        desiredVal = matB(i,2);
    end
end

fprintf("Half Life Value at 0.5: %2.4f\n", desiredVal);