%This function contains the puzzle Word Search.

function[Action,WordSearchSolved] = Puz3_WordSearch(NumPatternSolved,FormWordsSolved,WordSearchSolved)

    clc;
    pause(1)
    
    %Vector for instructions.
    Instructions = [
        "You pick up the magazine and take a seat on the comfy armchair."
        "As you flip over the first few pages, you find a word search puzzle and a pen in between the pages."
        "The words seem to magically reorder themselves as you read..."
        ""
        "                  **WELCOME TO WORDS!WORDS!WORDS!**"
        ""
        "As you can see, this is everyone's favourite word search puzzle!"
        "Your quest is to search for five related hidden words in the following puzzle."
        "Each guess that you write down will be examined by the magic pages and it will respond to anything you write."
        "You can choose to stop doing the puzzle at any time, by telling the pages to RETURN by writing."
        "All the best in your search for words!"];
    
    %For loop to print instruction lines for puzzle one by one with a pause in between.
    for i = 1:length(Instructions)
        fprintf("%s\n",Instructions(i))
        pause(2)
    end
    fprintf("\n");

    %Initialise score and vector for guessed answers.
    score = 0;
    GuessedAns = [];
    
    %Generate a random integer between 1 and 5 to determine which puzzle is used.
    rng('shuffle');
    RandInt = randi([1,5],1);
    
    %Switch statement with puzzles which will be picked based on random integer generated.
    switch RandInt
        case 1
            %Display wordsearch array of characters.
            WordSearchPuz1();      
                
            %Initialise vector of answers.
            PuzAns = ["APPLE","ORANGE","BANANA","PEAR","GRAPE"];
        
            %While loop to continue requesting input from player until player has guessed all the words.
            while (score < 5)
                pause(1)
    
                %Display option to give up.
                fprintf("If you give up, write RETURN to exit the puzzle.\n");
            
                %Request answer input from player.
                Guess = input("Write the word you have found: ", 's'); 
            
                %Clear previous message and re-display puzzle.
                clc;
                WordSearchPuz1(); 
                       
                %Loop to check GuessedAns vector and call function to display message if same answer is repeated.
                for i = [1:length(GuessedAns)]
                    if strcmpi(Guess,GuessedAns(i))
                        WordSearch_sameAns(GuessedAns);
                    end
                end
            
                %Loop to carry out commands if answer is correct. 
                for i = [1:5]
                    %If answer is correct and guess is not an empty answer.
                    if strcmpi(Guess,PuzAns(i)) && ~strcmpi(Guess,"") 
                        %Add to score.
                        score = score + 1; 
                        %Add guessed answer to vector of guessed answers.
                        GuessedAns = [GuessedAns PuzAns(i)];
                        %Call function to display message for correct answer.          
                        WordSearch_correctAns(GuessedAns);
                        %Remove guessed answer from original vector of answers. 
                        PuzAns(i) = "";                
                    end               
                end
            
                %If statement if player chooses to exit the puzzle.
                if strcmpi(Guess,"RETURN")
                    break                                   
                end                    
            end
            
        case 2
            %Display wordsearch array of characters.
            WordSearchPuz2();      
                
            %Initialise vector of answers.
            PuzAns = ["TRUCK","CAR","PLANE","BICYCLE","SHIP"];
        
            %While loop to continue requesting input from player until player has guessed all the words.
            while (score < 5)
                pause(1)
    
                %Display option to give up.
                fprintf("If you give up, write RETURN to exit the puzzle.\n");
            
                %Request answer input from player.
                Guess = input("Write the word you have found: ", 's'); 
            
                %Clear previous message and re-display puzzle.
                clc;
                WordSearchPuz2(); 
                       
                %Loop to check GuessedAns vector and call function to display message if same answer is repeated.
                for i = [1:length(GuessedAns)]
                    if strcmpi(Guess,GuessedAns(i))
                        WordSearch_sameAns(GuessedAns);
                    end
                end
            
                %Loop to carry out commands if answer is correct. 
                for i = [1:5]
                    %If answer is correct and guess is not an empty answer.
                    if strcmpi(Guess,PuzAns(i)) && ~strcmpi(Guess,"") 
                        %Add to score.
                        score = score + 1; 
                        %Add guessed answer to vector of guessed answers.
                        GuessedAns = [GuessedAns PuzAns(i)];
                        %Call function to display message for correct answer.          
                        WordSearch_correctAns(GuessedAns);
                        %Remove guessed answer from original vector of answers. 
                        PuzAns(i) = "";                
                    end               
                end
            
                %If statement if player chooses to exit the puzzle.
                if strcmpi(Guess,"RETURN")
                    break                                   
                end 
            end
            
        case 3
            %Display wordsearch array of characters.
            WordSearchPuz3();      
                
            %Initialise vector of answers.
            PuzAns = ["CAT","TIGER","DOG","LION","BIRD"];
        
            %While loop to continue requesting input from player until player has guessed all the words.
            while (score < 5)
                pause(1)
    
                %Display option to give up.
                fprintf("If you give up, write RETURN to exit the puzzle.\n");
            
                %Request answer input from player.
                Guess = input("Write the word you have found: ", 's'); 
            
                %Clear previous message and re-display puzzle.
                clc;
                WordSearchPuz3(); 
                       
                %Loop to check GuessedAns vector and call function to display message if same answer is repeated.
                for i = [1:length(GuessedAns)]
                    if strcmpi(Guess,GuessedAns(i))
                        WordSearch_sameAns(GuessedAns);
                    end
                end
            
                %Loop to carry out commands if answer is correct. 
                for i = [1:5]
                    %If answer is correct and guess is not an empty answer.
                    if strcmpi(Guess,PuzAns(i)) && ~strcmpi(Guess,"") 
                        %Add to score.
                        score = score + 1; 
                        %Add guessed answer to vector of guessed answers.
                        GuessedAns = [GuessedAns PuzAns(i)];
                        %Call function to display message for correct answer.          
                        WordSearch_correctAns(GuessedAns);
                        %Remove guessed answer from original vector of answers. 
                        PuzAns(i) = "";                
                    end               
                end
            
                %If statement if player chooses to exit the puzzle.
                if strcmpi(Guess,"RETURN")
                    break                                   
                end 
            end
            
        case 4
            %Display wordsearch array of characters.
            WordSearchPuz4();      
                
            %Initialise vector of answers.
            PuzAns = ["SOCCER","TENNIS","CRICKET","GOLF","HOCKEY"];
        
            %While loop to continue requesting input from player until player has guessed all the words.
            while (score < 5)
                pause(1)
    
                %Display option to give up.
                fprintf("If you give up, write RETURN to exit the puzzle.\n");
            
                %Request answer input from player.
                Guess = input("Write the word you have found: ", 's'); 
            
                %Clear previous message and re-display puzzle.
                clc;
                WordSearchPuz4(); 
                       
                %Loop to check GuessedAns vector and call function to display message if same answer is repeated.
                for i = [1:length(GuessedAns)]
                    if strcmpi(Guess,GuessedAns(i))
                        WordSearch_sameAns(GuessedAns);
                    end
                end
            
                %Loop to carry out commands if answer is correct. 
                for i = [1:5]
                    %If answer is correct and guess is not an empty answer.
                    if strcmpi(Guess,PuzAns(i)) && ~strcmpi(Guess,"") 
                        %Add to score.
                        score = score + 1; 
                        %Add guessed answer to vector of guessed answers.
                        GuessedAns = [GuessedAns PuzAns(i)];
                        %Call function to display message for correct answer.          
                        WordSearch_correctAns(GuessedAns);
                        %Remove guessed answer from original vector of answers. 
                        PuzAns(i) = "";                
                    end               
                end
            
                %If statement if player chooses to exit the puzzle.
                if strcmpi(Guess,"RETURN")
                    break                                   
                end 
            end
            
        case 5
            %Display wordsearch array of characters.
            WordSearchPuz5();      
                
            %Initialise vector of answers.
            PuzAns = ["VIOLIN","TRUMPET","FLUTE","PIANO","GUITAR"];
        
            %While loop to continue requesting input from player until player has guessed all the words.
            while (score < 5)
                pause(1)
    
                %Display option to give up.
                fprintf("If you give up, write RETURN to exit the puzzle.\n");
            
                %Request answer input from player.
                Guess = input("Write the word you have found: ", 's'); 
            
                %Clear previous message and re-display puzzle.
                clc;
                WordSearchPuz5(); 
                       
                %Loop to check GuessedAns vector and call function to display message if same answer is repeated.
                for i = [1:length(GuessedAns)]
                    if strcmpi(Guess,GuessedAns(i))
                        WordSearch_sameAns(GuessedAns);
                    end
                end
            
                %Loop to carry out commands if answer is correct. 
                for i = [1:5]
                    %If answer is correct and guess is not an empty answer.
                    if strcmpi(Guess,PuzAns(i)) && ~strcmpi(Guess,"") 
                        %Add to score.
                        score = score + 1; 
                        %Add guessed answer to vector of guessed answers.
                        GuessedAns = [GuessedAns PuzAns(i)];
                        %Call function to display message for correct answer.          
                        WordSearch_correctAns(GuessedAns);
                        %Remove guessed answer from original vector of answers. 
                        PuzAns(i) = "";                
                    end               
                end
            
                %If statement if player chooses to exit the puzzle.
                if strcmpi(Guess,"RETURN")
                    break                                   
                end 
            end                 
    end

    %If statement to display outcome and return true/false value depending on whether puzzle is solved.
    pause(1)
    if score == 5
        fprintf("**Congratulations, you have completed the puzzle!**\n\n");
        WordSearchSolved = 1; %This puzzle solved is now true.
    elseif score ~= 5
        fprintf("**You have failed to complete the puzzle!**\n\n");
        WordSearchSolved = 0; %This puzzle solved remains false.
    end
    
    %If all puzzles have now been solved, take player to ending of game.
    if NumPatternSolved && FormWordsSolved && WordSearchSolved
        Action = "";
        return
    end
    
    %Function to display game options and request input to continue.
    Action = Game_Options();    
    
end
