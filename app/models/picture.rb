class Picture < ActiveRecord::Base
  attr_accessible :title, :url, :comments
end
