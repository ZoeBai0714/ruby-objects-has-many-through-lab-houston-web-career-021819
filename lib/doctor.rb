class Doctor
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, Patient.new(date, patient, self))
  end
  
  def patients
    Appointment.all.select do |appointment|
      appointment.patient
    end
  end
end