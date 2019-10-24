class SearchesController < ApplicationController
  def result
     @searches = eval(params[:user]).where('order by binary(:name)', :name).where("name like ?", "%#{params[:search_text]}%")
  end
end
