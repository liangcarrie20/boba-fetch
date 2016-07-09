get '/' do
  @reviews = Review.order(updated_at: :desc).limit(10)
  erb :index  
end