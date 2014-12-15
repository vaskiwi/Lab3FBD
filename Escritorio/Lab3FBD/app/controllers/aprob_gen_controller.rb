class AprobGenController < ApplicationController
  def form
  	$twitter = Twitter::REST::Client.new do |config|
  config.consumer_key        = "aUv3DpsMY87r2nzLjdkbqnN8r"
  config.consumer_secret     = "OA3WfKjuiDxnRDJ6LX4UVxFdr3GmuUjnPyFZFCjat820lUwmDK"
  config.access_token        = "95419702-5ZyRqFw8YF2XO2reNjG2KYaWQXcQx5QP0gs3jUOmW"
  config.access_token_secret = "IoGjzfB1P6w20pEZeeFXuxxe9QaDqDpLEfPVEQEwABKaz"
end

#####Se crea a la nueva base de datos y se desechan las tablas, en caso que aun no###### 
#####existan arrojara un error que no afecta la correcta ejecucion del programa#####

db = SQLite3::Database.new "lab2.db"
db.execute "DROP TABLE Metro"
db.execute "DROP TABLE Micro"
db.execute "DROP TABLE Taxi"
db.execute "DROP TABLE Colectivo"
db.execute "DROP TABLE Transporte"

rescue SQLite3::Exception => e

 puts "Error"
 puts e

ensure

####Creación de las tablas que se utilizaran#########

db.execute "CREATE TABLE Metro(tweet VARCHAR, aprobacion TEXT)"
db.execute "CREATE TABLE Micro(tweet VARCHAR, aprobacion TEXT)"
db.execute "CREATE TABLE Taxi(tweet VARCHAR, aprobacion TEXT)"
db.execute "CREATE TABLE Colectivo(tweet VARCHAR, aprobacion TEXT)"
db.execute "CREATE TABLE Transporte(transporte TEXT, uso FLOAT, aprobacion FLOAT, rechazo FLOAT)"

###Selección de los topicos a buscar##########

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

#######Una vez encontrados los topicos se insertan en las tablas#######

@tweets.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Metro VALUES('"+tweet.text+"','rechazo')"
end

@tweets2.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Metro VALUES('"+tweet.text+"','rechazo')"
end

@tweets3.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Metro VALUES('"+tweet.text+"','rechazo')"
end

@tweets4.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Metro VALUES('"+tweet.text+"','rechazo')"
end

@tweets5.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Metro VALUES('"+tweet.text+"','rechazo')"
end

@tweets6.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Metro VALUES('"+tweet.text+"','aceptacion')"
end

@tweets7.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Metro VALUES('"+tweet.text+"','aceptacion')"
end

@tweets8.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Metro VALUES('"+tweet.text+"','aceptacion')"
end

@tweets9.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Metro VALUES('"+tweet.text+"','aceptacion')"
end

@tweets10.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Micro VALUES('"+tweet.text+"','rechazo')"
end

@tweets11.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Micro VALUES('"+tweet.text+"','rechazo')"
end

@tweets12.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Micro VALUES('"+tweet.text+"','rechazo')"
end

@tweets13.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Micro VALUES('"+tweet.text+"','rechazo')"
end

@tweets14.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Micro VALUES('"+tweet.text+"','rechazo')"
end

@tweets15.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Micro VALUES('"+tweet.text+"','aceptacion')"
end

@tweets16.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Micro VALUES('"+tweet.text+"','aceptacion')"
end

@tweets17.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Micro VALUES('"+tweet.text+"','aceptacion')"
end

@tweets18.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Micro VALUES('"+tweet.text+"','aceptacion')"
end

@tweets19.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Taxi VALUES('"+tweet.text+"','rechazo')"
end

@tweets20.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Taxi VALUES('"+tweet.text+"','rechazo')"
end

@tweets21.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Taxi VALUES('"+tweet.text+"','rechazo')"
end

@tweets22.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Taxi VALUES('"+tweet.text+"','rechazo')"
end

@tweets23.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Taxi VALUES('"+tweet.text+"','rechazo')"
end

@tweets24.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Taxi VALUES('"+tweet.text+"','aceptacion')"
end

@tweets25.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Taxi VALUES('"+tweet.text+"','aceptacion')"
end

@tweets26.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Taxi VALUES('"+tweet.text+"','aceptacion')"
end

@tweets27.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Taxi VALUES('"+tweet.text+"','aceptacion')"
end

@tweets28.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Colectivo VALUES('"+tweet.text+"','rechazo')"
end

@tweets29.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Colectivo VALUES('"+tweet.text+"','rechazo')"
end

@tweets30.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Colectivo VALUES('"+tweet.text+"','rechazo')"
end

@tweets31.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Colectivo VALUES('"+tweet.text+"','rechazo')"
end

@tweets32.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Colectivo VALUES('"+tweet.text+"','rechazo')"
end

@tweets33.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Colectivo VALUES('"+tweet.text+"','aceptacion')"
end

@tweets34.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Colectivo VALUES('"+tweet.text+"','aceptacion')"
end

@tweets35.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Colectivo VALUES('"+tweet.text+"','aceptacion')"
end

@tweets36.each do |tweet|
  puts "Tweet: " + tweet.text
  db.execute "INSERT INTO Colectivo VALUES('"+tweet.text+"','aceptacion')"
end

