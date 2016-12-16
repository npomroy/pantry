class IngredientsController < ApplicationController
    # before_action check mod
    
    def new
        @ingredient = Ingredient.new    
    end
end