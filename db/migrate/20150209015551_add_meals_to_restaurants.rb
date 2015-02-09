class AddMealsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :meals, :json, default: {}
  end
end
