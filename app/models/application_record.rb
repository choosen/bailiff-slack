# Set abstract class true for records
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
