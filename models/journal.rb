class Journal < ActiveRecord::Base
  belongs_to :client
  attr_accessible :chest, :exercise, :exerciselength, :exercisetime, :exercisetype, :hips, :waist, :client_id, :how_tired_before, :how_tired_after, :active_heart_rate, :resting_heart_rate, :time_to_resting, :weight, :breakfast_consumed, :breakfast_quantity, :snackone_consumed, :snackone_quantity, :lunch_consumed, :lunch_quantity, :snacktwo_consumed, :snacktwo_quantity, :dinner_consumed, :dinner_quantity, :other_food_type, :glasses_of_water, :breakfast_full, :breakfast_enjoy, :snackone_full, :snackone_enjoy, :lunch_full, :lunch_enjoy, :snacktwo_full, :snacktwo_enjoy, :dinner_full, :dinner_enjoy, :consumed_all_food, :bmi, :journal_date
end
