FactoryBot.define do
  factory :enrollment do
    grade { 1.5 }
    student { nil }
    course { nil }
  end
end
