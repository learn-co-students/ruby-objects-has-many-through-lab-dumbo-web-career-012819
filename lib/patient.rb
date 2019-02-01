class Patient

	@@all = []

	attr_accessor :name

	def initialize(name)
		@name = name

		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(name, date)
		Appointment.new(date, self, name)
	end

	def appointments
		Appointment.all.select do |appointment|
			appointment.patient == self
		end
	end

	def doctors
		appointments.map {|appointment|appointment.doctor}
	end

end