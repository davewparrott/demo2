class HomeController < ApplicationController
  def index
	allItems = Product.all
	@islands = Array.new
	@featured = Array.new
	for i in Product.all
		if i.active
			@islands.push(i)
			if i.featured != nil && i.featured > 0
				@featured.push(i)
			end
		end
	end 
	
	@islands.sort! {|i,k| i.title<=>k.title}
	@featured.sort! {|i,k| i.featured<=>k.featured}
	
	#@islands = Product.find(:all, :conditions=> :order=>"title")
	#@featured = Product.find(:all, :order=>"featured")
  end
  
  def contact
  end
  def about
  end
end
