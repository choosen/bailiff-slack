require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  subject { user }

  it { is_expected.to have_many :debts }
  it { is_expected.to have_many :credits }
  it { is_expected.to have_many :payments_received }
  it { is_expected.to have_many :payments_sent }

  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :slack_number }
  it { is_expected.to validate_uniqueness_of :slack_number }
end
