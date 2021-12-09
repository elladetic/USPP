load azip;

[u, s, v] = svd(azip' * azip);

n = 10;

v = v(1:n, :)';
%size(X);

% V = X Qt
% Vt = Q * Xt

[q, xt] = qr(v');

r1 = xt(1:n, 1:n);
r2 = xt(1:n, n+1:length(xt));


r1r2 = inv(r1) * xt; %R**(-1)*Rt
%xtbackslashr1 bolje nego inv
%part = zeros(length(r1r2)); len(r1r2)*len(r1r2) matrica
part = zeros( [1 length(r1r2)]);

for(i = 1:length(r1r2))
    [argvalue, argmax] = max(abs(r1r2(i, 10:length(r1r2))));
    r1r2(i,10:length(r1r2))
    part(i) = argmax;
    argvalue
    break
    %r1r2(1:n, i) = zeros(1, n);
    %r1r2(argmax, i) = 1;
end