class Doctor
    attr_accessor :name, :patient, :appointments
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(name, patient, self)
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def patients
        self.appointments.map {|appt| appt.patient}
    end
end