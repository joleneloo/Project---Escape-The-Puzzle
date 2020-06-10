%This function contains the puzzle Form Words.

function[Action,FormWordsSolved] = Puz1_FormWords(NumPatternSolved,FormWordsSolved,WordSearchSolved)
    
    clc;
    pause(1)
    
    %Vector for instructions.
    Instructions = [
        "You move closer to take a look at the screen. It seemed blank at first but activated as you approached it."
        "As you look at the screen, words begin to form..."
        ""
        "                **WELCOME TO UNSCRAMBLE FOR YOUR LIFE!**"
        ""
        "Rearrange each string of jumbled letters to form three words which mean the same thing."
        "You only get one shot at each guess so think before you answer."
        "If you do not get each answer correct, you have to repeat the entire puzzle."
        "Good luck!"];
       
    %For loop to print instruction lines for puzzle one by one with a pause in between.
    for i = 1:length(Instructions)
        fprintf("%s\n",Instructions(i))
        pause(2)
    end
    fprintf("\n");

    %Initialise score.
    score = 0;
    
    %Generate a random integer between 1 and 5 to determine which puzzle is used.
    rng('shuffle');
    RandInt = randi([1,5],1);

    %Switch statement with puzzles which will be picked based on random integer generated.
    switch RandInt
        case 1
            %Display jumbled strings.
            fprintf(' "yjo"     "igeldht"     "nsehpsiap" \n\n');     
            pause(2)
        
            %Request input from player.
            Word1 = input("yjo : ", 's');
            fprintf("\n");
            Word2 = input("igeldht : ", 's');
            fprintf("\n");
            Word3 = input("nsehpsiap : ", 's');
            fprintf("\n");
        
            %If statement to add to score if answer is correct.
            if Word1 == "joy" && Word2 == "delight" && Word3 == "happiness"
                score = 1;
            end
                
        case 2
            %Display jumbled strings.
            fprintf(' "rsowor"     "desnssa"     "riymes" \n\n');        
            pause(2)
        
            %Request input from player.
            Word1 = input("rsowor : ", 's');
            fprintf("\n");
            Word2 = input("desnssa : ", 's');
            fprintf("\n");
            Word3 = input("riymes : ", 's');
            fprintf("\n");
        
            %If statement to add to score if answer is correct.
            if Word1 == "sorrow" && Word2 == "sadness" && Word3 == "misery"
                score = 1;
            end
           
        case 3
            %Display jumbled strings.
            fprintf(' "nensai"     "rycaz"     "htcysoipc" \n\n');        
            pause(2)
        
            %Request input from player.
            Word1 = input("nensai : ", 's');
            fprintf("\n");
            Word2 = input("rycaz : ", 's');
            fprintf("\n");
            Word3 = input("htcysoipc : ", 's');
            fprintf("\n");
        
            %If statement to add to score if answer is correct.
            if Word1 == "insane" && Word2 == "crazy" && Word3 == "psychotic"
                score = 1;
            end
        
        case 4
            %Display jumbled strings.
            fprintf(' "ridte"     "kcanredke"     "hesauxdet" \n\n');        
            pause(2)
        
            %Request input from player.
            Word1 = input("ridte : ", 's');
            fprintf("\n");
            Word2 = input("kcanredke : ", 's');
            fprintf("\n");
            Word3 = input("hesauxdet : ", 's');
            fprintf("\n");
        
            %If statement to add to score if answer is correct.
            if Word1 == "tired" && Word2 == "knackered" && Word3 == "exhausted"
                score = 1;
            end
        
        case 5
            %Display jumbled strings.
            fprintf(' "asmtr"     "grtibh"     "leninlitegt" \n\n');        
            pause(2)
        
            %Request input from player.
            Word1 = input("asmtr : ", 's');
            fprintf("\n");
            Word2 = input("grtibh : ", 's');
            fprintf("\n");
            Word3 = input("leninlitegt : ", 's');
            fprintf("\n");
        
            %If statement to add to score if answer is correct.
            if Word1 == "smart" && Word2 == "bright" && Word3 == "intelligent"
                score = 1;
            end
    end

    %Function to determine success or failure in completing puzzle based on score.
    FormWordsSolved = PuzResult(score);
    
    %If all puzzles have now been solved, take player to ending of game.
    if NumPatternSolved && FormWordsSolved && WordSearchSolved
        Action = "";
        return
    end

    %Function to display game options and request input to continue.
    Action = Game_Options();

end
    