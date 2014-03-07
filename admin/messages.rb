ActiveAdmin.register Message do

  form do
    @templates = MessageTemplate.find(:all).to_json
    render :partial => "form", :locals => {:templates => @templates}
  end
 
  index do
    column :client
    column :subject
    column :message_template
    column :read
    default_actions
  end
end
