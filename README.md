# The ATP App README

The Formula One Statistics application uses open data from https://github.com/JeffSackmann/tennis_atp and  http://www.atpworldtour.com/ to
compare the rankings and ranking points of the current top 10 young mens tennis players (under age of 26) across the seasons 2013-2017. These are Grigor Dimitrov, Alexander Zverev, Dominic Thiem, David Goffin, Jack Sock, Lucas Pouille, Pablo Carreno Busta, Diego Sebastian Schwartzman, Nick Kyrgios and Milos Raonic.  

It does so by using
a range of line charts and bar. The application also makes us live twitter data, displaying the most recent tweets with #tennis in real time. It allows users to search players by surname and use an online store to purchase tennis items. In order to use the full functionality of the website, you need to sign up and activate your account via the link in the activation email. 

How to run:

- Locally:
    In the Terminal, navigate to the folder in which the application is installed and type the following commands:
    
    -bundle install to install all required gems
	-rails db:migrate to run the database migrations
	-rails db:seed to parse the data
	-rails server to start the Puma server
	
   Open a web-browser and navigate to localhost:3000 to open the application

- Deploying to Heroku
 
 	In the Terminal, navigate to the folder in which the application is installed and type the following commands:

 	- heroku login - to log in with your Heroku account credentials
 	- heroku create - creates a new empty application on Heroku, along with an associated empty Git repository
 	- git push heroku master - push the code from your local repository’s master branch to your heroku remote
 	- heroku run rake db:migrate - to run the database migrations
 	- heroku run rails:db seed - to parse the data
 	- heroku open - to launch the applicaiton on the Heroku server

•	The application was deployed to Heroku in production environment, using PostgreSQL
•	Access the application from any browser via the following url: https://awad-atp.herokuapp.com/