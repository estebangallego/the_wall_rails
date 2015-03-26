class Comment < ActiveRecord::Base
  validates :comment, :user_id, :wall_id, presence:true
  belongs_to :user
  belongs_to :wall
end
