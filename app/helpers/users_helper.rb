module UsersHelper
    def job_title_icon
        if @user.profile.job_title == "Student Chef"
           "<i class='fa fa-graduation-cap'></i>".html_safe
        elsif @user.profile.job_title == "Home Chef"
            "<i class='fa fa-home'></i>".html_safe
        elsif @user.profile.job_title == "Pro Chef"
            "<i class='fa fa-cutlery'></i>".html_safe
        end
    end
end