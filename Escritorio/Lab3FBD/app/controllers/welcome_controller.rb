class WelcomeController < ApplicationController
  def index
    @limite = 10
    @mensaje = 'Laboratorio 3 FBD'


#####Se escriben los codigos de la aplicacion de Twitter creada previamente#######

  db = SQLite3::Database.new "lab2.db"
  db.execute "DROP TABLE Metro"
	db.execute "DROP TABLE Micro"
	db.execute "DROP TABLE Taxi"
	db.execute "DROP TABLE Colectivo"
	db.execute "DROP TABLE Transporte"
  db.execute "CREATE TABLE Metro(tweet VARCHAR, aprobacion TEXT)"
	db.execute "CREATE TABLE Micro(tweet VARCHAR, aprobacion TEXT)"
	db.execute "CREATE TABLE Taxi(tweet VARCHAR, aprobacion TEXT)"
	db.execute "CREATE TABLE Colectivo(tweet VARCHAR, aprobacion TEXT)"
	db.execute "CREATE TABLE Transporte(transporte TEXT, uso FLOAT, aprobacion FLOAT, rechazo FLOAT)"
end
  

end
