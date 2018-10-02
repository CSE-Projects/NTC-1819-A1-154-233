% variable inputs
% for (a^x + b^y) % m
disp('Enter inputs for (a^x + b^y) % m');
a = input('a: ');
x = input('x: ');
b = input('b: ');
y = input('y: ');
m = input('m: ');

%---------------------------------------------------------
% Calculating (a^x + b^y) % m by fast modulo exponentiation

% check if a and m are co prime
ea = fast_modulo_exponentiation(a, x, m);
% check if b and m are co prime
eb = fast_modulo_exponentiation(b, y, m);

% result = (ea + eb) % m
res = modulo(ea + eb, m);
fprintf('Result using fast modulo exponentiation: %d\n', res);

%---------------------------------------------------------
% Calculating (a^x + b^y) % m by reducing power of x and y
% by using phi(m), and then using fast modulo exponentiation

% calculate phi of m
pi=phi(m); 

% check if a and m are co prime
if (gcd_int(a, m) == 1)
    ea = fast_modulo_exponentiation(a, modulo(x, pi), m);
else
    ea = fast_modulo_exponentiation(a, x, m);
end

% check if b and m are co prime
if (gcd_int(b, m) == 1)
    eb = fast_modulo_exponentiation(b, modulo(y,pi), m);
else
    eb = fast_modulo_exponentiation(b, y, m);
end

% result = (ea + eb) % m
res = modulo(ea + eb, m);
fprintf('Result using fast modulo exponentiation by reducing power: %d\n', res);


