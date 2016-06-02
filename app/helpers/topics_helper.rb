module TopicsHelper
    def user_is_authorized_for_topics?
     if !current_user
       false
     elsif current_user.admin?
       true
     else
       current_user.moderator? 
     end
    end
end
