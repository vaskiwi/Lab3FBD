class TransantiagoController < ApplicationController
  def form

  	$twitter = Twitter::REST::Client.new do |config|
  	config.consumer_key        = "aUv3DpsMY87r2nzLjdkbqnN8r"
  	config.consumer_secret     = "OA3WfKjuiDxnRDJ6LX4UVxFdr3GmuUjnPyFZFCjat820lUwmDK"
  	config.access_token        = "95419702-5ZyRqFw8YF2XO2reNjG2KYaWQXcQx5QP0gs3jUOmW"
  	config.access_token_secret = "IoGjzfB1P6w20pEZeeFXuxxe9QaDqDpLEfPVEQEwABKaz"
  end

  @db = SQLite3::Database.open "lab2.db"
	@db.execute "DROP TABLE Micro"
	@db.execute "CREATE TABLE Micro(tweet VARCHAR, aprobacion TEXT)"	

topics10 = ["transantiago -rt","mal"]              
@tweets10=$twitter.search(topics10.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics11 = ["transantiago -rt","hoyo"]              
@tweets11=$twitter.search(topics11.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics12 = ["transantiago -rt","weas"]              
@tweets12=$twitter.search(topics12.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics13 = ["transantiago -rt","weaas"]              
@tweets13=$twitter.search(topics13.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics14 = ["transantiago -rt","pico"]              
@tweets14=$twitter.search(topics14.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics15 = ["transantiago -rt","buen","servicio"]              
@tweets15=$twitter.search(topics15.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect

topics16 = ["transantiago -rt","excelente"]              
@tweets16=$twitter.search(topics16.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect

topics17 = ["transantiago -rt","perfecto"]              
@tweets17=$twitter.search(topics17.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect

topics18 = ["transantiago -rt","hermoso"]              
@tweets18=$twitter.search(topics18.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect

   end
end
