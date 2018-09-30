% variable inputs
% for (a^x + b^y) % m
disp('Enter inputs for (a^x + b^y) % m');
a = input('a: ');
x = input('x: ');
b = input('b: ');
y = input('y: ');
m = input('m: ');

% calculate phi of m
pi=phi(m); 

%
if (gcd_int(a, m) == 1)
    ea = fast_modulo_exponentiation(a, modulo(x, pi), m);
else
    ea = fast_modulo_exponentiation(a, x, m);
end

% 
if (gcd_int(b, m) == 1)
    eb = fast_modulo_exponentiation(b, modulo(y,pi), m);
else
    eb = fast_modulo_exponentiation(b, y, m);
end

% result = (ea + eb) % m
res = modulo(ea + eb, m);
fprintf('Result: %d\n', res);
