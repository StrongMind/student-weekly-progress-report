require 'faker'
namespace :load do
  desc "Load teachers, students, report data"
  task all: :environment do
    Teacher.delete_all
    puts('deleting all teachers')
    1.times do |i|
      name = Faker::App.name + i.to_s
      Teacher.create!(name: name, id: 1)
    end
    puts('creating teachers')

    Student.delete_all
    puts('deleting all students')
    40.times do |i|
      name = Faker::App.name + i.to_s
      missing_assignments = Faker::Number.between(from: 0, to: 3)
      last_login = Faker::Date.between(from: 2.days.ago, to: Date.today).strftime("%m/%d/%Y")
      Student.create!(name: name, last_login: last_login, teacher_id: 1, missing_assignments: missing_assignments)
    end
    puts('creating students')

    Course.delete_all
    puts('deleting all courses')
    courses = ['Math', 'Science', 'English', 'History', 'Art', 'Music', 'PE', 'Computer Science', 'Foreign Language']
    courses.each do |course|
      course = Course.create!(name: course, teacher_id: 1)
      course.students << Student.all
      course.save!
    end
    puts('creating courses')

    Student.all.each do |student|
      student.enrollments.each do |enrollment|
        enrollment.grade = Faker::Number.between(from: 59, to: 100)
        enrollment.save!
      end
      student.save!
    end

    # Course.all.each do |course|
    #   course.save!
    # end
    # Student.all.courses.each do |student_course|
    #   grade = Faker::Number.between(from: 0, to: 100)
    #   student_course.update(grade: grade)
    # end
    puts('adding grades to courses_students')
  end
end
