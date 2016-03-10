class Item < ActiveRecord::Base
  serialize :raw_info , Hash

  has_many :ownerships  , foreign_key: "item_id" , dependent: :destroy
  has_many :users , through: :ownerships
  
  has_many :want_users, class_name: "User", foreign_key: "item_id", dependent: :destroy
  has_many :wants, through: :want_users, source: :user
  
  has_many :have_users, class_name: "User", foreign_key: "item_id", dependent: :destroy
  has_many :have, through: :have_users, source: :user
  
end
