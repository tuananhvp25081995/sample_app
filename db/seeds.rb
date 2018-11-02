User.create!(name: "Admin", email: "admin@gmail.com",
  password: "tuananh", password_confirmation: "tuananh", admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example#{n+1}@gmail.com"
  password = "123456789"
  User.create!(name:  name, email: email, password: password,
    password_confirmation: password)
end
