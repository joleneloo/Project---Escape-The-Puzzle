%This program contains code for a puzzle based game.

clear;
clc;

%Read audio file.
%Music credits: Clockwork (Extended Version) - Epic Steampunk Music (https://www.youtube.com/watch?v=SGKRZzoOY7Y)
[y,Fs] = audioread('AudioClockwork.mp3');
gameMusic = audioplayer(y,Fs);

%Play music for game.
play(gameMusic);

%Display opening text.
fprintf('%18s WELCOME TO ESCAPE THE PUZZLE!\n', "");
pause(2)
fprintf('%22s **ENTER if you DARE**\n', "");
pause(2)
fprintf('...............BUT will you ESCAPE or will you DESPAIR...............\n\n');
pause(2)

%Request input for player's name and to start the game,
PlayerName = input("Enter your name: ", 's');
fprintf("\n");
pause(1)
Action = input("Are you ready to begin? Hit 'Y' when ready: ", 's');

%While loop to continue asking for input until player enters a valid option.
while strcmpi(Action,"Y")~=1
    clc;
    pause(1)
    Action = input("Are you ready to begin? Hit 'Y' when ready: ", 's');
end

%Countdown to start game.
fprintf("\n");
for countdown = [5:-1:1]
    fprintf("%d...\n", countdown);
    pause(1)
end

%Display start of story.
clc;
fprintf("You wake up, all alone in a room, your head spinning as though you had just been drugged.\n");
pause(2)
fprintf("You take a look around and try to get up, a little unsteadily onto your feet.\n\n");
pause(2)


%Function to request input to continue.
Input_Continue();

%Display continuation of story and request input to continue.
clc;
pause(1)
fprintf("Everything looks unfamiliar, then you see a door up ahead in front of you.\n\n");
pause(2)
Action = input("Press 'E' to exit or press 'L' to look around: ", 's');

%While loop to continue asking for input until player enters a valid option.
while strcmpi(Action,"E")~=1 && strcmpi(Action,"L")~=1
    clc;
    pause(1)
    Action = input("Press 'E' to exit or press 'L' to look around: ", 's');
end

%Continuation of game depending on whether player chooses to exit or look around.
if strcmpi(Action,"E")
    Action = Exit_Look(); %Function if player chooses to exit.
elseif strcmpi(Action,"L")
    Action = Look_Explore(); %Function if player chooses to look around.
end

%Initialise false value for puzzles solved.
NumPatternSolved = 0;
FormWordsSolved = 0;
WordSearchSolved = 0;

%While loop to repeat game options until all the puzzles are solved.
while ~(NumPatternSolved && FormWordsSolved && WordSearchSolved)
    if strcmpi(Action,"E")
        %Function if player chooses to exit.
        Action = Exit_Look();        
    elseif strcmpi(Action,"L")
        %Function if player chooses to look around.
        Action = Look_Explore();        
    elseif strcmpi(Action,"P")
        %Function if player chooses Parchment.
        Action = Parchment(PlayerName); 
    elseif strcmpi(Action,"S")
        %Function for Form Words puzzle if player chooses screen. 
        [Action,FormWordsSolved] = Puz1_FormWords(NumPatternSolved,FormWordsSolved,WordSearchSolved);     
    elseif strcmpi(Action,"B")
        %Function for Number Pattern puzzle if player chooses box.
        [Action,NumPatternSolved] = Puz2_NumPattern(NumPatternSolved,FormWordsSolved,WordSearchSolved); 
    elseif strcmpi(Action,"M")
        %Function for Word Search puzzle if player chooses magazine.
        [Action,WordSearchSolved] = Puz3_WordSearch(NumPatternSolved,FormWordsSolved,WordSearchSolved);  
    elseif strcmpi(Action,"Q")
        %Breaks the loop if player chooses to quit game.
        break 
    end
end

%If statement to continue game if all 3 puzzles completed.
if (NumPatternSolved && FormWordsSolved && WordSearchSolved)
    %Display continuation of game.
    fprintf("Congratulations, you have now completed all three puzzles!\n\n")
    pause(2)

    %Function to request input to continue.
    Input_Continue();

    %Display continuation of game.
    clc;
    fprintf("You walk forward and try to open the door again, your heart beating in anticipation.\n")
    pause(2)
    fprintf("As you turn the doorknob, you hear a loud voice echo around the room.\n\n")
    pause(2)
    fprintf("""Aha! Do you think you have made it? Now answer this riddle before I let you go!""\n\n");

    %Function to request input to continue.
    Input_Continue();

    %Function for final riddle.
    clc;
    [Action] = SurpriseRiddle();
    
    %If statement if player solves riddle.
    if ~strcmpi(Action,"Q")
        %Display ending of the game and request input to continue.
        fprintf("Congratulations, %s! You have won!\n\n Press 'E' to exit", PlayerName);
        Action = input(": ", 's');

        %While loop to continue asking for input until player enters a valid option.
        while strcmpi(Action,"E")~=1
            clc;
            pause(1)
            Action = input("Press 'E' to exit: ", 's');
        end

        %Stop game music.
        stop(gameMusic);
    
        %Read audio file.
        %Music credits: Game Over Sound Effect (https://www.youtube.com/watch?v=QY9FOvvHQhU)
        [y,Fs] = audioread('AudioEndGame.mp3');
        EndMusic = audioplayer(y,Fs);

        %Play end music.
        play(EndMusic);
    
        %Display last part of game story.
        clc;
        pause(1)
        fprintf("You walk forward and try the door again... And it finally opens! You are free!\n\n");
        fprintf("---------------------------------- YOU WIN ----------------------------------\n");

        %Select image to read.
        DoorImage = imread('DoorWithLight.jpg');

        %Display image for end of game.
        imshow(DoorImage);
    end
end

%If player chooses to quit.
if strcmpi(Action,"Q")
    %Stop game music.
    stop(gameMusic);
    
    %Read audio file.
    %Music credits: Evil Laugh Sound Effect (https://www.youtube.com/watch?v=1P526n6wfP4)
    [y,Fs] = audioread('AudioEvilLaugh.mp3');
    EvilLaugh = audioplayer(y,Fs);

    %Play evil laughter.
    play(EvilLaugh);

    %Display game over message.
    clc;
    pause(1)
    fprintf("%30s**YOU HAVE FAILED!**\n\n", "");
    fprintf("Now you will live the rest of your wretched life confined in this room FOREVER!\n\n");
    fprintf("---------------------------------- GAME OVER ----------------------------------\n");
   
    %Select image to read.
    DoorImage = imread('ClosedDoor.jpg');

    %Display image for end of game.
    imshow(DoorImage);
end
