class Entity < ActiveRecord::Base
	belongs_to :category_entity
	attr_accessible :description, :name, :category_entity_id

	#validate PRESENCE
	validates :description, :name, :category_entity_id,
		:presence => true

	#validate LENGTH
	validate :description, :name,
		:length => {:within => 5..50 }
end
