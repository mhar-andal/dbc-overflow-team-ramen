class Comment < ActiveRecord::Base
  has_many :votes, as: :votable, dependent: :destroy

  belongs_to :post
  belongs_to :commenter, class_name: 'User', foreign_key: :commenter_id
end
