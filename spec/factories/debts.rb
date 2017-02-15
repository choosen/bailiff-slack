FactoryGirl.define do
  factory :debt do
    amount 15.00
    association :debtor, factory: :user
    association :creditor, factory: :user
  end
end
