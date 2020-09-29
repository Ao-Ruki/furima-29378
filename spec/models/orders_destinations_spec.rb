require 'rails_helper'

RSpec.describe OrdersDestinations, type: :model do
  describe '購入' do
    before do
      @orders_destinations = FactoryBot.build(:orders_destinations)
    end

    it "token、postcode、prefecture_id、city、address、phone_numberがあれば保存ができること" do
      expect(@orders_destinations).to be_valid
    end

    it "tokenが空では登録できないこと" do
      @orders_destinations.token = nil
      @orders_destinations.valid?
      expect(@orders_destinations.errors.full_messages).to include("Token can't be blank")
    end

    it 'postcodeが空だと保存できないこと' do
      @orders_destinations.postcode = nil
      @orders_destinations.valid?
      expect(@orders_destinations.errors.full_messages).to include("Postcode can't be blank")
    end

    it 'postcodeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
      @orders_destinations.postcode = '1234567'
      @orders_destinations.valid?
      expect(@orders_destinations.errors.full_messages).to include("Postcode is invalid. Include hyphen(-)")
    end

    it 'prefecture_idを選択していないと保存できないこと' do
      @orders_destinations.prefecture_id = 1
      @orders_destinations.valid?
      expect(@orders_destinations.errors.full_messages).to include("Prefecture Select")
    end

    it 'cityが空だと保存できないこと' do
      @orders_destinations.city = nil
      @orders_destinations.valid?
      expect(@orders_destinations.errors.full_messages).to include("City can't be blank")
    end

    it 'addressが空だと保存できないこと' do
      @orders_destinations.address = nil
      @orders_destinations.valid?
      expect(@orders_destinations.errors.full_messages).to include("Address can't be blank")
    end

    it 'building_nameは空でも保存できること' do
      @orders_destinations.building_name = nil
      expect(@orders_destinations).to be_valid
    end

    it 'phone_numberが空だと保存できないこと' do
      @orders_destinations.phone_number = nil
      @orders_destinations.valid?
      expect(@orders_destinations.errors.full_messages).to include("Phone number can't be blank")
    end

    it 'phone_numberが半角のハイフンを含まない正しい形式でないと保存できないこと' do
      @orders_destinations.phone_number = '090-1234-5678'
      @orders_destinations.valid?
    end

  end
end
