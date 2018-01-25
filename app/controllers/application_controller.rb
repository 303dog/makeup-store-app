require 'rack-flash'

class ApplicationController < Sinatra::Base
  use Rack::Flash

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'makeuphoarder'
  end

  def current_user(session)
    User.find(session_hash[:user_id])
  end

  def logged_in?(session)
    !!session[:user_id]
  end

  def redirect_if_logged_out(session)
    if !logged_in?(session)
      redirect '/login'
    end
  end
  def redirect_if_logged_in(session)
    if logged_in?(session)
      redirect '/products'
    end
  end

  def empty_fields?(hash)
    hash.values.any? {|x| x.nil? || x.empty?}
  end

  # **** ERROR MSG ****
  get '/whoops' do
    erb :error
  end

  get '/' do
    redirect '/products'
  end


end
