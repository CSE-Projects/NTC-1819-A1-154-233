% calculate greatest common divisor of a and b
function gcd_value = gcd(a,b)
% Euclid's algorithm
% gcd(m, n) = gcd(n%m, m)
% gcd(0, n) = 0
    if(a == 0) 
        gcd_value = b;
    else
        gcd_value = gcd(modulo(b, a), a);
    end