m = 1234;

A = [3, m, 1; 
     0, -2, 1; 
     5, 3, m-4];

B = [2, 1, 0; 
     1, 3, 1; 
     0, 1, 4];

AB1 = A / B;  % 计算 AB^-1
A1B = A \ B;  % 计算 A^-1B


% 1. 拼接成分块矩阵（一个 3 行 6 列的矩阵）
AB = [A, B];  

% 2. 使用 rref 函数计算行最简形
rrefAB = rref(AB);


disp(AB1)

disp(A1B)

disp(rrefAB)