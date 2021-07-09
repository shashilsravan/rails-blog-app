# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# begin
#     99.times do |n|
#         name = Faker::Name.name[0, 18]
#         email = "example#{n}@promptcloud.com"
#         password = "password"
#         image = "image#{((n+1)%3 + 1)}"
#         User.create!(name: name, email: email, image: image,
#             activated: true, activated_at: Time.zone.now,
#             password: password, password_confirmation: password)
#     end
# rescue => exception
#     print "exception here: "
#     puts exception
# end

# begin
#     users = User.order(:created_at).take(6)
#     50.times do
#         title = Faker::Name.name[0, 18]
#         content = Faker::Lorem.sentence(word_count: 5)
#         users.each { |user| user.microposts.create!(title: title ,content: content) }
#     end
# rescue => exception
#     print "exception here: "
#     puts exception
# end


begin
    users = User.all
    user = users.first
    following = users[2..50]
    followers = users[3..40]
    following.each { |followed| user.follow(followed) }
    followers.each { |follower| follower.follow(user) }
rescue => exception
    print "exception here: "
    puts exception
end
