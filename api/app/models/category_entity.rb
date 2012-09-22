class CategoryEntity < ActiveRecord::Base

 	attr_accessible :description, :name

	#validate PRESENCE
	#validates :description, :name,		:presence => true

	#validate LENGTH
	#validate :description, :name,		:length => {:within => 5..50 }
end
