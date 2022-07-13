class Client < ApplicationRecord
    has_many :sales

    validates :name, presence: true
    def self.buscador(termino)
      Client.where("name LIKE ?", "%#{termino}%")
    end
end
