class Patient

@@all = []

attr_reader :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_appointment(doctor, date)
  Appointment.new(date, doctor, self)
end

def appointments
  Appointment.all.select do |date|
    date.patient == self
  end
end

def doctors
  #binding.pry
  self.appointments.map do |date|
  date.doctor
end
end
end
