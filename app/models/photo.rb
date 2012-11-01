class Photo < ActiveRecord::Base
  attr_accessible :active, :alttxt, :filename, :order, :product_id, :caption
end
