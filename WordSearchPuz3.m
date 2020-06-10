%This function contains WordSearch Puzzle 3.

function[] = WordSearchPuz3()
    
    %Display instructions for puzzle.
    fprintf("Search for five related hidden words in the following puzzle.\n\n");
    
    %Vector for letters in the word search.
    PuzString = ["BYJFVOC","FIIZLTA","KAREGIT","PMHDVAU","UGMPOYL","XOELION","EDRSUQA"];
    
    %Nested for loops to display each letter.
    for StringPosition = [1:7]        
        for Letter = [1:7]
            fprintf("%c ", PuzString{StringPosition}(Letter));
        end      
        fprintf("\n");
    end   
    fprintf("\n");
    
end

        