% Fast modulo exponentiation
function result = fast_modulo_exponentiation(a,x,m)
% reducing a by taking modulo
a = modulo(a,m);
% instantiating result
result = 1;
% Repeat until answer is found
while(x~=0)
    if(modulo(x,2)==1)
        % If the power is an odd number increment the result
        result = modulo(result.*a,m);
    end
    % Halving value of x and squaring a
    x = floor(x/2);
    % squaring a
    a = modulo(a.*a,m);
end
