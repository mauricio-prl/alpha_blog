require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_length_of(:username).is_at_least(3) }
    it { is_expected.to validate_length_of(:username).is_at_most(25) }
    it { is_expected.to validate_uniqueness_of(:username) }

    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_length_of(:email).is_at_most(105) }
    it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to allow_value('teste@email.com').for(:email) }
  end

  describe 'hav_many' do
    it { is_expected.to have_many(:articles).dependent(:destroy) }
  end

  describe 'secure password' do
    it { is_expected.to have_secure_password }
  end
end
