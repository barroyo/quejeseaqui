class Complaint < ActiveRecord::Base
  belongs_to :user
  belongs_to :entity
  attr_accessible :body, :permalink, :proposal, :title
end
