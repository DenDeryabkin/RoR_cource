
print "Как тебя зовут?: "
user_name = gets.chomp
user_name.capitalize!

print "Какой твой рост (см)?: "
user_height = gets.chomp

weight = (user_height.to_i - 110) * 1.15

if weight < 0
  puts "#{user_name}, Ваш вес уже оптимальный."
  else
    puts "#{user_name}, твой идеальный вес #{weight} киллограмм"
end