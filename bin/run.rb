require_relative '../config/environment'

cli = CommandLineInterface.new
cli.welcome
cli.new_user
cli.select_a_player
cli.team_delete

