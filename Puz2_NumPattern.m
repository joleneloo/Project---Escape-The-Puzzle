%This function contains the puzzle Number Pattern.

function[Action,NumPatternSolved] = Puz2_NumPattern(NumPatternSolved,FormWordsSolved,WordSearchSolved)

    clc;
    pause(1)
    
    %Vector for instructions.
    Instructions = [
        "You walk up to the box to inspect it. There seems to be an interactive control screen on it"
        "As you look at the screen, words begin to form..."
        ""
        "                  **WELCOME TO NUMBERS OF FREEDOM!**"
        ""
        "Each column of numbers follow a pattern based on the first number."
        "Guess the missing numbers for the last column correctly to complete this puzzle."
        "You only get one shot at each guess so think before you answer."
        "If you do not get each answer correct, you have to repeat the entire puzzle."
        "Do you have what it takes to decipher the code to unlock the box?"];
       
    %For loop to print instruction lines for puzzle one by one with a pause in between.
    for i = 1:length(Instructions)
        fprintf("%s\n",Instructions(i))
        pause(2)
    end
    fprintf("\n");

    %Generate 4 random non-repeating integers between 1 and 9.
    rng('shuffle');
    A = randperm(9,4);
        
    %Build the next 3 rows of the vector based on the numbers generated.
    B = A.^2; %Row 2 which contains the square of A.
    C = A+B; %Row 3 which contains the sum of A and B.
    D = B-A; %Row 4 which contains the result of B minus A.

    %Concatenate rows to build 2D array of A.
    A = [A;B;C;D];

    %Loop to print all numbers except the numbers to be guessed.
    for row = [1:4]
        for col = [1:4]
            if (row == 2 && col == 4) 
                fprintf("%4s{ }A?", "");
            elseif (row == 3 && col == 4)
                fprintf("%4s{ }B?", "");
            elseif (row == 4 && col == 4)
                fprintf("%4s{ }C?", "");
            else           
                fprintf("%6d", A(row,col));
            end        
        end
        fprintf("\n");
    end

    fprintf("\n");

    %Request input for answers.
    NumberA = input("Guess the number A: ", 's');
    NumberB = input("Guess the number B: ", 's');
    NumberC = input("Guess the number C: ", 's');
    fprintf("\n");

    %Initialise score.
    score = 0;

    %If statement to add to score if answer is correct.
    if strcmp(NumberA,string(A(2,4))) && strcmp(NumberB,string(A(3,4))) && strcmp(NumberC,string(A(4,4)))
        score = 1;
    end

    %Function to determine success or failure in completing puzzle based on score.
    NumPatternSolved = PuzResult(score);
    
    %If puzzle is successfully completed, continuation of story.
    if NumPatternSolved
        fprintf("You have unlocked the box!\n")
        pause(2)
        fprintf("You hear a click as the box opens and reveals a little note and what looks like your favourite CHOCOLATE!\n")
        pause(2)
        fprintf("What a delightful find! The note reads: \n")
        pause(2)
        fprintf("""Well done, and enjoy your well deserved reward! Sincerely, Puzzle Ghost (P.G.)""\n\n")
    end    
    
    %If all puzzles have now been solved, take player to ending of game.
    if NumPatternSolved && FormWordsSolved && WordSearchSolved
        Action = "";
        return
    end
        
    %Function to display game options and request input to continue.
    Action = Game_Options();

end
