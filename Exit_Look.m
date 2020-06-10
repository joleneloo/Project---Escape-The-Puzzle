%This function displays the continuation of the story when player chooses to exit.
%And then requests input to continue the game.

function[Action] = Exit_Look()
      
    clc;
    pause(1)
    
    %Display story and request input to continue.
    fprintf("You walk forward and try to open the door, but it seems locked.\n\n");
    Action = input("Press 'E' to exit or press 'L' to look around: ", 's');
    
    %While loop to continue asking for input until player enters a valid option.
    while strcmpi(Action,"E")~=1 && strcmpi(Action,"L")~=1
        clc;
        pause(1)
        Action = input("Press 'E' to exit or press 'L' to look around: ", 's');          
    end    
      
end
