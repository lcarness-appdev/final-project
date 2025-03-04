# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  first_name             :string
#  last_name              :text
#  address                :string
#  industry               :string
#  year_of_incorporation  :integer
#  number_of_employees    :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  city                   :string
#  region                 :string
#  country                :string
#  lat                    :float
#  lon                    :float
#  color                  :string
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :inputs, :dependent => :destroy
         
end
