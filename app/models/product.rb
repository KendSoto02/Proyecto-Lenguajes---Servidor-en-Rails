class Product < ApplicationRecord
    
  mount_uploader :imagen, ImagenProductoUploader

  def self.buscador(termino)
    Product.where("nombre LIKE ?", "%#{termino}%")
  end
end
