class UsersController < ApplicationController
  def create
    result = Users::Create.run(params: user_params)

    if result.valid?
      render json: { message: 'User создан', user: result.result }, status: "200"
    else
      render json: { errors: result.errors }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :patronymic, :surname, :email, :age, :nationality, :country, :gender, interests: [], skills: [])
  end
end
