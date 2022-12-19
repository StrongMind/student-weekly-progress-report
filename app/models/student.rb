class Student < ApplicationRecord
  belongs_to :teacher
  has_many :reports
end
