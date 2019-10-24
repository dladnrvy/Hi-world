class ApplicationController < ActionController::Base
  include LoginHelper
  
  before_filter :search_models

  def search_models
    @user = User.all
    
  end

end
