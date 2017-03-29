#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'sinatra/activerecord'

#Создание БД barbershop.db
set :database, "sqlite3:barbershop.db"

#Cоздание класса Client
class Client < ActiveRecord::Base
end
#Создание схемы БД в терминале "$ rake db:create_migration NAME=create_clients"

#Cоздание класса Stylist
class Stylist < ActiveRecord::Base
end
#Создание схемы БД в терминале "$ rake db:create_migration NAME=create_stylist"

#Миграция схем в БД "$ rake db:migrate"

get '/' do
	#Переменной @stylists присваивается массив данных произведенных коммандой ActiveRecord
	#из таблицы с сортировкой по дате создания
	#SELECT "stylists".* FROM "stylists" ORDER BY created_at DESC
	@stylists=Stylist.order "created_at DESC" 
	erb :index			
end