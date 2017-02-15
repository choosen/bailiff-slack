FactoryGirl.define do
  factory :debt do
    amount 15.00
    debtor
    creditor
  end
end
