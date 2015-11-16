class HomeController < BaseController
  include TwitterClient
  helper_method :favorited?

  def index
    login_required
    @tweets = HomeController.client.home_timeline
  end

  def login
  end

  private
  def favorited?(id)
    HomeController.client.status(id).favorited?
  end
end
