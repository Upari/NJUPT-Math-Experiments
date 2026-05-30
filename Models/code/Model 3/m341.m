m = 1235; 
A = [m, 6-m; m-2, 8-m];


[V, D] = eig(A);
tezheng = diag(D);
fprintf('特征值:\n'); 
disp(tezheng');
fprintf('特征向量 列向量:\n'); 
disp(V);


x = [0.5; 0.5]; 
fprintf('初始向量 x0 = [%.4f; %.4f]\n\n', x(1), x(2));

for i = 1:5
    x = A * x;
    fprintf('%d: [%6.4f; %6.4f]\n', i, x(1), x(2));
end