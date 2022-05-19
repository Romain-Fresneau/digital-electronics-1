function [Grille, lignes, colonnes] = genGrilleFacile(GrillePleine)
    
    Grille = GrillePleine;
    
    colonnes = randperm(9); % We determine a random order of parsing of the boxes
    lignes = randperm(9);
    
    for a = 1:1:9   % We go through all the boxes
        for b = 1:1:9
            
            j = colonnes(a);
            i = lignes(b);
            
            if(Grille(i,j) ~=0) % If box is not empty

                % We recover the list of figures already deleted on its column
                
                chiffressupprimes = [];
                for m = 1:1:9   
                    if(Grille(m,j) == 0)
                        chiffressupprimes = [chiffressupprimes GrillePleine(m,j)];
                    end
                end
                
                % We retrieve all the digits present on its line and in its block
                
                p = j-mod(j-1,3);

                if(mod(i,3) == 1)
                    chiffrespresents = [Grille(i,:) Grille(i+1,p:p+2) Grille(i+2,p:p+2)];
                elseif(mod(i,3) == 2)
                    chiffrespresents = [Grille(i,:) Grille(i-1,p:p+2) Grille(i+1,p:p+2)];
                else
                    chiffrespresents = [Grille(i,:) Grille(i-1,p:p+2) Grille(i-2,p:p+2)];
                end
                
                %If all suppressed digits are present in this list
                
                b = 1;

                for k = 1:1:length(chiffressupprimes)
                    if(~any(chiffrespresents(:)==chiffressupprimes(k)))   %any( A ) tests whether at least one element of A returns logical 1 ( true )
                        b=0;
                    end
                end

                if(b == 1)
                    Grille(i,j) = 0;    % We can remove the box
                end
            end
        end
    end