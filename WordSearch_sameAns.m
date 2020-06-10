%This function displays a message and guessed answers when player repeats the same answer.

function[] = WordSearch_sameAns(GuessedAns)

    pause(1)
    %Display message and guessed answers.
    fprintf("You have already guessed this answer! Try again.\n\n");
    fprintf("So far you have guessed: \n");
    fprintf("'%s' ", GuessedAns);   
    fprintf("\n\n");
    
end
