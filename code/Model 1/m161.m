m = 1235;

A = [3, m, 1; 
     0, -2, 1; 
     5, 3, m-4];

detA = det(A);
invA = inv(A);
[V, D] = eig(A);
zhi = diag(D);

disp('行列式')
disp(detA)

disp('逆矩阵')
disp(invA)

disp('特征值')
disp(zhi)

disp('特征向量')
disp(V)