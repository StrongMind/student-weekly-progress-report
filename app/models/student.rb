class Student < ApplicationRecord
  belongs_to :teacher
  has_many :reports

  has_many :enrollments
  has_many :courses, :through => :enrollments
end
