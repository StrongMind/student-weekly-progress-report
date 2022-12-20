FactoryBot.define do
  factory :course do
    student_id { Faker::Number.number(digits:10) }
    course_id { Faker::Number.number(digits:10) }
  end
end
