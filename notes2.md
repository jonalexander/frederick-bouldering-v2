

* need Image model with bproblem_id association

* could add image form on bproblem show page

* could add image on separate image/new path
* bproblem show controller iterates through all photos w/ bproblem_id and passes to view


* X ADD Image model // source - user_id - bproblem_id
* X ADD Image controller

* WILL need Image views

* X ADD ImageUploader to Image model

* ADD image upload form_field on NEW BOULDER PROBLEM FORM
* X ADD accepts_nested_attributes_for :images ON Bproblem
* MODIFY Bproblem Controller to handle new association
 --- @post_attachment = @post.post_attachments.create!(:avatar => a)

* remember--- 'source'  on image model is just a string on the table
but it has a bunch of namespaced items to utilize..

make :source = the image upload



* refactor bproblem controller to build off the subarea
