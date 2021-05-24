class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :bio, :image

  has_many :packs 
  has_many :purchases 

  # has_many :packs, through: :purchases 

  # def downloads
  #   self.object.purchases
  # end
    
end
