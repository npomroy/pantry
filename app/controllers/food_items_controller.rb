class FoodItemsController < ApplicationController
   
   # GET to /users/:user_id/food_items/new
   def new
      # Render blank food item details form
      @food_item = Food_Item.new
   end
end