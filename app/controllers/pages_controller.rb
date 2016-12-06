class PagesController < ApplicationController
    def home
        @basic_plan = Plan.find(1)
        @pro_plan = Plan.find(2)
    end
    
    def faq
    end
    
    def about
    end
    
    
    def my_account
       @user = User.find( current_user.id)
    end
end