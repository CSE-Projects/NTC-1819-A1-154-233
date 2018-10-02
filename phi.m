% calculate Euler's Totient function
function result = phi(m)
    % iterate is an iterator to find prime divisors
    iterate = 2;
    % current stores the quotient when m is divided by iterator
    current = m;
    % assign stores the final answer
    assign = m;
    while(iterate * iterate <= current)
        % if iterate divides current, then we repeatedly divide
        if( modulo(current,iterate) == 0 )
          assign = (assign/iterate) * (iterate-1);
          while( modulo(current,iterate) ==0 )
              current = current/iterate;
          end
        end
        % incrementing iterate
        iterate = iterate+1;
    end
    % if current is not 1 then it is a prime
    if( current>1 )
        assign = (assign/current) * (current-1);
    end
    % finding answer
    result = assign;
    
