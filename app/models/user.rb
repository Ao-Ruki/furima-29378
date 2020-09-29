class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_many :item 
         has_many :item_purchases
         has_one :destinations
        

with_options presence: true do
  validates :nickname, length: { maximum: 40 }
  validates :birthday
  validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: 'Full-width characters' }
  validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: 'Full-width characters' }
  validates :family_name_kana, format: { with: /\A([ァ-ン]|ー)+\z/, message: 'Full-width katakana characters' }
  validates :first_name_kana, format: { with: /\A([ァ-ン]|ー)+\z/, message: 'Full-width katakana characters' }
end

validates :password,length: { minimum: 6 }
validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: 'Include both letters and numbers'}

end
