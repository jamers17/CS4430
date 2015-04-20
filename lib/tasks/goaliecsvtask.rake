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

  		CSV.foreach('tmp/teams.csv', :headers => true) do |row|
  		team = Team.new ({
  		year: 						row[0],
  		teamName:       			row[18],
  		leagueID: 					row[1],
  		teamID: 					row[2],
  		rank: 						row[6],
  		playoff: 					row[7],
  		games: 						row[8],
  		wins:  						row[9],
  		losses: 					row[10],
  		ties: 						row[11],
  		overTimeLosses: 			row[12],
  		points: 					row[13],
  		shootOutWins: 				row[14],
  		shootOutLosses: 			row[15], 
  		goalsFor: 					row[16],
  		goalsAgainst: 				row[17],
  		pim: 						row[19],
  		powerPlayGoals: 			row[21],
  		powerPlayChances: 			row[22],
  		shorthandedGoalsAgainst: 	row[23],
  		powerPlayGoalsAgainst: 		row[24],
  		penaltyKillChances: 		row[25],
  		shorthandedGoalsFor: 		row[26]
  		})
  		team.save!
  		end
    end

    task :hoftask => :environment do
        require 'csv'

        CSV.foreach('tmp/HOF.csv', :headers => true) do |row|
          hof = Hof.new ({
                            name: row[0],
                            year: row[1],
                            category: row[2]
                        })
          hof.save!
        end
    end

    task :abbreviationstask => :environment do
        require 'csv'

        CSV.foreach('tmp/abbrev.csv', :headers => true) do |row|
          abbreviations = Abbreviations.new ({
                                                type: row[0],
                                                abbreviation: row[1],
                                                fullName: row[2]
                                            })
          abbreviations.save!
        end
    end

    task :miscawardstask => :environment do
        require 'csv'

       CSV.foreach('tmp/AwardsMisc.csv', :headers => true) do |row|
        miscawards = Miscawards.new ({
                                        name: row[0],
                                        award: row[1],
                                        year: row[2],
                                        league: row[3],
                                        note: row[4]
                                    })
        miscawards.save!
      end
    end

    task :teamvsteamtask => :environment do
        require 'csv'

      CSV.foreach('tmp/TeamVsTeam.csv', :headers => true) do |row|
        teamvsteam = Teamvsteam.new ({
                                        year: row[0],
                                        league: row[1],
                                        team: row[2],
                                        opposingTeam: row[3],
                                        wins: row[4],
                                        losses: row[5],
                                        ties: row[6],
                                        otl: row[7]
                                    })
        teamvsteam.save!

      end
    end

    task :seriesposttask => :environment do
        require 'csv'

        CSV.foreach('tmp/SeriesPost.csv', :headers => true) do |row|
          seriespost = Seriespost.new ({
                                          year: row[0],
                                          round: row[1],
                                          series: row[2],
                                          winnerTeam: row[3],
                                          winnerTeamLeague: row[4],
                                          loserTeam: row[5],
                                          loserTeamLeague: row[6],
                                          wins: row[7],
                                          losses: row[8],
                                          ties: row[9],
                                          winnersGoals: row[10],
                                          losersGoals: row[11],
                                      })
          seriespost.save!
        end

    end
end
