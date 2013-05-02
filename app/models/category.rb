class Category < ActiveRecord::Base
  attr_accessible :title, :product_ids
  has_and_belongs_to_many :products

  validates :title, presence: true,
                    uniqueness: {case_sensitive: false}

  has_many :sales, as: :saleable, foreign_key: :foreign_key

  def to_s
    title
  end
end
