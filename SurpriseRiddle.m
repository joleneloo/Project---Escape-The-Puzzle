%This function contains the final surprise riddle.
%Riddle credits: The Lord of the Rings book written by J.R.R.Tolkein.

function[Answer] = SurpriseRiddle()
    
    %Generate a random integer between 1 and 5 to determine which puzzle is used.
    rng('shuffle');
    RandInt = randi([1,5],1);

    %Switch statement with puzzles which will be picked based on random integer generated.
    switch RandInt
        case 1 
            %Display riddle.
            fprintf(" What has roots as nobody sees,\n Is taller than trees,\n Up, up, up it goes,\n And yet, never grows!\n\n");
            fprintf("(To quit the game, press 'Q')\n");
            
            %Request input from player for answer.
            Answer = input("Answer: ", 's');
            
            %While loop to continue asking for input until player enters the correct answer.
            while ~(strcmpi(Answer,"MOUNTAIN")||strcmpi(Answer,"Q"))
                clc;
                pause(1)
                fprintf("          WRONG!\n\n");
                fprintf(" What has roots as nobody sees,\n Is taller than trees,\n Up, up, up it goes,\n And yet, never grows!\n\n");
                fprintf("(To quit the game, press 'Q')\n");
                Answer = input("Answer: ", 's');        
            end
            
        case 2
            %Display riddle.
            fprintf(" Voiceless it cries,\n Wingless flutters,\n Toothless bites,\n Mouthless mutters.\n\n");
            fprintf("(To quit the game, press 'Q')\n");
            
            %Request input from player for answer.
            Answer = input("Answer: ", 's');
            
            %While loop to continue asking for input until player enters the correct answer.
            while ~(strcmpi(Answer,"WIND")||strcmpi(Answer,"Q"))
                clc;
                pause(1)
                fprintf("          WRONG!\n\n");
                fprintf(" Voiceless it cries,\n Wingless flutters,\n Toothless bites,\n Mouthless mutters.\n\n");
                fprintf("(To quit the game, press 'Q')\n");
                Answer = input("Answer: ", 's');  
            end
            
        case 3
            %Display riddle.
            fprintf(" Thirty white horses on a red hill,\n First they champ,\n Then they stamp,\n Then they stand still.\n\n");
            fprintf("(To quit the game, press 'Q')\n");
            
            %Request input from player for answer.
            Answer = input("Answer: ", 's');
            
            %While loop to continue asking for input until player enters the correct answer.
            while ~(strcmpi(Answer,"TEETH")||strcmpi(Answer,"Q"))
                clc;
                pause(1)
                fprintf("          WRONG!\n\n");
                fprintf(" Thirty white horses on a red hill,\n First they champ,\n Then they stamp,\n Then they stand still.\n\n");
                fprintf("(To quit the game, press 'Q')\n");
                Answer = input("Answer: ", 's');  
            end
            
        case 4
            %Display riddle.
            fprintf(" This thing all things devours,\n Birds, beasts, trees, flowers,\n Gnaws iron, bites steel,\n");
            fprintf(" Grinds hard stones to meal,\n Slays king, ruins town,\n And beats high mountain down.\n\n");
            fprintf("(To quit the game, press 'Q')\n");
       
            %Request input from player for answer.
            Answer = input("Answer: ", 's');
            
            %While loop to continue asking for input until player enters the correct answer.
            while ~(strcmpi(Answer,"TIME")||strcmpi(Answer,"Q"))
                clc;
                pause(1)
                fprintf("          WRONG!\n\n");
                fprintf(" This thing all things devours,\n Birds, beasts, trees, flowers,\n Gnaws iron, bites steel,\n");
                fprintf(" Grinds hard stones to meal,\n Slays king, ruins town,\n And beats high mountain down.\n\n");
                fprintf("(To quit the game, press 'Q')\n");
                Answer = input("Answer: ", 's');  
            end
            
        case 5
            %Display riddle.
            fprintf(" It cannot be seen, cannot be felt,\n Cannot be heard, cannot be smelt.\n");
            fprintf(" It lies behind stars and under hills,\n And empty holes it fills.\n");
            fprintf(" It comes first and follows after,\n Ends life, kills laughter.\n\n");
            fprintf("(To quit the game, press 'Q')\n");
       
            %Request input from player for answer.
            Answer = input("Answer: ", 's');
            
            %While loop to continue asking for input until player enters the correct answer.
            while ~(strcmpi(Answer,"DARKNESS")||strcmpi(Answer,"Q"))
                clc;
                pause(1)
                fprintf("          WRONG!\n\n");
                fprintf(" It cannot be seen, cannot be felt,\n Cannot be heard, cannot be smelt.\n");
                fprintf(" It lies behind stars and under hills,\n And empty holes it fills.\n");
                fprintf(" It comes first and follows after,\n Ends life, kills laughter.\n\n");
                fprintf("(To quit the game, press 'Q')\n");
                Answer = input("Answer: ", 's');  
            end
            
    end
    
    %Display message when player answers correctly and did not choose to quit.
    if ~strcmpi(Answer,"Q")    
    fprintf("\n**Well done, you have answered correctly!**\n\n");  
    end

end
