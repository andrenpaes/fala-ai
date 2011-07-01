# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
require 'csv'
CSV.readlines('palestras.csv') do |row|
  Palestra.create(:nome => row[0], :palestrante => row[3], :data => row[1], :horario => row[2])
end
