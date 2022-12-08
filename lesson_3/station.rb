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
  attr_accessor :stations

  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def remove_stations(station)
    @stations.delete(station)
  end

  def full_route
    stations.each do |name|
      puts name
    end
  end
end



