class FavouritesController < ApplicationController
  def update
    favourite =Favourite.where(post:Post.find(params[:post]),user:current_user)
    if favourite==[]
      #check
      Favourite.create(post:Post.find(params[:post]),user:current_user)
      @favourite_exists=true
    else
      #delete
      favourite.destroy_all
      @favourite_exists=false
    end
    respond_to do |format|
      format.html{}
      format.js{}
      
    end
  end
end
