class Complaint < ActiveRecord::Base
  	belongs_to :user
  	belongs_to :entity
  	attr_accessible :body, :permalink, :proposal, :title, :user_id, :entity_id

	#validate PRESENCE
	validates :body, :title, :user_id, :entity_id
		:presence => true

	#validate LENGTH body and proposal
	validates :body, :proposal,
		:length => {:within => 5..255}

	#validates title wit 5 to 50 characters
	validates :title, :length => {:within => 5..50 }
end
