# == Schema Information
#
# Table name: opportunities
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  listing_id     :integer
#  status         :string
#  status_changed :datetime         default(Mon, 20 Apr 2015 01:02:21 UTC +00:00)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Opportunity < ActiveRecord::Base
  belongs_to :user
  belongs_to :listing

end
