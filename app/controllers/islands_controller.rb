class IslandsController < ApplicationController
  def _get_active_islands
    return Product.all.select{ |i| i.active == true }
  end

  # GET /products
  # GET /products.json
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

  # GET /products/1
  # GET /products/1.json
  def show
    @island = Product.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @island }
    end
  end
  
  def _sort_by_params (collection)
	# summary
	if params[:sort] == 's'
		collection.sort! {|i,k| i.summary<=>k.summary}
	end
	if params[:sort] == 'S'
		collection.sort! {|k,i| i.summary<=>k.summary}
	end
	
	# name
	if params[:sort] == 'n'
		collection.sort! {|i,k| i.title<=>k.title}
	end
	if params[:sort] == 'N'
		collection.sort! {|k,i| i.title<=>k.title}
	end
	
	# price
	if params[:sort] == 'p'
		collection.sort! {|i,k| i.price<=>k.price}
	end
	if params[:sort] == 'P'
		collection.sort! {|k,i| i.price<=>k.price}
	end
	
	return collection
  end
  
  def listing
    @islands = _sort_by_params(_get_active_islands)
  end
end