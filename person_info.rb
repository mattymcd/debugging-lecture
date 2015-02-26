require_relative "top_secret_black_box.rb"

def print_greeting(person_info)
  p person_info
  puts "My name is #{person_info[:name]} and I'm #{person_info[:age]} years old."
end

print_greeting(get_person_info)
