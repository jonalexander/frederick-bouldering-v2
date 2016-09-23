# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# main_areas

catoctin = MainArea.create(name: 'Catoctin', description: 'Catoctin National Park is located in Thurmont, Maryland.')

highballs = SubArea.create(name: 'Roadside Highballs', description: 'AKA Crows Nest')
dixie = SubArea.create(name: 'Dixie', description: 'Home of the Bullfrog Boulder')

catoctin.sub_areas << highballs
catoctin.sub_areas << dixie

catoctin.save

wits = Bproblem.create(name: 'Walk Into The Sky', grade: 'V7')
highballs.bproblems << wits
highballs.save
