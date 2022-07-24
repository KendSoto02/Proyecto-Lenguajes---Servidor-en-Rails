class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sales
  has_one :profile, dependent: :destroy

  after_create :set_profile

  def set_profile
    self.profile = Profile.create()
  end
end
