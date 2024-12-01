require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'POST #create' do
    context 'with valid attributes' do
      let(:valid_attributes) do
        {
          user: {
            name: 'Alice',
            patronymic: 'Johnson',
            surname: 'Brown',
            email: 'alice.brown@example.com',
            age: 28,
            nationality: 'British',
            country: 'UK',
            gender: 'female',
            interests: ['Music', 'Art'],
            skills: ['Ruby', 'Rails']
          }
        }
      end

      it 'creates a new user and returns success' do
        expect {
          post :create, params: valid_attributes, format: :json
        }.to change(User, :count).by(1)

        expect(response).to have_http_status(:success)
        parsed_response = JSON.parse(response.body)
        expect(parsed_response['message']).to eq('User создан')
        expect(parsed_response['user']).to be_present
      end
    end
  end
end
