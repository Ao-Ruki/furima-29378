FactoryBot.define do
  factory :orders_destinations do
    token {"tok_abcdefghijk00000000000000000"}
    postcode { '123-4567' }
    prefecture_id { 2 }
    city { '横浜市' }
    address { '青山1-1-1' }
    building_name { '東京ハイツ' }
    phone_number{ '09012345678' }
  end
end
