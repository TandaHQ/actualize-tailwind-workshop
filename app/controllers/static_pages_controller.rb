class StaticPagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @micropost  = current_user.microposts.build
    @feed_items = current_user.feed.paginate(page: params[:page])
  end
  
  def help
  end

  def about
  end

  def contact
  end
end
