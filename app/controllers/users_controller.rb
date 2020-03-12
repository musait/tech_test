class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: "OK", status: :created
    else
      new_pseudo = ""
      loop do
        new_pseudo = Array.new(3){[*"A".."Z"].sample}.join
        break unless User.exists?(name: new_pseudo)
      end
      User.create(name:new_pseudo)
      render json: "Ce pseudo est déjà prit ou ne respecte pas les règles (3 caractères max, tout en majuscule, pas de chiffre). Nous vous proposons celui-ci : #{new_pseudo}", status: :created
    end
  end

  private
    def user_params
      params.require(:user).permit(:name)
    end
end
