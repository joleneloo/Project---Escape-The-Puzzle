%This function displays the continuation of the story when player chooses Parchment.
%And then requests input to continue the game.

function[Action] = Parchment(PlayerName)
    
    clc;
    pause(1)
    
    %Display parchment story.
    fprintf("You notice a piece of parchment on a corner table in the room. Picking it up, you read its contents.\n\n");
    pause(2)
    fprintf("""Greetings %s!\n", PlayerName);
    pause(2)
    fprintf("I commend you on your bravery in undertaking this task.\n");
    pause(2)
    fprintf("In this room, you will find THREE unique puzzles.\n");
    pause(2)
    fprintf("You will need to complete them to unlock the door.\n");
    pause(2)
    fprintf("Solve them all and earn your freedom......\n");
    pause(2)
    fprintf("Or bE dOoMeD tO sPeNd EtErNitY iN ThIs rOoM......!\n");
    pause(2)
    fprintf("%25s Sincerely, Puzzle Ghost (P.G.)""\n\n", "")
    pause(2)
    fprintf("You shudder as you hear a faint cackling laughter echo around the room just as you finish reading the note.\n\n");
    pause(2)
    
    %Function to display game options and request input to continue.
    Action = Game_Options();    

end
