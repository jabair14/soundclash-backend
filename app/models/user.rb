class User < ApplicationRecord
    has_many :purchases
    # has_many :packs, through: :purchases
    has_many :packs 

    # def download_links(purchase_id)
        

    # end

end
