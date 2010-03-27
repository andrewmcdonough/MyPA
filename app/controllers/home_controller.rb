class HomeController < ApplicationController
  def index
    redirect_to calendar_path(:year => Date.today.year, :month => Date.today.month) if current_user
  end

end
