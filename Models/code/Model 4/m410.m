rst = [];

% 根据题意，c 最大为 500。因为 b = c - 2 且 b > 0，所以 c 至少为 3。
for c = 3:500
    b = c - 2;
    
    % 根据勾股定理 a^2 + b^2 = c^2，求解 a
    a2 = c^2 - b^2;
    a = sqrt(a2);
    
    % 判断 a 是否为正整数
    if a == floor(a) && a > 0
        % 记录并打印结果
        rst = [rst; a, b, c];
        fprintf('a = %d, \tb = %d, \tc = %d\n', a, b, c);
    end
end

disp(size(rst, 1));