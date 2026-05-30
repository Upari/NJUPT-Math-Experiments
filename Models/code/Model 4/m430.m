K = [];
for k = 1:200
    for c = (k+1):1000
        b = c - k; a = sqrt(c^2 - b^2);
        if a == floor(a) && gcd(gcd(a, b), c) == 1
            K = [K, k]; break; 
        end
    end
end
disp(K);