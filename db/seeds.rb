# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Price.delete_all
City.delete_all
Country.delete_all
User.delete_all
Pricelist.delete_all

country = Country.create! name: 'Wonderland'
city_1 = City.create! name: 'Wonerville_1', country_id: country.id
city_2 = City.create! name: 'Wonerville_2', country_id: country.id
city_3 = City.create! name: 'Wonerville_3', country_id: country.id

pricelist = Pricelist.create! name: 'Basic'

Price.create! pricelist_id: pricelist.id, city_id: city_1.id, amount: 5.56
Price.create! pricelist_id: pricelist.id, city_id: city_2.id, amount: 7.78
Price.create! pricelist_id: pricelist.id, city_id: city_3.id, amount: 12.02

User.create! name: 'Customer', balance: 50, pricelist_id: pricelist.id