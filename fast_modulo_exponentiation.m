% Fast modulo exponentiation
function result = fast_modulo_exponentiation(a,x,m)
a = modulo(a,m);
result = 1;
% Repeat until answer is found
while(x~=0)
    if(modulo(x,2)==1)
        % If the power is an odd number increment the result
        result = modulo(result.*a,m);
    end
    % Halving value of x and squaring a
    x = floor(x/2);
    a = modulo(a.*a,m);
end
