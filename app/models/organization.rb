# == Schema Information
#
# Table name: organizations
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  group_id    :integer
#  name        :string
#  description :text
#  location    :string
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Organization < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  has_many :listings

end
