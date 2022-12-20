json.extract! course, :id, :grade, :letter_grade, :name, :created_at, :updated_at
json.url course_url(course, format: :json)
