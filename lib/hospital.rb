class Hospital

  attr_reader :name, :chief_of_surgery, :doctors

  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
  end

  def total_salary
    total_salary = 0
    @doctors.each do |doctor|
      total_salary += doctor.salary
    end
    total_salary
  end

  def lowest_paid_doctor
    @doctors.each do |doctor|
      doctor[:salary].min
    end
    doctor[:name]
  end

  def specialties
    specialties = []
    @doctors.each do |doctor|
      specialties << doctor.specialty
    end
    specialties
  end
end
