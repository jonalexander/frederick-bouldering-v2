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
