%This function is used to request input to continue and loop until player enters valid option to continue.

function[] = Input_Continue()

    %Request input to continue.
    Action = input("Press 'C' to continue: ", 's');

    %While loop to continue asking for input until player enters a valid option.
    while strcmpi(Action,"C")~=1
        clc;
        pause(1)
        Action = input("Press 'C' to continue: ", 's');
    end
    
end