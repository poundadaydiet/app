class MessageTemplate < ActiveRecord::Base
  attr_accessible :content, :description, :name, :subject
end
