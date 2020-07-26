class Patient
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor,date)
        Appointment.new(self,date, doctor)
    end

    def appointments
        Appointment.all.select do |info|
            info.patient == self
        end
    end

    def doctors
        Appointment.all.collect do |info|
            info.doctor
        end
    end

end
