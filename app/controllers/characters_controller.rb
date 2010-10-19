class CharactersController < ApplicationController
  def index
    @characters = current_user.characters
    
  end
end
