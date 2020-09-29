class OrdersDestinations

  include ActiveModel::Model
  attr_accessor :token, :postcode, :prefecture_id, :city, :address, :building_name, :phone_number, :user_id, :item_id, :item_purchases_id

  def save
    item_purchases = ItemPurchases.create(user_id: user_id, item_id: item_id)
    Destination.create(postcode: postcode, prefecture_id: prefecture_id, city: city, address: address, building_name: building_name, phone_number: phone_number, item_purchases_id: item_purchases.id, user_id: user_id)
  end
  
    validates :token, presence: true
    validates :postcode,presence: true
    validates :city,presence: true
    validates :address,presence: true
    validates :phone_number,presence: true
    validates :prefecture_id,  numericality: { other_than: 1, message: 'Select'} 
    validates :postcode, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
end
