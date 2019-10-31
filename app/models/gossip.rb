class Gossip < ApplicationRecord
  validates :title, presence: true, length: { in: 2..50 }
  validates :content, presence: true
  
  has_many :join_table_gossip_tags
  has_many :tags, through: :join_table_gossip_tags
  belongs_to :user
end
