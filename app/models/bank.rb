# == Schema Information
#
# Table name: banks
#
#  id         :integer          not null, primary key
#  location   :string
#  name       :string
#  size       :integer
#  specialty  :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Bank < ApplicationRecord
end
