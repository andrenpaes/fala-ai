# encoding: UTF-8
require 'csv'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
CSV.foreach('palestras.csv') do |row|
  Palestra.create(:nome => row[0], :palestrante => row[3], :data => Date.strptime(row[1], '%m/%d/%Y'), :horario => row[2])
end