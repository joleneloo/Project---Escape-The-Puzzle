%This function displays the game options.
%And then requests input to continue the game.

function[Action] = Game_Options()
    
    pause(1)
    
    %Display game options and request input to continue.
    fprintf("Press 'P' to pick up the parchment.\n");
    fprintf("Press 'S' to check out the screen.\n");
    fprintf("Press 'B' to inspect the box.\n");
    fprintf("Press 'M' to look at the magazine.\n\n");
    fprintf("Otherwise Press 'E' to exit or press 'L' to look around.\n");
    fprintf("(To quit the game, press 'Q'):");
    Action = input(" ", 's'); 

    %While loop to continue asking for input until player enters a valid option.
    while ~(strcmpi(Action,"Q")||strcmpi(Action,"P")||strcmpi(Action,"S")||strcmpi(Action,"B")||strcmpi(Action,"M")||strcmpi(Action,"L")||strcmpi(Action,"E"))
        clc;
        pause(1)
        fprintf("Press 'P' to pick up the parchment.\n");
        fprintf("Press 'S' to check out the screen.\n");
        fprintf("Press 'B' to inspect the box.\n");
        fprintf("Press 'M' to look at the magazine.\n\n");
        fprintf("Otherwise Press 'E' to exit or press 'L' to look around.\n");
        fprintf("(To quit the game, press 'Q'):");
        Action = input(" ", 's');
    end
        
end
