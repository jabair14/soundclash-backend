class PackSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :genre_id, :name, :description, :image, :preview, :link, :price, :genre_name

  has_many :purchases
  belongs_to :user 
  belongs_to :genre 

  # def author_name
  #   self.object.user.name 
  # end

  def genre_name
    self.object.genre.name 
  end
end
