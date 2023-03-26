require 'rails_helper'

RSpec.describe Organization, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:user_organizations) }
    it { should have_many(:users).through(:user_organizations) }
  end
end
