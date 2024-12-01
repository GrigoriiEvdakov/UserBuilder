require 'rails_helper'

RSpec.describe User, type: :model do
  it 'создает валидного пользователя' do
    user = build(:user)
    expect(user).to be_valid
  end

  it 'невалиден без email' do
    user = build(:user, email: nil)
    expect(user).not_to be_valid
    expect(user.errors[:email]).to include("can't be blank")
  end

  it 'невалиден с дублирующимся email' do
    create(:user, email: 'duplicate@example.com')
    user = build(:user, email: 'duplicate@example.com')
    expect(user).not_to be_valid
    expect(user.errors[:email]).to include('has already been taken')
  end
end
