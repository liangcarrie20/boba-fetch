# Show all reviews for specific shop
get '/shops/:shop_id/reviews' do 
  @shop = Shop.find(params[:shop_id])
  @reviews = @shop.reviews

  erb :'reviews/index'
end

# Show form for creating a new review
get '/shops/:shop_id/reviews/new' do
  @reviews = Review.where(shop_id: params[:shop_id])
  @drinks = Drink.where(shop_id: params[:shop_id])
  @shop = Shop.find(params[:shop_id])
    erb :'reviews/new'
end

# Submit form and create a new review
post '/shops/:shop_id/reviews' do
  @shop = Shop.find(params[:shop_id])
  @drinks = Drink.where(shop_id: params[:shop_id])
  @review = Review.new(params[:review])

  if @review.save
    redirect "/shops/#{@shop.id}"
  else
    @errors = @review.errors.full_messages
    erb :'reviews/new'
  end
end

# # Show form to edit review
# get '/shops/:id/reviews/:review_id/edit' do
#   @review = Review.find(params[:id])
#   erb :'reviews/edit'

# end

# # Submit form to edit review
# put '/shops/:id/reviews/:shop_id' do
#   @shop = Shop.find(params[:id])
#   @review = @shop.reviews.find(params[:shop_id])

#   if @review.update_attributes(content: params[:content])
#     redirect "/shops/#{@shop.id}"
#   else
#     @errors = @review.errors.full_messages
#     erb :'reviews/edit'
#   end
# end

# # Delete review
# delete '/shop/:id/reviews/:shop_id' do
#   @shop = Shop.find(params[:id])
#   @review = @shop.reviews.find(params[:shop_id])

#   @review.destroy

#   redirect "/shop/#{@shop.id}"
# end