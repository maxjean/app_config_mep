class Event < ActiveRecord::Base
	attr_accessible :email, :rent_quantity, :rent_location, :rent_length,:wifi_setup,  :requirements, :firstname, :lastname, :phone_number


end