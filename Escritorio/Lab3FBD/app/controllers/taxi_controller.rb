class TaxiController < ApplicationController
  def form

  	$twitter = Twitter::REST::Client.new do |config|
  	config.consumer_key        = "aUv3DpsMY87r2nzLjdkbqnN8r"
  	config.consumer_secret     = "OA3WfKjuiDxnRDJ6LX4UVxFdr3GmuUjnPyFZFCjat820lUwmDK"
  	config.access_token        = "95419702-5ZyRqFw8YF2XO2reNjG2KYaWQXcQx5QP0gs3jUOmW"
  	config.access_token_secret = "IoGjzfB1P6w20pEZeeFXuxxe9QaDqDpLEfPVEQEwABKaz"
  end

@db = SQLite3::Database.open "lab2.db"
@db.execute "DROP TABLE Taxi"
@db.execute "CREATE TABLE Taxi(tweet VARCHAR, aprobacion TEXT)"

topics19 = ["taxi -rt","mal"]              
@tweets19=$twitter.search(topics19.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics20 = ["taxi -rt","hoyo"]              
@tweets20=$twitter.search(topics20.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics21 = ["taxi -rt","weas"]              
@tweets21=$twitter.search(topics21.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics22 = ["taxi -rt","weaas"]              
@tweets22=$twitter.search(topics22.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics23 = ["taxi -rt","pico"]              
@tweets23=$twitter.search(topics23.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics24 = ["taxi -rt","buen","servicio"]              
@tweets24=$twitter.search(topics24.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect

topics25 = ["taxi -rt","excelente"]              
@tweets25=$twitter.search(topics25.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect

topics26 = ["taxi -rt","perfecto"]              
@tweets26=$twitter.search(topics26.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect

topics27 = ["taxi -rt","hermoso"]              
@tweets27=$twitter.search(topics27.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect
  end
end
