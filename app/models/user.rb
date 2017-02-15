# Slack user name and id
class User < ApplicationRecord
  validate :name, presence: true
  validate :slack_number, presence: true, uniqueness: true
end
