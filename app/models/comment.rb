class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :all_blank

  # def user_attributes=(user_attributes)
  #   user_attributes.values.each do |user_attribute|
  #     post = Post.find(self.post_id)
  #     self.user = User.find_or_create_by(username: user_attribute)
  #       User.all << self.user
  #      self.user
  #       #binding.pry
  #   end
  # end

end
