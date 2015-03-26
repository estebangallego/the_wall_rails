class Wall < ActiveRecord::Base
	belongs_to :user
    has_many :comments
    has_many :users, through: :comments
    validates :post, presence:true
end
