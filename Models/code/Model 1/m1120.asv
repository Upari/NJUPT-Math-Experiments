m = 1235;

% 1. 声明 x 为数学符号变量
syms x; 

% 2. 纯数学方式书写公式（无 @(x)，无点乘，和书上一模一样！）
f = x^3 + sqrt(m)*x^2 + (m/3 - 3)*x - sqrt(m)*(1 - m/27);

%% ===== (1) 画图部分 =====
figure(1);
% fplot 完美原生支持 syms 变量，直接扔进去就能画
fplot(f, [-16, -8]);
grid on;
xlabel('x'); ylabel('f(x)');

%% ===== (2) 求根部分 =====
% 核心大招：用 matlabFunction 把符号公式自动转换为数值函数 f_num
% 这样你就实现了“不手写 @(x)”，同时又满足了 fzero 的胃口
fn = matlabFunction(f); 

% 使用题目要求的 fzero 命令求出三个近似根
x1 = fzero(fn, -13.5);
x2 = fzero(fn, -11.5);
x3 = fzero(fn, -10.0);

% 打印结果
disp('通过 fzero 求解的实根为：')
disp([x1, x2, x3])