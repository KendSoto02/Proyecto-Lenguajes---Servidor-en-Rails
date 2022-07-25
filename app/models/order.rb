class Order < ApplicationRecord
    belongs_to :client
    belongs_to :dish
    enum statusOrder: {anuled: 0, onTime: 1, overTime: 2, delayed: 3, delivered: 4}

    validates :date, presence: true
    validates :quantity, presence: true
    validates :statusOrder, presence: true

    def self.buscador(termino)
        Order.where("nombre LIKE ?", "%#{termino}%")
    end
end
