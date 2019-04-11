class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(user_attributes)
    # if User.find_or_create_by(user_attributes)
    #   self.user = User.find_or_create_by(user_attributes)
    # else
    #   self.build_user(username: user_attributes[:username], email: user_attributes[:email])
    # end
    
    user = User.find_or_create_by(user_attributes)
    self.user = user
    self.save
  end
end
