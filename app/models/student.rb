class Student < ApplicationRecord
  belongs_to :teacher
  has_many :reports
  has_and_belongs_to_many :courses
end
