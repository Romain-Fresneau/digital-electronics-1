function [CompatibleBloc, p] = getCompatibleBloc(Grille, CompatibleLigne, i, n)
    CompatibleBloc = zeros(n,9);
    p = 1;
    
    if(mod(i,3) == 1)   % If we're on the first line of a block
        CompatibleBloc = CompatibleLigne;   % No need to test
        p = n;
    elseif(mod(i,3) == 2)   % If we are on the second line
        for j = 1:1:n
            b = true;

            for k = 1:1:9   %We compare to the line above
                if(CompatibleLigne(j,k) == Grille(i-1,k-mod(k-1,3)) || CompatibleLigne(j,k) == Grille(i-1,k+1-mod(k-1,3)) || CompatibleLigne(j,k) == Grille(i-1,k+2-mod(k-1,3)))
                    b = false;
                    break
                end
            end

            if(b == true)
                CompatibleBloc(p,:) = CompatibleLigne(j,:);
                    p = p+1;
            end
        end
    else    % If we are on the third line
        for j = 1:1:n
            b = true;

            for k = 1:1:9   % We compare to the two lines above
                if(CompatibleLigne(j,k) == Grille(i-1,k-mod(k-1,3)) || CompatibleLigne(j,k) == Grille(i-1,k+1-mod(k-1,3)) || CompatibleLigne(j,k) == Grille(i-1,k+2-mod(k-1,3)) || CompatibleLigne(j,k) == Grille(i-2,k-mod(k-1,3)) || CompatibleLigne(j,k) == Grille(i-2,k+1-mod(k-1,3)) || CompatibleLigne(j,k) == Grille(i-2,k+2-mod(k-1,3)))
                    b = false;
                    break
                end
            end

            if(b == true)
                CompatibleBloc(p,:) = CompatibleLigne(j,:);
                    p = p+1;
            end
        end
    end
    
    p = p-1;    % p represents the number of compatible lines