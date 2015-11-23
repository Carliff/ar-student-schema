require_relative '../../db/config'

class Teacher < ActiveRecord::Base
	attr_reader :age, :name

	validates :email, :format => { :with => /\w@\w{1}+[.]\w{2}/}, :uniqueness => true
	
# implement your Teacher model here

	def name
		@name = first_name + " " + last_name
	end

	def age
		now = Date.today.year
 		@age = now - (birthday.year)
	end
end