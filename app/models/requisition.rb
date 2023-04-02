# Table name: requisitions

#  id               :bigint           not null, primary key
#  description      :string           not null
#  reason_refusal   :string
#  status           :integer          default("on_approval"), not null
#  time             :time             not null
#  type_requisition :integer          default(NULL), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  approver_id      :bigint           not null
#  user_id          :bigint           not null

class Requisition < ApplicationRecord
  belongs_to :user
  belongs_to :approver, class_name: 'User'

  with_options presence: true do
    validates :description
    validates :status
    validates :time
    validates :type_requisition
  end
  validates :reason_refusal, presence: true, if: -> { disapproved? }

  enum status: { on_approval: 0, approved: 1, disapproved: 2 }
  enum type_requisition: { addition: 0, use: 1 }
end
