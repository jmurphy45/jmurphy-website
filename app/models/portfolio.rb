class Portfolio < ApplicationRecord
  mount_uploader :square, PortfolioUploader
  mount_uploader :long_potrait, PortfolioUploader
  mount_uploader :long_landscape, PortfolioUploader
end
