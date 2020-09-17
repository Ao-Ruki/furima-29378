require 'rails_helper'
describe Item do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '画像付きで商品保存' do
    context '商品保存がうまくいくとき' do

      it "image、name、description、category_id、pricecategory_id、item_condition_id、postage_player_id、prefecture_id、preparation_day_idが存在すれば登録できる" do
        expect(@item).to be_valid
      end
      
      it "nameが40文字以下で保存できる" do
        @item.name = "レモン"
        expect(@item).to be_valid
      end

      it "descriptionが1000文字以下で保存できる" do
        @item.description = "美味しい"
        expect(@item).to be_valid
      end

      it "priceが300円以上9999999円以下であれば保存できる" do
        @item.price = 333
        expect(@item).to be_valid
        end

      it "priceが半角数字であれば保存できる" do
        @item.price = 333
        expect(@item).to be_valid
        end

    context '商品保存がうまくいかないとき' do

     it "nameが空だと保存できない" do
     @item.name = ''
     @item.valid?
     expect(@item.errors.full_messages).to include("Name can't be blank")
     end

     it "nameが40文字以上であれば保存できない" do
     @item.name = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"
     @item.valid?
     end

     it "descriptionが空だと保存できない" do
     @item.description = ''
     @item.valid?
     expect(@item.errors.full_messages).to include("Description can't be blank")
     end

     it "descriptionが1000文字以上であれば保存できない" do
     @item.description = 1001
     @item.valid?
     end
  
     it "priceが空だと保存できない" do
     @item.price = ''
     @item.valid?
     expect(@item.errors.full_messages).to include("Price can't be blank")
     end

     it "priceが300円以下だと保存できない" do
     @item.price = 30
     @item.valid?
     expect(@item.errors.full_messages).to include("Price Out of setting range")
    end

    it "priceが99999999円以上だと保存できない" do
      @item.price = 99999999999
      @item.valid?
      expect(@item.errors.full_messages).to include("Price Out of setting range")
    end
  
    it "priceが半角数字でなければ保存できない" do
      @item.price = "あああ"
      @item.valid?
      expect(@item.errors.full_messages).to include("Price Half-width number")
    end
  
    it "category_idが1の場合は保存できない" do
      @item.category_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include("Category Select")
    end
  
    it "item_condition_idが空1の場合は保存できない" do
      @item.item_condition_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include("Item condition Select")
    end
  
    it "postage_player_idが1の場合は保存できない" do
      @item.postage_player_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include("Postage player Select")
    end
  
    it "prefecture_idが1の場合は保存できない" do
      @item.prefecture_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include("Prefecture Select")
    end
  
    it "preparation_day_idが1の場合は保存できない" do
      @item.preparation_day_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include("Preparation day Select")
    end
  
       end
  
      end
    end
      
  end
