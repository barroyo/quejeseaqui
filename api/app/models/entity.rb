class Entity < ActiveRecord::Base
  belongs_to :category_entity
  attr_accessible :description, :name
end
