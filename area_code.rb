dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  'miami' => '305',
  'paloalto' => '650',
  'evanston' => '847',
  'orlando' => '407',
  'lancaster' => '717'
}

# Get city names from the hash
def get_city_names(somehash)
  # Write code here
  somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  # Write code here
  somehash.each do |city, code|
    if key == city
      puts "The code for #{city} is #{code}"
      puts 'You go it'
    end
  end
  get_city_names(somehash)
end

# Execution flow
loop do
  # Write your program execution code here
  puts 'Do you want to lookup a city name base on area code (y/n)'
  answer = gets.chomp.downcase
  break if answer != 'y'

  puts 'Which city do you want the area code for: '
  puts get_city_names(dial_book)

  city_name = gets.chomp.downcase
  get_area_code(dial_book, city_name)
end
