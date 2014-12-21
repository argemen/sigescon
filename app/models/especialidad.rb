# == Schema Information
# Schema version: 20141220213142
#
# Table name: especialidades
#
#  id         :integer(4)      not null, primary key
#  nombre     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Especialidad < ActiveRecord::Base
	has_many :especialistas


	validates :nombre, :presence => true, :uniqueness => true
end
