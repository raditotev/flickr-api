module StaticPagesHelper

  def user_photos(user_id)
    flickr.photos.search(:user_id => user_id)
  end

  def render_flickr_sidebar_widget(user_id, photo_count = 12, columns = 2)
    begin
      photo_urls = []
      photos = user_photos(user_id)
      photos.each do |p|
        photo_urls << "https://farm#{p.farm}.staticflickr.com/#{p.server}/#{p.id}_#{p.secret}.jpg"
      end
      photo_urls = photo_urls[0..photo_count-1].in_groups_of(2)

      render :partial => '/static_pages/sidebar_widget', :locals => { :photos => photo_urls }
    rescue Exception
      render :partial => '/static_pages/unavailable'
    end
  end
end
