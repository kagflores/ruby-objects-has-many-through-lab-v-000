require 'pry'
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

  def new_appointment(date, doctor)
    Appointment.new(self, date, doctor)
  end

  def appointments
    array = Appointment.all.select do |appointment| appointment.patient == self
    end
    #binding.pry
  end

  def doctors
    appointments.map do |appointment| appointment.doctor
    end
  end
end
