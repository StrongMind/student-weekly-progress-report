json.extract! student, :id, :name, :last_login, :course, :created_at, :updated_at
json.url student_url(student, format: :json)
