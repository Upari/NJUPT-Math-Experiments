m = 1235; 
A = [m-1, m; 1-m, -m];

[V, D] = eig(A);
eigenvalues = diag(D);
fprintf('特征值 :\n'); 
disp(eigenvalues');
fprintf('特征向量 :\n'); 
disp(V);

x = [0.5; 0.5]; 
fprintf('初始向量 x0 = [%.4f; %.4f]\n\n', x(1), x(2));

for i = 1:5
    x = A * x;
    fprintf('第 %d 次迭代结果: [%12.4f; %12.4f]\n', i, x(1), x(2));
end