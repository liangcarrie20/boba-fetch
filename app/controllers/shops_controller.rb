get '/shops' do
  @shops = Shop.order(:name)
  erb :'/shops/index'
end

get '/shops/new' do
  erb :'/shops/new'
end

post '/shops' do
  @shop = Shop.new(params[:shop])
  
  if @shop.save
    redirect '/shops'
  else
    @errors = @shop.errors.full_messages
    redirect '/shops/new'
  end
end

get '/shops/:id' do
  @shop = Shop.find(params[:id])
  @reviews = Review.where(shop_id: params[:id]).order(updated_at: :desc)
  @drinks = Drink.where(shop_id: params[:id])
  erb :'/shops/show'
end

get '/shops/:id/edit' do
  @shop = Shop.find(params[:id])
  erb :'/shops/edit'
end

put '/shops/:id' do
  @shop = Shop.find(params[:id])
  @shop.update_attributes(params[:shop])
  redirect "/shops/"
end

delete '/shops/:id' do
  @shop = Shop.find(params[:id])

  @shop.destroy

  redirect '/shops'
end