class Address < ActiveRecord::Base
	belongs_to :addressable, :polymorphic => true
	# validates_presence_of :city, :district
end
