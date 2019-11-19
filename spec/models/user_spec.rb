require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_uniqueness_of(:username) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to allow_value('teste@email.com').for(:email) }
  end

  describe 'hav_many' do
    it { is_expected.to have_many(:articles).dependent(:destroy) }
  end
end
