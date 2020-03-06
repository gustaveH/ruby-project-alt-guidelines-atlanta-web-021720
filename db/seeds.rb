require 'faker'
coach_1 = Coach.find_or_create_by(coach_name: Faker::Sports::Football.coach, team_name: Faker::Sports::Football.team)
coach_2 = Coach.find_or_create_by(coach_name: Faker::Sports::Football.coach, team_name: Faker::Sports::Football.team)
coach_3 = Coach.find_or_create_by(coach_name: Faker::Sports::Football.coach, team_name: Faker::Sports::Football.team)
coach_4 = Coach.find_or_create_by(coach_name: Faker::Sports::Football.coach, team_name: Faker::Sports::Football.team)
coach_5 = Coach.find_or_create_by(coach_name: Faker::Sports::Football.coach, team_name: Faker::Sports::Football.team)

player_1 = Player.find_or_create_by(
    player_name: Faker::Sports::Football.player,
    age: Faker::Number.between(from: 1, to: 10),
    champions_won: Faker::Number.between(from: 1, to: 6 ),
    player_ballon_number: Faker::Number.between(from: 1, to: 5 ),
    goals: Faker::Number.between(from: 1, to: 1000 )
    )

player_2 = Player.find_or_create_by(
    player_name: Faker::Sports::Football.player,
    age: Faker::Number.between(from: 20, to: 35),
    champions_won: Faker::Number.between(from: 1, to: 6 ),
    player_ballon_number: Faker::Number.between(from: 1, to: 5 ),
    goals: Faker::Number.between(from: 1, to: 1000 )
    )
player_3 = Player.find_or_create_by(
    player_name: Faker::Sports::Football.player,
    age: Faker::Number.between(from: 20, to: 35),
    champions_won: Faker::Number.between(from: 1, to: 6 ),
    player_ballon_number: Faker::Number.between(from: 1, to: 5 ),
    goals: Faker::Number.between(from: 1, to: 1000 )
    )
player_4 = Player.find_or_create_by(
    player_name: Faker::Sports::Football.player,
    age: Faker::Number.between(from: 20, to: 35),
    champions_won: Faker::Number.between(from: 1, to: 6 ),
    player_ballon_number: Faker::Number.between(from: 1, to: 5 ),
    goals: Faker::Number.between(from: 1, to: 1000 )
    )

player_5 = Player.find_or_create_by(
    player_name: Faker::Sports::Football.player,
    age: Faker::Number.between(from: 20, to: 35),
    champions_won: Faker::Number.between(from: 1, to: 6 ),
    player_ballon_number: Faker::Number.between(from: 1, to: 5 ),
    goals: Faker::Number.between(from: 1, to: 1000 )
    )


draft_1 = Draft.find_or_create_by(coach_id: coach_1.id, player_id: player_2.id)
draft_2 = Draft.find_or_create_by(coach_id: coach_3.id, player_id: player_5.id)
draft_3 = Draft.find_or_create_by(coach_id: coach_2.id, player_id: player_4.id)
draft_4 = Draft.find_or_create_by(coach_id: coach_4.id, player_id: player_1.id)
draft_5 = Draft.find_or_create_by(coach_id: coach_4.id, player_id: player_3.id)

