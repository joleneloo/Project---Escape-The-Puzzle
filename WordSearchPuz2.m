%This function contains WordSearch Puzzle 2.

function[] = WordSearchPuz2()
    
    %Display instructions for puzzle.
    fprintf("Search for five related hidden words in the following puzzle.\n\n");
    
    %Vector for letters in the word search.
    PuzString = ["KCURTEJ","EUHIMLY","UQCARCP","BTCNTYI","PLANECH","VERTRIS","DBAKQBP"];
    
    %Nested for loops to display each letter.
    for StringPosition = [1:7]        
        for Letter = [1:7]
            fprintf("%c ", PuzString{StringPosition}(Letter));
        end      
        fprintf("\n");
    end   
    fprintf("\n");
    
end

        