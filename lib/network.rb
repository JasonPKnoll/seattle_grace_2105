class Network
  attr_reader :name, :hospitals

  def initialize(name)
    @name = name
    @hospitals = []
  end

  def add_hospital(new_hospital)
    @hospitals << new_hospital
  end

  def highest_paid_doctor
  end

  def doctors_by_hospital
  end

end
