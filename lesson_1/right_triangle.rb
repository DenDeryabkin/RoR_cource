print "введите сторону (А): "
side_a = gets.chomp
print "введите сторону (B): "
side_b = gets.chomp
print "введите сторону (C): "
side_c = gets.chomp

if side_a == side_b && side_a == side_c
  puts "треугольник равнобедренный и равносторонний"
elsif (side_a == side_b && side_a != side_c) || (side_a == side_c && side_a != side_b) || (side_b == side_c && side_b != side_a)
  puts "Треугольник равнобедренный"
elsif (side_a**2 + side_b**2) == side_c**2 || (side_a**2 + side_c**2) == side_b**2 || (side_c**2 + side_b**2) == side_a**2
  puts "Треугольник ровный"
  else
end