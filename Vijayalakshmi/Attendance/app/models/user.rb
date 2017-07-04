class User < ApplicationRecord

 def self.authenticate(username_or_email="", encrypted_password="")
   
   if (username_or_email)    
    user = User.find_by_email(username_or_email)
   else
    user = User.find_by_username(username_or_email)
   end

 encrypted_password  = User.find_by(encrypted_password: encrypted_password)
   
   if username_or_email && encrypted_password
    return user
   else
    return false
   end
 end 

end
