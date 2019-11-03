class PostController < ApplicationController
  
  def index
    @posts = Post.where(user_id: current_user).order("id desc")
    @posts_count = current_user.posts.length
  end
  
  def searchIndex
        @posts_search = Post.where(user_id: params[:id]).order("id desc")
        @posts_search_count = @posts_search.length
  end
    
  
  def new
  end

  def create
    new_post = Post.new(user_id: current_user.id, p_post: params[:content], p_date: Date.today, p_user_idx: params[:p_id])
    
    if new_post.save
      redirect_to post_index_path
    else
      redirect_to new_post_path
    end  
  end
  
  def edit
    @post = Post.find_by(id: params[:p_idx])
  end
  
  def update
    @post = Post.where(id: params[:p_idx]).p_post = params[:content]
    # redirect_to root_path if @post.user_id != current_user.id
    
    # @post.p_post = params[:content]
#     
    if @post.save
      redirect_to post_index_path
    else
      render :edit
    end
  end
  
  def destroy
    @post = Post.find_by(id: params[:p_idx])
    redirect_to root_path if @post.user_id != current_user.id
    
    @post.destroy
    redirect_to post_index_path
  end
  
  
  
  
  
end
