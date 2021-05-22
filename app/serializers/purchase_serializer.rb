class PurchaseSerializer < ActiveModel::Serializer
    attributes :id, :pack_id, :user_id, :download

    belongs_to :pack
    belongs_to :user

    def download
        self.object.pack.link 
    end

end