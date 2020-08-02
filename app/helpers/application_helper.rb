module ApplicationHelper
    
 def has_role?(role)
    current_user && current_user.has_role?(role)
 end
 
 
 def readable_time(time)
  time.strftime("%b %d, %I:%M%P")
 end

#check if user is author of something;
def author_of(record)
 user_signed_in? && current_user.id == record.user_id
end


end