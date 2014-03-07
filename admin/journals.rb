ActiveAdmin.register Journal do
  #belongs_to :client
  filter :client
  filter :updated_at
  index do
    column :client  
    column :exercisetype
    column :waist 
    column :chest  
    column :hips  
    column :weight
    column :journal_date
    default_actions
  end
end
