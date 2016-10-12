class DestinationType < ActiveRecord::Base

	belongs_to :destination 
	belongs_to :destination_category
end
