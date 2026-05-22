m = 1235; t =  [-3, 3];

sig1 = 1000 / m;
sig2 = 500 / m;
sig3 = 100 / m;

% 2. 声明 x 为数学符号变量（避免书写 @(x) 和点乘）
syms x;

% 3. 分行定义三个高斯函数公式
f1 = (1 / (sqrt(2*pi) * sig1)) * exp(-x^2 / (2 * sig1^2));
f2 = (1 / (sqrt(2*pi) * sig2)) * exp(-x^2 / (2 * sig2^2));
f3 = (1 / (sqrt(2*pi) * sig3)) * exp(-x^2 / (2 * sig3^2));

% 4. 开始在同一个窗口中绘图
figure(1);

fplot(f1, t, 'r-', 'LineWidth', 2); 
hold on;  % 【核心命令】锁住当前坐标系，允许后面的线画在同一个图里

fplot(f2, t, 'g-', 'LineWidth', 2); 
fplot(f3, t, 'b-', 'LineWidth', 2); 

hold off; % 画光了，解锁坐标系

grid on;    
xlabel('x'); ylabel('f(x)');