class Paciente < ActiveRecord::Base
	has_many :citas

	def info
		return "#{self.cedula} - #{self.nombres}, #{self.apellidos}"
	end
end
