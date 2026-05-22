A = [9 5;
     2 6];

x = zeros(2,40);

x(:,1) = rand(2,1);

for n = 1:39
    x(:,n+1) = A * x(:,n);
end

r = x(2,40) / x(1,40)