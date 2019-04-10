class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user




  def user_attributes=(attributes_hash)
    user = User.find_or_create_by(attributes_hash)
    self.user = user
    self.save
  end





end
