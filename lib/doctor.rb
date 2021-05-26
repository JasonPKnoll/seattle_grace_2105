class Doctor

  attr_reader :name, :specialty, :education, :salary

  def initialize(doc)
    @name = doc[:name]
    @specialty = doc[:specialty]
    @education = doc[:education]
    @salary = doc[:salary]
  end
end
