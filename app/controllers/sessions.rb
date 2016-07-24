get '/sessions/new' do
  erb :'/sessions/new'
end

post "/sessions" do
  @user = User.authenticate(params[:user])

  if @user
    login(@user)
    redirect "/users/#{current_user.id}"
  else
    @error = "Your email and or password was incorrect."
    redirect '/sessions/new'
  end
end

get "/logout" do
  logout
  redirect "/"
end