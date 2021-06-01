class PurchaseSerializer < ActiveModel::Serializer
    attributes :id, :pack_id, :user_id, :download, :title 

    belongs_to :pack
    belongs_to :user

    def download
        self.object.pack.link 
    end

    def title
        self.object.pack.name 

    end

end