# == Schema Information
#
# Table name: markets
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  address     :string(255)
#  day         :string(255)
#  time        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  description :string(255)
#  number      :string(255)
#

class Market < ActiveRecord::Base

	acts_as_commentable

  has_many :comments, :as => :commentable

end
