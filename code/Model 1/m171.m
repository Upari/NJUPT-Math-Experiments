function y = f(x)
y=zeros(size(x));
for i = 1:length(x)
    if x(i)>=0 && x(i)<=1/2
        y(i) = 2 * x(i);
    elseif x(i) > 1/2 && x(i) <= 1
        y(i) = 2*(1-x(i));
    end
end
end