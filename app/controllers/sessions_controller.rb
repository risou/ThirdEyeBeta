class SessionsController < ApplicationController
  def callback
    auth = request.env['omniauth.auth']
  end
end
