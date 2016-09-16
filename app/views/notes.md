user
id | name | email | password | avatar

bproblem
id | name | grade | sub_area_id | user_id | fa_id


sub_area
id | name | description | main_area_id

main_area
id | name | description

photo
id | title | description | bproblem_id | user_id

fa
id | name

default = unknown


user
- has many boulder problems
- has many photos

bproblem
- has many photos
- belongs to sub_area
- belongs to fa

fa
- has many bproblems

sub_area
- belongs to main_area

main_area
- has many subareas


TO-DO ============

* get top contributors for a main_area
 - go down through each boulder problem
 - to each FA of each problem and sort by most

* ensure parent doesnt have duplicate children (active record)
- has_many :invoices, :through => :enrollments, :uniq => true
- DEPRACATED.

* sub_area show page
- location beta
- place for topo image - on side, not a main component
- list of all problems
  + sort by grade / alphabetical

* sub_area index page

* bproblem show page
- name / grade
- breadcrumbs to sub_area / main_area
- Location

* refactor landing page to SCALE for mobile

* main_area page -- add links to add sub_area
