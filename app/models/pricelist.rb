class Pricelist < ActiveRecord::Base
  has_many :prices
  has_many :users

  accepts_nested_attributes_for :prices
end
