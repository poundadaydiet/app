class Client < ActiveRecord::Base
  has_many :journals
  has_many :messages
  liquid_methods :name, :starting_weight, :goal_weight

  attr_accessible :current_weight, :favorite_food, :firstname, :lastname, :starting_weight, :email, :exercisefrequency, :exercisetype, :exercise, :favorite_lunch, :favorite_breakfast, :food_likes, :food_dislikes, :favorite_snacks, :favorite_salads, :smoker, :water, :height, :age, :bmi, :bmr, :body_fat, :favorite_salad, :favorite_drinks, :current_bmi, :current_bmr, :current_bodyfat, :starting_bmi, :starting_bmr, :starting_bodyfat, :starting_dresssize, :starting_pantsize, :starting_waist, :starting_chest, :starting_jacket_size, :starting_hips, :favorite_dinner, :dateofbirth, :pant_size, :suit_size, :shirt_size, :tshirt_size, :goal_pant_size, :goal_jacket_size, :like_coffee_tea, :favorite_restaurants, :string, :cook, :gender, :medical_conditions, :medications, :goal_weight, :goal_dresssize
  def to_s
	"#{self.lastname}, #{self.firstname}"
  end	

  #def bmi
  #	  bmi = ((self.starting_weight.to_f / (self.height * self.height)) * 703)
  #	  "#{bmi}"
  #end
end
