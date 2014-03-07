ActiveAdmin.register User do     
  filter :lastname
  index do
    column :id
    column :email
    default_actions
  end
end
