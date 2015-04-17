namespace :goaliecsvtask do

	task :mytask => :environment do
	
		require 'csv'
		
		CSV.foreach('/tmp/Goalie_Stats-2013.csv', :headers => true) do |row|
			#Goalie.create!(row.to_hash)
			goalie = Goalie.new ({
			playoffs: 	row[0],
			year:   	row[1],
			player: 	row[2], 
				})
		
  		end
  	end
end
