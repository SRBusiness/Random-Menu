food = []
cook = []
adj = []
array = [food, cook, adj]

puts "How many many items would you like to see?"
menu_items = gets.chomp.to_i

until menu_items < 11
  puts "Unfortunately we don't have that many items on our menu. Please select a smaller number."
  menu_items = gets.chomp.to_i
end

prompts = ["Please list #{menu_items} types of food you like to eat.", "Please list #{menu_items} methods of cooking food that you enjoy eating.", "Please list #{menu_items} fun food adjective."]
puts "Now you can help us build our menu!"

3.times do |i|
  puts "#{prompts[i-1]}"
  menu_items.times do
    array[i] << gets.chomp.to_s
  end
end

puts "--"
puts "MENU"

adj_samples = array[0].sample(menu_items)
food_samples = array[1].sample(menu_items)
cooked_samples = array[2].sample(menu_items)

menu_items.times do |i|
  puts "#{i+1}. #{adj_samples[i]} #{cooked_samples[i]} #{food_samples[i]}"
end
