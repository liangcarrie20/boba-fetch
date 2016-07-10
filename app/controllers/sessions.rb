get '/sessions/new' do
  erb :'/sessions/new'
end

post "/sessions" do
  @user = User.find_by(username: params[:user][:username].downcase)

  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/users/#{session[:user_id]}"
  else
    @error = "Your email and or password was incorrect."
    redirect '/sessions/new'
  end
end

get "/sessions/delete" do
  session[:user_id] = nil
  current_user = nil
  redirect "/"
end