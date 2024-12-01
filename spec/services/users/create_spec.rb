require 'rails_helper'

RSpec.describe Users::Create, type: :service do
  describe '#execute' do
    context 'with valid parameters' do
      let(:valid_params) do
        {
          'name' => 'John',
          'patronymic' => 'Doe',
          'surname' => 'Smith',
          'email' => 'john.smith@example.com',
          'age' => 30,
          'nationality' => 'American',
          'country' => 'USA',
          'gender' => 'male'
        }
      end

      it 'creates a user and returns it' do
        result = described_class.run(params: valid_params)

        expect(result.valid?).to be true
        user = result.result
        expect(user).to be_persisted
        expect(user.name).to eq('John')
      end
    end

    context 'with missing name' do
      let(:invalid_params) do
        {
          'patronymic' => 'Doe',
          'surname' => 'Smith',
          'email' => 'john.smith@example.com',
          'age' => 30,
          'nationality' => 'American',
          'country' => 'USA',
          'gender' => 'male'
        }
      end
    end
  end
end
