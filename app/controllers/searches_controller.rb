class SearchesController < ApplicationController
 include SearchesHelper
 
  def result
    
     @searches = eval(params[:bulletin]).where("name like ?", "%#{params[:search_text]}%")
  
  end
  
  def index
     # redirect_to helpers: 'SearchesHelper', params_name: :id
      
     # @search = search_user(params[:id])
     
     @search = User.find(params[:id])
     @search_diary = Diary.where(user_id: @search).order("id desc")
     @diarys_search_count = @search_diary.length
     
     @search_post = Post.where(user_id: @search).order("id desc")
     @posts_search_count = @search_post.length
      
   
     
 end

end
