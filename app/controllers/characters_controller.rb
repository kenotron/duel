class CharactersController < ApplicationController

  # list user's characters
  def index
    @characters = current_user.characters    
  end
  
  # this is the profile display action
  def show
    @character = Character.find(params[:id])
  end
  
  def new
    @character = Character.new
  end
  
  def create
    @character = Character.create(params[:character])
    @character.user = current_user
    @character.save
    
    redirect_to :action => 'index'
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
end
