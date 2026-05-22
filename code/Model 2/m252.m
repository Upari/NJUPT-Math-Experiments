x = linspace(-3*pi/2, 3*pi/2, 1000);
y = sin(x);

% 高阶泰勒展开公式
f5 = x - x.^3/6 + x.^5/120;
f7 = f5 - x.^7/5040;
f9 = f7 + x.^9/362880;
f11 = f9 - x.^11/39916800;

% 绘图
figure(2);
plot(x, y, 'k', 'LineWidth', 2); hold on;
plot(x, f7, 'm--', 'LineWidth', 1.5);
plot(x, f9, 'c-.', 'LineWidth', 1.5);
plot(x, f11, 'b:', 'LineWidth', 1.5);
grid on; legend('sin(x)', 'n=7', 'n=9', 'n=11');
ylim([-2, 2]); xlabel('x'); ylabel('y');
title('n=7,9,11');