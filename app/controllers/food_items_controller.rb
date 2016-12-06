class FoodItemsController < ApplicationController
   
   # GET to /users/:user_id/food_items/new
   def new
      # Render blank food item details form
      @food_item = Food_Item.new
   end
   
   # POST to /users/:user_id/food_items
   def create
      # Ensure that we have the user who is filling out form
      @user = User.find( params[:user_id] )
      # Create food item linked to this specific user
      @food_item = Food_Item.new( food_item_params )
      @food_item.user_id = ( params[:user_id] )
      if @food_item.save
          flash[:success] = "Food Item Created"
          redirect_to root_path
      else
          flash[:success] = "Food Item save Failed"
          render action: :new
      end
   end
   
   private
    def food_item_params
        params.require(:food_item).permit(:name, :user_id, :units, :supplier, :price_per_unit, :stored_amount, :purchase_date, :expiry, :description) 
    end
end