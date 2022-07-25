class Client < ApplicationRecord
    has_many :sales

    validates :name, presence: true
    def self.buscador(termino)
      Client.where("name LIKE ?", "%#{termino}%")
    end

    enum statusClient: {active: 0, inactive: 1}
end
