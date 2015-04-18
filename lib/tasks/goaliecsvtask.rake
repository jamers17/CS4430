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
			gp:  		row[4],
			w:  		row[5],
			l:    		row[6],
			ot:    		row[7],
			ga:  		row[8],
			sa:  		row[9],
			sv:  		row[10],
			svp:  		row[11],
			gaa: 		row[12],
			so: 		row[13],
			minutes: 	row[14],
			g: 			row[15],
			a:  		row[16],
			pts:  		row[17],
			pim: 		row[18],
			firstname: 	row[19],
			lastname: 	row[20], 
			})
			goalie.save!
		
  		end
  	end
end
