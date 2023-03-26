# Table name: users

#  id                     :bigint           not null, primary key
#  active_bank            :boolean          default(FALSE)
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  firstname              :string
#  lastname               :string
#  phone                  :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  has_many :user_organizations, dependent: :destroy
  has_many :organizations, through: :user_organizations

  validates_presence_of :active_bank

  def self.from_omniauth(access_token)
    email = access_token.info['email']
    User.find_or_create_by(email: email) do |user|
      user.password = Devise.friendly_token[0, 20]
    end
  end  
end
