namespace :cart do
  desc "TODO"
  task seed_cart: :environment do

  	Product.delete_all
  	Product.create(name: " Slazenger Wimbledon Ultra Vis Hydroguard tennis balls", 
  				   description: "The Slazenger Wimbledon Ultra Vis Hydroguard tennis balls are premium quality tennis balls that are designed to produce unrivalled levels of performance. These high quality Slazenger tennis balls offer unbelievable levels of visibility, widely considered the best in tennis.",
  				   price: 7.99)
  	Product.create(name: "Wilson Tour Junior Tennis Racket",
  				   description: "The Wilson Tour Junior Tennis Racket is engineered with a lightweight frame design with a soft gripped handle for a comfortable hold in your hand. This tennis racket is perfect for beginners of the game.",
  				   price: 17.99)
  end

end
