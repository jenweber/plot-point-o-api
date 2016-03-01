#
class User < ActiveRecord::Base
  include Authentication
  has_many :spoilery_posts
  has_many :no_spoilers_posts
end
