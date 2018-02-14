class User < ApplicationRecord
  has_many :purchases
  validates :nickname, presence: true
  validates :email, uniqueness: true

  def api_params
    {
      id: id,
      nickname: nickname,
      email: email,
      purchases: purchases.map(&:api_params)
    }
  end
end
