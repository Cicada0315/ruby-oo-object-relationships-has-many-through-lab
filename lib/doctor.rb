class Doctor
    @@all = []
  attr_accessor :name

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |app|
        app.doctor==self
    end
  end

  def new_appointment(appointment, patient)
    Appointment.new(appointment, patient, self)
  end

  def patients
    appointments.collect do |app|
        app.patient
    end
  end
end