json.extract! report, :id, :date, :comments, :created_at, :updated_at
json.url report_url(report, format: :json)
