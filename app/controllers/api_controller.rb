class ApiController < ActionController::Base
  protect_from_forgery with: :exception

  def show
    @apis = apis

    id = params[:id].to_sym
    if id == :index
      render :file => "/api/show.html"
    elsif id == :api
      render :file => "/api/api.html"
    end
  end

  def apis
    hash_tanaka = { name: 'Tanaka', age: 23 }
    Hashie::Mash.new(hash_tanaka)
  end

end
