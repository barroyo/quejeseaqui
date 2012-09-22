class User < ActiveRecord::Base
  attr_accessible :access_token, :email_address, :facebook_id
end
