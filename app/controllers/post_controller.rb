class PostController < ApplicationController
  
  def index
    @posts = Post.all.order("p_date desc")
    @posts_count = current_user.posts.length

  end
  
  def new
  end

  def create
    new_post = Post.new(user_id: current_user.id, p_post: params[:content], p_date: Date.today )
    
    if new_post.save
      redirect_to post_index_path
    else
      redirect_to new_post_path
    end  
  end
  
  def edit
    @post = Post.find_by(id: params[:id])
  end
  
  def update
    @post = Post.find_by(id: params[:id])
    redirect_to root_path if @post.user_id != current_user.id
    
    @post.p_post = params[:content]
    
    if @post.save
      redirect_to post_index_path
    else
      render :edit
    end
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    redirect_to root_path if @post.user_id != current_user.id
    
    @post.destroy
    redirect_to post_index_path
  end
  
  
  
  
  
end
