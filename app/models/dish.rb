class Dish < ApplicationRecord
    mount_uploader :picture, PicDishUploader
    has_many :orders
    def self.buscador(termino)
        Dish.where("nombre LIKE ?", "%#{termino}%")
      end
end
