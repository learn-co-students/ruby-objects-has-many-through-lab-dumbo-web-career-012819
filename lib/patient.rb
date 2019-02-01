class Patient
  attr_reader :name
  # attr_accessor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select{|app| app.patient == self}
  end


  def doctors
    self.appointments.map{|app| app.doctor}
  end

end


# Patient
#   #new
#     initializes with a name (FAILED - 10)
#   #new_appointment
#     given a doctor and date, creates a new appointment belonging to that patient (FAILED - 11)
#   .all
#     knows about all patients (FAILED - 12)
#   #appointments
#     has many doctors through appointments (FAILED - 13)
#   #doctors
#     has many doctors through appointments (FAILED - 14)
