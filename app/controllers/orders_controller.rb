class OrdersController < ApplicationController
  before_action :set_item
  before_action :move_to_index
  

  def index
    @order = OrdersDestinations.new

    if  current_user.id == @item.user_id
      redirect_to root_path
    end

    if  @item.item_purchases.present?
      redirect_to root_path
    end

  end

  def create
    @order = OrdersDestinations.new(order_params)
    if @order.valid?
      pay_item
      @order.save
      return redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

  def order_params
   params.permit(:token, :postcode, :prefecture_id, :city, :address, :building_name, :phone_number, :item_id, :item_purchases_id).merge(user_id: current_user.id)
  end

  def set_item
  @item = Item.find(params[:item_id])
  end

  def pay_item
  Payjp.api_key = ENV["PAYJP_SECRET_KEY"]  # PAY.JPテスト秘密鍵
  Payjp::Charge.create(
    amount: @item.price,  # 商品の値段
    card: order_params[:token],    # カードトークン
    currency:'jpy'                 # 通貨の種類(日本円)
    )
  end



end
