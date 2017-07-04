class Log < ApplicationRecord

validates :name, :presence =>true
validates :email, :presence =>true
validates :password, :confirmation =>true
validates_length_of :password, :in => 6..20, :on => :create 


 def self.authenticate(name="",password="")
 log= Log.find_by(name: name,password: password)

  if log
   return log
  else 
   return false
  end 
 end

end

