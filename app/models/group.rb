# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  name        :string
#  description :text
#  url         :string
#  picture     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Group < ActiveRecord::Base
  #group creator/admin
  belongs_to :user_id


end
