class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to :controller => 'characters'
    end
  end

end
