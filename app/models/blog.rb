# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blog < ApplicationRecord
  before_destroy :remove_blog_tags

  validates :title, :body, presence: true, allow_blank: false

  has_many :taggings
  has_many :tags, through: :taggings

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def remove_blog_tags
    Tagging.where(blog_id: id).destroy_all
  end
end
