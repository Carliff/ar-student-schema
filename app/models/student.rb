require_relative '../../db/config'

class Student < ActiveRecord::Base
	attr_reader :age, :name
# implement your Student model here

	def name
		@name = first_name + " " + last_name
	end

	def age
		now = Date.today.year
 		@age = now - (birthday.year)
	end
end