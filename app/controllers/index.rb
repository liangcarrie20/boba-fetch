get '/' do
  @reviews = Review.all
  erb :index  
end