class RecipesController < ApplicationController
   def new
       @recipe = Recipe.new
   end
   
   def create
      @recipe = Recipe.new(recipe_params)
      if @recipe.save
          flash[:success] = "Recipe created"
          redirect_to root_path
      else
          flash[:error] = "Recipe creation failed"
          render action: :new
      end
   end
   
   def destroy
        Recipe.find(params[:id]).destroy
        redirect_to recipes_path
   end
   
   def index
        @recipes = Recipe.all 
   end
   
   private
        def recipe_params
           params.require(:recipe).permit(:name, :prep_time, :bake_time, :instructions, :details) 
        end
end