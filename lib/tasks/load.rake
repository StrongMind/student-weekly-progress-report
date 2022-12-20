require 'faker'
namespace :load do
  desc "Load teachers, students, report data"
  task all: :environment do
    Teacher.delete_all
    puts('deleting all teachers')
    1.times do |i |
      name = Faker::App.name + i.to_s
      Teacher.create!(name: name, id: 1)
    end
    puts('creating teachers')

    Student.delete_all
    puts('deleting all students')
    40.times do|i |
      name = Faker::App.name + i.to_s
      last_login = Faker::Date.between(from: 2.days.ago, to: Date.today)
      Student.create!(name: name, last_login: last_login, teacher_id: 1 )
    end
    puts('creating students')


  end
end