class Patient

  attr_reader :name

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  # Has many doctors through appointments



  # def new_appointment (doctor, date)
  #   Appointment.new(date, self, doctor)
  # end

  def appointments
    Appointment.all.each do |appointment|
      appointment.doctor == self
    end
  end

  def new_appointment(doctor, date)
    Appointment.new(date,self, doctor)
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end

  #has many doctors through appointments

end