class HomeController < ApplicationController
  def index
    if not session[:user]
      return redirect_to(users_path)
    end
  end

end
