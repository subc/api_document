class ApiController < ActionController::Base
  protect_from_forgery with: :exception

  def show
    id = params[:id].to_sym
    if id == :index
      render :file => "/api/show.html"
    elsif id == :api
      render :file => "/api/api.html"
    end
  end

end
