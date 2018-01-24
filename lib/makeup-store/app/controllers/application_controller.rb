class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'lib/makeup-store/app/views'
    enable :sessions
    set :session_secret, 'makeuphoarder'
  end

  # **** ERROR MSG ****
  get '/whoops' do
    erb :error
  end

end
