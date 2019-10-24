class MemberController < ApplicationController
  def index
  end
  
  def new
  end
  
  def profile
  end

  def create
   new_user =  User.new(email: params[:email], password_confirmation: params[:password_confirmation], name: params[:name], from: params[:from])
   
   if new_user.save
     redirect_to member_index_path
   else
     redirect_to new_member_path
   end
   
  end
  
  
  def update
   current_user.profile_post = params[:content]
   current_user.profileImages = params[:images]
   
   if current_user.save
    redirect_to login_index_path
   else
     redirect_to "member/profile/<%= current_user %>"
   end
   
  end 
    
  
  
end
