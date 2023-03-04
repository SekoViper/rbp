users = [
  { username: 'Seko', password: 'seko09' },
  { username: 'viper', password: 'viper1' },
  { username: 'simon', password: 'simon1' }
]

def auth_user(username, password, users_list)
  users_list.each do |user_record|
    return user_record if user_record[:username] == username && user_record[:password] == password
  end
  puts 'Wrong Credential'
end

attempts = 1
while attempts < 4
  puts 'Enter Username: '
  username = gets.chomp
  puts 'Enter Password: '
  password = gets.chomp.downcase

  authentication = auth_user(username, password, users)
  puts authentication

  puts 'Press n to exit or any key to continue'
  input = gets.chomp.downcase
  break if input == 'n'

  attempts += 1
end
puts 'You have exceeded number of attempts' if attempts == 4
