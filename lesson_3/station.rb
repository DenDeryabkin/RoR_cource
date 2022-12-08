# Класс Station (Станция):
# Имеет название, которое указывается при ее создании
# Может принимать поезда (по одному за раз)
# Может возвращать список всех поездов на станции, находящиеся в текущий момент
# Может возвращать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
# Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).

class Station
  attr_reader :name, :trains
  def initialize(name)
    @name = name
    @trains = []
  end

  def add_train(type)
    @trains << type
  end
end

#Класс Train (Поезд):
#
# Имеет номер (произвольная строка) и тип (грузовой, пассажирский) и количество вагонов, эти данные указываются при создании экземпляра класса
class Train
  attr_reader :number, :type, :wagons
  attr_accessor :current_speed
  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @current_speed = 0
  end

  def speed(speed)
    @current_speed = speed
  end

  def stop
    self.current_speed = 0
  end

  def add_wagon()
    if @current_speed == 0
      @wagons += 1
    else
      puts 'Stop the train and try again!'
    end
  end

  def remove_wagon
    if @current_speed == 0
      @wagons -= 1
    else
      puts 'Stop the train and try again!'
    end
  end

end
station = Station.new('ABC')
train = Train.new(1,'pass',10)


class Route
  attr_reader :firs_station, :list_station, :last_station

  def initialize(firstStation, lastStation)
    @firs_station = firstStation
    @last_station = lastStation
    @list_station = []
  end

  def add_stations(addStation)
    @list_station << addStation
  end

  def remove_stations(removeStation)
    @list_station.delete(removeStation)
  end

  def full_route
    puts "Train #{@number}, route is: first station: #{@firs_station}, way stations: #{@list_station},
last station: #{last_station}.  "
  end
end



