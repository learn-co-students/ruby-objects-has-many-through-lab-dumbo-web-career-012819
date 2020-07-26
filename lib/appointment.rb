class Appointment

@@all = []

 
attr_accessor :date , :patient, :doctor

def initialize(date, doctor, patient)
  @date = date
  @doctor = doctor
  @patient = patient
  @@all << self
end

def self.all
  @@all
end

end
