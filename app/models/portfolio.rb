# == Schema Information
#
# Table name: portfolios
#
#  id             :integer          not null, primary key
#  name           :string
#  client         :string
#  completed      :date
#  about          :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  category_id    :integer
#  skill_id       :integer
#  long_landscape :string
#  long_potrait   :string
#  square         :string
#  cover          :string
#

class Portfolio < ApplicationRecord
  mount_uploader :square, PortfolioUploader
  mount_uploader :long_potrait, PortfolioUploader
  mount_uploader :long_landscape, PortfolioUploader
  mount_uploader :cover, PortfolioUploader

  has_one :category
end
