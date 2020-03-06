class CommandLineInterface
# #1. coach is welcomed to the draft!
    def welcome
        prompt = TTY::Prompt.new
        @player_draft = prompt.ask(
            "Coaches! Welcome to the the world's biggest football draft!"
        )
    end

#2. new User
    def new_user 
       puts "Please enter your name, and team to start the draft?"
       @new_coach_name = gets.chomp
       @new_team = gets.chomp
       @coach = Coach.create(coach_name: @new_coach_name, team_name: @new_team)
       puts "please enter your password"
       @coach_password= gets.chomp
    end

#3. Select and Update player to the team
    def select_a_player
        
        prompt = TTY::Prompt.new
        select_player = prompt.select("Select a player to draft!" , Player.all.map{|player| player.player_name})
        @found_player = Player.find_by(player_name: select_player)
        @draft = Draft.new(coach_id: @coach.id, player_id: @found_player.id)
        @draft.save

    end

#3. Deletes player
    def team_delete
        puts "Let us delete a player you don't not like"
        coach_delete = Draft.find_by(player_id: @found_player.id)
        coach_delete.destroy
    end
    














##################################################
# #1. coach is welcomed to the draft!

#     def welcome
#         prompt = TTY::Prompt.new
#         @player_draft = prompt.ask(
#             "Coaches! Welcome to the the world's biggest football draft!"
#         )
#     end
# #new user
#     def new_user 
#             puts "Please enter your name, and team to start the draft?"
#        @new_coach_name = gets.chomp
#        @new_team = gets.chomp
#        @coach = Coach.create(coach_name: @new_coach_name, team_name: @new_team)
#     end
#     def select_a_player
#         prompt = TTY::Prompt.new
#         select_player = prompt.select("Select a player" , Player.all.map{|player| player.player_name})
#         Draft.new(coach_id: @coach.id, player_id: select_a_player.id)
#     end
#     def update_coach_list
     
#     end
####################################################

    # a. select a team
        # given a list of team to choose
        #picks through list of teams 
            #assigns a player to a team 
        #lists players drafted by coach in team


    # b. create a team
        #creates a new coach with coach_ name and team_name
        #picks through list of teams 
            #assigns a player to a team 
        #updates players drafted by coach in team
            #exits the draft (see exit prompt)

    # c. deletes a team a player through team
        #lists players that have been drafted
        #Clicks on a player to drop
        #deletes the player
            #exits the draft (see exit prompt)

#3. exiting the draft 
    #prompt to exit 
    #if yes, prompt GOOOOLLAASSOO! see you next year!
    #if no, prompt would you like to conntinue the draft?
        #picks through list of teams 
            #assigns a player to a team 
            #lists team players
    
    



#################
# #2. coach is asked is they want to select a team, or create their team
# def coach_response
#     prompt = TTY::Prompt.new
#     new_team = @player_draft 
#     if @player_draft == "yes" 
#          # a. select a team
#         team_name = prompt.select("Pick a team", Coach.all.map{|coach| coach.team_name}.uniq)
#         #given a list of team to choose

#     # b. create a team
#     elsif @player_draft == "no"
#         prompt.yes?('I want to create my team')
#         new_team = gets.chomp
#         Coach.create(team_name: new_team)
#     end

end