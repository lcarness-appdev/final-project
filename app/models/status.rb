# == Schema Information
#
# Table name: statuses
#
#  id               :integer          not null, primary key
#  area_of_interest :string
#  status           :text
#  action_plan      :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Status < ApplicationRecord
end
