require 'rails_helper'

RSpec.describe Debt, type: :model do
  it { is_expected.to belong_to :creditor }
  it { is_expected.to belong_to :debtor }

  it { is_expected.to validate_presence_of :creditor }
  it { is_expected.to validate_presence_of :debtor }
  it { is_expected.to validate_presence_of :amount }
  it { is_expected.to validate_numericality_of(:amount).is_greater_than(0) }
end
