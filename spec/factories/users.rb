FactoryGirl.define do
  factory :user, aliases: [:debtor, :creditor] do
    name FFaker::Name.name
    sequence(:slack_number) { |n| n + 1000 }
  end
end
