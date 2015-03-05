class Price < ActiveRecord::Base
  belongs_to :pricelist
  belongs_to :city
end
