class CargoTrain < Train
  def initialize(train_num)
    super
    @train_type = :cargo
  end
end