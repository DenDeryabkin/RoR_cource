#Заполнить массив числами от 10 до 100 с шагом 5

counter = 10
numbers = []
while counter <= 100
  numbers.push counter
  counter += 5
end
puts numbers