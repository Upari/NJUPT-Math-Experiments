m = 1235;
f = @(x) (2*x + 1) / (x - m); % 这里用数值句柄方便循环

% 测试不同的初值，比如 x0 = 0, 5, 2000
x0_list = [0, 5, 2000]; 

for j = 1:length(x0_list)
    x = x0_list(j);
    for i = 1:20
        x = f(x); % 迭代核心：把输出重新赋给输入
    end
    %fprintf('初值 x0 = %d, 迭代20次后结果为: %.10f\n', x0_list(j), x);
    disp(x);
end