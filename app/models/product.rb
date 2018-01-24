class Product < ActiveRecord::Base
  # products belongs to a cart
  belongs_to :cart

  def slug
    "#{self.name.gsub(' ', '-').downcase}-#{self.name.gsub(' ', '-').downcase}"
  end

  def self.find_by_slug(slug)
    Product.all.find{|i| i.slug == slug}
  end
end
