get '/sessions/new' do
  erb :'/sessions/new'
end

post '/sessions' do
  @user = User.find_by(email: params[:user][:email])
  if @user && @user.authenticate(params[:user][:password])
    login(@user)
    redirect "/users/#{@user.id}"
  else
    @error = "Your email and or password was incorrect."
    redirect '/sessions/new'
  end
end

get '/logout' do
  logout
  redirect '/'
end