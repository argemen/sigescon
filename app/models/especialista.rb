# == Schema Information
# Schema version: 20141220213142
#
# Table name: especialistas
#
#  id              :integer(4)      not null, primary key
#  especialidad_id :integer(4)
#  cedula          :string(255)
#  nombres         :string(255)
#  apellidos       :string(255)
#  correo          :string(255)
#  telefono        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Especialista < ActiveRecord::Base
	belongs_to :especialidad
	has_many :citas

	validates :cedula, :presence => true, :uniqueness => true
	validates :especialidad_id, :presence => true

	def info
		return "#{self.cedula} - #{self.nombres}, #{self.apellidos}"
	end
end
