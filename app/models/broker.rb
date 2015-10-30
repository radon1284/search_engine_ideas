class Broker < ActiveRecord::Base

	enum locations: [:united_states, :canada, :mexico]
	has_many :products
	has_many :supports

end
