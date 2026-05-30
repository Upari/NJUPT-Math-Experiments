A = [9, 5;
     2, 6];

figure;
hold on;
grid on;

for k = 1:20

    x = zeros(2,40);

    x(:,1) = -1 + 2*rand(2,1);

    for n = 1:39
        x(:,n+1) = A * x(:,n);
    end

    plot(x(1,:), x(2,:), 'o-');

end

xlabel('x1');
ylabel('x2');