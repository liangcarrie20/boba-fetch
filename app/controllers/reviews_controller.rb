# Show all reviews for specific shop
get '/shops/:shop_id/reviews' do 
  @shop = Shop.find(params[:shop_id])
  @reviews = @shop.reviews

  erb :'reviews/index'
end

# Show form for creating a new review
get '/shops/:shop_id/reviews/new' do
  @reviews = Review.where(shop_id: params[:shop_id])
  @drinks = Drink.where(shop_id: params[:shop_id]).order(:name)
  @shop = Shop.find(params[:shop_id])

  if request.xhr?
    erb :'reviews/_new', layout: false
  else
    erb :'reviews/new'
  end
end

# Submit form and create a new review
post '/shops/:shop_id/reviews' do
  @shop = Shop.find(params[:shop_id])
  # @drinks = Drink.where(shop_id: params[:shop_id])
  @review = Review.new(params[:review])

  if request.xhr?
    if @review.save
      erb :'reviews/_show', layout: false
    else
      "Error, please try again"
    end
  else
    if @review.save
      redirect "/shops/#{@shop.id}"
    else
      @errors = @review.errors.full_messages
      erb :'reviews/new'
    end
  end
end

# display a specific review belonging to a specific shop
get '/shops/:shop_id/reviews/:id' do 
  @shop = Shop.find(params[:shop_id])
  @review = @shop.reviews.find(params[:id])

  erb :'reviews/show'

end

# Show form to edit review
get '/shops/:id/reviews/:review_id/edit' do
  @drinks = Drink.where(shop_id: params[:id]).order(:name)
  @shop = Shop.find(params[:id])
  @review = Review.find(params[:review_id])
  erb :'reviews/edit'
end

# Submit form to edit review
put '/shops/:shop_id/reviews/:id' do
  @shop = Shop.find(params[:shop_id])
  @review = Review.find(params[:id])

  if @review.update_attributes(params[:review])
    redirect "/shops/#{@shop.id}"
  else
    @errors = @review.errors.full_messages
    erb :'reviews/edit'
  end
end

# Delete review
delete '/shop/:shop_id/reviews/:id' do
  @shop = Shop.find(params[:shop_id])
  @review = Review.find(params[:id])

  @review.destroy

  redirect "/users/#{current_user.id}"
end