%This function determines if player has completed the puzzle or failed.
%It is based on score input and returns a true or false value for the puzzle solved variable.

function[trueORfalse] = PuzResult(score)

    pause(1)
    
    %If statement to display outcome and return true/false value depending on whether puzzle is solved.
    if score == 1
        fprintf("**Congratulations, you have completed the puzzle!**\n\n");
        trueORfalse = 1; %This puzzle solved is now true.
    elseif score == 0
        fprintf("**You have failed to complete the puzzle!**\n\n");
        trueORfalse = 0; %This puzzle solved remains false.
    end

end