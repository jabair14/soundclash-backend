class User < ApplicationRecord
    has_many :packs 
    has_many :purchases, through: :packs

    # def download_links(purchase_id)
        

    # end

end
