class LoginController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    
    # 아이디와 비밀번호확인
    if user && user.authenticate(params[:password])
      log_in(user)
    end
    
    unless  user && user.authenticate(params[:password])
      flash[:alert] = '아이디 또는 비밀번호가 틀립니다.';
      redirect_to new_login_path  
    end
  end
  
  def destroy
    log_out
    redirect_to '/'
  end
  
  def index
  end
  
end
