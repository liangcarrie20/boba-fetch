# Show form for creating a new review
get '/shops/:id/reviews/new' do
  @shop = Shop.find(params[:id])
    erb :'reviews/new'
end

# Submit form and create a new review
post '/shops/:id' do
  @shop = Shop.find(params[:id])
  @review = Review.new(params[:review])

  if @review.save
    redirect "/shops/#{@shop.id}"
  else
    @errors = @review.errors.full_messages
    erb :'reviews/new'
  end
end

# Show form to edit review
get '/shops/:id/reviews/:review_id/edit' do
  @review = Review.find(params[:id])
  erb :'reviews/edit'

end

# Submit form to edit review
put '/shops/:id/reviews/:shop_id' do
  @shop = Shop.find(params[:id])
  @review = @shop.reviews.find(params[:shop_id])

  if @review.update_attributes(content: params[:content])
    redirect "/shops/#{@shop.id}"
  else
    @errors = @review.errors.full_messages
    erb :'reviews/edit'
  end
end

# Delete review
delete '/shop/:id/reviews/:shop_id' do
  @shop = Shop.find(params[:id])
  @review = @shop.reviews.find(params[:shop_id])

  @review.destroy

  redirect "/shop/#{@shop.id}"
end