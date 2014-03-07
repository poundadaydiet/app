ActiveAdmin.register MessageTemplate do
  #sidebar "More Info" do
  #  ul do
  #    li link_to("All Journals", admin_client_journals_path(client))
  #  end
  #end
  
  filter :name
  index do
    column :name
    column :subject
    column :description
    default_actions
  end
end
