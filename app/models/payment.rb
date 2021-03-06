# info about returning money
class Payment < ApplicationRecord
  belongs_to :debtor, class_name: 'User'
  belongs_to :creditor, class_name: 'User'

  validates :debtor, :creditor, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 },
                     format: { with: /\d{1,6}(\.\d{0,2})?/ }
end
