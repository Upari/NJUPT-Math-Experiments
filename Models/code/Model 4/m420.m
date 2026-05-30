cha = [4, 5];

for i = 1:length(cha)
    d = cha(i);
    fprintf('c - b = %d\n', d);
    
    for c = (d+1):500
        b = c - d;
        a2 = c^2 - b^2;
        a = sqrt(a2);

        if a == floor(a) && a > 0
            fprintf('%3d, %3d, %3d\n', a, b, c);
        end
    end
end
