# Slack user name and id
class User < ApplicationRecord
  has_many :debts, class_name: 'Debt', foreign_key: 'debtor_id'
  has_many :credits, class_name: 'Debt', foreign_key: 'creditor_id'

  validates :name, presence: true
  validates :slack_number, presence: true, uniqueness: true
end
