require 'pry'
class Patient
  attr_accessor :appointments, :doctors
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |app|
      app.patient == self
    end
  end

  def doctors
    self.appointments.map do |app|
      app.doctor
    end
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
    # binding.pry
  end

end