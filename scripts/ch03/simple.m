clc; clear;

X = [5 5; 4 4; 3 3; 1 2; 2 1; 1 1]'
Y = [1 1 1 -1 -1 -1];
sz = size(X);
Xy = X .* repmat(Y,sz(1),1);
G = Xy'*Xy

% dual �Լ� ����ȭ
a = pinv(G) * ones(sz(2),1)
% ���� weight, bias ���
w = Xy*a
b = Y(3) - w' * X(:, 3)

% �ּ� dual �Լ� ���
L = sum(a) - w'*w/2
L = a'*ones(sz(2),1) - a'*Xy'*Xy*a / 2


% y_int = -b / w(2)
% x_int = -b / w(1)
% plot(X(1,:), X(2,:), 'bd')
% hold on
% plot([0, x_int], [y_int, 0], 'r-')
% hold off
