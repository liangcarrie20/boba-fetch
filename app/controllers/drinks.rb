# display a list of all drinks for a specific shop
get '/shops/:shop_id/drinks' do 

  @shop = Shop.find(params[:shop_id])

  @drinks = @shop.drinks

  erb :'drinks/index'

end

# returns a form for creating a new drink belonging to a specific shop
get '/shops/:shop_id/drinks/new' do 

  @shop = Shop.find(params[:shop_id])

  erb :'drinks/new'

end

# create a new drink belonging to a specific shop
post '/shops/:shop_id/drinks' do 

  @shop = Shop.find(params[:shop_id])

  @drink = @shop.drinks.new(params[:drink])

  if @drink.save
    redirect "/shops/#{@shop.id}/drinks"
  else
    @errors = @review.errors.full_messages
    erb :'drinks/new'
  end

end

# display a specific drink belonging to a specific shop
get '/shops/:shop_id/drinks/:id' do 

  @shop = Shop.find(params[:shop_id])

  @drink = @shop.drinks.find(params[:id])

  erb :'drinks/show'

end

# returns a form for editing drink belonging to a specific shop
get '/shops/:shop_id/drinks/:id/edit' do

  @shop = Shop.find(params[:shop_id])

  @drink = @shop.drinks.find(params[:id])

  erb :'drinks/edit'

end

# update a specific drink belonging to a specific shop
put '/shops/:shop_id/drinks/:id' do

  @shop = Shop.find(params[:shop_id])

  @drink = @shop.drinks.find(params[:id])

  if @drink.update_attributes(params[:drink])
    redirect "/shops/#{@shop.id}/drinks"
  else 
    erb :'drinks/edit' #show edit drinks view again(potentially displaying errors)
  end

end

# delete a drink belonging to a specific shop
delete '/shops/:shop_id/drinks/:id' do 

  @shop = Shop.find(params[:shop_id])

  @drink = @shop.drinks.find(params[:id])

  @drink.destroy

  redirect "/shops/#{@shop.id}/drinks"

end