#3. Заполнить массив числами фибоначчи до 100

counter = 1
fibo = [0, 1]
while counter < 100
  fibo.push counter if counter < 100
  counter = fibo[-1] + fibo[-2]
end
puts fibo
