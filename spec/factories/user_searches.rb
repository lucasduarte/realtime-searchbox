FactoryGirl.define do
  factory :user_search do
    search
    ip_address { Faker::Internet.public_ip_v4_address }
  end
end
