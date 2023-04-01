# Table name: requisitions

#  id             :bigint           not null, primary key
#  description    :string           not null
#  kind           :integer          default(0), not null
#  reason_refusal :string
#  status         :integer          default(0), not null
#  time           :time             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  approver_id    :bigint           not null
#  user_id        :bigint           not null

class Requisition < ApplicationRecord
  belongs_to :user
  belongs_to :approver, class_name: 'User'

  enum status: { on_approval: 0, approved: 1, disapproved: 2 }
  enum type_requisition: { addition: 0, addition: 1 }
end
