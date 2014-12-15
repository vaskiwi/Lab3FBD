class MetroController < ApplicationController
  def form


  	$twitter = Twitter::REST::Client.new do |config|
  	config.consumer_key        = "aUv3DpsMY87r2nzLjdkbqnN8r"
  	config.consumer_secret     = "OA3WfKjuiDxnRDJ6LX4UVxFdr3GmuUjnPyFZFCjat820lUwmDK"
  	config.access_token        = "95419702-5ZyRqFw8YF2XO2reNjG2KYaWQXcQx5QP0gs3jUOmW"
  	config.access_token_secret = "IoGjzfB1P6w20pEZeeFXuxxe9QaDqDpLEfPVEQEwABKaz"
  end


@db = SQLite3::Database.open "lab2.db"
@db.execute "DROP TABLE Metro"
@db.execute "CREATE TABLE Metro(tweet VARCHAR, aprobacion TEXT)"

topics1 = ["metro -rt","mal"]              
@tweets=$twitter.search(topics1.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics2 = ["metro -rt","hoyo"]              
@tweets2=$twitter.search(topics2.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics3 = ["metro -rt","weas"]              
@tweets3=$twitter.search(topics3.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics4 = ["metro -rt","weaas"]              
@tweets4=$twitter.search(topics4.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics5 = ["metro -rt","pico"]              
@tweets5=$twitter.search(topics5.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics6 = ["metro -rt","buen","servicio"]              
@tweets6=$twitter.search(topics6.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect

topics7 = ["metro -rt","excelente"]              
@tweets7=$twitter.search(topics7.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect

topics8 = ["metro -rt","perfecto"]              
@tweets8=$twitter.search(topics8.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect

topics9 = ["metro -rt","hermoso"]              
@tweets9=$twitter.search(topics9.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect
end
end