####Se procede a realizar las consultas SQL###########

countmetro=db.execute "SELECT COUNT (*) FROM Metro"

totalmetro=0

countmetro.each do |i|
        totalmetro=i
end

totalaprobmetro=0.1

aprobmetro=db.execute "SELECT COUNT(aprobacion) FROM Metro
WHERE aprobacion='aceptacion'"

aprobmetro.each do |i|
	totalaprobmetro=i
end

totalreprobmetro=0.1

reprobmetro=db.execute "SELECT COUNT(aprobacion) FROM Metro
WHERE aprobacion='rechazo'"

reprobmetro.each do |i|
	totalreprobmetro=i
end

@porcentajeaprobmetro=0

@porcentajeaprobmetro=((totalaprobmetro[0].to_f)/(totalmetro[0].to_f))*100

@porcentajereprobmetro=0

@porcentajereprobmetro=((totalreprobmetro[0].to_f)/(totalmetro[0].to_f))*100

countmicro=db.execute "SELECT COUNT (*) FROM Micro"

totalmicro=0

countmicro.each do |i|
        totalmicro=i
end

totalaprobmicro=0.1

aprobmicro=db.execute "SELECT COUNT(aprobacion) FROM Micro
WHERE aprobacion='aceptacion'"

aprobmicro.each do |i|
	totalaprobmicro=i
end

totalreprobmicro=0.1

reprobmicro=db.execute "SELECT COUNT(aprobacion) FROM Micro
WHERE aprobacion='rechazo'"

reprobmicro.each do |i|
	totalreprobmicro=i
end

@porcentajeaprobmicro=0

@porcentajeaprobmicro=((totalaprobmicro[0].to_f)/(totalmicro[0].to_f))*100

@porcentajereprobmicro=0

@porcentajereprobmicro=((totalreprobmicro[0].to_f)/(totalmicro[0].to_f))*100




counttaxi=db.execute "SELECT COUNT (*) FROM Taxi"

totaltaxi=0

counttaxi.each do |i|
        totaltaxi=i
end

totalaprobtaxi=0.1

aprobtaxi=db.execute "SELECT COUNT(aprobacion) FROM Taxi
WHERE aprobacion='aceptacion'"

aprobtaxi.each do |i|
	totalaprobtaxi=i
end

totalreprobtaxi=0.1

reprobtaxi=db.execute "SELECT COUNT(aprobacion) FROM Taxi
WHERE aprobacion='rechazo'"

reprobtaxi.each do |i|
	totalreprobtaxi=i
end

@porcentajeaprobtaxi=0

@porcentajeaprobtaxi=((totalaprobtaxi[0].to_f)/(totaltaxi[0].to_f))*100

@porcentajereprobtaxi=0

@porcentajereprobtaxi=((totalreprobtaxi[0].to_f)/(totaltaxi[0].to_f))*100

countcolectivo=db.execute "SELECT COUNT (*) FROM Colectivo"

totalcolectivo=0

countcolectivo.each do |i|
        totalcolectivo=i
end

totalaprobcolectivo=0.1

aprobcolectivo=db.execute "SELECT COUNT(aprobacion) FROM Colectivo
WHERE aprobacion='aceptacion'"

aprobcolectivo.each do |i|
	totalaprobcolectivo=i
end

totalreprobcolectivo=0.1

reprobcolectivo=db.execute "SELECT COUNT(aprobacion) FROM Colectivo
WHERE aprobacion='rechazo'"

reprobcolectivo.each do |i|
	totalreprobcolectivo=i
end

@porcentajeaprobcolectivo=0

@porcentajeaprobcolectivo=((totalaprobcolectivo[0].to_f)/(totalcolectivo[0].to_f))*100

@porcentajereprobcolectivo=0

@porcentajereprobcolectivo=((totalreprobcolectivo[0].to_f)/(totalcolectivo[0].to_f))*100

totaltransporte=0.1

totaltransporte=totalmetro[0]+totalmicro[0]+totaltaxi[0]+totalcolectivo[0]

@usometro=((totalmetro[0].to_f)/(totaltransporte.to_f))*100

@usomicro=((totalmicro[0].to_f)/(totaltransporte.to_f))*100

@usotaxi=((totaltaxi[0].to_f)/(totaltransporte.to_f))*100

@usocolectivo=((totalcolectivo[0].to_f)/(totaltransporte.to_f))*100

#####Se insertan en la tabla transporte los valores de nuestro interes##################

db.execute "INSERT INTO Transporte VALUES('metro','"+@usometro.to_s+"','"+@porcentajeaprobmetro.to_s+"','"+@porcentajereprobmetro.to_s+"')"

db.execute "INSERT INTO Transporte VALUES('micro','"+@usomicro.to_s+"','"+@porcentajeaprobmicro.to_s+"','"+@porcentajereprobmicro.to_s+"')"

db.execute "INSERT INTO Transporte VALUES('taxi','"+@usotaxi.to_s+"','"+@porcentajeaprobtaxi.to_s+"','"+@porcentajereprobtaxi.to_s+"')"

db.execute "INSERT INTO Transporte VALUES('colectivo','"+@usocolectivo.to_s+"','"+@porcentajeaprobcolectivo.to_s+"','"+@porcentajereprobcolectivo.to_s+"')"


  end
end
