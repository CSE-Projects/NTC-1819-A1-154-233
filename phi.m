function result = phi(m)
    iterate = 2;
    current = m;
    assign = m ;
    while(iterate * iterate <= current)
        if( mod(current,iterate) == 0 )
          assign = (assign/iterate) * (iterate-1);
          while( mod(current,iterate) ==0 )
              current = current/iterate;
          end
        end
        iterate = iterate+1;
    end
    if( current>1 )
        assign = (assign/current) * (current-1);
    end
    result = assign;
    
