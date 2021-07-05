# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Sravan", email: "shashil@promptcloud.com",
            image: "image3", admin: true, activated: true,
            activated_at: Time.zone.now,
            password: "sravan777", password_confirmation: "sravan777")

begin
    99.times do |n|
        name = Faker::Name.name[0, 18]
        email = "example#{n}@promptcloud.com"
        password = "password"
        image = "image#{((n+1)%3 + 1)}"
        User.create!(name: name, email: email, image: image,
            activated: true, activated_at: Time.zone.now,
            password: password, password_confirmation: password)
    end
rescue => exception
    print "exception here: "
    puts exception
end