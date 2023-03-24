# Table name: user_organizations

#  id              :bigint           not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :bigint           not null
#  user_id         :bigint           not null

class UserOrganization < ApplicationRecord
  belongs_to :user
  belongs_to :organization
end
