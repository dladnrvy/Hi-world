module SearchesHelper
  
  
  def search_user
    unless @search_user.nil?
      @search_user = User.find(id: params[:id])
    
    end
 end
 
end
