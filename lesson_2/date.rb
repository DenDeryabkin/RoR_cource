#Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года.
# Учесть, что год может быть високосным.
#
puts 'Введите год: '
user_year = gets.chomp.to_i
puts 'Введите месяц: '
user_month= gets.chomp.to_s
puts 'Введите день: '
user_day = gets.chomp.to_i

month_days = {
  '01' => 31, '02' => 28, '03' => 31, '04' => 30, '05' => 31, '06' => 30,
  '07' => 31, '08' => 31, '09' => 30, '10' => 31, '11' => 30, '12' => 31
}
month_days['02'] = 29 if (user_year % 400 == 0 && user_year % 100 == 0)
dates = 0
month_days.each do |m, d|
  dates += d if m < user_month
  dates += user_day if m == user_month
end

print dates