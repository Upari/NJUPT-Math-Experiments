function y = f(x)
y = zeros(size(x));
for i = 1:length(x)
    if x(i)>=-pi && x(i)<0
        y(i) = x(i) - 1;
    elseif  x(i)>=0 && x(i)<=pi
        y(i) = x(i) + 1;
    end
end
end
