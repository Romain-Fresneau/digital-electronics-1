function [CompatibleLigne, m] = getCompatibleLigne(Grille, Liste, i, n)
    CompatibleLigne = zeros(n,9);
    m = 1;

    for j = 1:1:n   % We go through all the permutations
        
        b = true;
        
        for k = 1:1:9   % We check if they are compatible with the top line
            if(Liste(j,k) == Grille(i-1,k))
                    b = false;
                    break
            end
        end
        
        if(b == true)   % If yes.
            CompatibleLigne(m,:) = Liste(j,:);  % We add à CompatibleLigne
                m = m+1;
        end       
    end
    
    m = m-1;    % m represents the number of compatible permutations