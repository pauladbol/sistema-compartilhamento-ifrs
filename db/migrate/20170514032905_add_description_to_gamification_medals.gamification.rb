# This migration comes from gamification (originally 20140314132611)
class AddDescriptionToGamificationMedals < ActiveRecord::Migration
  def change
    add_column :gamification_medals, :description, :text
  end
end
