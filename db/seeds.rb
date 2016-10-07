# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# main_areas

catoctin = MainArea.create(
  name: 'Catoctin',
  description: 'Catoctin Mountain Park is located in Thurmont, Maryland on the north side of route 77 just west of town. While climbing access has been restricted to certain parts of the park by permit only, developed bouldering can be found all around the park. As of 2016 bouldering is now permitted within the park. The rock found here is almost always greenstone with the occasional patch of quartzite. The rock quality spans a wide range from complete choss to some of the best in the area.',
  location: 'From Thurmont, Maryland head west on route 77 to Park Central Road on the north side of the road. This road is typically closed from December to March. There are many smaller areas within the park itself. Those access at the higher elevations and off of the main road can be accessed by foot in the winter and there are many other climbing options that can be accessed directly from route 77.'
  )

highballs = SubArea.create(
  name: 'Roadside Highballs / Crows Nest',
  description: 'The Roadside Highballs consist of a handfull of outcroppings on the very southern edge of Catoctin. The rock here is mostly greenstone at the lower level with a mix of greenstone and quartzite at higher elevations. Despite the name, the highballs are also surrounded by a number of shorter problems. There are some hidden gems around here that are found deeper in the woods but need a bit of scrubbing.',
  location: 'The main attraction, Walk Into The Sky V7, is found on the north side of route 77 and west of the Crows Nest campground. The overhanging wall is clearly visible from the road. You can access this area by parking at the campground and following a trail west or parking in a roadside pull-off along 77 and crossing the shallow creek to intercept the trail.',
  main_area_id: catoctin.id
  )

neonpitstain = Bproblem.create(
  name: 'Neon Pit Stain',
  grade: 'V5',
  description: 'Sit start on a combination of small crimps well left of the right facing arete. Move up through side pulls to good horizontal slots and finish up and out right on sharp jugs. ',
  location: 'West of Walk Into The Sky in a tall west-facing formation. The formation is clearly visible from the trail.',
  sub_area_id: highballs.id
)

walkintothesky = Bproblem.create(
  name: 'Walk Into The Sky',
  grade: 'V7',
  description: 'Classic highball on quality rock. Stand start in the center of the looming face before moving up and left to set up for a huge throw to a large flat ledge. Finish straight up. Safe landing with a couple pads.',
  location: 'Right off the trail coming from Crows Nest campground and running west along the creek on the north side of route 77. Visisble from the trail and road.',
  sub_area_id: highballs.id
)
