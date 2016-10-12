class DestinationCategory < ActiveRecord::Base

	has_many :destination_types
	has_many :destinations, through: :destination_types
end
