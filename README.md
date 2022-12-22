# Student Snapshot Report

## What? 

The Student Snapshot Report is a ruby on rails application designed to store and present student snapshot reports.
The student snapshot report is a teacher requested tool that shows the students progress up to the date of the report.

## Local Install

* Ruby 3.1.3 (rbenv preferred)
* Bundler
* Postgres

1. Run Bundler `bundle install`
2. Database `rails db:reset & rails db:migrate`
3. Rake Seed `rake load:all`

#### Known issues and fixes

before seeding your data (rake load:all) you'll need to run rails db:reset & rails db:migrate


## Run service locally 
1. ```bin/dev```

