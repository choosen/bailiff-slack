FactoryGirl.define do
  factory :user do
    name FFaker::Name.name
    sequence(:slack_number) { |n| n + 1000 }
  end
end
