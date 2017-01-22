Role.create(name: 'admin') if Role.find_by(name: 'admin').nil?

unless Role.where(name: 'admin').first.users.any?
 admin = User.create(email: 'admin@decopaint.ru', password: 'password', password_confirmation: 'password')
 admin.add_role :admin
end
