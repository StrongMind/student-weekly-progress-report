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

  def students_enrollments
    students = Student.all
    students.each do |student|
      student
      student.enrollments.each do |enrollment|
        enrollment
      end
    end
  end
end
