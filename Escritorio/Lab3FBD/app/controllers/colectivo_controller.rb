class ColectivoController < ApplicationController
  def form
  	$twitter = Twitter::REST::Client.new do |config|
  	config.consumer_key        = "aUv3DpsMY87r2nzLjdkbqnN8r"
  	config.consumer_secret     = "OA3WfKjuiDxnRDJ6LX4UVxFdr3GmuUjnPyFZFCjat820lUwmDK"
  	config.access_token        = "95419702-5ZyRqFw8YF2XO2reNjG2KYaWQXcQx5QP0gs3jUOmW"
  	config.access_token_secret = "IoGjzfB1P6w20pEZeeFXuxxe9QaDqDpLEfPVEQEwABKaz"
  end
  
@db = SQLite3::Database.open "lab2.db"
@db.execute "DROP TABLE Colectivo"
@db.execute "CREATE TABLE Colectivo(tweet VARCHAR, aprobacion TEXT)"

topics28 = ["colectivo -rt","mal"]              
@tweets28=$twitter.search(topics28.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics29 = ["colectivo -rt","hoyo"]              
@tweets29=$twitter.search(topics29.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics30 = ["colectivo -rt","weas"]              
@tweets30=$twitter.search(topics30.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics31 = ["colectivo -rt","weaas"]              
@tweets31=$twitter.search(topics31.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics32 = ["colectivo -rt","pico"]              
@tweets32=$twitter.search(topics32.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect 

topics33 = ["colectivo -rt","buen","servicio"]              
@tweets33=$twitter.search(topics33.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect

topics34 = ["colectivo -rt","excelente"]              
@tweets34=$twitter.search(topics34.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect

topics35 = ["colectivo -rt","perfecto"]              
@tweets35=$twitter.search(topics35.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect

topics36 = ["colectivo -rt","hermoso"]              
@tweets36=$twitter.search(topics36.join(","), {:lang => "es",:geocode => "-33.45,-70.66,15km",:result_type => "recent"}).take(100).collect
  end
end
