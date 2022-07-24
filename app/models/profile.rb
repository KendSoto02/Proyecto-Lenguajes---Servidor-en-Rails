class Profile < ApplicationRecord
  #mount_uploader :foto, FotoUploader
  belongs_to :user

  validates :name, presence: true
    def self.buscador(termino)
      Profile.where("name LIKE ?", "%#{termino}%")
    end
  enum rolUser: {admin: 0, kitchenUsers: 1, client: 2}
  enum statusClient: {active: 0, inactive: 1}
end
