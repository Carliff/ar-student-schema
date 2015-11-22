require_relative '../../db/config'

class Student < ActiveRecord::Base
	attr_reader :age, :name

# implement your Student model here

	validates :email, :format => { :with => /\w@\w{1}+[.]\w{2}/}, :uniqueness => true
	validates :age, :numericality => {greater_than: 4}
	validate :valid_phone?

	def name
		@name = first_name + " " + last_name
	end

	def age
		now = Date.today.year
 		@age = now - (birthday.year)
	end

	def valid_phone?
		if self.phone.scan(/\d+/).join.length < 10
			errors.add(:phone, "Must contain at least 10 digits.")
		end
	end
end