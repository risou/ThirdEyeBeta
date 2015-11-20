class HomeController < BaseController
  include TwitterClient
  helper_method :favorited?

  def index
    login_required
    # @tweets = HomeController.client.home_timeline
    @tweets = []
    HomeController.stream.userstream do |status|
      if status.is_a?(Twitter::Tweet)
        tweets.push ["user" => ["name" => status.user.name], "text" => status.text, "id" => status.id]
      end
    end
  end

  def login
    return redirect_to :controller => 'home', :action => 'index' if current_user

    respond_to do |format|
      format.html { render :layout => nil }
    end
  end

  private
  def favorited?(id)
    HomeController.client.status(id).favorited?
  end
end
