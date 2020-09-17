FactoryBot.define do
  factory :item do
    name              {"レモン"}
    description       {"美味しい"}
    price             {333}
    category_id        {2}
    item_condition_id    {2}
    postage_player_id     {2}
    prefecture_id          {2}
    preparation_day_id      {2}

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
