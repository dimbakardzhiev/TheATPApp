require 'csv'
namespace :awad do
  desc "TODO"
  task seed_awad: :environment do

  	CSV.foreach('lib/assets/players.csv', :headers => true) do |row|
  		puts row.inspect

  		Player.create!(
  		first_name: row[0],
  		last_name: row[1],
  		dob: row[2],
  		nationality: row[3],
      residence: row[4],
      turned_pro: row[5],
      weight: row[6],
      height: row[7],
      hand: row[8],
      backhand: row[9],
      coach: row[10]
  		)
  	end

  	CSV.foreach('lib/assets/rankings.csv', :headers => true) do |r|
  		puts r.inspect

  		Ranking.create!(
  		month: r[0],
  		year: r[1],
  		ranking: r[2],
  		player_id: r[3],
  		points: r[4]
  		)
  	end
  end

end
