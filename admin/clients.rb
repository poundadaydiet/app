ActiveAdmin.register Client do

  #sidebar "Messages", :only => :show do
  #  ul do
  #    li link_to("Messages for this client", admin_client_messages_path(client))
  #  end
  #end
  filter :lastname
  index do
    column :firstname
    column :lastname
    column :height
    column :starting_weight
    column :current_weight
    default_actions
  end
end
  
