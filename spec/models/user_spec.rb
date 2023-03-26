require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
  end

  describe 'associations' do
    it { should have_many(:user_organizations).dependent(:destroy) }
    it { should have_many(:organizations).through(:user_organizations) }
  end

  describe 'ominiauth user login' do
    let(:auth_hash) do
      OmniAuth::AuthHash.new({
        provider: 'google_oauth2',
        uid: '123456789',
        info: {
          email: 'nanadaime@hokages.com',
          first_name: 'Naruto',
          last_name: 'Uzumaki',
          image: 'https://link-de-imagem.com'
        },
        credentials: {
          token: 'ya29.a0AfH6SMAJFgGZsMPlYMB-k1HJQzXifwpBk-8EK59WJus05pTGLTJcZvXX8EGiYF6',
          expires_at: 1649152658,
          expires: true
        }
      })
    end

    context 'when the user does not exist' do
      it 'creates a new user with the correct attributes' do
        expect {
          User.from_omniauth(auth_hash)
        }.to change(User, :count).by(1)
  
        user = User.last
        expect(user.email).to eq('nanadaime@hokages.com')
        expect(user.firstname).to eq('Naruto')
        expect(user.lastname).to eq('Uzumaki')
        expect(user.encrypted_password.present?).to be true
      end
    end
  
    context 'when the user exists' do
      let!(:existing_user) { create(:user, email: 'nanadaime@hokages.com') }
  
      it 'returns the existing user' do
        expect {
          User.from_omniauth(auth_hash)
        }.not_to change(User, :count)
  
        user = User.last
        expect(user.id).to eq(existing_user.id)
        expect(user.email).to eq('nanadaime@hokages.com')
      end
    end
  end
end
