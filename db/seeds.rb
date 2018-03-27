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

    Product.create(name: "Tennis Balls", 
            description: "Premium quality tennis balls",
            price: 7.99)
    Product.create(name: "Junior Tennis Racket",
            description: "Junior Tennis Racket, engineered with a lightweight frame design with a soft gripped handle for a comfortable hold in your hand.",
            price: 17.99)
    Product.create(name: "Tennis Racket",
            description: "Tennis Racket that offers incredible balance of power, shot placement and speed thanks to an ultra lightweight design and a large head size.",
            price: 74.99)
    Product.create(name: "Mens Tennis Shoes",
            description: "Tennis shoes, perfect for showing off your skills on the court, crafted with a lace fastening front with a padded ankle collar and a cushioned insole for a secure and comfortable fit,an adiwear non-marking outsole provides fantastic traction for those sudden turns and stops, completed with the classic adidas branding to the sides.",
            price: 34.99)
    Product.create(name: "Tennis Bag",
            description: "This tennis bag offers plenty of space for you to store all the equipment you need to have on hand. The racket compartment has space for up to two rackets and the side zip-pockets offer plenty of room for accessories, drinks and more. The adjustable shoulder straps and the carry handle make this bag exceptionally practical.",
            price: 50.90)
    Product.create(name: "Tennis Dress",
            description: "The tennis dress is made of elastic polyester refined with soft Dri-FIT material that removes sweat and thus provides you with dry wear comfort. You are guaranteed a comfortable fit with this clinging cut and the V-neck design.",
            price: 34.90)
    Product.create(name: "Tennis Grip",
            description: "Ideal for replacing or upgrading the grip on your tennis racket, featuring an absorbent design that is perfect for playing in humid conditions or for heavy perspiration.",
            price: 25.00)
    Product.create(name: "Tennis Ball Cart",
            description: "Perfect for creating a storage and carry solution that stands up well to heavy use. The lid provides easy no spill storage while the legs double as carry handles for effortless transport.",
            price: 24.99)
    Product.create(name: "Tennis String Set",
            description: "Designed for players that are looking for both power and comfort, they are also ideal for those hard hitting players that play from the back of the court.",
            price: 31.00)
    Product.create(name: "Tennis Net",
            description: "A versatile and easy to assemble powder coated metal frame that simply slots together. Complete with net and carry bag for ease of storage and transportation.",
            price: 44.00)
    Product.create(name: "Tennis Dampener",
            description: "Easily fits into your tennis strings to absorb shock.",
            price: 2.99)
    Product.create(name: "Mens Tennis Tshirt",
            description: "Crafted with Fibre dry technology that gives the fabric and light and soft feel while providing extreme durability from wear and tear along with the 360°C motion technology that removes seams from areas such as the underarm that allows the player a greater freedom of movement when it is needed out on the court.",
            price: 16.00)
    Product.create(name: "Ladies Tank Top",
            description: "Crafted from a lightweight elasticated fabric that is comfortable and flexible with a round neck, sleeveless design and sports bra insert for support.",
            price: 5.00)
    Product.create(name: "Ladies Tennis Shirt",
            description: "T Shirt has short sleeves and a round neck for a great look, as well as mesh panels to the back for extra comfort.",
            price: 5.00)
    Product.create(name: "Tennis Socks",
            description: "Ergonomically designed so you can have comfortable and irritation-free games.",
            price: 11.69)
    Product.create(name: "Tennis Wristband",
            description: "Terry loop fabric that absorbs moisture, embroidered swoosh design.",
            price: 4.95)
    Product.create(name: "Tennis Towel",
            description: "Made of 100 percent cotton and has an elegant embroidery. It comes with a very practical carry bag which makes it an ideal present.",
            price: 14.99)
    Product.create(name: "Racket Saver Tape",
            description: "Tape for added protection at the head of the racquet.",
            price: 3.95)
    Product.create(name: "Sports Bra",
            description: "The sports bra provides a medium support and feels very comfortable thanks to the ErgoStretch technology. The bra is also equipped with the EndoDry technology which ensures excess moisture is quickly removed for a dry and fresh feel",
            price: 40.95)
    Product.create(name: "Headband",
            description: "The band offers maximum comfort because it is made from flexible polyester fibres. Due to the waffle design, the headband ensures maximum sweat absorption.",
            price: 10.95)



