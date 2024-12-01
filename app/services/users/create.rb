class Users::Create < ActiveInteraction::Base
  hash :params, strip: false

  def execute
    # проверки перемещены в валидации модели
    user_params = params.except(:interests, :skills).merge(full_name: user_full_name)
    user = User.create!(user_params)
    user_interests(user)
    user_skills(user)
    user
  end

  private
  def user_full_name
    "#{params['surname']} #{params['name']} #{params['patronymic']}".strip
  end

  def user_interests(user)
    if params['interests']
      interests = Interest.where(name: params['interests'])
      user.interests << interests
    end
  end

  def user_skills(user)
    if params['skills']
      skills = Skill.where(name: params['skills'])
      user.skills << skills
    end
  end
end