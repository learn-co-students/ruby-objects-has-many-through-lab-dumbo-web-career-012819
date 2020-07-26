require 'pry'
class Doctor

  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name

    # Everytime a doctor is initialized it gets added
    # to the class array of all doctors
    @@all << self
  end


  # Class method that calls itself to see the instances
  # of the doctors, returns the array of doctors
  def self.all
    @@all
  end


  def new_appointment (patient, date)

    Appointment.new(date, patient, self)
  end

  # has many appointments
  def appointments
    Appointment.all.each do |appointment|
        appointment.doctor == self
    end
  end

  # Has many patients, through appointments
  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end


end