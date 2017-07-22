class User < ApplicationRecord
  has_secure_password

  has_many :subscriptions
  has_many :boards, through: :subscriptions
  has_many :jobpostings, class_name: 'Job',  foreign_key: "jobposting_id"
  has_many :hostings, class_name: 'Board', foreign_key: "hosting_id"

  def user_params
    params.require(:user).permit(:username, :password, :email, :password_confirmation)
  end
end
