# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
User.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password'
)
=end

Site.create!(
  name: 'Syrakuza',
  url: 'syrakuza.hu',
  protocol: 'http',
  active: true
)

Site.create!(
  name: 'Teletype.hu',
  url: 'teletype.hu',
  protocol: 'http',
  active: true
)
