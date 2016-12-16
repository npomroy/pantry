class IngredientsController < ApplicationController
    # before_action check mod
    
    def new
        @ingredient = Ingredient.new    
    end
    
    def create
       @ingredient = Ingredient.new( ingredient_params )
       if @ingredient.save
           flash[:success] = "Ingredient created"
           redirect_to root_path
       else
           flash[:error] = "Ingredient creation failed"
           render action: :new
       end
    end
    
    def index
       @ingredients = Ingredient.all 
    end
    
    private
        def ingredient_params
           params.require(:ingredient).permit(:name, :units, :serving_size, :price_per_serving, :type, :storage) 
        end
end