User.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password'
)

Site.create!(
  name: 'Syrakuza',
  url: 'syrakuza.hu',
  protocol: 'http',
  active: true,
  check_interval: 10,
  user_id: 1
)

Site.create!(
  name: 'Teletype.hu',
  url: 'teletype.hu',
  protocol: 'http',
  active: true,
  check_interval: 10,
  user_id: 1
)
