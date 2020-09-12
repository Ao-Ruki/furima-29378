FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {"aaaa0000"}
    password_confirmation {"aaaa0000"}
    family_name {"田中"}
    first_name {"太朗"}
    family_name_kana {"タナカ"}
    first_name_kana {"タロウ"}
    birthday  {Faker::Date.between(from: '1930-1-1', to: '2015-12-31')}
    
  end
end
