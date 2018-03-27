# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

User.destroy_all
Player.destroy_all
Ranking.destroy_all
Product.destroy_all

User.create!(name:  "Admin",
             email: "admin@theatpapp.com",
             password:              "Password",
             password_confirmation: "Password",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
             

5.times do |n|
  name  = Faker::Name.name
  email = "email-#{n+1}@theatpapp.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

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

    Product.create(name: " Slazenger Wimbledon Ultra Vis Hydroguard tennis balls", 
             description: "The Slazenger Wimbledon Ultra Vis Hydroguard tennis balls are premium quality tennis balls that are designed to produce unrivalled levels of performance. These high quality Slazenger tennis balls offer unbelievable levels of visibility, widely considered the best in tennis.",
             price: 7.99)
    Product.create(name: "Wilson Tour Junior Tennis Racket",
             description: "The Wilson Tour Junior Tennis Racket is engineered with a lightweight frame design with a soft gripped handle for a comfortable hold in your hand. This tennis racket is perfect for beginners of the game.",
             price: 17.99)