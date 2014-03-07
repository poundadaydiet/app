ActiveAdmin::Dashboards.build do
  section "Recent Journals" do
    table_for Journal.order("created_at desc").limit(10) do
      column :client
      column :exercise
	    column :exercisetime
	    column :waist
	    column :chest
	    column :hips
	    column :weight
	    column :created_at
     end
  end

end
