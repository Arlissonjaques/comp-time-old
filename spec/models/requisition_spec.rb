require 'rails_helper'

RSpec.describe Requisition, type: :model do
  let(:user) { create(:user) }
  let(:approver) { create(:user) }

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:approver).class_name('User') }
  end

  describe 'validations' do
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:status) }
    it { should validate_presence_of(:time) }
    it { should validate_presence_of(:type_requisition) }

    context 'when disapproved' do
      subject { build(:requisition, status: 'disapproved', reason_refusal: nil) }

      it { should validate_presence_of(:reason_refusal) }
    end 
  end

  describe 'enums' do
    it do
      should define_enum_for(:status)
        .with_values(on_approval: 0, approved: 1, disapproved: 2)
        .backed_by_column_of_type(:integer)
    end

    it do
      should define_enum_for(:type_requisition)
        .with_values(addition: 0, use: 1)
        .backed_by_column_of_type(:integer)
    end
  end
end
