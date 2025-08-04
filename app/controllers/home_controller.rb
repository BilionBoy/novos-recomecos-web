class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index] # Exceto no :index

  def index
    # Página pública
  end
end
