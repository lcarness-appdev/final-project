# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  notes      :string
#  inputs_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Note < ApplicationRecord
    
    belongs_to :inputs, :class_name => "Input"
    
end
