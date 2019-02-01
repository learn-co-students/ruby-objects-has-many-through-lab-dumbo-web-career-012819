class Doctor

@@all = []

attr_reader :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_appointment( patient, date)
  Appointment.new(date, self, patient)
end

def appointments
  ok = Appointment.all.select do |date|
    date.doctor == self
  end

end

def patients
  self.appointments.map do |date|
    date.patient
  end
end

end
