# == Schema Information
#
# Table name: contacts
#
#  id           :integer          not null, primary key
#  bio          :text
#  email        :string
#  group        :string
#  last_contact :string
#  linkedin     :string
#  position     :string
#  response     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Contact < ApplicationRecord
end
