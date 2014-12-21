class Cita < ActiveRecord::Base
	belongs_to :especialista
	belongs_to :paciente
end
