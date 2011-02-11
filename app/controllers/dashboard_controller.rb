class DashboardController < ApplicationController
  def show
    @user = session[:user]
    if not @user
      return redirect_to(users_path,:notice => "pick a user to be")
    end
    @tasks = @user.tasks.all
  end

end
