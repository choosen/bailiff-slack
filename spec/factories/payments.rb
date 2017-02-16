FactoryGirl.define do
  factory :payment do
    amount 9.99
    debtor
    creditor
  end
end
