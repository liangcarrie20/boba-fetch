# display a list of all drinks for a specific shop
get '/shops/:shop_id/drinks' do 

  @shop = Shop.find(params[:shop_id])
  @reviews = Review.where(shop_id: params[:shop_id])
  @drinks = Drink.where(shop_id: params[:shop_id])

  if request.xhr?
    erb :'drinks/_index', layout: false
  else
    erb :'drinks/index'
  end
end

# returns a form for creating a new drink belonging to a specific shop
get '/shops/:shop_id/drinks/new' do 
  @reviews = Review.where(shop_id: params[:shop_id])
  @shop = Shop.find(params[:shop_id])

  if request.xhr?
    erb :'drinks/_new', layout: false
  else
    erb :'drinks/new'
  end
end

# create a new drink belonging to a specific shop
post '/shops/:shop_id/drinks' do 

  @shop = Shop.find(params[:shop_id])
  @reviews = Review.where(shop_id: params[:shop_id])
  @drink = Drink.new(params[:drink])

  if request.xhr?
    if @drink.save
      "Drink saved"
    else
      "Error, please try again."
    end
  else
    if @drink.save
      redirect "/shops/#{@shop.id}/drinks/#{@drink.id}"
    else
      flash[:error] = @drink.errors.full_messages
      erb :'drinks/new'
    end
  end

end

# display a specific drink belonging to a specific shop
get '/shops/:shop_id/drinks/:id' do 
  @shop = Shop.find(params[:shop_id])
  @reviews = Review.where(drink_id: params[:id])
  @drink = Drink.find(params[:id])

  erb :'drinks/show'

end

get '/shops/:shop_id/drinks/:drink_id/upload' do
  @uploads = Upload.all
  @drink = Drink.find(params[:drink_id])
  @shop = Shop.find(params[:shop_id])
  erb :'/drinks/upload'
end

post '/shops/:shop_id/drinks/:drink_id/upload' do
  @uploaded_file = @drink.uploads.create(filepath: params[:upload])
  @drink.save!

  @uploaded_file.to_s

end

# # returns a form for editing drink belonging to a specific shop
# get '/shops/:shop_id/drinks/:id/edit' do

#   @shop = Shop.find(params[:shop_id])

#   @drink = @shop.drinks.find(params[:id])

#   erb :'drinks/edit'

# end

# # update a specific drink belonging to a specific shop
# put '/shops/:shop_id/drinks/:id' do

#   @shop = Shop.find(params[:shop_id])

#   @drink = @shop.drinks.find(params[:id])

#   if @drink.update_attributes(params[:drink])
#     redirect "/shops/#{@shop.id}/drinks"
#   else 
#     erb :'drinks/edit' #show edit drinks view again(potentially displaying errors)
#   end

# end

# # delete a drink belonging to a specific shop
# delete '/shops/:shop_id/drinks/:id' do 

#   @shop = Shop.find(params[:shop_id])

#   @drink = @shop.drinks.find(params[:id])

#   @drink.destroy

#   redirect "/shops/#{@shop.id}/drinks"

# end