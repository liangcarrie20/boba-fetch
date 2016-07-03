get '/users' do
  redirect '/users/:id'
end

get '/users/new' do
  erb :'users/new'
end

post "/users" do
  @user = User.new(params[:user])

  if @user.save
    redirect "/sessions/new"
  else
    @error = @user.errors.full_messages
    erb :"/users/new"
  end
end

get "/users/:id" do
  @user = current_user
  erb :"/users/show"
end

get '/sessions/new' do
  erb :'/sessions/new'
end


post "/sessions" do
  @user = User.find_by(username: params[:user][:username])

  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/users"
  else
    @error = "Your email and or password was incorrect."
    redirect '/sessions/new'
  end
end

delete "/sessions/:id" do
  session[:user_id] = nil
  redirect "/"
end