class Product < ActiveRecord::Base
  attr_accessible :active, :details, :price, :stock, :summary, :title, :featured, :title_photo
  has_many :photos
  
  def short_summary(limit)
	return self.summary[0,limit]
  end
end
