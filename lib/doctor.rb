# require 'pry'
# require 'rb-readline'
#
 require_relative "patient.rb"
 require_relative "appointment.rb"
#
#



class Doctor

#attributes of a doctor

attr_accessor :date, :patient, :doctor, :name

@@all = []

def initialize(name)
  @name = name

  @@all << self

end

def new_appointment(patient, date)
  Appointment.new(date, patient, self)
end

def appointments
   Appointment.all.select do |appointment|
     appointment.doctor == self
 end
 end


def patients
  appointments.map do |appointment|
    appointment.patient
end
end

def self.all
  @@all
end

end

doctor_who = Doctor.new('The Doctor')
hevydevy = Patient.new('Devin Townsend')

appointment = doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')

doctor_who.new_appointment(hevydevy, 'Rootenskadootenday, January 315th')


# binding.pry
# 0
