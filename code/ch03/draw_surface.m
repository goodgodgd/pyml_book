clc; clear

[x, y] = meshgrid(linspace(0, 5, 21));
n = length(x);
z = zeros(n, n);

K = [3 1; -2 2];
for i=1:n
    for k=1:n
        v = [x(i,k), y(i,k)]';
        z(i,k) = -v'*K*v/2 + sum(v);
    end
end

hold off
subplot(121)
surface(x, y, z)
view(3)
grid on
title('(a) strict convex')


K = [2 1; 2 1];
for i=1:n
    for k=1:n
        v = [x(i,k), y(i,k)]';
        z(i,k) = -v'*K*v/2 + sum(v);
    end
end

hold off
subplot(122)
surface(x, y, z)
view(3)
grid on
title('(b) convex')
