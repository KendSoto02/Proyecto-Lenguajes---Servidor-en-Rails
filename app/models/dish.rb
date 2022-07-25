class Dish < ApplicationRecord
    mount_uploader :picture, PicDishUploader

    def self.buscador(termino)
        Dish.where("nombre LIKE ?", "%#{termino}%")
      end
end
