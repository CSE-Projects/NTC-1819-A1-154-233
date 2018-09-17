% modulo function
function res = modulo(a,b)
    % calculate remainder
    res = a - floor(a/b) * b;