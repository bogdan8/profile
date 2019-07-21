unless User.first
  User.create(email: ENV['EMAIL'], password: ENV['PASSWORD'])
end
