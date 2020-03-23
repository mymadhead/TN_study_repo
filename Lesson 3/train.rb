# Имеет номер (произвольная строка) и тип (грузовой, пассажирский) и количество вагонов, эти данные указываются при создании экземпляра класса
# Может набирать скорость
# Может возвращать текущую скорость
# Может тормозить (сбрасывать скорость до нуля)
# Может возвращать количество вагонов
# Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
# Может принимать маршрут следования (объект класса Route).
# При назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте.
# Может перемещаться между станциями, указанными в маршруте. Перемещение возможно вперед и назад, но только на 1 станцию за раз.
# Возвращать предыдущую станцию, текущую, следующую, на основе маршрута.
class Train
  attr_accessor :speed
  attr_reader :train_num, :wagons, :train_type

  def initialize(train_num)
    @train_num = train_num
    @wagons = []
    @speed = 0
  end

  def speed_up
    @speed + 1
  end

  def speed_down
    @speed - 1
  end

  def stop_train
    @speed.zero?
  end

  def add_wagon(wagon)
    @wagons << wagon if @speed.zero?
  end

  def delete_wagon(wagon)
    @wagons.delete(wagon) if @speed.zero?
  end

  def current_route(route)
    @current_route = route
    @route.departure.arrive_train(self)
    @current_route_index = 0
  end

  def current_station
    @route.route_points.detect { |station| station.trains.include?(self) }
  end

  def change_current_station

  end

  def move_forward

  end

  def move_backward

  end


end

