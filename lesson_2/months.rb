#1. Сделать хеш, содержащий месяцы и количество дней в месяце.
# В цикле выводить те месяцы, у которых количество дней ровно 30

months = {
  январь: 31, февраль: 28, март: 31, апрель: 30, май: 31, июнь: 31,
  июль: 30, август: 31, сентябрь: 30, октябрь: 31, ноябрь: 30, декабрь: 31
}
need_months = months.select { |name, num| num == 30 }
  need_months.each do |key, value|
     puts "в месяце #{key}, 30 дней!"
  end
