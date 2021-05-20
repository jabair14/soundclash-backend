class Pack < ApplicationRecord
    has_many :purchases
    has_many :users, through: :purchases

    belongs_to :genre 
    belongs_to :user 
end
