# Includes debts of users
class Debt < ApplicationRecord
  belongs_to :debtor, class_name: 'User'
  belongs_to :creditor, class_name: 'User'
end
