class Message < ActiveRecord::Base
  belongs_to :client
  belongs_to :message_template
  liquid_methods :body
  attr_accessible :body, :client_id, :subject, :read, :message_template_id
  def to_s
        "#{self.subject}"
  end
end
