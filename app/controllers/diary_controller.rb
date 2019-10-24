class DiaryController < ApplicationController

  def index
    @diary = Diary.find_by(id: params[:user_id])
    @diarys = Diary.all.order("id desc")
    @diarys_count = current_user.diarys.length
  end
  
  
  def new
  end

  def create
    new_diary = Diary.new(user_id: current_user.id ,
                          d_date: Date.today , attachment: params[:attachment],
                          d_title: params[:title], d_post: params[:content])
    
    if new_diary.save
      redirect_to diary_index_path 
    else
      redirect_to new_diray_path
    end
  end
  
  def text
      @diary = Diary.find(params[:id])
  end
  
  def edit
    @diary = Diary.find(params[:id]) 
  end
  
  def update
    @diary = Diary.find(params[:id])
    redirect_to root_path if @diary.user_id != current_user.id
    
    @diary.d_post = params[:post]
    @diary.attachment = params[:attachment]
    @diary.d_title = params[:title]
    
    if @diary.save
      redirect_to diary_index_path
    else
      render :edit
    end
  end
  
  def destroy
    @diary = Diary.find_by(params[:id])
    redirect_to root_path if @diary.user_id != current_user.id
    
    @diary.destroy
    redirect_to diary_index_path
  end
  
  
end
