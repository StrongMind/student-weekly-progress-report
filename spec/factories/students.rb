FactoryBot.define do
  factory :student do
    name { "MyString" }
    last_login { "2022-12-19 15:09:38" }
    course { "MyText" }
    teacher_id { 1 }
    missing_assignments { 2 }
  end
end
