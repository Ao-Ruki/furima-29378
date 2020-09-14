class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end
  
  def create
  end
  private
  def move_to_index
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end


end
