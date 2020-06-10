%This function displays a message and guessed answers when player guesses the correct answer.

function[] = WordSearch_correctAns(GuessedAns)

    pause(1)
    %Display message and guessed answers.
    fprintf("That is correct!\n\n");
    fprintf("So far you have guessed: \n");
    fprintf("'%s' ", GuessedAns);    
    fprintf("\n\n");
    
end
