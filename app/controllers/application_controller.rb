class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'makeuphoarder'
  end

  # **** ERROR MSG ****
  get '/whoops' do
    erb :error
  end

  get '/' do
    redirect '/products'
  end

end
