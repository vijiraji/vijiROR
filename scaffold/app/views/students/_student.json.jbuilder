json.extract! student, :id, :name, :age, :gender, :phone, :email, :city, :pincode, :state, :country, :created_at, :updated_at
json.url student_url(student, format: :json)
