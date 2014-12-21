class ReportesController < ApplicationController

	def pacientes
		@pacientes = Paciente.all
	end

	def especialistas
		@especialistas = Especialista.all
	end

	def especialidades
		@especialidades = Especialidad.all
	end
end
