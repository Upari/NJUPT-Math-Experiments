% m220.m - 修正后的帐篷映射迭代代码
x0 = 1/10; % 以初值 1/10 为例（若选 1/m 则改为 1/1235）
N = 100;   % 迭代次数
y = zeros(1, N);
y(1) = x0;

% 循环执行分段函数迭代
for i = 1:(N-1)
    if y(i) <= 0.5
        y(i+1) = 2 * y(i);
    else
        y(i+1) = 2 * (1 - y(i));
    end
end

% 绘制离散点图
figure(1);
plot(y, '.', 'MarkerSize', 15); % '.' 代表离散点
grid on;
xlabel('n');
ylabel('fn');

title(x0);