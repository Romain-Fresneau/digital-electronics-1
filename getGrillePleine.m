function Grille = getGrillePleine(progressbar, pourcentage)  %PARAMETERS OF THE LOADING 

    tic     % Start of the timer
    
    set(progressbar,'visible','on');
    set(pourcentage,'visible','on');
    drawnow

    numbers = [1 2 3 4 5 6 7 8 9];
    List = perms(numbers); % Generation of the set of permutations
    n = length(List);

    Grille = zeros(9,9);

    choix = ceil(n*rand(1,1));  % Choice of the first line, ceil( X ) rounds each element of X to the nearest integer greater than or equal to that element

    Grille(1,:) = List(choix,:);
     % ------------------------------------------------------------------------- INITIALISATION OF THE POURCENTAGE AND THE BAR
    set(progressbar,'position',[0.1 0.45 0.8/9 0.003]);  
    set(pourcentage,'string','11%');
    drawnow
    % -------------------------------------------------------------------------
    
    
    for i = 2:1:9   % Iteration for the next 8 rows

        [CompatibleLigne, n] = getCompatibleLigne(Grille, List, i, n);

        [CompatibleBloc, p] = getCompatibleBloc(Grille, CompatibleLigne, i, n);

        choix = floor(p*rand(1,1))+1;   % Choice of the line
        Grille(i,:) = CompatibleBloc(choix,:);
        
        set(progressbar,'position',[0.1 0.45 i*0.8/9 0.003]);
        set(pourcentage,'string',strcat(num2str(i*11),'%'));      %11 % LOADING MODULO   ///     s = strcat( s1,...,sN ) horizontally concatenates the text in its input arguments.
        drawnow

        List = CompatibleLigne;

    end

     toc;    % End of the timer

    