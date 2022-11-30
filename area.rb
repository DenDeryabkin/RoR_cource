print "Укажите основание треугольника (а): "
side_a = gets.chomp

print "Укажите высоту треугольника (h): "
side_h = gets.chomp

area = 0.5*side_a.to_i*side_h.to_i
puts "Площадь треуголтника равна #{area}."