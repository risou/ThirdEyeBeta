class HomeController < BaseController
  include TwitterClient
  helper_method :favorited?

  def index
    login_required
    @tweets = HomeController.client.home_timeline
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
