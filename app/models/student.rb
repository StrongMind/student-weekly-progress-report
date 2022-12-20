class Student < ApplicationRecord
  belongs_to :teacher
  has_many :reports

  has_many :enrollments
  has_many :courses, :through => :enrollments

  def at_risk
    if missing_assignments >= 3
      true
    else
      false
    end
  end
end
