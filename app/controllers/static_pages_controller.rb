class StaticPagesController < ApplicationController
  def index
    @user = params[:user_id]
  #   @photos = []
  #   if @user
  #     response = flickr.photos.search user_id: user
  #     response.each do |item|
  #       @photos << "https://farm#{item.farm}.staticflickr.com/#{item.server}/#{item.id}_#{item.secret}.jpg"
  #     end
  #   end
  #   @photos
  end
end
