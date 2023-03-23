class Organization < ApplicationRecord
  belongs_to :user
  has_many :user_organizations
  has_many :users, through: :organizations
end
