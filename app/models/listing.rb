# == Schema Information
#
# Table name: listings
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  organization_id :integer
#  name            :string
#  description     :text
#  location        :string
#  url             :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Listing < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization
  belongs_to :opportunity



end
