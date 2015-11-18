# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@user = User.new({
  first_name: "desenvolvedor",
  last_name: ".",
  username: "dev",
  user_type: 2,
  email: "dev@dev.com",
  password: "123456789",
  password_confirmation: "123456789"
})

@user.save!