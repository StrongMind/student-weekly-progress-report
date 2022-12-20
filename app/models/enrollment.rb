class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  def letter_grade
    if grade >= 90
      "A"
    elsif grade >= 80
      "B"
    elsif grade >= 70
      "C"
    elsif grade >= 60
      "D"
    else
      "F"
    end
  end

end
