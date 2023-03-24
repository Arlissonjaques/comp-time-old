# Table name: organizations

#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null

class Organization < ApplicationRecord
  belongs_to :user
  has_many :user_organizations
  has_many :users, through: :organizations
end
