 to do --

* Configure CarrierWave & S3
  - basic maintenance and check up
  - Add S3 keys to heroku XX

  1. change storage from :file to :fog in photo_uploader.rb
  2. modify carrierwave.rb with fog/s3 credentials
  3. change fog-aws to fog in Gemfile

  * dotenv was not installed... ?
  1. add to Gemfile
  2. add 'require dotenv' / Dotenv.load into application.rb

* Add subareas is not working





additional features --
* add featured photo for problem and display rest as thumbs
* auth w/ google or fb
* sort bproblems index
* static about / landing
* refactor css
