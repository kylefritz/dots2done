# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.delete_all

kyle = User.create({:name=>"Kyle Fritz", :email=>"kyle.p.fritz@gmail.com"})
nick = User.create({:name=>"Nick Crocker",:email=>"nicholascrocker@gmail.com"})

Task.delete_all

t1=Task.create({:name=>"learn chinese", :description=>"if china is taking over the world, i'd better learn some to fit in", :days_total=> 18, :days_complete=>6})
t2=Task.create({:name=>"water seedlings", :description=>"i just started some seedlings, i hope they don't die", :days_total=> 4, :days_complete=>4})
kyle.tasks<<[t1,t2]

t3=Task.create({:name=>"drink a glass of water", :description=>"it's good for your health and more acceptable than bleach to drink", :days_total=> 7, :days_complete=>0})
t4=Task.create({:name=>"go to the gym", :description=>"picks up chicks", :days_total=> 14, :days_complete=>10})
t5=Task.create({:name=>"eat dinner at home", :description=>"i like eatting out but i'll never learn to cook that way", :days_total=> 7, :days_complete=>3})
nick.tasks<<[t3,t4,t5]


