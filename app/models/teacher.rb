require_relative '../../db/config'

class Teacher < ActiveRecord::Base
	

# implement your Teacher model here

	validates :email, :format => { :with => /\w@\w{1}+[.]\w{2}/}, :uniqueness => true

	def name
		@name = first_name + " " + last_name
	end

	
end