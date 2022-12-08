#Класс Train (Поезд):
# Имеет номер (произвольная строка) и тип (грузовой, пассажирский) и количество вагонов,
# эти данные указываются при создании экземпляра класса
class Train
  def initialize(number, type, wagon)
    @number = number
    @type = type
    @wagon = wagon
  end
end