class Destination < ActiveRecord::Base

	belongs_to :city
	has_many :destination_types
	has_many :destination_categories, through: :destination_types
end
