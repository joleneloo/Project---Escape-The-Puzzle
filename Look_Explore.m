%This function displays the room's setting if player chooses to look around.
%And then requests input to continue the game.

function[Action] = Look_Explore()

    clc;
    pause(1)
    
    %Vector containing story with setting of the room.
    ExploreStory = [
        "It looks unlikely that you will be able to exit the room at this stage." 
        "So you turn and look around to see what else you can find."
        "As you take a moment to glance around, you notice a curious piece of parchment on a corner table in the room."
        "The walls of the otherwise relatively bare room seem to look rather rustic and interesting."
        "On the wall next to you, you can see a screen with some text on it."
        "Right across the room from you, there is a small wooden box mounted on the wall."
        "And on an armchair behind you, a magazine lies open."];
    
    %For loop to display storyline one by one with a pause in between.
    for i = 1:length(ExploreStory)
        fprintf("%s\n",ExploreStory(i))
        pause(2)
    end
    fprintf("\n");
    
    %Function to display game options and request input to continue.
    Action = Game_Options();          
      
end
