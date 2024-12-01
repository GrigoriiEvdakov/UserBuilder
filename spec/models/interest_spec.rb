require 'rails_helper'

RSpec.describe Interest, type: :model do

  it 'создаёт валидный объект Interest' do
    interest = Interest.create(name: 'Photography')
    expect(interest).to be_valid
  end

  it 'нельзя создать Interest без имени' do
    interest = Interest.create(name: nil)
    expect(interest).not_to be_valid
    expect(interest.errors[:name]).to include("can't be blank")
  end
end
