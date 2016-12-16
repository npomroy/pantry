class IngredientsController < ApplicationController
    # before_action check mod
    
    def new
        @ingredient = Ingredient.new    
    end
    
    def create
       @ingredient = Ingredient.new( ingredient_params )
       if @ingredient.save
           flash[:success] = "Ingredient created"
           redirect_to ingredients_path
       else
           flash[:error] = "Ingredient creation failed"
           render action: :new
       end
    end
    
    def show
       @ingredient = Ingredient.find(params[:id]) 
    end
    
    def edit
       @ingredient = Ingredient.find(params[:id]) 
    end
    
    def update
       @ingredient = Ingredient.find(params[:id])
       if @ingredient.update_attributes( ingredient_params )
           flash[:success] = "Ingredient updated"
           redirect_to ingredient_path(id: params[:id])
       else
           flash[:error] = "Ingredient creation failed"
           render action: :show
       end
    end
    
    def destroy
       Ingredient.find(params[:id]).destroy
       redirect_to ingredients_path
    end
    
    def index
       @ingredients = Ingredient.all 
    end
    
    private
        def ingredient_params
           params.require(:ingredient).permit(:name, :units, :serving_size, :price_per_serving, :type, :storage) 
        end
end