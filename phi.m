% calculate Euler's Totient function
function result = phi(m)
    iterate = 2;
    current = m;
    assign = m;
    while(iterate * iterate <= current)
        if( modulo(current,iterate) == 0 )
          assign = (assign/iterate) * (iterate-1);
          while( modulo(current,iterate) ==0 )
              current = current/iterate;
          end
        end
        iterate = iterate+1;
    end
    if( current>1 )
        assign = (assign/current) * (current-1);qq
    end
    result = assign;
    
