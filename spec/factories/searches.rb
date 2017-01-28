FactoryGirl.define do
  factory :search do
    search { Faker::ChuckNorris.fact }
  end
end
