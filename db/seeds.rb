unless User.first
  User.create(email: 'admin@admin.com', password: '123456')
end
