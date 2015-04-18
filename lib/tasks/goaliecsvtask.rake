namespace :goaliecsvtask do

	task :mytask => :environment do
	
		require 'csv'
		
		CSV.foreach('/tmp/Goalie_Stats-2013.csv', :headers => true) do |row|
			#Goalie.create!(row.to_hash)
			goalie = Goalie.new ({
			playoffs: 	row[0],
			year:   	row[1],
			player: 	row[2], 
			age:  		row[3],
			team: 		row[4],
			gp:  		row[5],
			w:  		row[6],
			l:    		row[7],
			ot:    		row[8],
			ga:  		row[9],
			sa:  		row[10],
			sv:  		row[11],
			svp:  		row[12],
			gaa: 		row[13],
			so: 		row[14],
			minutes: 	row[15],
			g: 			row[16],
			a:  		row[17],
			pts:  		row[18],
			pim: 		row[19],
			firstname: 	row[20],
			lastname: 	row[21] 
			})
			goalie.save!
		
  		end
  	end

  	task :secondtask => :environment do

  		require 'csv'

  		CSV.foreach('/tmp/teams.csv', :headers => true) do |row|
  		team = Team.new ({
  		year: 						row[0],
  		teamName:       			row[1],
  		leagueID: 					row[2],
  		teamID: 					row[3],
  		rank: 						row[4],
  		playoff: 					row[5],
  		games: 						row[6],
  		wins:  						row[7],
  		losses: 					row[8],
  		ties: 						row[9],
  		overTimeLosses: 			row[10],
  		points: 					row[11],
  		shootOutWins: 				row[12],
  		shootOutLosses: 			row[13], 
  		goalsFor: 					row[14],
  		goalsAgainst: 				row[15],
  		pim: 						row[16],
  		powerPlayGoals: 			row[17],
  		powerPlayChances: 			row[18],
  		shorthandedGoalsAgainst: 	row[19],
  		powerPlayGoalsAgainst: 		row[20],
  		penaltyKillChances: 		row[21],
  		shorthandedGoalsFor: 		row[22]
  		})
  		team.save!
  		end
  	end
end
