# == Schema Information
#
# Table name: programs
#
#  id           :integer          not null, primary key
#  applied      :string
#  cover_letter :string
#  description  :text
#  division     :string
#  link         :string
#  name         :string
#  role         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  bank_id      :integer
#
class Program < ApplicationRecord
end
