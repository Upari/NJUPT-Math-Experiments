t = (1:20)';

y = [120 150 190 240 310 400 520 680 860 1080 ...
     1320 1600 1880 2140 2360 2520 2640 2720 2780 2820]';

f = @(p,t) p(1)./(1+p(2)*exp(-p(3)*t));

p0 = [3000 20 0.3];

p = lsqcurvefit(f,p0,t,y);

K = p(1);
a = p(2);
b = p(3);

fprintf('最终感染规模 K = %.2f\n',K);
fprintf('参数 a = %.4f\n',a);
fprintf('参数 b = %.4f\n',b);

tt = 1:0.1:30;

plot(t,y,'ro','MarkerSize',8);
hold on;

plot(tt,f(p,tt),'b-','LineWidth',2);

grid on;

legend('实际数据','Logistic拟合曲线');

xlabel('时间/天');
ylabel('累计感染人数');

title('COVID-19传播数据Logistic拟合');